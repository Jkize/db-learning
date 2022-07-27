DECLARE
    regn NUMBER;
    regt VARCHAR2(200);
BEGIN
    regn := 101;
    regt := 'Asia';
    IF regn > 100 THEN
    -- We can cut the code without a "Exception". This next code throw a piece of exception personilized
        raise_application_error(-20001, 'La id no puede ser mayor de 100');
    ELSE
        INSERT INTO regions VALUES (
            regn,
            regt
        );

        COMMIT;
    END IF;

END;