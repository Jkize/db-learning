CREATE OR REPLACE PROCEDURE CAL_TAX_OUT
(EMPL IN EMPLOYEES.EMPLOYEE_ID%TYPE,
T1 IN NUMBER,
R1 OUT NUMBER 
)
IS 
 --Tax number:=0;
 SAL NUMBER:=0;

BEGIN
 
    IF t1 < 0 OR t1 > 60 THEN
        raise_application_error(-20000, 'EL PORCENTAJE DEBE ESTAR ENTRE 0 Y 60');
    END IF;

    select salary into sal from employees where employee_id=empl;

    r1:=sal*t1/100;
    dbms_output.put_line('Salary: '||sal);

exception 
    when no_data_found then 
        dbms_output.put_line('No existe el empleado');
END;

--EXECUTION
--Execution
SET SERVEROUTPUT ON
DECLARE 
    A NUMBER;
    B NUMBER;
    R number;
BEGIN 
    A:=120;
    B:=5;    
    R:=0;
    
    CAL_TAX_OUT(A,B,R);
    DBMS_OUTPUT.PUT_LINE('R= '||R);
END;