```sql
-- Option 1: Use IS NULL to handle NULL salaries explicitly
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);

-- Option 2: Treat NULL salaries as a separate case using CASE
SELECT *, CASE WHEN salary IS NULL THEN 'Unknown Salary' ELSE CAST(salary AS VARCHAR) END as SalaryDescription 
FROM employees WHERE department = 'Sales';

-- Option 3: Use COALESCE to replace NULL with a default value
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```