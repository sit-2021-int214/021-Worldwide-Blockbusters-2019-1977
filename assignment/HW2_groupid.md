# Assignment 2 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.

## 1. From survey, most students use left hand writing.

```
factor(survey[,4])
writeHand <- factor(survey[,4])
summary(writeHand)
```
### Answer     
```
 Left Right  NA's
  18   218    1
  # False because from summary, show about the most writing hand's of students is right hand.
```
-----------------------------------------------------------------------------------------------------------------------

## 2. The average of body weight of cats is 3 kg.

```
mean(cats[,2])
```
### Answer     
```
2.723611
 # False because the answer of mean is 2.723611 kg.
``` 
-----------------------------------------------------------------------------------------------------------------------

## 3. The average of women height are 160 cm.
```
with(survey,
     aggregate(survey$Height,na.rm = TRUE,
               by=list(Gender=Sex),
               mean))
```
### Answer     
```
   Gender        x
1  Female    165.6867
2  Male      178.8260
 # False because the average of women height are 165.6867 cm.
```
-----------------------------------------------------------------------------------------------------------------------

## 4. The students who never smoked at all had the highest number.
```
factor(survey[,9])
smoke <- factor(survey[,9])
summary(smoke)
```
### Answer
```
  Heavy Never Occas Regul  NA's 
   11   189    19    17     1 
   # True because from summary, show about the most students who never smoked had 189 people.
```
-----------------------------------------------------------------------------------------------------------------------

## 5. Find the average weight of male and female cats ?
```
with(cats,
     aggregate(cats[,2],
               by=list(Gender=Sex),
               mean))
```
### Answer
```
    Gender        x
1     F       2.359574
2     M       2.900000
 # The average weight of male cats are 2.900000 and female cats are 2.359574 kg.
```
-----------------------------------------------------------------------------------------------------------------------
## 6. Find the average of span of writing hand ?
```
mean(survey$Wr.Hnd, na.rm = TRUE)
```
### Answer
```
18.66907
 # The average of span of writing hand is 18.66907. From survey table, it has NA values. 
   So we use "na.rm" argument for remove NA values.
```
-----------------------------------------------------------------------------------------------------------------------
## 7. How often do students exercise ?
```
Mode(survey[,8])

factor(survey[,8])
Exer <- factor(survey[,8])
summary(Exer)
```
### Answer
```
 Freq  None  Some 
 115    24    98 
  # The summary show the students do exercise have 3 values, are frequently is 115, Some is 98 and None is 24 people.
 ```
-----------------------------------------------------------------------------------------------------------------------

## 8. Find the total weight of cats ?
```
sum(cats[,2])
```
### Answer
```
392.2
 # We use "sum" function to find the total weight of cats. Value is 392.2 kg.
```
-----------------------------------------------------------------------------------------------------------------------

### Team: โอ๊ยโย้ยโหยว (เสียงที่ 18)

1. พัชราภรณ์ เหง้าศิริ     StudentID : 63130500085
2. เพ็ญพิชชา อ่ำพิจิตร     StudentID : 63130500089
3. อรวรรณ สระแก้ว      StudentID : 63130500132
4. วิชานาถ แซ่โค้ว       StudentID : 63130500145
5. ศุภาพิชญ์ รัตนทวีโสภณ   StudentID : 63130500159
