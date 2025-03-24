# Comparison of Number Data Types in SQL

| **Data Type** | **Storage** | **Range**                     | **Use Case**                           |
|---------------|-------------|-------------------------------|----------------------------------------|
| **TINYINT**   | 1 byte      | -128 to 127 (signed) or 0 to 255 (unsigned) | Small numbers, typically for flags or status codes |
| **SMALLINT**  | 2 bytes     | -32,768 to 32,767 (signed) or 0 to 65,535 (unsigned) | Small integer values with limited range |
| **MEDIUMINT** | 3 bytes     | -8,388,608 to 8,388,607 (signed) or 0 to 16,777,215 (unsigned) | Medium-sized integer values |
| **INT**       | 4 bytes     | -2,147,483,648 to 2,147,483,647 (signed) or 0 to 4,294,967,295 (unsigned) | Standard integer values, often used for counting |
| **BIGINT**    | 8 bytes     | -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed) or 0 to 18,446,744,073,709,551,615 (unsigned) | Extremely large numbers, useful for storing large quantities or identifiers |
