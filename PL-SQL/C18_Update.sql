DECLARE
    t test.c1%TYPE;
BEGIN
    t := 10;
    UPDATE test
    SET
        c2 = 'CCCC'
    WHERE
        c1 = t;

END;