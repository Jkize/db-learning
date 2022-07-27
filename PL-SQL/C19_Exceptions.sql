set serveroutput on;

DECLARE
    empl employees%rowtype;
BEGIN
    SELECT
        *
    INTO empl
    FROM
        employees
    WHERE
        employee_id = 1000;

    dbms_output.put_line(empl.first_name);
    
    --If there is a exception so this block is executed
EXCEPTION
    WHEN ex1 THEN
        NULL;
    WHEN ex2 THEN
        NULL;
    WHEN OTHERS THEN
        NULL;
END;
-- Oracle exception
-- User exception