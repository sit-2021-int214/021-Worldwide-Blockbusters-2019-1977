# Data Cleaning and Transformation
[blockbusters_clean.csv](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/blockbusters_clean.csv) : Cleaning dataset

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

```
จาก Dataset มีข้อมูลที่เป็นค่า NA ใน Column ของ mpaa_rating, genre2 และ gern3 ซึ่งจะส่งผลให้การสรุปข้อมูลเป็น NA ได้ 
จึงได้ทำการแทนที่ค่า NA ด้วยคำว่า NULL
```
---
### Next to step 7 : Define a questions [Click Here!](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/step7_define_question.md)

