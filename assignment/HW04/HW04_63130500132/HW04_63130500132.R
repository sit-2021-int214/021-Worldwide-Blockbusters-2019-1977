install.packages("dplyr")
install.packages("readr")
install.packages("tidyr")
install.packages("ggplot2")

# Library
library(dplyr)
library(readr)
library(tidyr)
library(ggplot2)

# Dataset
ProgBooks <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")

# View Dataset
glimpse(ProgBooks)
View(ProgBooks)

# 1. หนังสือแต่ละประเภทมีราคาเฉลี่ยอยู่ที่เท่าไร
ProgBooks %>% 
  group_by(Type) %>% 
  select(Price) %>% 
  summarise(avg = mean(Price))

# 2. 10 อันดับหนังสือที่ได้รับรีวิวสูง
Top10Reviews <- ProgBooks %>% 
  select(Book_title,Reviews,Type) %>% 
  arrange(desc(Reviews)) %>% 
  head(10)

# 3. หนังสือประเภทไหนได้รับรีวิวมากที่สุด (ใน10อันดับข้อที่2.)
Top10Reviews %>% count(Type) 

# 4. เปรียบเทียบค่านิยมโดยดูจากค่าเฉลี่ย Rating ของหนังสือประเภทPaperback และ ประเภทebook
  Paperback_AVG <- ProgBooks %>% 
  select(Book_title,Rating,Type) %>% 
  filter(Type == "Paperback") 
  
Paperback_AVG$Rating %>% mean()

  Ebook_AVG <- ProgBooks %>% 
    select(Book_title,Rating,Type) %>% 
    filter(Type == "ebook") 
  
  Ebook_AVG$Rating %>% mean()

# 5. หนังสือเรื่องไหนบ้างที่ไม่มี Reviews เลยและจำนวนหน้าหนังสือไม่ต่ำกว่า200
ProgBooks %>% 
  select(Book_title,Reviews,Number_Of_Pages) %>% 
  filter(Reviews == 0,Number_Of_Pages >= 200)

# 6. แสดงชื่อหนังสือและคำอธิบายหนังสือ(Description ) ให้อยู่รวมกันใน column Books
ProgBooks %>% 
  select (Book_title,Description)  %>% 
  unite(Books, c(Book_title,Description),sep = "  :  ", remove = T) 

# Create graph
# 1.) หนังสือแต่ละประเภทมีราคาเฉลี่ยอยู่ที่เท่าไร
BookType_AVG <- ProgBooks %>% 
  group_by(Type) %>% 
  select(Price) %>% 
  summarise(avg = mean(Price))

BookType_plot <- BookType_AVG %>% 
  ggplot(aes(x=Type,y=avg))+ geom_point(aes(color=Type,size=avg))

BookType_plot 

# 2.) หนังสือประเภทไหนได้รับ Reviews มากที่สุด (ใน10อันดับแรก)
Top10Reviews <- ProgBooks %>% 
  select(Book_title,Reviews,Type) %>% 
  arrange(desc(Reviews)) %>% 
  head(10)   

Top10Reviews %>%
  count(Type) 


Top10Reviews_plot <- table(Top10Reviews$'Type')
 barplot(Top10Reviews_plot,main = "Top 10 most reviewed book types", ylab = "n", xlab = "Type",col = "steelblue2", las=1)
