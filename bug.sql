```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem correct, but it could lead to unexpected results if there are any NULL values in the 'salary' column.  The `>` operator does not handle NULLs in a way that's always intuitive.  A NULL salary doesn't mean less than 100000, or more than 100000, it means 'unknown'.

Because of this, rows with NULL salaries will be excluded from the results, even though we might actually want to include them (or handle them differently).