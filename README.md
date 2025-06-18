# 📚 Book Inventory Project using SQL

This project is a personal book tracking system built using **SQL**. It manages a collection of books I’ve read, am reading, or plan to read — along with language, genre, page count, personal notes, and more.

---

## 🛠️ Features

- **Book Management Table**: Tracks titles, authors, genres, pages, status, comments, and timestamps.
- **Support for multiple languages and reading statuses** (e.g., read, unread, reading, “forgotten might read it 50000 years later”).
- Clean structure with constraints, default values, and proper data types.

---

## 🧠 What I Learned & Practiced

- Creating and modifying tables with constraints
- Writing **complex queries** using:
  - `JOIN`, `GROUP BY`, `CASE`, and `ENUM`
  - **Window functions** like `ROW_NUMBER()`
  - **CTEs** (Common Table Expressions)
  - **Subqueries** and aggregation
- Using `DEFAULT`, `AUTO_INCREMENT`, `TIMESTAMP`, and text fields

---

## 🔍 Sample Queries and Insights

Here are some of the key SQL queries used in the project:

### ✅ Book Stats
- Total number of books read vs unread
- Number of books grouped by language
- Longest book among those currently being read or already read
- Most common genre and books within that genre

### ✅ Advanced Queries
- Use of **CTEs** to:
  - List read vs unread books side by side
  - Show books with page counts above average
  - Retrieve longest currently-read book

### ✅ Personal Notes
- Each book entry includes a personal comment or reaction
- Language and genre diversity is included

---

## 💻 Technologies Used

- SQL (MySQL syntax)
- Structured into `.sql` files
- Test queries and logic written as a mini local database project

---

## 📂 Files

- `books.sql` – Table creation, inserts, and basic queries
- `cte_for_books.sql` – CTE-based analysis and more advanced queries

---

## 📌 Example Output

```sql
SELECT COUNT(author), language FROM books GROUP BY language;

-- Output:
-- 4 | english
-- 3 | bengali
-- 1 | french
