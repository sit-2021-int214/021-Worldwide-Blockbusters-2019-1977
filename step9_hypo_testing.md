# Analytical Inferential Statistics
Statistical inference is the process of using data analysis to infer properties of an underlying distribution of probability. Inferential statistical analysis infers properties of a population, for example by testing hypotheses and deriving estimates. It is assumed that the observed data set is sampled from a larger population. [(Reference)](https://en.wikipedia.org/wiki/Statistical_inference)

## Step 9 : Hypothesis testing
Hypothesis testing is an act in statistics whereby an analyst tests an assumption regarding a population parameter. The methodology employed by the analyst depends on the nature of the data used and the reason for the analysis. [(Reference)](https://www.investopedia.com/terms/h/hypothesistesting.asp)

### Question
- The total number of films in Walt Disney is 76. 6 films are suitable for PG-13 in MPAA rating (Parents Strongly Cautioned, Some Material May Be Inappropriate for Children Under 13) so, All PG-13 rated films will have a IMDb rating more than 8. (Let alpha = 0.05)

### Step 9.0 : Assign variables
```
  ใส่ตัวแปร
```
  
### Step 9.1 : State the hypothesis
```
Ho : μ > 8
Ha : μ <= 8
```
### Step 9.2 : Select Level of significance (alpha)
```
alpha = 0.05 
```

### Step 9.3 : Find the values of standard error of the proportion and Test static
```
ใส่ที่หา se กับ z

ex from psafe
   - z/t <- (xbar - u0) / (sd/sqrt(n))
   - z <- (pbar-p0) / sqrt((p0\*(1-p0))/n)
```


### Step 9.4 : Finding P-value approach or Critical Value approach
```
ใส่ที่หา p value กับ critical 
pnorm, qnorm

ex from psafe
   - P-value for Z: `pvalue <- pnorm(z)`
   - Critical Value for Z: `zalpha <- qnorm(alpha)`
   - P-value for T: `pvalue <- pt(q, df,lower.tail = TRUE)`
   - talpha for T: `talpha <- qt(p, df, lower.tail = TRUE)`
 ```
 
### Step 9.5 : Compare P-value with alpha or z/t with zalpha/talpha
```
ใส่ if-else ที่ check ค่า reject/not reject h0
```

### Step 9.6 : Conclusion
```
สรุป
```


