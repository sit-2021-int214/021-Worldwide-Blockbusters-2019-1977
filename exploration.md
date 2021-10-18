# Exploratory Data Analysis

## Steps
1. Search datasets from Kaggle
2. Explore the dataset from the original dataset
3. Download Library and dataset
4. Exploratory Data Analysis
5. Cleaning Dataset
6. Define a question


## Step 1 : Search datasets from Kaggle

`เนื่องจากสมาชิกในกลุ่มมีความสนใจเกี่ยวกับภาพยนตร์เป็นอย่างยิ่ง จึงอยากทราบข้อมูลเชิงลึก บลา ๆ`

Dataset from : https://www.kaggle.com/narmelan/top-ten-blockbusters-20191977

## Step 2 : Explore the dataset from the original dataset
 The Worldwide Blockbusters 2019-1977 dataset provides information on the top 10 highest grossing films worldwide between the years 2019 and 1977. [Cilck here](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/Blockbusters_2019-1977.csv) for more information about this dataset.
 
 
#### ใน dataset นี้ ประกอบไปด้วย 

`column ใน dataset เรามีไรบ้าง`

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
`อธิบายข้อมูลเรา มีไรบ้าง บลา ๆ`

  
     
## Step 5 : Cleaning Dataset
```
# Cleaning Data
## Replace the NA values to NULL
   blockbusters$mpaa_rating <- replace(blockbusters$mpaa_rating, is.na(blockbusters$mpaa_rating), 'NULL')
   blockbusters$genre_2 <- replace(blockbusters$genre_2, is.na(blockbusters$genre_2), 'NULL')
   blockbusters$genre_3 <- replace(blockbusters$genre_3, is.na(blockbusters$genre_3), 'NULL')

## View dataset
   View(blockbusters) 

```

## Step 6 : Define a question
1. หนังเรื่องไหนทำรายได้มากที่สุด (รายได้ - ต้นทุน)
2. ค่ายไหนทำรายได้ได้มากที่สุดของปีนั้น ๆ
3. ในปี 2019 joker อยู่ลำดับที่เท่าไหร่ แล้วทำรายได่เท่าไหร่
4. หนังเรื่องไหนมี budget สูงที่สุด
5. แนวหนังยอดฮิต
6. หนังอันดับ 1 ของทุกปี มีรายได้รวมเท่าไหร่
7. หนังที่มีความยาวมากที่สุดคือเรื่องอะไรแล้วมีความยาวเท่าไหร่
8. ค่ายไหนติดอันดับบ่อยที่สุด
9. หนังเรท R มีกี่เรื่อง
10. mpaa_rating ยอดฮิตในแต่ละปี
11. imdb_rating ที่สูงที่สุดคือเรื่องอะไร แล้วเรทเท่าไหร่
12. หนังเรื่องไหนฉายแค่ในประเทศเท่านั้น (worldwide = domestic)
13. imdb_rating ที่สูงสุดในแต่ละปี คือเท่าไหร่ และเรื่องอะไรบ้าง

### 1.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------

### 2.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
### 3.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
### 4.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
### 5.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
### 6.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
### 7.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
## 8.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
## 9.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------

## 10.

#### code
```

```
#### result
```

```

#### sum up
```

```
-----------------------------------------------------------------------------------------------------------------------
