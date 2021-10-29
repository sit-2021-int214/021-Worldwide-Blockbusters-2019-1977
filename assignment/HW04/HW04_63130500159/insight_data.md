## Part 3: Finding insight the data

### 1. The number of books in each types.
**Code :**
```
num_of_books <- books %>% group_by(Type) %>% count()
num_of_books
```

**Result :**
```
# A tibble: 6 × 2
# Groups:   Type [6]
  Type                      n
  <chr>                   <int>
1 Boxed Set - Hardcover     1
2 ebook                     7
3 Hardcover                95
4 Kindle Edition           10
5 Paperback               156
6 Unknown Binding           2
```

**Summary :**
```
In total, there are 271 books which have 6 types as follows 
- Boxed Set - Hardcover has 1 book. 
- ebook has 7 books. 
- Hardcover has 95 books.
- Kindle Edition has 10 books.
- Paperback has 156 books.
- Unknown Binding has 2 books.
```
---

### 2. Show the title of book, type and price of all books that in paperback type and price is less than 20 USD.  
**Code :**
```
books %>% select(Book_title, Type, Price) %>% filter(Type %in% "Paperback" & Price < 20)
```

**Result :**
```
# A tibble: 10 × 3
   Book_title                          Type    Price
   <chr>                               <chr>   <dbl>
 1 The Meme Machine                    Paperb…  14.2
 2 ZX Spectrum Games Code Club: Twent… Paperb…  14.6
 3 Ship It!                            Paperb…  15.3
 4 The Quark and the Jaguar: Adventur… Paperb…  16.4
 5 Linked: How Everything Is Connecte… Paperb…  16.9
 6 Debugging: The 9 Indispensable Rul… Paperb…  17.5
 7 Help Your Kids with Computer Coding Paperb…  18.9
 8 The Code Book: The Science of Secr… Paperb…  19.1
 9 Game Programming Golden Rules       Paperb…  19.2
10 The Architecture of Open Source Ap… Paperb…  19.2
```

**Summary :**
```
There are 10 books that in paperback type and price is less than 20 USD.
```
---

### 3. Show the title of book, type, pages and price that has the most least pages.  
**Code :**
```
books %>% select(Book_title, Type, Number_Of_Pages ,Price) %>% filter(Number_Of_Pages == min(Number_Of_Pages))
```

**Result :**

```
# A tibble: 1 × 4
  Book_title                                   Type           Number_Of_Pages Price
  <chr>                                        <chr>                    <dbl> <dbl>
1 Responsive Web Design Overview For Beginners Kindle Edition              50  11.3
```

**Summary :**
```
A book with the most least pages is Responsive Web Design Overview For Beginners in Kindle Edition type.   
It has only 50 pages and the price is 11.3 USD. 
```
---


### 4. The average rating of each types of books.  
**Code :**
```
books %>% group_by(Type) %>% summarise(Rating_mean = mean(Rating))
```

**Result :**
```
# A tibble: 6 × 2
  Type                  Rating_mean
  <chr>                       <dbl>
1 Boxed Set - Hardcover        4.49
2 ebook                        4.29
3 Hardcover                    4.06
4 Kindle Edition               4.01
5 Paperback                    4.06
6 Unknown Binding              3.99
```

**Summary :**
```
The average rating of each types of books as follows
- Boxed Set - Hardcover is 4.49 points. 
- ebook is 4.29 points. 
- Hardcover is 4.06 points.
- Kindle Edition is 4.01 points.
- Paperback is 4.06 points.
- Unknown Binding is 3.99 points.
```
---


### 5. Books with no reviews.  
**Code :**
```
books %>% select(Book_title, Reviews) %>% filter(Reviews == 0)
```

**Result :**
```
# A tibble: 22 × 2
   Book_title                                                            Reviews
   <chr>                                                                   <dbl>
 1 Responsive Web Design Overview For Beginners                                0
 2 ZX Spectrum Games Code Club: Twenty fun games to code and learn             0
 3 Game Programming Golden Rules                                               0
 4 Beginners Guide On PHP Programming: Quick And Easy Guide To Learn PH…       0
 5 Python Programming Books Set: Python Programming for Beginners & Com…       0
 6 Your First App: Node.js                                                     0
 7 Python Programming For Beginners: Quick And Easy Guide For Python Pr…       0
 8 Building an FPS Game with Unity                                             0
 9 Advanced Game Programming: A Gamedev.Net Collection                         0
10 Basic Proof Theory                                                          0
# … with 12 more rows
```

**Summary :**
```
There are 22 books that has no reviews. 
```
---


### 6. Books that have pages between 550 and 600 pages and price less than 70 USD. 
**Code :**
```
books %>% select(Book_title, Number_Of_Pages, Price) %>% 
          filter(Number_Of_Pages >= 550 & Number_Of_Pages <= 600 & Price < 70)
```

**Result :**
```
# A tibble: 8 × 3
  Book_title                   Number_Of_Pages Price
  <chr>                                  <dbl> <dbl>
1 Agile Web Development with …             558  24.5
2 Python Crash Course: A Hand…             560  26.3
3 Best of Game Programming Ge…             576  33.5
4 CSS: The Missing Manual                  560  35.1
5 C# in Depth                              554  44.4
6 The Boost C++ Libraries                  570  50.5
7 Dependency Injection in .NET             584  61.9
8 Domain-Specific Languages                597  64.4
```

**Summary :**
```
There are 8 books that have the number of pages between 550 and 600 pages and price less than equal 70 USD.
```
---


### 7. Books that have the content about programming and price less than 25 USD.  
**Code :**
```
books %>% filter(Book_title %>% str_detect("Programming") & Price < 25) 
```

**Result :**
```
# A tibble: 4 × 7
  Rating Reviews Book_title                  Description                 Number_Of_Pages  Type  Price
   <dbl>   <dbl> <chr>                       <chr>                                 <dbl>  <chr> <dbl>
1   3.2        0 Game Programming Golden Ru… "'Game Programming Golden …             318  Pape…  19.2
2   4.32      39 Expert C Programming: Deep… "Written for experienced C…             384  Pape…  21.1
3   4.33       0 Beginners Guide On PHP Pro… "The Book - Beginners Guid…             410  Pape…  23.2
4   4          0 Python Programming Books S… "Quick & Easy Guide to Pyt…             446  Pape…  23.9
```

**Summary :**
```
There are 4 books that have the content about programming and price less than 25 USD.  
```
---

### Next is part 4 : Visualization with GGplot 2 [Click Here !](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/assignment/HW04/HW04_63130500159/data_viz.md)
