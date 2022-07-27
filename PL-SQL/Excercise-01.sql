SET SERVEROUTPUT ON;

DECLARE 
    tax CONSTANT NUMBER:=0.21;
    price_product  NUMBER(5,2);
    resulta price_product%TYPE;
BEGIN 
    price_product:=100.50;
    resulta:=tax*price_product;
    dbms_output.put_line(resulta);
END;