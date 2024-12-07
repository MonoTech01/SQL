* SQL: Structured Query Language is a computer language used to interact with databases.

* **Key SQL Commands:**
    * **DDL (Data Definition Language):** Creates, modifies, and deletes database objects (e.g., `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`).
    * **DML (Data Manipulation Language):** Inserts, updates, and deletes data within tables (e.g., `INSERT INTO`, `UPDATE`, `DELETE`).
    * **DQL (Data Query Language):** Retrieves data from a database (e.g., `SELECT`).
    * **DCL (Data Control Language):** Grants and revokes privileges (e.g., `GRANT`, `REVOKE`).

**SQL Queries: The `SELECT` Statement**

* **Core of SQL:** The `SELECT` statement is used to query data from a database.
* **Basic Syntax:**
  ```sql
  SELECT column1, column2, ...
  FROM table_name;

Common Clauses:

    WHERE: Filters rows based on a condition.
    ORDER BY: Sorts results by one or more columns.
    GROUP BY: Groups rows based on one or more columns.
    HAVING: Filters groups created by the GROUP BY clause.
    LIMIT: Limits the number of rows returned.
    
SQL Scripts

A collection of SQL statements executed together to perform a specific task.
- Used for: Automating repetitive tasks, Implementing complex data transformations, Creating database objects and data.

Example:

- Create a new table
          
          CREATE TABLE customers (
              id INT PRIMARY KEY,
              name VARCHAR(50),
              email VARCHAR(100)
          );

- Insert data into the table
  
      INSERT INTO customers (id, name, email)
      VALUES (1, 'Alice', 'alice@example.com'),
      (2, 'Bob', 'bob@example.com');

- Retrieve customer information

      SELECT * FROM customers;
