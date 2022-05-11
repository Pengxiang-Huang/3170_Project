# Report

[TOC]

## Background & Introduction

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

## Index and Hashing

## UI design

## Data Mining

## Application

## Conclusion

## Self Evaluation

