-- Juan Manuel Mena Hernández

-- Práctica 10.1 – Programación en bases de datos: declaración de datos y estructuras de control

-- Ejercicio 1

CREATE TABLE TEMP(
	COLUMNA1 NUMBER(2,0) NOT NULL,
	COLUMNA2 NUMBER(2,0) NOT NULL,
	DESCRIPCION VARCHAR2(50) NOT NULL
);

DECLARE

	columna1 INTEGER;
	columna2 INTEGER;
	division NUMBER :=0;
	descripcion VARCHAR2(90);
	i INTEGER :=1;

BEGIN
    DELETE FROM TEMP;
    LOOP
    EXIT WHEN i=11;
        columna1 :=i;
        columna2 :=i*5;
        division :=MOD(i,2);
        i := i+1;
    	IF division = 0 THEN
        	descripcion:='      '|| i-1 ||' es un numero PAR';
    	ELSE
        	descripcion:='      '|| i-1 ||' es un numero IMPAR';
    	END IF;
		INSERT INTO TEMP VALUES (columna1, columna2, descripcion);
    END LOOP;

END;

SELECT * FROM TEMP;

DROP TABLE TEMP;

-- Ejercicio 2

DECLARE

	columna1 INTEGER;
	columna2 INTEGER;
	division NUMBER :=0;
	descripcion VARCHAR2(90);

BEGIN
    DELETE FROM TEMP;
    FOR i IN 1..10
    LOOP
        columna1 :=i;
        columna2 :=i*5;
        division :=MOD(i,2);
    	IF division = 0 THEN
        	descripcion:='      '|| i ||' es un numero PAR';
    	ELSE
        	descripcion:='      '|| i ||' es un numero IMPAR';
    	END IF;
		INSERT INTO TEMP VALUES (columna1, columna2, descripcion);
    END LOOP;

END;

-- Ejercicio 3

DECLARE

	columna1 INTEGER;
	columna2 INTEGER;
	division NUMBER :=0;
	descripcion VARCHAR2(90);

BEGIN
    DELETE FROM TEMP;
    FOR i IN REVERSE 1..10
    LOOP
        columna1 :=i;
        columna2 :=i*5;
        division :=MOD(i,2);
    	IF division = 0 THEN
        	descripcion:='      '|| i ||' es un numero PAR';
    	ELSE
        	descripcion:='      '|| i ||' es un numero IMPAR';
    	END IF;
		INSERT INTO TEMP VALUES (columna1, columna2, descripcion);
    END LOOP;

END;

-- Ejercicio 4

DECLARE

	columna1 INTEGER;
	columna2 INTEGER;
	division NUMBER :=0;
	descripcion VARCHAR2(90);
	i INTEGER :=1;

BEGIN
    DELETE FROM TEMP;
    WHILE i<11
    LOOP
        columna1 :=i;
        columna2 :=i*5;
        division :=MOD(i,2);
        i := i+1;
    	IF division = 0 THEN
        	descripcion:='      '|| i-1 ||' es un numero PAR';
    	ELSE
        	descripcion:='      '|| i-1 ||' es un numero IMPAR';
    	END IF;
		INSERT INTO TEMP VALUES (columna1, columna2, descripcion);
    END LOOP;

END;

--Ejercicio 5

DECLARE

    TYPE tipoRegistro IS RECORD 
    (
        var1 INT,
        var2 INT,
        var3 INT,
        var4 INT
    );
    
    type tipoArrayRegistro IS VARRAY(12) OF tipoRegistro;
    
    vector tipoArrayRegistro;
    cont INT := 1;
    lect INT := 1;

BEGIN
    
    vector := tipoArrayRegistro();
    vector.extend(12);
    
    LOOP
        vector(cont).var1 := cont*1;
        vector(cont).var2 := cont*2;
        vector(cont).var3 := cont*3;
        vector(cont).var4 := cont*4;
        cont := cont + 1;
        EXIT WHEN cont > 3;
    
    END LOOP;

    FOR cont IN 4..6
    LOOP
        vector(cont).var1 := cont*1;
        vector(cont).var2 := cont*2;
        vector(cont).var3 := cont*3;
        vector(cont).var4 := cont*4;
       
    END LOOP;

    FOR cont IN REVERSE 7..9
    LOOP
        vector(cont).var1 := cont*1;
        vector(cont).var2 := cont*2;
        vector(cont).var3 := cont*3;
        vector(cont).var4 := cont*4;
       
    END LOOP;

    WHILE cont<=12
    LOOP
        vector(cont).var1 := cont*1;
        vector(cont).var2 := cont*2;
        vector(cont).var3 := cont*3;
        vector(cont).var4 := cont*4;
       	cont:= cont+1;

    END LOOP;

    WHILE lect<=vector.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE(vector(lect).var1 || ' ' || vector(lect).var2 || ' ' || vector(lect).var3 || ' ' || vector(lect).var4);
       	lect:= lect+1;

    END LOOP;
    
END;