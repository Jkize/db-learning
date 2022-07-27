/*
explicito
SQL%isopen
sql%found
sql%notfound
sql%rowcount -- how many rows is affected
*/
 
BEGIN
    UPDATE test
    SET
        c2 = 'PPPP'
    WHERE
        c1 = 10;

    IF SQL%found THEN
        dbms_output.put_line('ENCONTRADO');
    END IF;
    IF SQL%notfound THEN
        dbms_output.put_line('F NO ENCONTRADO');
    END IF;
    dbms_output.put_line(SQL%rowcount);
END;