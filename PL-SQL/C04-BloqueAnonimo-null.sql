SET SERVEROUTPUT ON;

DECLARE
    x NUMBER;
    z NUMBER := 10;
    a VARCHAR2(100) := 'EXAMPLE';
    d DATE := '10-01-1990';
BEGIN
    dbms_output.put_line(x + 10); --NULL IF we have a null the result always will be null 
    dbms_output.put_line(sysdate);
END;