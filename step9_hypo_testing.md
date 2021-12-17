# Analytical Inferential Statistics
Statistical inference is the process of using data analysis to infer properties of an underlying distribution of probability. Inferential statistical analysis infers properties of a population, for example by testing hypotheses and deriving estimates. It is assumed that the observed data set is sampled from a larger population. [(Reference)](https://en.wikipedia.org/wiki/Statistical_inference)

## Step 9 : Hypothesis testing
Hypothesis testing is an act in statistics whereby an analyst tests an assumption regarding a population parameter. The methodology employed by the analyst depends on the nature of the data used and the reason for the analysis. [(Reference)](https://www.investopedia.com/terms/h/hypothesistesting.asp)

### Question
- หนังทั้งหมดของค่าย walt disney มีทั้งหมด 76 เรื่อง จากหนังทั้งหมด 430 เรื่อง โดยมีค่าเฉลี่ยของ imdb rating = 7.08 ซึ่งเราได้ตั้งสมมติฐานว่า imbd rating ของ walt disney จะมี imbd rating มากกว่าค่าเฉลี่ยของหนังทั้งหมดหรือไม่ ที่ระดับความเชื่อมั่น 95%. (alpha = 0.05)
### Step 9.0 : Assign variables
```
n <- 430
num_of_WaltDisney <- 76
sd <- 0.6357
mean_n <- 7.08
mean_WaltDisney <- 7.3

```
  
### Step 9.1 : State the hypothesis
```
Ho = 7.08
Ha != 7.08
```
### Step 9.2 : Select Level of significance (alpha)
```
alpha = 0.05 
```

### Step 9.3 : Find the values of standard error of the proportion and Test static
```
se_of_p <- sd/sqrt(num_of_WaltDisney) = 0.07841086
tValue <- (mean_WaltDisney - p0)/se_of_p = 4.081068
```


### Step 9.4 : Finding P-value approach or Critical Value approach
```
pValue <- pnorm(4) = 0.9999683
t_critical <- qnorm(0.05) = -1.959964
 ```
 
### Step 9.5 : Compare P-value with alpha or z/t with zalpha/talpha
```
#p-value
if(p<0.05){
  print("reject H0")
}else{
  print("accept H0")
}

#critical
if(t<t_critical){
  print("reject H0")
}else{
  print("accept H0")
}
```

### Result
```
p-value = reject Ho
critical = reject Ho 
```

### Step 9.6 : Conclusion
```
imbd rating ของ Walt Disney มีค่าน้อยกว่าค่าเฉลี่ยของหนังทั้งหมด
```


