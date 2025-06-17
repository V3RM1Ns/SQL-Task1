# Market and Employee Database Setup

This repository contains SQL scripts for creating and manipulating a sample **Market** and **Employee** database. The purpose is to practice SQL concepts such as `CREATE`, `INSERT`, `DELETE`, `UPDATE`, `ALTER`, `CHECK`, `UNIQUE`, subqueries, and data filtering.

---

## 📁 Database Overview

### 📦 Market Database

- **Database Name:** `Market`
- **Table:** `Products`

#### 🛒 Products Table Schema
| Column  | Data Type     | Description                      |
|---------|---------------|----------------------------------|
| Id      | INT           | Unique identifier                |
| Name    | NVARCHAR(20)  | Product name                     |
| Price   | INT           | Product price                    |
| Brand   | NVARCHAR(20)  | Product brand (added via `ALTER`)|

#### 🧪 Operations Performed
- Inserted 5 sample records
- Deleted 1 record where `Id=5`
- Updated:
  - Name of product with `Id=4` to `"Ali"`
  - Name of product with `Id=1` to `"Leyla Aliyeva"`
- Queries:
  - Calculate average price of all products
  - Select products with price above average
  - Select products where `Price > 10`
  - Display `"Name - Brand"` for products with brand names longer than 5 characters

---

### 👩‍💼 Employee Table

- **Table:** `Employee` (in `Market` database or a separate context as needed)

#### 👨‍💼 Employee Table Schema
| Column   | Data Type        | Constraints                                  |
|----------|------------------|----------------------------------------------|
| Id       | INT (IDENTITY)   | Primary key, auto-incremented                |
| Fullname | NVARCHAR(255)    | Required                                     |
| Age      | INT              | Must be `>= 0` (Check Constraint)            |
| Email    | NVARCHAR(255)    | Required & Unique                            |
| Salary   | DECIMAL(10,2)    | Must be between `300` and `2000` (Check)     |

#### 🧪 Inserted Records
| Fullname        | Age | Email                  | Salary   |
|-----------------|-----|------------------------|----------|
| Leyla Aliyeva   | 28  | leyla@gmail.com        | 1200.50  |
| Hebib Ramazanov | 30  | hebib@mail.ru          | 1850.75  |
| Kamran Quliyev  | 24  | kamra@code.edu.az      | 500.00   |

---

## 🧠 Key SQL Features Demonstrated

- `CREATE DATABASE` and `USE`
- `CREATE TABLE` with constraints (`PRIMARY KEY`, `CHECK`, `UNIQUE`)
- `ALTER TABLE` to add columns
- Data manipulation:
  - `INSERT INTO`
  - `DELETE FROM`
  - `UPDATE`
- Aggregate functions: `AVG()`
- Subqueries in `WHERE`
- String operations: `LEN()`, string concatenation
- Filtering with comparison operators

---

## 🚀 Usage

1. Run each SQL command in a SQL Server environment (e.g., SSMS).
2. Ensure the database `Market` exists before using the `USE` command.
3. Review output after each operation to validate correctness.

---

## 📌 Notes

- The `Employee` table can be placed in the same `Market` database or separately if needed.
- Email uniqueness is enforced to prevent duplicates.
- Proper constraints are used to ensure data integrity.

---

## 📚 Author

**Hebib Ramazanov**

---

Happy querying! 🎯
