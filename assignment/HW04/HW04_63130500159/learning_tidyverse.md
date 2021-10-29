## Part 2 : Learning function from Tidyverse
### 1. What is the Tidyverse ?
Tidyverse is a collection of R packages for data manipulation, exploration and visualization that share a common design philosophy.   

### 2. Core packages in the Tidyverse
For example :
**Data Wrangling and Transformation**
- Function `filter()` from package [dplyr.](https://dplyr.tidyverse.org/reference/filter.html#details) : It's using for filter out certain rows that meet your criteria(s).
- Function `str_detect()` from package [stringr.](https://stringr.tidyverse.org/#usage) : It's using for detect the presence or absence of a pattern in a character string which would return TRUE or FALSE. 


**Sample code :**
```
# Show books that has "Art" in the title of book.
   books %>% filter(Book_title %>% str_detect("Art"))
```
**Result :**
```
# A tibble: 8 × 7
  Rating Reviews Book_title                   Description                      Number_Of_Pages Type     Price
   <dbl>   <dbl> <chr>                        <chr>                                      <dbl> <chr>    <dbl>
1   3.87     593 The Art of the Start: The T… "A new product, a new service, …             240 Hardcov…  15.9
2   3.75     370 Our Final Invention: Artifi… "In as little as a decade, arti…             336 Hardcov…  16.9
3   4.25      41 The Sciences of the Artific… "Continuing his exploration of …             248 Paperba…  45.8
4   4.37      44 The Art of Computer Program… "The bible of all fundamental a…             672 Hardcov…  93.5
5   4.18     130 Artificial Intelligence: A … "For one or two-semester, under…            1132 Hardcov… 116. 
6   4.26       5 Numerical Recipes: The Art … "Co-authored by four leading sc…            1235 Hardcov… 176. 
7   4.49      36 The Art of Computer Program… "Knuth's classic work has been …             896 Boxed S… 220. 
8   4.77       4 The Art of Computer Program… "\"The bible of all fundamental…            3168 Hardcov… 220. 
```
**Explain :**
The result show books that have the content about art and I use
- str_detect() and filter()  
**books %>% filter(Book_title %>% str_detect("Art"))** : For show books information that have "Art" in the Book_title.

---
### Next is part 3 : Finding insight the data [Click Here !](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/assignment/HW04/HW04_63130500159/insight_data.md)
