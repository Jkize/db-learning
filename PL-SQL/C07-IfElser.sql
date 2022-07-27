SET SERVEROUTPUT ON;

DECLARE
    x     NUMBER := 20;
    sales NUMBER := 20000;
    bonus NUMBER := 0;
BEGIN
    IF x = 10 THEN
        dbms_output.put_line('X:=10');
    ELSE
        dbms_output.put_line('X:=OTHER VALUE');
    END IF;

    IF sales > 50000 THEN
        bonus := 1500;
    ELSIF sales > 35000 THEN
        bonus := 500;
    ELSE
        bonus := 100;
    END IF;

    dbms_output.put_line(
    'Sales = ' || sales ||', bonus = ' || bonus || '.'
    );
END;