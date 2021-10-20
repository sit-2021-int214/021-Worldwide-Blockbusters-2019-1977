# 🎬 Data Analysis
![fall-movies-index-1628968089](https://user-images.githubusercontent.com/68915844/137787092-f32bf8ce-2923-4007-8c28-4cde095ef26c.jpg)

## 🎬 Tools
- R Language 
- R Studio Desktop 

## 🎬All Steps
1. Search datasets from Kaggle
2. Explore the dataset from the original dataset
3. Download Library and dataset
4. Exploratory Data Analysis
5. Transformation
6. Cleaning Dataset
7. Define a question

## Step 1 : Search datasets from Kaggle
เนื่องจากสมาชิกในกลุ่มมีความสนใจเกี่ยวกับภาพยนตร์เป็นอย่างยิ่ง จึงอยากทราบข้อมูลเชิงลึก เช่น เงินทุน, รายได้, rating และอื่น ๆ ทางคณะผู้จัดทำจึงคิดว่าการนำข้อมูลชุดนี้มาวิเคราะห์เป็นสิ่งที่น่าสนใจเพราะทำให้ได้รู้ความสำเร็จในการสร้างภาพยนตร์ของแต่ละเรื่อง อีกทั้งยังสามารถให้บุคคลที่สนใจในเรื่องภาพยนตร์ได้เลือกดูภาพยนตร์ได้ตามต้องการจากที่ทางคณะผู้จัดทำได้รวบรวมข้อมูลไว้

Original dataset from : https://www.kaggle.com/narmelan/top-ten-blockbusters-20191977

## Step 2 : Explore the dataset from the original dataset
The Worldwide Blockbusters 2019-1977 dataset provides information on the top 10 highest grossing films worldwide between the years 2019 and 1977. The data in the database contains the following release year, rank in year, IMDb rating, MPAA rating, title, budget, length, distributor, worldwide gross, domestic gross and genre. [Cilck here](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/Blockbusters_2019-1977.csv) for more information about this dataset.


## Step 3 : Loading library and dataset
```
# Install packages
   install.packages("dplyr")
   install.packages("stringr")
   install.packages("tidyr")
   install.packages("assertive")
   install.packages("readr")

# Listing packages
   library(dplyr)
   library(stringr)
   library(tidyr)
   library(assertive)
   library(readr)

# Import the dataset
   blockbusters <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/main/Blockbusters_2019-1977.csv")

# View dataset
   View(blockbusters)

```

## Step 4 : Exploratory Data Analysis
  1. release_year	: ปีที่ฉายภาพยนตร์ ข้อมูลเป็น numberic 
  2. rank_in_year : อันดับของภาพยนตร์ที่ได้ ในปีนั้น ข้อมูลเป็น numberic 
  3. imdb_rating : คะแนน IMDb ที่ภาพยนตร์ได้รับ ข้อมูลเป็น numberic 
   (IMDb คือ เว็บไซต์ฐานข้อมูลเกี่ยวกับภาพยนตร์ทั่วโลก ตั้งแต่นักแสดง ผู้กำกับ และอื่น ๆ อีกมากมาย ชื่อเต็มคือ The Internet Movie Database) ข้อมูลเป็น numberic 
  4. mpaa_rating : Motion Picture Association of America หรือ MPAA คือการจำแนกประเภทภาพยนตร์ ข้อมูลเป็น character (แทนที่ค่า NA เป็นคำว่า NULL)
  5. film_title : ชื่อภาพยนตร์ ข้อมูลเป็น character
  6. film_budget : จำนวนเงินลงทุน ข้อมูลเป็น numberic 
  7. length_in_min : ความยาวของภาพยนตร์ (หน่วยเป็น นาที) ข้อมูลเป็น numberic 
  8. domestic_distributor : ค่ายหนังของภาพยนตร์ ข้อมูลเป็น character
  9. worldwide_gross	: รายได้รวมทั่วโลกของภาพยนตร์นั้น ๆ ข้อมูลเป็น numberic 
 10. domestic_gross	: รายได้รวมในประเทศ ข้อมูลเป็น numberic 
 11. genre_1	: ประเภทของภาพยนตร์ ประเภทที่ 1 ข้อมูลเป็น character
 12. genre_2	: ประเภทของภาพยนตร์ ประเภทที่ 2 ข้อมูลเป็น character แทนที่เป็นค่า NA เป็นคำว่า NULL 
 13. genre_3 : ประเภทของภาพยนตร์ ประเภทที่ 3 ข้อมูลเป็น character แทนที่เป็นค่า NA เป็นคำว่า NULL 
 14. film_budget : กำไร (รายได้-ต้นทุน) ข้อมูลเป็น numberic เป็นการสร้างเพิ่มเพื่อต้องการทราบกำไรของหนังแต่ละเรื่อง

เช็ค data type ด้วย
```
is.character()
is.numeric()
is.logical()
is.factor()
is.Date()
```
---
### Next to step 5 and 6 : Data cleaning and transformation [Click Here!](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/step5-6_transformation&cleaning.md)
