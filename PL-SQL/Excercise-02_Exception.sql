DECLARE
    control_regiones EXCEPTION;
    id_reg number:=201;
    name_reg varchar2(5):='Me';
BEGIN 
    IF id_reg > 200 THEN
        RAISE control_regiones; --Throw the exception
    ELSE
        INSERT INTO regions VALUES (
            id_reg,
            name_reg
        );

    END IF;

EXCEPTION
    WHEN control_regiones THEN
        dbms_output.put_line('Código no permitido. Debe ser inferior a 200');
    WHEN OTHERS THEN
        dbms_output.put_line('Error indefinido');
END;