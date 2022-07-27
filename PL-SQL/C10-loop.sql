SET SERVEROUTPUT ON;

DECLARE
    X NUMBER:=1;
BEGIN
    LOOP 
        DBMS_OUTPUT.PUT_LINE(X);
        X:=X+1;
        IF X=11
            THEN EXIT;
        END IF;
    END LOOP;
    
    LOOP 
        DBMS_OUTPUT.PUT_LINE(X);
        X:=X+1;
        EXIT WHEN X=11; --It's better use this it's more short than the other
    END LOOP;
END;