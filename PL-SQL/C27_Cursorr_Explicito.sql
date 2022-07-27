/*
Explicito
c1%notfound;
c1%found;
c1%isopen;
c1%rowcount;
*/

DECLARE
    CURSOR c1 IS
    SELECT
        *
    FROM
        regions;

    v1 regions%rowtype;
BEGIN
    OPEN c1; -- Open cursor 
    FETCH c1 INTO v1; --Recover the row and put into v1
    dbms_output.put_line(v1.region_name);
    FETCH c1 INTO v1; --Recover the row and put into v1
    dbms_output.put_line(v1.region_name);
    CLOSE c1; --Close cursor
END;
