## Part 2 : Learning function from Tidyverse & Transform data with dplyr and finding insight the data

## 1. อยากทราบความนิยมที่ได้เรทติ้สูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

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

## 2. หนังสือที่ไม่ได้รับการรีวิวเลยมีหนังสือเรื่องใดบ้าง 

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

## 3. หนังสือที่ราคาถูกกว่าค่าเฉลี่ย

## Code
```
programming_book %>%
  select(Book_title)%>%
  filter(programming_book$Price < mean(programming_book$Price))
```

## Result
```
    Book_title
1                                                                                               The Elements of Style
2                                                                       The Information: A History, a Theory, a Flood
3                                                                        Responsive Web Design Overview For Beginners
4                                                 Ghost in the Wires: My Adventures as the World's Most Wanted Hacker
5                                                                                                    How Google Works
6                                                                                                    The Meme Machine
7                                                   Start with Why: How Great Leaders Inspire Everyone to Take Action
8                                                      Algorithms to Live By: The Computer Science of Human Decisions
9                              Weapons of Math Destruction: How Big Data Increases Inequality and Threatens Democracy
10                                                    ZX Spectrum Games Code Club: Twenty fun games to code and learn
11                                                                    Sync: The Emerging Science of Spontaneous Order
12                        The Master Algorithm: How the Quest for the Ultimate Learning Machine Will Remake Our World
13                                                                                                           Ship It!
14                                                                      Superintelligence: Paths, Dangers, Strategies
15                          The Art of the Start: The Time-Tested, Battle-Hardened Guide for Anyone Starting Anything
16                                        Kingpin: How One Hacker Took Over the Billion-Dollar Cybercrime Underground
17                                                 The Quark and the Jaguar: Adventures in the Simple and the Complex
18  Linked: How Everything Is Connected to Everything Else and What It Means for Business, Science, and Everyday Life
19                                          Our Final Invention: Artificial Intelligence and the End of the Human Era
20                          The Innovators: How a Group of Hackers, Geniuses and Geeks Created the Digital Revolution
21              Debugging: The 9 Indispensable Rules for Finding Even the Most Elusive Software and Hardware Problems
22                                            Big Data: A Revolution That Will Transform How We Live, Work, and Think
23                                                                                Help Your Kids with Computer Coding
24                                   The Code Book: The Science of Secrecy from Ancient Egypt to Quantum Cryptography
25                                                                                      Game Programming Golden Rules
26                                                                       The Architecture of Open Source Applications
27                                                         How to Create a Mind: The Secret of Human Thought Revealed
28                                                           The Hidden Connections: A Science for Sustainable Living
29                                                                                    Computability and Unsolvability
30                                                                                            Adventures in Minecraft
31                                                                                            Coding Games in Scratch
32                                                                               Expert C Programming: Deep C Secrets
33                                   Data and Goliath: The Hidden Battles to Collect Your Data and Control Your World
34                                         The Cosmic Landscape: String Theory and the Illusion of Intelligent Design
35                                                   What Is Life? with Mind and Matter and Autobiographical Sketches
36                                                                        Six Degrees: The Science of a Connected Age
37                          Nine Algorithms That Changed the Future: The Ingenious Ideas That Drive Today's Computers
38                                                                                                The Society of Mind
39                                                                                         JavaScript: The Good Parts
40                                                The Pattern on the Stone: The Simple Ideas that Make Computers Work
41                                          Accelerate: Building and Scaling High-Performing Technology Organizations
42                                  Beginners Guide On PHP Programming: Quick And Easy Guide To Learn PHP With My-SQL
43                                                                                             The Connection Machine
44                                                                      Agile Retrospectives: Making Good Teams Great
45             Python Programming Books Set: Python Programming for Beginners & Complete Guide for Python Programming
46                                       The Phoenix Project: A Novel About IT, DevOps, and Helping Your Business Win
47                                                                Agile Web Development with Rails: A Pragmatic Guide
48                                                                                     Scrum and XP from the Trenches
49                A Smarter Way to Learn JavaScript: The new approach that uses technology to cut your effort in half
50                                         97 Things Every Programmer Should Know: Collective Wisdom from the Experts
51                                                                             Introduction to Functional Programming
52                                                  An Introduction to Functional Programming Through Lambda Calculus
53                                                                                        Chaos: Making a New Science
54                                               The Strangest Man: The Hidden Life of Paul Dirac, Mystic of the Atom
55                                                                                            Your First App: Node.js
56                                              Apprenticeship Patterns: Guidance for the Aspiring Software Craftsman
57                                         Python Crash Course: A Hands-On, Project-Based Introduction to Programming
58                                                            Invent Your Own Computer Games with Python, 3rd Edition
59                                                                       The Principles of Object-Oriented JavaScript
60                                                                                                   Joel on Software
61                                                                         Sams Teach Yourself JavaScript in 24 Hours
62                       The Shape of Inner Space: String Theory and the Geometry of the Universe's Hidden Dimensions
63                                                                                     Seven Languages in Seven Weeks
64                                                               Quality Software Management V 1 โ€“ Systems Thinking
65                                      Python Programming For Beginners: Quick And Easy Guide For Python Programmers
66                                                                                      Manage Your Project Portfolio
67                                                                                          How Google Tests Software
68                                                        Code: The Hidden Language of Computer Hardware and Software
69                                                                                            Computability and Logic
70                                                          Eloquent JavaScript: A Modern Introduction to Programming
71                                                                  Does God Play Dice?: The New Mathematics of Chaos
72                                                   Learn Java the Easy Way : A Hands-On Introduction to Programming
73                                        Make Your Own Neural Network: An In-depth Visual Introduction For Beginners
74                                                        The Golden Ticket: P, Np, and the Search for the Impossible
75                                                                                                            Pro Git
76                                   Automate the Boring Stuff with Python: Practical Programming for Total Beginners
77                                                                                      Best of Game Programming Gems
78                                                                              Sams Teach Yourself MySQL in 24 Hours
79                                                                                                Algorithms Unlocked
80                                                        Practical SQL: A Beginner's Guide to Storytelling with Data
81                                                                                            CSS: The Missing Manual
82                                                                      Blueprints Visual Scripting for Unreal Engine
83                                                                  Soft Skills: The Software Developer's Life Manual
84                                                                                                 Doing Data Science
85                                                               Automate This: How Algorithms Came to Rule Our World
86                                                       How to Think Like a Computer Scientist: Learning with Python
87                                                                                                   Beginning Java 2
88                                                            Learn You a Haskell for Great Good!: A Beginner's Guide
89                                                                                Learn You a Haskell for Great Good!
90                                                                                                    Unity in Action
91                                                                         The Goal: A Process of Ongoing Improvement
92                                                                                                 The Little Schemer
93                                                                                    Functional Programming in Scala
94                                                                                High Performance Browser Networking
95                                                                               Sams Teach Yourself Perl in 24 Hours
96                                                                                          Learn Python The Hard Way
97                                                          Effective Python: 59 Specific Ways to Write Better Python
98                                                                                 Programming in Lua, Fourth Edition
99                                   Release It!: Design and Deploy Production-Ready Software (Pragmatic Programmers)
100                                                   Think Complexity: Complexity Science and Computational Modeling
101                                                                                                     A Tour of C++
102                                                                                                     Reviewing C++
103                                                             Functional Programming Application and Implementation
104                               The Elements of Computing Systems: Building a Modern Computer from First Principles
105                                                          Simulation of Digital Communication Systems using Matlab
106                                                                                         Game Programming Patterns
107                                        The Practice of Programming (Addison-Wesley Professional Computing Series)
108                                                                           From Mathematics to Generic Programming
109                                                             REST in Practice: Hypermedia and Systems Architecture
110                                                                    The Visual Display of Quantitative Information
111                                                               Fearless Change: Patterns for Introducing New Ideas
112                                                                                           Elements of Programming
113                                                                                                     Learning Ruby
114                                                            The Design of Design: Essays from a Computer Scientist
115                       Build Web Applications with Java: Learn every aspect to build web applications from scratch
116                                                                                                More Effective C++
117                                            Cryptography Engineering: Design Principles and Practical Applications
118                                         Effective JavaScript: 68 Specific Ways to Harness the Power of JavaScript
119                                                                                      Machine Learning for Hackers
120                                                                                                     Code Complete
121                                                                                 Making Games with Python & Pygame
122                                         Big Data: Principles and best practices of scalable realtime data systems
123                                                            The Mythical Man-Month: Essays on Software Engineering
124                                                   The Clean Coder: A Code of Conduct for Professional Programmers
125                                                                                                Programming Pearls
126                                                                                                       C# in Depth
127                                                                                                     Learning Perl
128                                  The Scrumban [R]Evolution: Getting the Most Out of Agile, Scrum, and Lean Kanban
129                                                                                       Real-World Machine Learning
130                                                               PHP and MySQL Web Development (Developer's Library)
131                                                                                         Managing Data Using Excel
132          Designing Data-Intensive Applications: The Big Ideas Behind Reliable, Scalable, and Maintainable Systems
133                                                                                    Unity Virtual Reality Projects
134                                                                                    The Sciences of the Artificial
135                                                                Programming Ruby: The Pragmatic Programmers' Guide
136                                                                                          Python for Data Analysis
137                                                           Data Science from Scratch: First Principles with Python
138                                     The Linux Programming Interface: A Linux and Unix System Programming Handbook
139                                                            Clean Code: A Handbook of Agile Software Craftsmanship
140                                                                         Peopleware: Productive Projects and Teams
141                                                     Extreme Programming Explained: Embrace Change (The XP Series)
142                                                                               Test Driven Development: By Example
143                                             UML Distilled: A Brief Guide to the Standard Object Modeling Language
144                              Effective STL: 50 Specific Ways to Improve Your Use of the Standard Template Library
145                                                          Introduction to Computation and Programming Using Python
146                                              Essential Scrum: A Practical Guide to the Most Popular Agile Process
147                                                                          Practical Object Oriented Design in Ruby
148                                                                                           The Boost C++ Libraries
149                                                                                   Building an FPS Game with Unity
150                                       The It Handbook for Business: Managing Information Technology Support Costs
151                                                DIV, Grad, Curl, and All That: An Informal Text on Vector Calculus
152                                                                       Design and Validation of Computer Protocols
153                                                                            The Psychology of Computer Programming
154                                                                                      Make Your Own Neural Network
155                                                                 Accelerated C++: Practical Programming by Example
156                                                                                                     The Rails Way
157                                                                                                The Joy of Clojure
158                             More Exceptional C++: 40 New Engineering Puzzles, Programming Problems, and Solutions
159                            Exceptional C++ Style: 40 New Engineering Puzzles, Programming Problems, and Solutions
160                                                               Computational Geometry: Algorithms and Applications
161                                                                                        Head First Design Patterns
162                    Continuous Delivery: Reliable Software Releases Through Build, Test, and Deployment Automation
163                                                                                Quantum Computing Since Democritus
164                                                                                    Data Structures and Algorithms
165                                                                             Android NDK Game Development Cookbook
166                                                                                   Assembly Language: Step-By-Step

```

## 1. อยากทราบความนิยมที่ได้เรทติ้สูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

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

## 1. อยากทราบความนิยมที่ได้เรทติ้สูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

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

## 1. อยากทราบความนิยมที่ได้เรทติ้สูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

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

## 1. อยากทราบความนิยมที่ได้เรทติ้สูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

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
## 1. อยากทราบความนิยมที่ได้เรทติ้สูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

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

## 1. อยากทราบความนิยมที่ได้เรทติ้สูงที่สุดและมีรูปแบบหนังสือชนิดไหน 

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
