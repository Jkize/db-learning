SET SERVEROUTPUT ON;

DECLARE
    i VARCHAR2(100) := 'AAAA';
BEGIN
    FOR i IN 5..15 LOOP --type of i -> PLS_INTEGET 
        dbms_output.put_line(i);
        EXIT WHEN i = 10;
    END LOOP;

    FOR i IN REVERSE 5..15 LOOP
        dbms_output.put_line(i);
    END LOOP;

    dbms_output.put_line(i);
END;