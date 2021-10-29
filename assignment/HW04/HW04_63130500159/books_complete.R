# install library
install.packages("tidyverse")
install.packages("assertive")

# call library
library(tidyverse)
library(assertive)  # Readable check functions to ensure code integrity

# Explore dataset
# import dataset
books <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")

# see dataset info
View(books)
glimpse(books)

# check duplicate data
sum(duplicated(books)) # [1] 0

# check null value
sum(is.na(books))      # [1] 0

# example of check data type
assert_is_character(books$Reviews)

#-----------------------------------------------------------------------------

# Learning function from Tidyverse
books %>% filter(Book_title %>% str_detect("Art"))

#-----------------------------------------------------------------------------

# Define a question
## จำนวนหนังสือทั้งหมดแยกตามประเภท
num_of_books <- books %>% group_by(Type) %>% count()


## หนังสือประเภท Paperback ที่มีราคาต่ำกว่า 20 โชว์ข้อมูลเฉพาะชื่อหนังสือ  ประเภทและราคา
books %>% select(Book_title, Type, Price) %>% filter(Type %in% "Paperback" & Price < 20)


## หนังสือที่มีจำนวนหน้าน้อยที่สุด คือเรื่องอะไร ประเภทไหนและมีราคาเท่าไร
books %>% select(Book_title, Type, Number_Of_Pages ,Price) %>% filter(Number_Of_Pages == min(Number_Of_Pages))


## หาค่าเฉลี่ยของ rating ของหนังสือแต่ละประเภท
books %>% group_by(Type) %>% summarise(Rating_mean = mean(Rating))

## หนังสือที่ไม่มี review เลยคือเรื่องใด
books %>% select(Book_title, Reviews) %>% filter(Reviews == 0) %>% print(n = 30)


## หนังสือที่มีจำนวนหน้าอยู่ระหว่าง 550-600 และมีราคาไม่เกิน 70 มีเรื่องใดบ้าง
books %>% select(Book_title, Number_Of_Pages, Price) %>% filter(Number_Of_Pages >= 550 & Number_Of_Pages <= 600 & Price < 70)


## หาหนังสือที่เกี่ยวกับ programming ที่มีราค่าต่ำกว่า 25
books %>% filter(Book_title %>% str_detect("Programming") & Price < 25) 

#-----------------------------------------------------------------------------

# Graph
# bar and pie chart show number of books for each types
# bar chart
bar <- books %>% ggplot(aes(x = Type)) + geom_bar(width = 0.7) + 
      ggtitle("Number of books of each types") +
      xlab("Type of books") +
      ylab("Number of books") +
      ggtitle("Graph show the number of books for each types.")

# pie chart
pie <- num_of_books %>% ggplot(aes(x="", y=n, fill=Type)) + geom_col() + 
       coord_polar(theta = "y") + geom_text(aes(label = n),
       position = position_stack(vjust = 0.5)) + theme_void() +
  ggtitle("Graph show the number of books for each types.")


# plot scatter show relation between rating and reviews which rating has more than 4.2 points.
scatter <- books%>% filter(Rating > 4.2 ) %>%
          ggplot(aes(x=Rating, y=Reviews)) + geom_point(aes(color=Type)) +
          ggtitle("Relation between rating and reviews")









