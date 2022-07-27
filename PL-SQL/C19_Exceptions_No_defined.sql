/*
Exception No Predefinida
We define a exception with code -937 (Exception when we use SUM(), avg without a grop by)
*/

DECLARE
    mi_except EXCEPTION;
    PRAGMA exception_init ( mi_except, -937 );
    v1 NUMBER;
    v2 NUMBER;
BEGIN
    SELECT
        employee_id,
        SUM(salary)
    INTO
        v1,
        v2
    FROM
        employees;

    dbms_output.put_line(v1);
EXCEPTION
    WHEN mi_except THEN
        dbms_output.put_line('Funcion de grupo incorrecta');
    WHEN OTHERS THEN
        dbms_output.put_line('Error indefinido');
END;