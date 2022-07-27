set serveroutput on;

DECLARE
    empl employees%rowtype;
BEGIN
    SELECT
        *
    INTO empl
    FROM
        employees
    WHERE
        employee_id = 10020;

    dbms_output.put_line(empl.first_name);
    
    --If there is a exception so this block is executed
EXCEPTION

-- No_data_found
-- Too_many_rows
-- zero_divide
-- dup_val_on_index

    WHEN no_data_found THEN
        dbms_output.put_line('ERROR, EMPLEADO INEXISTENTE');
    WHEN too_many_rows THEN
        dbms_output.put_line('ERROR, DEMASIADOS EMPLEADO');
    WHEN OTHERS THEN
        dbms_output.put_line('NI IDEA DE ERROR');
END;
-- Oracle exception
-- User exception