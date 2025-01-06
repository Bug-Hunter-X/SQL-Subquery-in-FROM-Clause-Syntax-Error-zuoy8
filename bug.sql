The following SQL query attempts to use a subquery in the FROM clause, which is not supported by all SQL dialects.  Specifically, it attempts to select from the result of a COUNT(*) subquery which is not valid in some database systems such as MySQL 5.7 and earlier.  This results in a syntax error.

```sql
SELECT 
    name,
    (SELECT COUNT(*) FROM products p WHERE p.category_id = c.id) as product_count
FROM categories c;
```