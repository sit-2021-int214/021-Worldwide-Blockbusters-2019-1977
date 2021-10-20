# Define a questions
## Step 7 : Define a questions
1. หนังเรื่องไหนทำรายได้มากที่สุด
2. ค่ายไหนทำรายได้ได้มากที่สุดของปีนั้น ๆ
3. ในปี 2019 joker อยู่ลำดับที่เท่าไหร่ แล้วทำรายได่เท่าไหร่
4. หนังเรื่องไหนมี budget สูงที่สุด
5. แนวหนังยอดฮิต
6. หนังเรท R มีกี่เรื่อง
7. mpaa_rating ยอดฮิตในแต่ละปี
8. imdb_rating ที่สูงที่สุดคือเรื่องอะไร แล้วเรทเท่าไหร่
9. หนังเรื่องไหนฉายแค่ในประเทศเท่านั้น

### 1. หนังเรื่องไหนทำรายได้มากที่สุด

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
       1 Avatar        2507336793
```

#### summary
```
หนังที่ทำรายได้มากที่สุดคือ Avatar มีรายได้ถึง 2507336793
```
-----------------------------------------------------------------------------------------------------------------------

### 2. ค่ายไหนทำรายได้ได้มากที่สุดของปีนั้น ๆ

#### code
```
blockbusters %>% select(domestic_distributor, worldwide_gross) %>% 
    filter(worldwide_gross == max(worldwide_gross))
```
#### result
```
 domestic_distributor         worldwide_gross
        <chr>                      <dbl>
     1 Walt Disney               2797800564
```

#### summary
```
ค่ายที่ทำรายได้มากที่สุดของปีคือ Walt Disney มีรายได้ถึง 2797800564
```
-----------------------------------------------------------------------------------------------------------------------
### 3. ในปี 2019 joker อยู่ลำดับที่เท่าไหร่ แล้วทำรายได้เท่าไหร่

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
       1       2019 Joker        7         1016030470
```

#### summary
```
ในปี 2019 Joker อยู่ลำดับที่ 7 มีรายได้ 1016030470
```
-----------------------------------------------------------------------------------------------------------------------
### 4. หนังเรื่องไหนมี budget สูงที่สุด

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
แนวหนังที่มี Budget เยอะที่สุดตือ Avengers: Endgame
```
-----------------------------------------------------------------------------------------------------------------------
### 5. แนวหนังยอดฮิต

#### code
```
blockbusters %>% count(genre_1)
```
#### result
```
        genre_1          n
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
แนวหนังยอดฮิตคือแนวหนัง Action
```
-----------------------------------------------------------------------------------------------------------------------
### 6. หนังเรท R มีกี่เรื่อง

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
      1 R          95
```

#### summary
```
หนังเรท R มีทั้งหมด 95 เรื่อง
```
-----------------------------------------------------------------------------------------------------------------------
### 7. mpaa_rating ยอดฮิตในแต่ละปี

#### code
```
blockbusters %>% group_by(release_year) %>% count(mpaa_rating)
```
#### result
```
    release_year   mpaa_rating            n
       <dbl>          <chr>             <int>
        1            1977 PG              8
        2            1977 R               2
        3            1978 PG              6
        4            1978 PG-13           1
        5            1978 R               3
        6            1979 G               1
        7            1979 PG              4
        8            1979 R               5
        9            1980 PG              6
        10           1980 R               4
```

#### summary
```
#mpaa_rating ยอดฮิตในแต่ละปี
release_year   mpaa_rating            n
       <dbl>          <chr>             <int>
        1            1977 PG              8
        2            1977 R               2
        3            1978 PG              6
        4            1978 PG-13           1
        5            1978 R               3
        6            1979 G               1
        7            1979 PG              4
        8            1979 R               5
        9            1980 PG              6
        10           1980 R               4
```
-----------------------------------------------------------------------------------------------------------------------
## 8. imdb_rating ที่สูงที่สุดคือเรื่องอะไร แล้วเรทเท่าไหร่

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
imdb_rating ที่สูงที่สุดคือเรื่อง The Dark Knight เรทอยู่ที่ 9
```
-----------------------------------------------------------------------------------------------------------------------
## 9. หนังเรื่องไหนฉายแค่ในประเทศเท่านั้น

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
หนังที่ฉายแค่ในประเทศเท่านั้นได้แก่
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
-----------------------------------------------------------------------------------------------------------------------
