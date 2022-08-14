SELECT
    first_name,
    salary,
    calc_tax_f(employee_id, 18)
FROM
    employees;

--Only using IN
--we can use in query sql
-- Function in databse
-- Return SQL y PL/SQL