## Part 1 : Explore the dataset

## Step 1 : เรียกใช้ Library
```
#install
install.packages("dplyr")
install.packages("readr")
install.packages("ggplot2")

#library
library(dplyr)
library(readr)
library(ggplot2)
```

## Step 2 : Import Dataset
```
programming_book <- read.csv('https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv')
```

## Step 3 : Explore the dataset
```
glimpse(programming_book)
```

## Result : 
```
Rows: 271
Columns: 7
$ Rating          <dbl> 4.17, 4.01, 3.33, 3.97, 4.06, 3.84, 4.09, 4.15, 3.87, 4.62, 4.03, 3.78, 3.73, 3.87, 3.87, 3.95,~
$ Reviews         <chr> "3,829", "1,406", "0", "1,658", "1,325", "117", "5,938", "1,817", "2,093", "0", "160", "481", "~
$ Book_title      <chr> "The Elements of Style", "The Information: A History, a Theory, a Flood", "Responsive Web Desig~
$ Description     <chr> "This style manual offers practical advice on improving writing skills. Throughout, the emphasi~
$ Number_Of_Pages <int> 105, 527, 50, 393, 305, 288, 256, 368, 259, 128, 352, 352, 200, 328, 240, 288, 392, 304, 336, 5~
$ Type            <chr> "Hardcover", "Hardcover", "Kindle Edition", "Hardcover", "Kindle Edition", "Paperback", "Hardco~
$ Price           <dbl> 9.323529, 11.000000, 11.267647, 12.873529, 13.164706, 14.188235, 14.232353, 14.364706, 14.50294~

```

## Description Dataset
1. Rating : คะแนนของหนังสือ
2. Reviews : จำนวนคนที่รีวิว
3. Book_title : ชื่อหนังสือ
4. Description : คำอธิบายของหนังสือ
5. Number_Of_Pages : จำนวนหน้าของหนังสือ
6. Type : รูปแบบของหนังสือ
7. Price : ราคาของหนังสือ
