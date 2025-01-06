The issue can be solved by using a JOIN instead of a subquery in the FROM clause. This approach is generally more efficient and portable across different SQL dialects.

```sql
SELECT 
    c.name,
    COUNT(p.id) AS product_count
FROM categories c
LEFT JOIN products p ON c.id = p.category_id
GROUP BY c.name;
```

This revised query uses a `LEFT JOIN` to combine the `categories` and `products` tables. The `COUNT(p.id)` function counts the products for each category, and the `GROUP BY c.name` clause groups the results by category name. This is a standard, efficient, and portable way to achieve the desired result.