SELECT * FROM USER_OBJECTS WHERE OBJECT_TYPE='PROCEDURE'; --The procedure we have and their description

SELECT OBJECT_TYPE, COUNT(*) FROM USER_OBJECTS GROUP BY OBJECT_TYPE; --The amount of every squence, procedure, lob ...


SELECT * FROM USER_SOURCE WHERE NAME='P1'; --Know the data of p1 (It is a procedure) for every row is a line of code
