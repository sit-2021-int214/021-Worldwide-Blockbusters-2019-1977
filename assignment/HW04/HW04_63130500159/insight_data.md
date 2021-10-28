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

### 2.

---

### Next is part 4 : Visualization with GGplot2 [Click Here !](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/assignment/HW04/HW04_63130500159/data_viz.md)
