SET SERVEROUTPUT ON;
--We use record to construct data like json with multiple field. In each field we can put any type include rowtype
DECLARE
    TYPE empleado IS RECORD (
        nombre  VARCHAR2(100),
        salario NUMBER,
        fecha   employees.hire_date%TYPE,
        datos   employees%rowtype
    );
    emple1 empleado;
BEGIN
    SELECT
        *
    INTO emple1.datos
    FROM
        employees
    WHERE
        employee_id = 100;

    emple1.nombre := emple1.datos.first_name
                     || ' '
                     || emple1.datos.last_name;

    emple1.salario := emple1.datos.salary * 0.80;
    dbms_output.put_line(emple1.nombre);
    dbms_output.put_line(emple1.datos.first_name);
END;