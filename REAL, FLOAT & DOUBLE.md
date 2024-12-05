# SQL Data Types: REAL, FLOAT, and DOUBLE

They are used to store approximate numeric values, especially for floating-point numbers. These data types are particularly useful when you need to represent numbers with many decimal places.

## REAL Data Type
```sql
CREATE TABLE example (
    rate REAL
);
```

## FLOAT Data Type

### In MySQL:
```sql
CREATE TABLE example (
    rate FLOAT(8)
);
```

### In SQL Server:
```sql
CREATE TABLE example (
    rate FLOAT
);
```

## DOUBLE Data Type
```sql
CREATE TABLE example (
    rate DOUBLE(6,2)
);
```

## Key Differences

| Data Type | Size (Bytes) | Precision (Digits)   | Use Case                                      |
|-----------|--------------|----------------------|-----------------------------------------------|
| **REAL**  | 4 bytes      | 7 digits             | Simple measurements, general calculations     |
| **FLOAT** | 4-8 bytes    | 15 digits (if 8 bytes)| Moderate precision, scientific, non-critical calculations |
| **DOUBLE**| 8 bytes      | Very high precision   | High precision needed (e.g., pay rates, financial data) |

## Precision and Rounding
- All these data types are **approximate**. SQL will round the numbers based on the specified precision (the number of digits before and after the decimal point).
- For example, if a pay rate is `15.875` and you specify `DOUBLE(6,2)`, the value will be rounded to `15.88`.
