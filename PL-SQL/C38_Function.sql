CREATE OR REPLACE FUNCTION calc_tax_f (
    empl IN employees.employee_id%TYPE,
    t1   IN NUMBER
)return number IS
    tax NUMBER := 0;
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

    tax := sal * t1 / 100;

    RETURN tax;
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('NO EXISTE USUARIO');
END;

--EXECUTION
SET SERVEROUTPUT ON
DECLARE
    A NUMBER;
    B NUMBER;
    R NUMBER;
BEGIN

    A:=120;
    B:=10;
    R:=CALC_TAX_F(A,B);
    DBMS_OUTPUT.PUT_LINE('R= '||R);   
END;