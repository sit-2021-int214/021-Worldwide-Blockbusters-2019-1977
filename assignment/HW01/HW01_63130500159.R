# 1
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
sum(x)      #47.2
mean(x)     #9.44
sd(x)       #7.33846
median(x)   #6.4
var(x)      #53.853


# 2
# List of Marvel movies (Order by Marvel Phase released)
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")


# List of released year of Marvel movies
years <- c(2008,2008,2010,2011,2011,2012,rep(2013:2016,each=2),
           rep(2017,4),rep(2018,2),rep(2019,3),rep(2021,4))


# 2.1
#เลือกใช้ data.frame เพราะว่ามีการแสดงผลแบบตาราง ทำให้ดูข้อมูลได้ง่ายมากขึ้น แล้วก็สามารถเก็บข้อมูลได้ทุก type 
marvel_movies <- data.frame(names, years) 
View(marvel_movies)

#2.2
length(names)  #27
names[19]      #"Avengers: Infinity War"

getmode <- function(years) {
  uniqv <- unique(years)
  uniqv[which.max(tabulate(match(years, uniqv)))]
}
result <- getmode(years)
result         #2017



# เฉลย
#2017 and 2021
table_year <- table(years)
names(table_year)[table_year==max(table_year)]

