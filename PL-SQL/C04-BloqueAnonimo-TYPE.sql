/*
%TYPE -> let's create same type than other such as table, columns, normal variables and more; 
*/
DECLARE 
    X NUMBER;
    Z X%TYPE; --Z It's the same type that x
    EMPLE EMPLOYEES.SALARY%TYPE;
BEGIN 
    EMPLE:=100;    
END;
