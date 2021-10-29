## Visualization with GGplot2

## 1. อยากทราบเรทติ้งและราคาของหนังสือทั้งหมดที่มีราคาต่ำกว่า 15
```
programming_book %>%
  filter(Price < 15) %>%
  ggplot(aes(x=Rating,y=Price) +
  geom_line() + ggtitle("Rating and Price then price less than 15") +
  theme_minimal()
```

![image](https://user-images.githubusercontent.com/68915844/139427399-8c4313a1-c374-42e4-a11f-8f5367926e65.png)

สรุป : หนังสือที่มีราคาต่ำกว่า 15 มีเรทติ้งตั้งแต่ 3.3 ถึง 4.6


## 2. รูปแบบหนังสือของ HardCover มีเรทติ้งเท่าไหร่
```
programming_book %>%
  filter(Type == "Hardcover")%>%
  ggplot(aes(x=Rating)) + 
  geom_histogram(bins = 10) +
  ggtitle("Rating of Hardcover Type") +
  theme_bw()
```

![image](https://user-images.githubusercontent.com/68915844/139427351-2c6f9ea4-63fb-4a2c-be85-a1fc3a284e2e.png)

สรุป : รูปแบบหนังสือของ HardCover มีเรทติ้งประมาณ 3.5 ถึง 5.0