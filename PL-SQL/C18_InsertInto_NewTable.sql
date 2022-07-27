DECLARE
    col1 test.c1%TYPE;
BEGIN
    col1 := 10;
    INSERT INTO TEST (
        c1,
        c2
    ) VALUES (
        col1,
        'AAAAA'
    );
    commit; --save

END;