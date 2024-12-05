# Full Outer Join Notes

## What is a Full Outer Join?

A **Full Outer Join** combines the results of both a **Left Join** and a **Right Join**. It returns all rows from both tables, whether they match or not. If there is no match, the result will include `NULL` values for the missing side.

## Examples:

### **Reservations Table**
| reservation_id | name      | table_id |
|----------------|-----------|----------|
| 1              | Alice     | 101      |
| 2              | Bob       | 102      |
| 3              | Charlie   | 103      |
| 4              | Diana     | 104      |

### **Customers Table**
| customer_id | name      | email              |
|-------------|-----------|--------------------|
| 1           | Alice     | alice@email.com-     |
| 2           | Eve       | eve@email.com-       |
| 3           | Charlie   | charlie@email.com-   |
| 5           | Frank     | frank@email.com-     |

## Full Outer Join Query

We will use a **Full Outer Join** to combine these two tables on the `name` field:

```sql
SELECT *
FROM reservations
FULL OUTER JOIN customers
ON reservations.name = customers.name;
```

## Result of Full Outer Join:

| reservation_id | name      | table_id | customer_id | email              |
|----------------|-----------|----------|-------------|--------------------|
| 1              | Alice     | 101      | 1           | alice@email.com-     |
| 2              | Bob       | 102      | NULL        | NULL               |
| 3              | Charlie   | 103      | 3           | charlie@email.com-   |
| 4              | Diana     | 104      | NULL        | NULL               |
| NULL           | Eve       | NULL     | 2           | eve@email.com-     |
| NULL           | Frank     | NULL     | 5           | frank@email.com-     |

### Explanation of the Full Outer Join Result:

- **Matching rows:** 
  - **Alice** and **Charlie** appear in both tables. The corresponding columns from both tables are combined.
  
- **Non-matching rows from Reservations table:** 
  - **Bob** and **Diana** have reservations but do not appear in the customers table, so their `customer_id` and `email` are `NULL`.
  
- **Non-matching rows from Customers table:** 
  - **Eve** and **Frank** are customers but did not make any reservations, so their `reservation_id` and `table_id` are `NULL`.

## Using Full Outer Join with WHERE Clause

We can add a `WHERE` clause to find rows where one side has `NULL` values. For example, if we want to see which customers made a reservation but did not show up (i.e., they don’t have a matching record in the customers table):

```sql
SELECT *
FROM reservations
FULL OUTER JOIN customers
ON reservations.name = customers.name
WHERE reservation_id IS NULL OR customer_id IS NULL;
```

### Result of the Query with WHERE Clause:

| reservation_id | name      | table_id | customer_id | email              |
|----------------|-----------|----------|-------------|--------------------|
| 2              | Bob       | 102      | NULL        | NULL               |
| 4              | Diana     | 104      | NULL        | NULL               |
| NULL           | Eve       | NULL     | 2           | eve@email.com-       |
| NULL           | Frank     | NULL     | 5           | frank@email.com-     |

### Explanation:
- The query filters out the rows where both the `reservation_id` and `customer_id` are `NULL`. This way, we are only interested in the rows where there are missing matches, either because a customer didn’t make a reservation or a reservation did not have a matching customer.

## Use Cases for Full Outer Join

A **Full Outer Join** is particularly useful when you want to:
- Find **all records**, even if they don't have a match in the other table.
- Identify **missing data** in either table, such as:
  - Customers who made reservations but didn’t show up.
  - Reservations that were made but not associated with any customers.

## Summary

- **Full Outer Joins** return **all rows** from both tables.
- Rows that don’t match will show `NULL` for the missing side.
- The `WHERE` clause can be used to filter out the `NULL` values to identify unmatched records.

We can use the **Full Outer Join** to analyze and clean your data, ensuring that you’re capturing all information, even if some records don’t have corresponding matches in the other table!
