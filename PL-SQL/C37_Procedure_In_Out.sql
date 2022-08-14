CREATE OR REPLACE PROCEDURE calc_tax_in_out (
    empl IN employees.employee_id%TYPE,
    t1   IN OUT NUMBER
) IS 
 --Tax number:=0;
    sal NUMBER := 0;
BEGIN
    IF t1 < 0 OR t1 > 60 THEN
        raise_application_error(-20000, 'EL PORCENTAJE DEBE ESTAR ENTRE 0 Y 60');
    END IF;

    SELECT
        salary
    INTO sal
    FROM
        employees
    WHERE
        employee_id = empl;

    t1 := sal * t1 / 100;
    dbms_output.put_line('Salary: ' || sal);
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No existe el empleado');
END;


--Execution
SET SERVEROUTPUT ON
DECLARE
    A NUMBER;
    B NUMBER;
    R NUMBER;
BEGIN
    A:=120;
    B:=10;

CALC_TAX_IN_OUT(A,B);
DBMS_OUTPUT.PUT_LINE('B='||B);
END;
    