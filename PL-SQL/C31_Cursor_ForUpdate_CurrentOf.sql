DECLARE
    empl employees%rowtype;
    CURSOR cur IS
    SELECT
        *
    FROM
        employees
    FOR UPDATE;

BEGIN
    OPEN cur;
    LOOP
        FETCH cur INTO empl;
        EXIT WHEN cur%notfound;
        IF empl.commission_pct IS NOT NULL THEN
            UPDATE employees
            SET
                salary = salary * 1.10
            WHERE
                CURRENT OF cur;

        ELSE
            UPDATE employees
            SET
                salary = salary * 1.15
            WHERE
                CURRENT OF cur; -- where current of (cursosr) the current row
        END IF;

    END LOOP;
    close cur;
END;