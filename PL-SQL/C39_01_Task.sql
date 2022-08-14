create or replace FUNCTION CREAR_REGION (nombre varchar2) 
RETURN NUMBER IS
regiones NUMBER;
NOM_REGION VARCHAR2(100);
BEGIN
	--AVERIGUAR SI EXISTE LA REGIÓN. SI YA EXISTE DAMOS ERROR. SI NO EXISTE PASAMOS A EXCEPTION Y SEGUIMOS CON EL PROGRAMA
	SELECT REGION_NAME INTO NOM_REGION FROM REGIONS WHERE REGION_NAME=UPPER(NOMBRE);
	raise_application_error(-20321,'Esta región ya existe!');
EXCEPTION
	-- SI LA REGION NO EXISTE LA INSERTAMOS. ES UN EJEMPLO DE COMO PODEMOS USAR LA EXCEPCION PARA HACER ALGO CORRECTO
	WHEN NO_DATA_FOUND THEN
	SELECT MAX(REGION_ID)+1 INTO REGIONES from REGIONS;
	INSERT INTO REGIONS (region_id,region_name) VALUES (regiones,upper(nombre));
	RETURN REGIONES;
END;
/

--PROBAR LA FUNCIÓN

DECLARE
N_REGION NUMBER;
BEGIN
N_REGION:=crear_region('NORMANDIA');
DBMS_OUTPUT.PUT_LINE('EL NUMERO ASIGNADO ES:'||N_REGION);
END;