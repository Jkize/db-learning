SET SERVEROUTPUT ON;

DECLARE
    s PLS_INTEGER := 0;
    i PLS_INTEGER := 0;
    j PLS_INTEGER;
BEGIN
    << parent >> LOOP
        i := i + 1;
        j := 100;
        dbms_output.put_line('Parent: ' || i);
        << child >> LOOP
            EXIT parent WHEN ( i > 3 );
            dbms_output.put_line('CHILD ' || j);
            j := j + 1;
            EXIT child WHEN ( j > 105 );
        END LOOP child;

    END LOOP parent;

    dbms_output.put_line('FINISH!!!');
END;