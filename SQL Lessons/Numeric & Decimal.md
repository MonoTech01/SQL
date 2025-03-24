# NUMERIC vs DECIMAL in SQL

`NUMERIC` and `DECIMAL` are used in SQL to store numbers with decimal points. They are functionally similar but have slight differences. They should not be used together!

## Syntax:
Both data types require you to specify **precision (p)** and **scale (s)**:
- **Precision (p)**: Total digits (before and after the decimal).
- **Scale (s)**: Digits after the decimal point.

Example:

```sql
CREATE TABLE sales (
  price DECIMAL(6, 2),   -- 6 digits total, 2 digits after the decimal
  discount NUMERIC(5, 1) -- 5 digits total, 1 digit after the decimal
);

Explanations:
In the price field, 6 digits are allowed, with 2 digits after the decimal point (e.g., 1234.56).
In the discount field, 5 digits are allowed, with 1 digit after the decimal point (e.g., 45.5).
