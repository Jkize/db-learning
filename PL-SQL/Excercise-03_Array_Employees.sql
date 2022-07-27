SET SERVEROUTPUT ON;
--We use record to construct data like json with multiple field. In each field we can put any type include rowtype
DECLARE
    TYPE empleado IS RECORD (
        name     VARCHAR2(100),
        sal      employees.salary%TYPE,
        cod_dept employees.department_id%TYPE
    );
    TYPE table_emp IS
        TABLE OF empleado INDEX BY PLS_INTEGER;
    empl table_emp;
BEGIN
    FOR i IN 100..206 LOOP
        SELECT
            first_name
            || ' '
            || last_name,
            salary,
            department_id
        INTO
            empl
        (i)
        FROM
            employees
        WHERE
            employee_id = i;

    END LOOP;

    FOR i IN empl.first..empl.last LOOP
        dbms_output.put_line(empl(i).name
                             || ' '
                             || empl(i).sal
                             || ' '
                             || empl(i).cod_dept);
    END LOOP;

    dbms_output.put_line('======================');
    dbms_output.put_line(empl(empl.first).name);
    dbms_output.put_line('Tamaño empl : ' || empl.count);
    FOR i IN empl.first..empl.last LOOP
        IF empl(i).sal < 7000 THEN
            empl.DELETE(i);
        END IF;
    END LOOP;

    dbms_output.put_line('Tamaño empl : ' || empl.count);
END;