library(dplyr)
library(readr) 
library(assertive)
library(stringr)
library(tidyr)

# import blockbusters_clean
blockbusters <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/main/blockbusters_clean.csv")

View(blockbusters)

# ------------------------------------------------------------------------------------------------------------------------

# หนังทั้งหมดของค่าย walt disney มีทั้งหมด 76 เรื่อง จากหนังทั้งหมด 430 เรื่อง
# โดยมีค่าเฉลี่ยของ imdb rating = 7.08 ซึ่งเราได้ตั้งสมมติฐานว่า imbd rating ของ walt disney จะมี imbd rating 
# มากกว่าค่าเฉลี่ยของหนังทั้งหมดหรือไม่ ที่ระดับความเชื่อมั่น 95%. (alpha = 0.05)

# The total number of top 10 worldwide blockbuster between 1997 and 2019 is 430. 76 films are in Walt Disney.
# All 430 films have an average IMDb rating at 7.076744. We hypothesize that the IMDb rating of Walt Disney films 
# will have more than 430 films or not, at 95% confidence interval.

# ค่าเฉลี่ยของหนังทั้งหมด (430 เรื่อง)
mean(blockbusters$imdb_rating, na.rm = T) # 7.076744 (ใส่ใจโจทย์)

# เลือกเอาเฉพาะข้อมูลของ walt disney
num_of_waltdisney <- blockbusters %>%
  select(imdb_rating, film_title, domestic_distributor) %>% 
  filter(domestic_distributor == "Walt Disney") %>% print(n=100)

# หาค่าเฉลี่ยกับ sd ของ imdb ของ walt disney ใช้ของ disney ทั้งหมด
mean(num_of_waltdisney$imdb_rating) # 7.356579
sd(num_of_waltdisney$imdb_rating) # 0.6835857

# assign variable
wdn_n <- 76
wdn_imdb_mean <- 7.356579
wdn_imdb_sd <- 0.6835857
wdn_mue0 <- 7.076744

# State the hypothesis
# Ho = 7.076744
# Ha != 7.076744

#  Select Level of significance (alpha)
alpha <- 0.05
alpha_2 <- 0.05/2

# Find the values of standard error of the mean and Test static
se <- wdn_imdb_sd/sqrt(wdn_n)
# 0.07841266

t <- (wdn_imdb_mean - wdn_mue0)/se
#  3.568748

p_value <- pnorm(t)
# 0.9998207 (p-value มีค่าเยอะ จึงเอา 1 มาลบ)
p_value_update <- 1-p_value   # 0.0001793457


t_critical <- qnorm(alpha_2)
# -1.959964

#p-value
if(p_value_update < alpha_2){      
  print("reject H0")
}else{
  print("accept H0")
}
# reject H0

#critical
if(t > t_critical){
  print("reject H0")
}else{
  print("accept H0")
}
# reject H0
