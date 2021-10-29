## Part 2 : Learning function from Tidyverse & Transform data with dplyr and finding insight the data

## 1. อยากทราบความนิยมที่ได้เรทติ้งสูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

## Code
```
programming_book %>%
  select(Rating, Type) %>%
  filter(Rating == max(Rating))
```

## Result
```
  Rating  Type
1      5 ebook
```

## 2. หนังสือที่ไม่เคยได้รับการรีวิวเลยมีหนังสือเรื่องใดบ้าง 

## Code
```
programming_book %>%
  select(Book_title)%>%
  filter(programming_book$Reviews == 0)
```

## Result
```
    Book_title
1                                                                                               Responsive Web Design Overview For Beginners
2                                                                            ZX Spectrum Games Code Club: Twenty fun games to code and learn
3                                                                                                              Game Programming Golden Rules
4                                                          Beginners Guide On PHP Programming: Quick And Easy Guide To Learn PHP With My-SQL
5                                     Python Programming Books Set: Python Programming for Beginners & Complete Guide for Python Programming
6                                                                                                                    Your First App: Node.js
7                                                              Python Programming For Beginners: Quick And Easy Guide For Python Programmers
8                                                                                                            Building an FPS Game with Unity
9                                                                                        Advanced Game Programming: A Gamedev.Net Collection
10                                                                                                                        Basic Proof Theory
11                                                 Cross-Platform Game Programming (Game Development) (Charles River Media Game Development)
12                                                                                   Lambda-Calculus, Combinators and Functional Programming
13                                                        The Calculus of Computation: Decision Procedures with Applications to Verification
14                                                                        Communication Networks: Fundamental Concepts and Key Architectures
15                                                                          Genetic Programming II: Automatic Discovery of Reusable Programs
16                                                                                                                   Game Programming Gems 2
17                                                                                                                   Game Programming Gems 5
18                                     A First Course in Logic: An Introduction to Model Theory, Proof Theory, Computability, and Complexity
19                                                                                                                   Game Programming Gems 6
20                                                                                                                   Game Programming Gems 4
21                                                                                                                   Game Programming Gems 3
22 3D Game Engine Architecture: Engineering Real-Time Applications with Wild Magic (The Morgan Kaufmann Series in Interactive 3d Technology)
```

## 3. หนังสือที่ราคาถูกกว่าค่าเฉลี่ยและมีรูปแบบหนังสือคือ "ebook"

## Code
```
programming_book %>%
  select(Book_title)%>%
  filter(programming_book$Price < mean(programming_book$Price))
```

## Result
```
                               Book_title
1                 Your First App: Node.js
2                     Algorithms Unlocked
3     Learn You a Haskell for Great Good!
4 From Mathematics to Generic Programming

```

## 4. แสดงชื่อหนังสือที่มีเรทติ้งต่ำกว่า 3.5 

## Code
```
programming_book %>%
  select(Book_title)%>%
  filter(programming_book$Rating < 3.5)
```

## Result
```
Book_title
1                                                                                          Responsive Web Design Overview For Beginners
2                                                                                                         Game Programming Golden Rules
3                                                                                            Sams Teach Yourself JavaScript in 24 Hours
4                                                                                                                      Beginning Java 2
5                                                                                                  Sams Teach Yourself Perl in 24 Hours
6                                                                                                        Unity Virtual Reality Projects
7                                                                                   Advanced Game Programming: A Gamedev.Net Collection
8                                             Cross-Platform Game Programming (Game Development) (Charles River Media Game Development)
9                                                                               Lambda-Calculus, Combinators and Functional Programming
10                                                                          Optimized C++: Proven Techniques for Heightened Performance
11 3D Game Engine Design: A Practical Approach to Real-Time Computer Graphics (The Morgan Kaufmann Series in Interactive 3D Technology)
```

## 5. แสดงชื่อหนังสือและรูปแบบหนังสือที่มีคนรีวิวช่วงระหว่าง 1,000 ถึง 1,200 คน โดยเรียงตามลำดับจากมากไปน้อยของยอดฮิตหนังสือ

## Code
```
programming_book %>%
  select(Book_title,Type, Rating)%>%
  filter(programming_book$Reviews > 1000,  programming_book$Reviews < 1200)%>%
  arrange(desc(Rating))
```

## Result
```
                                                              Book_title      Type Rating
1            Practical SQL: A Beginner's Guide to Storytelling with Data Paperback   4.34
2                                                     The Little Schemer Paperback   4.28
3                                      C++ Templates: The Complete Guide Hardcover   4.24
4                                         Scrum and XP from the Trenches Paperback   4.20
5                      Growing Object-Oriented Software, Guided by Tests Paperback   4.19
6                                            Real-World Machine Learning Paperback   4.18
7                                                  C: A Reference Manual Paperback   4.16
8  Apprenticeship Patterns: Guidance for the Aspiring Software Craftsman Paperback   4.12
9                                                Computability and Logic Paperback   4.04
10  How to Design Programs: An Introduction to Programming and Computing Hardcover   4.00
11                         Agile Retrospectives: Making Good Teams Great Paperback   3.93
12                                                      The Meme Machine Paperback   3.84
13                   Agile Web Development with Rails: A Pragmatic Guide Paperback   3.84
14                                                         The Rails Way Paperback   3.83
```

## 6. แสดงชื่อหนังสือและจำนวนหน้าที่เรทติ้งมากกว่าค่าเฉลี่ยและเป็นรูปแบบหนังสือของ "Kindle Edition" โดยเรียงจากจำนวนหน้าน้อยไปหามาก  

## Code
```
programming_book %>%
  select(Book_title, Number_Of_Pages)%>%
  filter(programming_book$Rating > mean(programming_book$Rating), Number_Of_Pages > mean(Number_Of_Pages))%>%
  arrange(Number_Of_Pages)
```

## Result
```
                                                                   Book_title Number_Of_Pages
1                                The Principles of Object-Oriented JavaScript             120
2                                                Make Your Own Neural Network             252
3 Make Your Own Neural Network: An In-depth Visual Introduction For Beginners             316
4                    Simulation of Digital Communication Systems using Matlab
```
