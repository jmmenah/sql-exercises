
-- Juan Manuel Mena Hernández

-- Ejercicio 1

CREATE OR REPLACE PROCEDURE VER_VENTAS(V_VENTAS IN VARCHAR2)
AS 

BEGIN
    FOR i IN (SELECT PROVEEDOR.NOMBRE FROM PRODUCTO JOIN COMPRA ON PRODUCTO.ID_PRODUCTO =  COMPRA.ID_PRODUCTO
    JOIN PROVEEDOR ON COMPRA.DNI = PROVEEDOR.DNI
WHERE COMPRA.DNI=V_VENTAS)
    LOOP
        DBMS_OUTPUT.PUT_LINE(i.NOMBRE);
    END LOOP;

END;


CREATE OR REPLACE PROCEDURE VER_VENTAS2(V_VENTAS IN VARCHAR2)
AS
    CURSOR CUR_CATEGORÍA IS SELECT PROVEEDOR.NOMBRE FROM PRODUCTO JOIN COMPRA ON PRODUCTO.ID_PRODUCTO =  COMPRA.ID_PRODUCTO
    JOIN PROVEEDOR ON COMPRA.DNI = PROVEEDOR.DNI
WHERE COMPRA.DNI=V_VENTAS; 

v_fabricante producto.fabricante%type;


BEGIN

    OPEN CUR_CATEGORÍA;

    LOOP

        FETCH CUR_CATEGORÍA INTO v_fabricante;
        EXIT WHEN CUR_CATEGORÍA%NOTFOUND; 
        DBMS_OUTPUT.PUT_LINE(v_fabricante);
    END LOOP;

    CLOSE CUR_CATEGORÍA;

END;

-- Ejercicio 2

CREATE OR REPLACE FUNCTION LETRA_NIF(DNI VARCHAR2)
RETURN VARCHAR2
IS
    NUMERO INTEGER;
BEGIN
    NUMERO:=TO_NUMBER(DNI);
    RETURN SUBSTR('TRWAGMYFPDXBNJZSQVHLCKE',MOD(NUMERO,23)+1,1);
END;


CREATE OR REPLACE PROCEDURE VER_DATOS
AS
    CURSOR CUR_PROVEEDOR IS SELECT PROVEEDOR.NOMBRE,PROVEEDOR.DNI FROM PROVEEDOR; 
    

   p_dni proveedor.dni%type;
   p_nombre proveedor.nombre%type;
    letra VARCHAR(2);
    correcto VARCHAR(8);
    dni_sin_letra VARCHAR(8);

BEGIN
 
    OPEN CUR_PROVEEDOR;
    DBMS_OUTPUT.PUT_LINE('NOMBRE' ||'         '|| 'DNI'||chr(10));
    LOOP
               

        FETCH CUR_PROVEEDOR INTO p_nombre,p_dni;
        letra:=SUBSTR(p_dni,9,1);
        dni_sin_letra :=SUBSTR(p_dni,1,8);
        correcto:= letra_nif(dni_sin_letra);
            EXIT WHEN CUR_PROVEEDOR%NOTFOUND;
            IF letra = correcto THEN
        DBMS_OUTPUT.PUT_LINE(p_nombre ||'         '|| p_dni ||'         '||'CORRECTO');
        ELSE
        DBMS_OUTPUT.PUT_LINE(p_nombre ||'         '|| p_dni ||'         '||'INCORRECTO');
        END IF;
    END LOOP;


    CLOSE CUR_PROVEEDOR;

END;



-- Ejercicio 3
CREATE OR REPLACE FUNCTION LETRA_NIF(DNI VARCHAR2)
RETURN VARCHAR2
IS
    NUMERO INTEGER;
BEGIN
    NUMERO:=TO_NUMBER(DNI);
    RETURN SUBSTR('TRWAGMYFPDXBNJZSQVHLCKE',MOD(NUMERO,23)+1,1);
END;


CREATE OR REPLACE PROCEDURE Actualiza_DNI
AS 
    CURSOR CUR_PROVEEDOR IS SELECT PROVEEDOR.NOMBRE,PROVEEDOR.DNI FROM PROVEEDOR; 
    

   p_dni proveedor.dni%type;
   p_nombre proveedor.nombre%type;
    letra VARCHAR(2);
    correcto VARCHAR(8);
    dni_sin_letra VARCHAR(8);
    dni_correcto VARCHAR(9);

BEGIN

    OPEN CUR_PROVEEDOR;
    DBMS_OUTPUT.PUT_LINE('NOMBRE' ||'         '|| 'DNI'||chr(10));
    LOOP
               

        FETCH CUR_PROVEEDOR INTO p_nombre,p_dni;
        letra:=SUBSTR(p_dni,9,1);
        dni_sin_letra :=SUBSTR(p_dni,1,8);
        correcto:= letra_nif(dni_sin_letra);
            EXIT WHEN CUR_PROVEEDOR%NOTFOUND;
            IF letra = correcto THEN
        DBMS_OUTPUT.PUT_LINE(p_nombre ||'         '|| p_dni ||'CORRECTO');
        ELSE
        dni_correcto:=CONCAT(dni_sin_letra,correcto);
        EXECUTE IMMEDIATE 'ALTER TABLE COMPRA DISABLE CONSTRAINT PROVEEDOR_FK';
          UPDATE proveedor SET dni=dni_correcto
          WHERE dni = p_dni;      
          EXECUTE IMMEDIATE 'ALTER TABLE COMPRA ENABLE CONSTRAINT PROVEEDOR_FK';
          END IF;
    END LOOP;


    CLOSE CUR_PROVEEDOR;

END;


