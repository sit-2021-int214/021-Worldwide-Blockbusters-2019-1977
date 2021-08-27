# Assignment 2 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.

### Answer

1.) From survey, most students use left hand writing.
factor(survey[,4])
writeHand <- factor(survey[,4])
summary(writeHand)
# Left Right  NA's 
   18   218     1 
#ไม่จริง เพราะว่า จากข้อมูลมีคนมือถนัดขวามากกว่ามือซ้าย

2.) The average of body weight of cats is 3 kg.
mean(cats[,2])
#2.723611

3.)The average of height of females is 160 cm.
with(survey,
     aggregate(survey$Height,na.rm = TRUE,
               by=list(Gender=Sex),
               mean))
#  Gender        x
1 Female 165.6867
2   Male 178.8260



5.)The students who never smoked at all had the highest number.
factor(survey[,9])
smoke <- factor(survey[,9])
summary(smoke)
#Heavy Never Occas Regul  NA's 
   11   189    19    17     1 

6.)แมวที่มีน้ำหนักหัวใจน้อยที่สุดจะมีน้ำหนักตัวน้อยที่สุดเช่นกัน

7.)น้ำหนักแมวเพศชายเฉลี่ยมากกว่าแมวเพศหญิง
with(cats,
     aggregate(cats[,2],
               by=list(Gender=Sex),
               mean))
#  Gender        x
1      F 2.359574
2      M 2.900000

9.)หาค่าเฉลี่ยความกว้างของมือเพศชาย
mean(survey$Wr.Hnd, na.rm = TRUE)

s <- na.omit(survey[,2])
mean(s)

10.)นักเรียนส่วนใหญ่ออกกำลังกายบ่อยแค่ไหน
Mode(survey[,8])

factor(survey[,8])
Exer <- factor(survey[,8])
summary(Exer)




.)น้ำหนักตัวแมวทั้งหมด
sum(cats[,2])
#392.2

sd(cats[,2])
4.)นักเรียนที่ออกกำลังบ่อย จะมีอัตราชีพจรต่ำสุดนาที
8.)แมวที่น้ำหนักตัวเกินค่าเฉลี่ยส่วนใหญ่เป็นเพศอะไร


### Team: โอ๊ยโย้ยโหยว (เสียงที่ 18)

1. พัชราภรณ์ เหง้าศิร     StudentID: 63130500085
2. เพ็ญพิชชา อ่ำพิจิตร     StudentID: 63130500089
3. อรวรรณ สระแก้ว      StudentID: 63130500132
4. วิชานาถ แซ่โค้ว       StudentID: 63130500145
5. ศุภาพิชญ์ รัตนทวีโสภณ   StudentID: 63130500159
