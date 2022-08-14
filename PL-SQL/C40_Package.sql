CREATE OR REPLACE PACKAGE PACK1
IS 
    V1 NUMBER;
    V2 VARCHAR(100);
END;


--EXECUTION
SET SERVEROUTPUT ON;
 BEGIN
    PACK1.V1:=100;
    PACK1.V2:='AAAAAA';
    DBMS_OUTPUT.PUT_LINE(PACK1.V1);
    DBMS_OUTPUT.PUT_LINE(PACK1.V2);
 END;


 --The variable in the package are saved until the seccion is finished
 --Is used to share components, variable between functions, sql procedure and more
 