DECLARE
    empl employees%rowtype;
    code number;
    message varchar2(100);

begin
    select * into empl from employees;
    dbms_output.put_line(empl.salary);
    exception
    when others then 
        dbms_output.put_line(sqlcode); --Caught the error sqlcode and sqlrrm it's only pl/sql
        dbms_output.put_line(sqlerrm); --Caught MESSAGE error
        --INSERT INTO ERRORS VALUES (SQLCODE, SQLERRM); --It's a error
        code:=sqlcode;
        message:=sqlerrm;
        INSERT INTO ERRORS VALUES (code, message);
end;