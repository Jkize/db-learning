DECLARE
    t test.c1%TYPE;
BEGIN
    t := 20;
    DELETE FROM test
    WHERE
        c1 = t;
    COMMIT;
END;
/ --It is necesary if we use PL/SQL and SQL in the same file
Select * from test;