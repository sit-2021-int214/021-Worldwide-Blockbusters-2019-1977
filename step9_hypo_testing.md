# Analytical Inferential Statistics
Statistical inference is the process of using data analysis to infer properties of an underlying distribution of probability. Inferential statistical analysis infers properties of a population, for example by testing hypotheses and deriving estimates. It is assumed that the observed data set is sampled from a larger population. [(Reference)](https://en.wikipedia.org/wiki/Statistical_inference)

## Step 9 : Hypothesis testing
Hypothesis testing is an act in statistics whereby an analyst tests an assumption regarding a population parameter. The methodology employed by the analyst depends on the nature of the data used and the reason for the analysis. [(Reference)](https://www.investopedia.com/terms/h/hypothesistesting.asp)

### Question
- The total number of top 10 worldwide blockbuster between 1997 and 2019 is 430, 76 films are in Walt Disney. All 430 films have an average IMDb rating at 7.076744. We hypothesize that an average of IMDb rating of Walt Disney films will have equal an average of 430 films or not, at 95% confidence interval.

### Step 9.0 : Assign variables
```
wdn_n <- 76                   # The number of Walt Disney films
wdn_imdb_mean <- 7.356579     # Walt Disney's mean
wdn_imdb_sd <- 0.6835857      # Walt Disney's standard deviation
wdn_mue0 <- 7.076744          # μ0
```
  
### Step 9.1 : State the hypothesis
```
Ho: μ = 7.076744 
Ha: μ != 7.076744
```
### Step 9.2 : Select Level of significance (alpha)
```
alpha <- 0.05                 # Alpha
alpha_2 <- 0.05/2             # Alpha/2
```

### Step 9.3 : Find the values of standard error of the mean and Test static
```
se <- wdn_imdb_sd/sqrt(wdn_n)         # Standard error of the mean
t <- (wdn_imdb_mean - wdn_mue0)/se    # Test static
```
Result :
```
# se : 0.07841266
# t : 3.568748
```
### Step 9.4 : Finding P-value approach or Critical Value approach
```
p_value <- pnorm(t)                   # p-value = 0.9998207 แต่ p-value มีค่าเยอะ จึงเอา 1 มาลบ

p_value_update <- 1-p_value           # so, p-value = 0.0001793457
t_critical <- qnorm(alpha_2)          # t-critical
```
Result :
```
# p_value : 0.0001793457
# t_critical : -1.959964
```

### Step 9.5 : Compare P-value with alpha or z/t with zalpha/talpha
```
if(p_value_update < alpha_2){     # p-value with alpha/2
  print("reject H0")
}else{
  print("accept H0")
}

if(t > t_critical){               # Test static with t-critical
  print("reject H0")
}else{
  print("accept H0")
}
```
Result :
```
# p-value : "reject H0"
# critical : "reject H0"
```

### Step 9.6 : Conclusion
```
To sum-up, an average of IMDb rating of all Walt Disney films have not equal an average of IMDb rating of all 430 films.
```


