DECLARE
    reg_max EXCEPTION;
    regn NUMBER;
    regt VARCHAR2(200);
BEGIN
    regn := 101;
    regt := 'Asia';
    DECLARE
        reg_max EXCEPTION;
    BEGIN
        IF regn > 100 THEN
            RAISE reg_max; --Throw the exception
        ELSE
            INSERT INTO regions VALUES (
                regn,
                regt
            );

        END IF;
    EXCEPTION
        WHEN reg_max THEN
            dbms_output.put_line('HIJO: La region no puede ser mayor de 100.');
    END;

EXCEPTION
    WHEN reg_max THEN
        dbms_output.put_line('La region no puede ser mayor de 100.');
    WHEN OTHERS THEN
        dbms_output.put_line('Error indefinido');
END;