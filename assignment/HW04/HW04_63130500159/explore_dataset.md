## Part 1 : Explore the dataset

### 1. Install and listing packages
```
# Install packages (If you used to install packages before, you can over this step.)
   install.packages("tidyverse")
   install.packages("assertive")

# Listing packages
   library(tidyverse)
   library(assertive)
```
### 2. Import and view the dataset
```
# Import the dataset
   books <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")

# View dataset
   View(books)      # or
   glimpse(books)
```

### 3. Dataset information
In this dataset has 271 rows and 7 columns.

**Check by :**
```
 glimpse(books)
```

**Result :**
```
Rows: 271
Columns: 7
$ Rating          <dbl> 4.17, 4.01, 3.33, 3.97, 4.06,…
$ Reviews         <dbl> 3829, 1406, 0, 1658, 1325, 11…
$ Book_title      <chr> "The Elements of Style", "The…
$ Description     <chr> "This style manual offers pra…
$ Number_Of_Pages <dbl> 105, 527, 50, 393, 305, 288, …
$ Type            <chr> "Hardcover", "Hardcover", "Ki…
$ Price           <dbl> 9.323529, 11.000000, 11.26764…
```
**Explain dataset :** In this dataset has 271 rows and 7 columns as follows
- Rating : The user rating for the book. the rating score ranges between 0 and 5. The data type is double.  
- Reviews : The number of reviews found on this book. The data type is double.
- Book_title : The name of the book. The data type is character.
- Description : A short description of the book. The data type is character.
- Number_Of_Pages : Number of pages in the book. The data type is double.
- Type : The type of the book meaning is it a hardcover book or an ebook or a kindle book etc. The data type is character.
- Price : The average price of the book in USD where the average is calculated according the 5 web sources. The data type is double.
  
**Check null and duplicate values :**  
```
sum(is.na(books))
sum(duplicated(books))
```

**Result :**
```
[1] 0
[1] 0
```

---
### Next is part 2 : Learning function from Tidyverse [Click Here !](https://github.com/sit-2021-int214/021-Worldwide-Blockbusters-2019-1977/blob/main/assignment/HW04/HW04_63130500159/learning_tidyverse.md)
