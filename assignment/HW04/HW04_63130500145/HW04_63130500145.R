#install
install.packages("dplyr")
install.packages("readr")
install.packages("stringr")
install.packages("ggplot2")
install.packages("tidyr")

# Library
library(dplyr)
library(readr)
library(stringr)
library(ggplot2)

# Dataset
superStore <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")

glimpse(superStore)

View(superStore)

#ลูกค้าที่ Los Angeles ที่ซื้อของประเภท Furniture
superStore %>%
  select(`Customer Name`,`Product Name`,Category) %>% 
  filter((superStore$City == "Los Angeles"),(superStore$Category  == "Furniture"))

#ลูกค้าที่ชื่อ Tracy Blumstein ซื้อสินค้าอะไรไปบ้าง
superStore %>%
  select(`Customer Name`,`Product Name`) %>% 
  filter(superStore$`Customer Name` == "Tracy Blumstein")

#ลูกค้าซื้อสินค้าประเภทอะไรมากที่สุด
superStore %>% select(Category) %>% table()

#สินค้าที่ราคาน้อยกว่า 1 
superStore %>% select(`Product ID`,`Product Name`,Sales) %>% filter(Sales < 1)

#ลูกค้า 3 คนที่ซื้อของราคาแพงที่สุด
superStore %>% select(`Customer Name`,`Product Name`,Sales) %>% slice_max(Sales , n=3 )

#บริการขนส่งที่คนใช้น้อยที่สุดคือบริการไหน มีจำนวนกี่ครั้ง
superStore %>% count(`Ship Mode`) %>% slice_min(n)

#num of Category sales
sg <- ggplot(superStore,aes(x=`Category`)) + 
  geom_bar(fill="#6666CC") + 
  ggtitle("Number of Category sales") +
  xlab("Category") + 
  ylab("Number of Sales")
sg


rg <- superStore %>% filter(Sales < 1 ) %>% ggplot(aes(x=Region,y=Sales))+
  geom_point(aes(color=Region))

rg+ggtitle("Sales of each region that sales less than $1")





