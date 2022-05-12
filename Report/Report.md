# Report

[TOC]

## Background & Introduction

​	Our group observe that many student-programmers from CUHKSZ may encounter many familiar programming questions in their project or assignment. Their solutions mainly include: searching online, emailing TAs or professors, uploading questions in WeChat group, or assigning an office hour. Searching online sometimes may not be an efficient way, because the blog or some guidance information may not directly answer the assignment question. Even worse, programmers need to spend much time on filtering the huge amount of information and it becomes hard for them to get answers when the homework question is not relevant to the results on website. Uploading questions on WeChat group could get the detailed guidance and answer. But the new WeChat group will be created every semester for other students who may encounter the same problems. The connection between students already taken this course with the students taking this course right now is broken in this way. Raising questions in office hour is not convenient for programmers to solve their question immediately since they need to make an appointment and wait until that day comes. Therefore, our group would like to take the first step to change the current situation, to provide a online Q&A platform with the support of online forum database.

​	==The main component of our project is the online forum database. There are two main entities in the database, namely "User" and "Blog". The "User" entity stores the account information about the user, including their name, email address, password, etc. The "Blog" entity is the key feature, where users can post a blog to raise a question and get relevant answers from other users. We also implement several relationship schemas to support the interaction between user and blog, like user can like a blog or follow a blog. To make our database more efficient and space-saving, we made efforts to do normalization on tables and introduce index in our project.==

​	Additionally, we built fantastic UI in the frontend and robust backend server to hide the detailed implementation and manipulation of the database. So users can focus on the Q&A procedure, and they don't need to worry about how to get the desired information from the database, as all the queries are carried out by the functions in the frontend and backend.

## Database Design

### The Entity-Relational Diagram

<img src="pic/ER.png" alt="ER" style="zoom:70%;" />

​	In our project, we have totally 7 entity sets and 5 relationship sets. The table gives an detailed interpretation of these sets.

| Entity / Relationship Sets Name | Description                                                  |
| ------------------------------- | ------------------------------------------------------------ |
| user                            | Stores the username, password, email, profile and etc. of the user's account |
| group                           | Stores the name, the description and etc. of the group       |
| sub_group                       | Stores the name of the group and the name of the sub group   |
| blog_questions                  | Stores the title, the author, the group type, the sub group type, the content and etc. of the blog |
| blog_answers                    | Stores the question id, the father answer id, the content and etc. of the answer |
| attached file                   | Stores the URL of the file, the question id, the answer id and etc. |
| attached picture                | Stores the URL of the picture, the question id, the answer id and etc. |
| user like answer                | Stores the user id and the answer id, which means the answer is liked by the user |
| user like question              | Stores the user id and the question id, which means the question is liked by the user |
| user follow question            | Stores the user id and the question id, which means the question is followed by the user |
| user follow group               | Stores the user id and the group name, which means the group is followed by the user |
| user view question              | Stores the user id, the question id and the viewing times    |

### The Relational Schemas

| Schemas                                                      |
| ------------------------------------------------------------ |
| user(<u>id</u>, email, username, password, photo, major, grade, create_time, update_time) |
| group(<u>id</u>, group_name, description, create_time, update_time, amount_of_follows) |
| sub_group(<u>id</u>, group_name, sub_group_name)             |
| blog_questions(<u>id</u>, title, author_id, group_type, sub_group_type, content, code, lang, content_format, like, follow, hot, create_time, update_time, views) |
| blog_answers(<u>id</u>, question_id, father_answer_id, content, code, lang, content_format, like, author_id, create_time) |
| attached_file(<u>id</u>, url, corresponding_question, corresponding_answer, create_time) |
| attached_picture(<u>id</u>, url, question, answer, group_name, create_time) |

**Below list the foreign key referencing:**

* "group_name" in sub_group refers to "group_name" in group: each sub group belongs to a group.
* "author_id" in blog_questions refers to "id" in user: each blog belongs to a user.
* "group_type" in blog_questions refers to "group_name" in group: each blog belongs to a group.
* "sub_group_type" in blog_questions refers to "sub_group_name" in sub_group: each blog belongs to a sub group.
* "question_id" in blog_answers refers to "id" in blog_questions: each answer belongs to a blog.
* "author_id" in blog_answers refers to "id" in user: each answer belongs to a user.
* "corresponding_question" in attached_file refers to "id" in blog_questions and "corresponding_answer" in attached_file refers to "id" in blog_answers: each file belongs to a question or an answer.
* "question" in attached_picture refers to "id" in blog_questions, "answer" in attached_picture refers to "id" in blog_answers" and group_name" in attached_picture refers to "group_name" in group: each picture belongs to a question, an answer or a group.

### Normalization

​	In our project, we spare a lot of effort on normalization. At first, we intend to reach the first normal form, so we reconstruct our database. For example, "Table 1" shows our initial design of the group table where has a tuple of sub group name. Therefore, we split the group table into group table (Table 2) and sub group table (Table 3). In this case, the first normal form is achieved.

| id   | group_name | sub_group_name                  | description     | create_time | update_time | amount_of_follows |
| ---- | ---------- | ------------------------------- | --------------- | ----------- | ----------- | ----------------- |
| 1    | CSC3170    | {Assignment1, Assignment2, ...} | Database System | 2022-04-30  | null        | 100               |

<center><b>Table 1</b></center>

| id   | group_name | description     | create_time | update_time | amount_of_follows |
| ---- | ---------- | --------------- | ----------- | ----------- | ----------------- |
| 1    | CSC3170    | Database System | 2022-04-30  | null        | 100               |

<center><b>Table 2</b></center>

