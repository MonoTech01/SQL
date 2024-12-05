# NUMERIC vs DECIMAL in SQL

`NUMERIC` and `DECIMAL` are used in SQL to store numbers with decimal points. They are functionally similar but have slight differences.

## Key Differences:
- **NUMERIC**: Strictly follows the specified scale (number of digits after the decimal).
- **DECIMAL**: May store more decimal digits than specified.

## Syntax:
Both data types require you to specify **precision (p)** and **scale (s)**:
- **Precision (p)**: Total digits (before and after the decimal).
- **Scale (s)**: Digits after the decimal point.

Example:

```sql
CREATE TABLE sales (
  totalAmount DECIMAL(8, 3),  -- 8 digits, 3 after the decimal
  discountRate NUMERIC(5, 2)  -- 5 digits, 2 after the decimal
);

INSERT INTO sales VALUES (12345.678, 15.50);
