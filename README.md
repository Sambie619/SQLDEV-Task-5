# SQLDEV-Task-5
# 📘 Task 5: SQL Joins (Inner, Left, Right, Full)

## 🎯 Objective
Learn to combine data from multiple tables using various SQL JOINs.

---

## 🛠️ Tools Used
- DB Browser for SQLite / MySQL Workbench

---

## 🧱 Database Schema

### Table 1: `Customers`
| Column       | Type    |
|--------------|---------|
| customer_id  | INTEGER |
| name         | TEXT    |
| city         | TEXT    |

### Table 2: `Orders`
| Column       | Type    |
|--------------|---------|
| order_id     | INTEGER |
| customer_id  | INTEGER |
| order_date   | DATE    |
| amount       | REAL    |

- Created the tables and inserted values acc to the contraints then combined the tables to get desired results using inner join,left join,right join and full outer join.
  Since full outer join is not supported in MySQL,I used union btw the left join and right join so as the results contain all the rows with or without a match.