| id   | group_name | sub_group_name |
| ---- | ---------- | -------------- |
| 1    | CSC3170    | Assignment1    |
| 2    | CSC3170    | Assignment2    |

<center><b>Table 3</b></center>

​	Based on the first normal form, we also try to reach the second and third normal form. As a result, we create an unique id for each table to enable all nonprime attributes are fully functionally dependent on the primary key (id). Apparently, there does not exist nonprime attributes in our tables transitively dependent on the primary key (id). Therefore, the second normal form and third normal form are also implemented.

## Query Design and Implementation

### DDL

As what we learned in class, we have to use data definition language to create new tables. As the graph, there are mainly two parts. In the first part, we set all the attributes and specify different types of the attributes based on the logical schema. The second part is about constraints. We have tried to specify all necessary integrity constraints including primary keys, foreign keys, keys that are not null or unique. Besides, we add necessary index constrains, which will be detailly inferred in the later part.

<img src="pic/DDL.png" alt="DDL" style="zoom:60%;" />

### Queries

We have used different ways to implemented the queried on the basis of the efficiency.

#### SQL

​	The easiest way to interact with the database is directly using the SQL language. This method is fast and with intime response. We prefer to use this way especially when we are testing our newly created tables. As the instance, we are testing the insertion operation on the like table. On top of that, we have tried to consider different concurrency issues in different cases. For this instance, we have locked and unlocked the table before and after we manipulate the table. Hence, the concurrency are protected.

<img src="pic/direct_sql.png" alt="direct_sql" style="zoom:60%;" />

#### SQL with host language

​	The problem about the SQL language is that it is not a Turing machine equivalent language. So it might be easy to access the data, but it is hard for us to efficiently analyze and process the data using direct SQL. Hence, we tried to solve it with host language Python, specifically, pymysql package. Together with host language, it is much easier to implement different operations. Therefore, lots of the database operations in the backend are carried in this way. The instances are followed.

<img src="pic/update_py.png" alt="update_py" style="zoom:60%;" />

<img src="pic/delete_py.png" alt="delete_py" style="zoom:60%;" />

<img src="pic/datapro_py.png" alt="datapro_py" style="zoom:60%;" />

#### Query Set

​	Within the Django framework, there is another efficient way for us to manipulate the data which is the query set. The logic of query set is similar to SQL, but it is with a totally different gramma. Considering that in some cases it is actually more efficient for us to use the Query Set, we also implemented some data manipulation with the help of Query Set. The instance followed is about finding the titles of the blocks and upper them. 

<img src="pic/datapro2_py.png" alt="datapro2_py" style="zoom:60%;" />



## Index and Hashing

To introduce index in our project to speed up some frequently use queries. We first search on internet to know some main kinds of indexes:

- T-Tree Index
- B-Tree Index
- Full Text Index
- Spatial Index
- Hash Index

After taking the structure of our database into consideration, we decided to focus on hash index and B-Tree index.

### 3.1 Hash Index

The main advantage of hash index is the fact that hashes can be much smaller than the indexed value itself.  And the query speed is relatively fast for exact lookups if there is not many conflicts.

But it also have disadvantages. The main problem, though, is that this index type can’t be used to do anything else than a simple lookup. So its usage is limited. What's worse, the hash index is only supported by "Memory" engine and the hashed index is all stored in the main memory, so the data is temporary and volatile. When the database restart or encounter some system issue, the data are all gone. But the require of our database is that, it stores all the questions and answers so users can easily solve their problems by simply searching the database. So the hash index does not satisfies the requirement of our project and was not adopted.

### 3.2 B-Tree Index

The B-Tree index is the most commonly used kind of index which speed up queries which match a full value. It use the B-Tree structure to store the index so the average searching time is reduce to log(h) (h is the height of the tree). Compared to the all table scanning of simply query without index, the improvement is extremely large.

To balance the tradeoff between space and query speed, we add index to some frequently queried columns in certain tables, e.g. the "username" column in "User" table:

(To better understand the importance of index, we use the "explain" syntax, the meaning of some key words are listed below:

- type: information about join type:
  - ref: multiple rows can be accessed for a given value so we are using standard, non-unique index to retrieve them.
  - ALL: full table scan.
- possible_keys & key: indexes which could be used for the particular query and the index chosen by the optimizer as the most efficient one.
- rows: an estimate of how may rows the query will scan.
- Extra: prints additional information relevant to how the query is going to be executed. )

<div style="text-align:center">
    <center>
        <img src="./pic/Before.png" alt="system architecture" style="zoom:100%;" />
    </center>
    <br> Before introducing index
</div>


Before we add index to the table, when we want to get the id of a user with specific name, the whole table is scanned, and around 51 rows is scanned. (if the table grows larger, this number will also grow), so the speed is very slow.

<div style="text-align:center">
    <center>
        <img src="./pic/After.png" style="zoom:100%;" />
        <br> After introducing index
    </center>
</div>


But after we introduce the B-Tree index, the query will take advantage of the index, and the number of rows to be scanned it greatly reduced.

##  Implementation

### Data generation

### Graphic User Interface Design

## Data Mining

### Motivation and target

​	Originally, for the searching function, we simply appy String match method which divide

## Application

## Conclusion

In Conclusion, our project is about implementation, optimization, and analysis of a on line forum database.

​    For the E-R diagram and database design, we optimize all tables into 3NF form to avoid the redundancy as much as we could. For queries, we use different ways including direct SQL, SQL with Python, and Query Set to access and manipulate different data in an efficient way. For the index optimization, we designed a B tree searching method to increase our query speed in order to provide user a faster and fluence searching experience. We also designed and implemented a nice user interface for users. For the datamining, we designed and implemented an effective search engine with machine learning NLP and inverted index tables.

## Self Evaluation

