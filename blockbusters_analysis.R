library(dplyr)
library(readr) 
library(assertive)
library(stringr)
library(tidyr)

# original blockbusters
  # blockbusters <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/main/Blockbusters_2019-1977.csv")
  # View(blockbusters)

# import blockbusters_clean
blockbusters <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/main/blockbusters_clean.csv")
View(blockbusters)

# export csv file (done)
  # write.csv(blockbusters , file = "/Users/supapitr/Desktop/SEMESTER1/06stat/R/groupAssignment/blockbusters_clean.csv")

#----------------------------------------------------------------------------------------------------

#1. clean data (แทนที่ NA ด้วย null)
blockbusters$mpaa_rating <- replace(blockbusters$mpaa_rating, is.na(blockbusters$mpaa_rating), 'NULL')
blockbusters$genre_2 <- replace(blockbusters$genre_2, is.na(blockbusters$genre_2), 'NULL')
blockbusters$genre_3 <- replace(blockbusters$genre_3, is.na(blockbusters$genre_3), 'NULL')

View(blockbusters) 

#----------------------------------------------------------------------------------------------------

## สร้าง column film_profit ใหม่ (done)
    ## blockbusters <- blockbusters %>% mutate(film_profit = worldwide_gross - film_budget)

#----------------------------------------------------------------------------------------------------        

# 2. exploration data
# 1. หนังเรื่องไหนทำรายได้มากที่สุด (รายได้ - ต้นทุน)
# 2. ค่ายไหนทำรายได้ได้มากที่สุดของปีนั้น ๆ
# 3. ในปี 2019 joker อยู่ลำดับที่เท่าไหร่ แล้วทำรายได่เท่าไหร่
# 4. หนังเรื่องไหนมี budget สูงที่สุด
# 5. แนวหนังยอดฮิต
# 6. หนังอันดับ 1 ของทุกปี มีรายได้รวมเท่าไหร่
# 7. หนังที่มีความยาวมากที่สุดคือเรื่องอะไรแล้วมีความยาวเท่าไหร่
# 8. ค่ายไหนติดอันดับบ่อยที่สุด
# 9. หนังเรท R มีกี่เรื่อง
# 10. mpaa_rating ยอดฮิตในแต่ละปี
# 11. imdb_rating ที่สูงที่สุดคือเรื่องอะไร แล้วเรทเท่าไหร่
# 12. หนังเรื่องไหนฉายแค่ในประเทศเท่านั้น (worldwide = domestic)
# 13. imdb_rating ที่สูงสุดในแต่ละปี คือเท่าไหร่ และเรื่องอะไรบ้าง

#----------------------------------------------------------------------------------------------------        

# 1. รายได้สูงสุดของหนังทั้งหมด
blockbusters %>%
  filter(film_profit == max(film_profit))%>%
  select(film_title,film_profit)    
#  film_title film_profit
# <chr>            <dbl>
#   1 Avatar      2507336793


# 2. ค่ายไหนทำรายได้ได้มากที่สุด
blockbusters %>% select(domestic_distributor, worldwide_gross) %>% 
  filter(worldwide_gross == max(worldwide_gross))
# domestic_distributor worldwide_gross
# <chr>                          <dbl>
#   1 Walt Disney               2797800564


# 3. ในปี 2019 joker อยู่ลำดับที่เท่าไหร่ แล้วทำรายได่เท่าไหร่
blockbusters %>%
  select(release_year,film_title,rank_in_year, film_profit) %>% 
  filter(blockbusters$film_title=='Joker')
# release_year film_title rank_in_year film_profit
# <dbl> <chr>             <dbl>       <dbl>
#   1         2019 Joker                 7  1016030470


# 4. หนังเรื่องไหนมี budget สูงที่สุด
blockbusters %>%
  filter(film_budget == max(film_budget)) %>%
  select(film_title)
# film_title       
# <chr>            
#   1 Avengers: Endgame


# 5. แนวหนังยอดฮิต
blockbusters %>% count(genre_1)
# genre_1       n
# <chr>     <int>
#   1 Action      194
# 2 Adventure    46
# 3 Animation    55
# 4 Biography     7
# 5 Comedy       69
# 6 Crime        11
# 7 Drama        37
# 8 Family        3
# 9 Horror        5
# 10 Musical       1
# 11 Mystery       1
# 12 Sci-Fi        1


# 9. หนังเรท R มีกี่เรื่อง
blockbusters %>%
  count(mpaa_rating) %>%
  filter(mpaa_rating == "R")
# mpaa_rating     n
# <chr>       <int>
#   1 R              95


# 10. mpaa_rating ยอดฮิตในแต่ละปี
blockbusters %>% group_by(release_year) %>% count(mpaa_rating)
# release_year mpaa_rating     n
# <dbl> <chr>       <int>
#   1         1977 PG            8
# 2         1977 R               2
# 3         1978 PG              6
# 4         1978 PG-13           1
# 5         1978 R               3
# 6         1979 G               1
# 7         1979 PG              4
# 8         1979 R               5
# 9         1980 PG              6
# 10         1980 R              4


# 11. imdb_rating ที่สูงที่สุดคือเรื่องอะไร แล้วเรทเท่าไหร่
blockbusters %>% filter(imdb_rating == max(imdb_rating)) %>% select(film_title, imdb_rating)
# film_title      imdb_rating
# <chr>                 <dbl>
#   1 The Dark Knight           9

# 12. หนังเรื่องไหนฉายแค่ในประเทศเท่านั้น (worldwide = domestic)
blockbusters %>%
  select(film_title) %>%
  filter(blockbusters$worldwide_gross == blockbusters$domestic_gross) %>% print(n = 100)
# film_title               
# <chr>                    
#   1 Three Men and a Baby     
# 2 Good Morning, Vietnam    
# 3 Moonstruck               
# 4 The Untouchables         
# 5 The Karate Kid Part II   
# 6 Star Trek IV: Voyage Home
# 7 Back to School           
# 8 The Golden Child         
# 9 The Color Purple         
# 10 Witness                  
# # … with 57 more rows
