
SET SERVEROUTPUT ON;
--CTRL+7 Formmat code
DECLARE
    x CONSTANT NUMBER := 10; --We must need initialize 
    z NUMBER NOT NULL := 20; --It could be change
    lastname varchar2(100):='Saavedra';
BEGIN
    z:=10+z;
    dbms_output.put_line(x || ' ' || lastname);
    dbms_output.put_line(z);
END;

 