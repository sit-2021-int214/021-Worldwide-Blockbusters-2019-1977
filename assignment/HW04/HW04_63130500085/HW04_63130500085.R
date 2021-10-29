install.packages("readr")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("string")
install.packages("tidyr")

library(readr)
library(dplyr)
library(ggplot2)
library(stringr)
library(tidyr)

#load data
prog_book <- read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")

#view data
View(prog_book)

#glimpse
glimpse(prog_book)

#learn tidyverse
#string r
#str_subset
str_subset(prog_book$Book_title,"Programming")

#str_detect
sum(str_detect(prog_book$Type, "^Hardcover"))

#str_count
str_count(prog_book$Type, "[aeiou]")

#str_lacate
str_locate(prog_book$Type, "[aeiou]")

#str_extract
str_extract(prog_book$Type, "[aeiou]")

#str_match
str_match(prog_book$Type, "(.)[aeiou](.)")

#str_replace
str_replace(prog_book$Type, "[aeiou]", "??")

#str_split
str_split(prog_book$Book_title, "-")

#1.how the most have type of book
prog_book %>%
  group_by(Type) %>%
  count(Type)

#2.List of the cheapest books
prog_book %>% 
  filter(Price == min(Price))%>%
  select(Book_title,Price) 

#3.the Books that are not review at all
notReviewed <- prog_book %>% select(Book_title, Reviews)
notReviewed <- notReviewed %>% filter(Reviews == 0)
notReviewed
#4.the Books that are besting rating 
prog_book %>% 
  filter(Rating == max(Rating))%>%
  select(Book_title,Rating)

#5.list the book about that Data
dataBook <- str_subset(prog_book$Book_title,"Data")
dataBook

#6.the price sum when buy all book
sum_price_all_book <- prog_book %>% select(Price)
sum_price_all_book <- sum_price_all_book %>% sum(sum_price_all_book$Price)
sum_price_all_book

##graph1
ggplot(prog_book) + 
  aes(x = Type, color = Type, fill = Type) + 
  geom_density(alpha = 0.25) +
  ggtitle("Number of type of book")+
  xlab("Type")+ylab("Count")

#graph2
prog_book %>% filter(Rating > 4 ) %>% filter(Price <= 70) %>% ggplot(aes(x=Price,y=Rating))+
  geom_point(aes(color=Type)) +
  ggtitle("The Book that rating more than 4 and Price less than 70$")
  





