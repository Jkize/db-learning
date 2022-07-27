SET SERVEROUTPUT ON;

DECLARE
    salario NUMBER;
    nombre employees.first_name%type;
BEGIN
    SELECT -- Only can return 1 row
        salary, first_name
    INTO salario,  nombre--save the data in salario,
    
    FROM
        employees
    WHERE
        employee_id = 100;

    dbms_output.put_line(salario || ' '||nombre );
END;