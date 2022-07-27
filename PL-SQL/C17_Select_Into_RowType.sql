SET SERVEROUTPUT ON;

DECLARE
    salario  NUMBER;
    nombre   employees.first_name%TYPE;
    empleado employees%rowtype;-- it's better than use every field to into the result
BEGIN
    SELECT --Only 1 row
        *
    INTO empleado
    FROM
        employees
    WHERE
        employee_id = 100;

    dbms_output.put_line(empleado.salary);
    dbms_output.put_line(empleado.first_name);
END;