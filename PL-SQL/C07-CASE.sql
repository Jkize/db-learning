SET SERVEROUTPUT ON;

DECLARE
    v1 CHAR(1);
BEGIN
    v1 := 'B';
    CASE v1
        WHEN 'A' THEN
            dbms_output.put_line('eXCELLENT');
        WHEN 'B' THEN
            dbms_output.put_line('Very good');
        ELSE
            dbms_output.put_line('NO SUCH VALUE');
    END CASE;

END;