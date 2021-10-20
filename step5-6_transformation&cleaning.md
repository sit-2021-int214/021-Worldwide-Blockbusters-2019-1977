# Data Cleaning and Transformation

## Step 5 : Transformation
```
## Mutate for add new variables
   blockbusters <- blockbusters %>% mutate(file_profit = worldwide_gross - film_budget)
```   

## Step 6 : Cleaning Dataset
```
# Cleaning Data
## Replace the NA values to NULL
   blockbusters$mpaa_rating <- replace(blockbusters$mpaa_rating, is.na(blockbusters$mpaa_rating), 'NULL')
   blockbusters$genre_2 <- replace(blockbusters$genre_2, is.na(blockbusters$genre_2), 'NULL')
   blockbusters$genre_3 <- replace(blockbusters$genre_3, is.na(blockbusters$genre_3), 'NULL')

## View dataset
   View(blockbusters) 

```
---
### Next to step 7 : Define a questions [Click Here!](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/Step7_define_question.md)
