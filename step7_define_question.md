# Define a questions
## Step 7 : Define a questions
1. ภาพยนตร์เรื่องใดทำรายได้มากที่สุด
2. ค่ายภาพยนตร์ใดทำรายได้ได้มากที่สุด
3. ภาพยนตร์ joker ติดลำดับในปีอะไร ลำดับที่เท่าไร และทำรายได้ได้เท่าใร
4. ภาพยนตร์เรื่องใดมี budget สูงที่สุด
5. ภาพยนตร์ยอดฮิตคือประเภทใด
6. ภาพยนตร์เรท R มีทั้งหมดกี่เรื่อง
7. mpaa_rating ยอดฮิตในแต่ละปีคือเรทอะไร
8. imdb_rating ที่สูงที่สุดคือภาพยนตร์เรื่องใด และเรทเท่าใด
9. ภาพยนตร์เรื่องใดฉายแค่ในประเทศเท่านั้น

### 1. ภาพยนตร์เรื่องใดทำรายได้มากที่สุด

#### code 
```
blockbusters %>%
    filter(film_profit == max(film_profit))%>%
    select(film_title,film_profit)
```
#### result
```
     film_title       film_profit
        <chr>            <dbl>
    1   Avatar        2507336793
```

#### summary
```
ภาพยนตร์ที่ทำรายได้มากที่สุดคือ Avatar มีรายได้ถึง 2,507,336,793 บาท
```
-----------------------------------------------------------------------------------------------------------------------

### 2. ค่ายภาพยนตร์ใดทำรายได้ได้มากที่สุด

#### code
```
blockbusters %>% select(domestic_distributor, film_profit) %>% 
  filter(film_profit == max(film_profit))
```
#### result
```
   domestic_distributor   film_profit  
 1 Twentieth Century Fox   2507336793     
```

#### summary
```
ค่ายที่ทำรายได้มากที่สุดคือ Twentieth Century Fox มีรายได้ถึง 2,507,336,793 บาท
```
-----------------------------------------------------------------------------------------------------------------------
### 3.  ภาพยนตร์ joker ติดลำดับในปีอะไร ลำดับที่เท่าไร และทำรายได้ได้เท่าใร

#### code
```
blockbusters %>%
    select(release_year,film_title,rank_in_year, film_profit) %>% 
    filter(blockbusters$film_title=='Joker'
```
#### result
```
release_year   film_title   rank_in_year   film_profit
     <dbl>       <chr>         <dbl>          <dbl>
1    2019        Joker           7          1016030470
```

#### summary
```
ภาพยนตร์ Joker อยู่ลำดับที่ 7 ในปี 2019 มีรายได้รวม 1,016,030,470 บาท
```
-----------------------------------------------------------------------------------------------------------------------
### 4. ภาพยนตร์เรื่องใดมี budget สูงที่สุด

#### code
```
blockbusters %>%
    filter(film_budget == max(film_budget)) %>%
    select(film_title)
```
#### result
```
    film_title       
      <chr>            
1 Avengers: Endgame
```

#### summary
```
ภาพยนตร์ที่มี Budget สูงที่สุดตือ Avengers: Endgame
```
-----------------------------------------------------------------------------------------------------------------------
### 5. ภาพยนตร์ยอดฮิตคือประเภทใด

#### code
```
blockbusters %>% count(genre_1)
```
#### result
```
        genre_1         n
        <chr>         <int>
       1 Action       194
       2 Adventure     46
       3 Animation     55
       4 Biography      7
       5 Comedy        69
       6 Crime         11
       7 Drama         37
       8 Family         3
       9 Horror         5
       10 Musical       1
       11 Mystery       1
       12 Sci-Fi        1
```

#### summary
```
แนวภาพยนตร์ยอดฮิต คือ ภาพยนตร์ Action (นับจากประเภทภาพยนตร์หลัก (genre_1) เท่านั้น)
```
-----------------------------------------------------------------------------------------------------------------------
### 6. ภาพยนตร์เรท R มีทั้งหมดกี่เรื่อง

#### code
```
blockbusters %>%
    count(mpaa_rating) %>%
    filter(mpaa_rating == "R")
```
#### result
```
   mpaa_rating     n
     <chr>       <int>
   1   R          95
```

#### summary
```
ภาพยนตร์เรท R มีทั้งหมด 95 เรื่อง
```
-----------------------------------------------------------------------------------------------------------------------
### 7. mpaa_rating ยอดฮิตในแต่ละปีคือเรทอะไร

#### code
```
blockbusters %>% group_by(release_year) %>% count(mpaa_rating)
```
#### result
```
    release_year   mpaa_rating            n
       <dbl>          <chr>             <int>
    1  1977            PG                 8
    2  1977            R                  2
    3  1978            PG                 6
    4  1978            PG-13              1
    5  1978            R                  3
    6  1979            G                  1
    7  1979            PG                 4
    8  1979            R                  5
    9  1980            PG                 6
    10 1980            R                  4
    # … with 117 more rows
```

#### summary
```
#mpaa_rating ยอดฮิตในแต่ละปี ได้แก่
    release_year   mpaa_rating            n
       <dbl>          <chr>             <int>
    1  1977            PG                 8
    3  1978            PG                 6
    8  1979            R                  5
    9  1980            PG                 6
    # … with 117 more rows
```
-----------------------------------------------------------------------------------------------------------------------
## 8. imdb_rating ที่สูงที่สุดคือภาพยนตร์เรื่องใด และเรทเท่าใด

#### code
```
blockbusters %>% filter(imdb_rating == max(imdb_rating)) %>% select(film_title, imdb_rating)
```
#### result
```
     film_title        imdb_rating
        <chr>             <dbl>
   1 The Dark Knight        9
```

#### summary
```
imdb_rating ที่สูงที่สุดคือ 9 ภาพยนตร์เรื่อง The Dark Knight
```
-----------------------------------------------------------------------------------------------------------------------
## 9. ภาพยนตร์เรื่องใดฉายแค่ในประเทศเท่านั้น

#### code
```
blockbusters %>%
    select(film_title) %>%
    filter(blockbusters$worldwide_gross == blockbusters$domestic_gross)
```
#### result
```
         film_title               
         <chr>                    
        1 Three Men and a Baby     
        2 Good Morning, Vietnam    
        3 Moonstruck               
        4 The Untouchables         
        5 The Karate Kid Part II   
        6 Star Trek IV: Voyage Home
        7 Back to School           
        8 The Golden Child         
        9 The Color Purple         
        10 Witness                  
        with 57 more rows
```

#### summary
```
ภาพยนตร์ที่ฉายแค่ในประเทศเท่านั้น มีทั้งหมด 67 เรื่อง ได้แก่
        1 Three Men and a Baby     
        2 Good Morning, Vietnam    
        3 Moonstruck               
        4 The Untouchables         
        5 The Karate Kid Part II   
        6 Star Trek IV: Voyage Home
        7 Back to School           
        8 The Golden Child         
        9 The Color Purple         
        10 Witness                  
        with 57 more rows
        
เนื่องจากมี worldwide_gross เท่ากับ domestic_gross
```
