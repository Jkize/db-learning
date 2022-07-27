SET SERVEROUTPUT ON;

DECLARE
    p VARCHAR2(30);
    n PLS_INTEGER := 5;
BEGIN
    FOR j IN 2..round(sqrt(n)) LOOP
        IF n MOD j = 0 THEN
            p := 'no es un número primo';
            GOTO print_now; -- Go to a statement
        END IF;
    END LOOP;

    p := ' es un número primo';
    << print_now >> 
    dbms_output.put_line(to_char(n)
                                         || p);
END;