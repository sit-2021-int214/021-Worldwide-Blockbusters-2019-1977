#Exercise 1
e <- c(10.4, 5.6, 3.1, 6.4, 21.7)
e
mean(e) #9.44
sum(e) #47.2
median(e) #6.4
sd(e) #7.33846
var(e) #53.853

#Exercise 2
#2.1
names <- c("Iron Man","The Incredible Hulk","Iron Man 2","Thor","Captain America: The First Avenger",
           "The Avengers","Iron Man 3","Thor: The Dark World","Captain America: The Winter Soldier",
           "Guardians of the Galaxy","Avengers: Age of Ultron","Ant-Man","Captain America: Civil War",
           "Doctor Strange","Guardians of the Galaxy 2","Spider-Man: Homecoming","Thor: Ragnarok","Black Panther",
           "Avengers: Infinity War","Ant-Man and the Wasp","Captain Marvel","Avengers: Endgame",
           "Spider-Man: Far From Home","WandaVision","Falcon and the Winter Soldier","Loki","Black Widow")
names

years <- c(2008,2008,2010,2011,2011,2012,2013,2013,2014,2014,2015,2015,2016,2016,
           2017,2017,2017,2017,2018,2018,2019,2019,2019,2021,2021,2021,2021)
years

marvel_movies <- data.frame(names,years)
View(marvel_movies)
#use data frame because two data have been created and both have the same number of list. can create matching tables and make data easier to see.

#2.2
length(names) #27
names[19] #Avengers: Infinity War
getmode <- function(m) {
  uniqv <- unique(m)
  tabulate_x <- tabulate(match(m, uniqv))
  uniqv[tabulate_x == max(tabulate_x)]
}
m <- getmode(years)
#2017 2021
m
