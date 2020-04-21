-- Declare dos variables numéricas, asigne valores y muestre tanto su suma como su resta.

DECLARE     
     numero1 NUMBER(4):= 10;
     numero2 NUMBER(4):= 3;
BEGIN
    dbms_output.put_line('La suma es '||(numero1+numero2));
    dbms_output.put_line('La resta es '||(numero1-numero2));
END;

-- Declare dos variables numéricas y muestre la media.

DECLARE     
     numero1 NUMBER(4):= 10;
     numero2 NUMBER(4):= 3;
BEGIN
    dbms_output.put_line('La media es '||((numero1+numero2)/2));
END;

-- Declare dos variables de tipo varchar y muestre el resultado de concatenar dichas variables.

DECLARE     
     cadena1 VARCHAR2(20):= 'Hola';
     cadena2 VARCHAR2(20):= 'Oracle';
BEGIN
    dbms_output.put_line(cadena1||' '||cadena2);
END;

-- Declare tres variables de tipo varchar. Concatene las dos primeras variables y guarde el resultado en la tercera variable. A continuación muestre las tres variables de forma independiente (una línea para cada variable).

DECLARE     
     cadena1 VARCHAR2(20):= 'Hola';
     cadena2 VARCHAR2(20):= 'Oracle';
     cadena3 VARCHAR2(40):=(cadena1||' '||cadena2);
BEGIN
    dbms_output.put_line(cadena1);
    dbms_output.put_line(cadena2);
    dbms_output.put_line(cadena3);
END;

-- Declare dos variables de tipo varchar y muestre el número de caracteres que tiene cada variable.

DECLARE     
     cadena1 VARCHAR2(20):= 'Hola';
     cadena2 VARCHAR2(20):= 'Oracle';
BEGIN
    dbms_output.put_line('La cadena1 mide '||LENGTH(cadena1)||' y la cadena2 '||LENGTH(cadena2));
END;

-- Prepare un bloque PL/SQL que calcule la longitud de la circunferencia y el área correspondiente al círculo.

DECLARE     
     radio NUMBER(10);
     longitud NUMBER(10);
     area NUMBER(10);
     PI CONSTANT NUMBER(5,4):=3.1416;
BEGIN
	radio:='&radio';
	longitud:=2*PI*radio;
	area:=PI*radio*radio;
    dbms_output.put_line('El area es '||area||' y la longitud es '||longitud);
END;

-- Prepare un bloque PL/SQL que convierta una determinada cantidad expresada en segundos a horas, minutos y segundos.

DECLARE     
     segundos NUMBER(10);
     minutos NUMBER(10);
     horas NUMBER(10);
     rsegundos NUMBER(10);
     rminutos NUMBER(10);
BEGIN
	segundos:='&segundos';
	rsegundos:=MOD(segundos,60);
	minutos:=(segundos/60);
	rminutos:=MOD(minutos,60);
	horas:=(minutos/60);
	dbms_output.put_line(horas||':'||rminutos||':'||rsegundos);

END;

-- Prepare un bloque PL/SQL que diga si un determinado número es Par o Impar.

DECLARE     
     numero NUMBER(10);
BEGIN
	numero:='&numero';
IF (MOD(numero,2)=2) THEN
   dbms_output.put_line('Es par');

ELSE
   dbms_output.put_line('Es impar');

END IF;

END;

-- Prepare un bloque PL/SQL que muestre los múltiplos de 5 desde el 1 al 100 mediante un bucle FOR.

DECLARE     
     numero NUMBER(10);
BEGIN
	numero:='&numero';
IF (MOD(numero,2)=2) THEN
   dbms_output.put_line('Es par');

ELSE
   dbms_output.put_line('Es impar');

END IF;

END;

-- Prepare un bloque PL/SQL que muestre los múltiplos de 5 desde el 100 al 1 mediante un bucle FOR.

DECLARE     
     counter NUMBER(10):=0;
BEGIN
FOR counter IN 1..20
LOOP
   dbms_output.put_line(5*counter);
END LOOP;

END;

-- Prepare un bloque PL/SQL que muestre los múltiplos de 5 desde el 1 al 100 mediante un bucle WHILE.

DECLARE     
     counter NUMBER(10):=0;
BEGIN
WHILE counter <= 20
LOOP
   dbms_output.put_line(counter*5);
   counter:=counter+1;
END LOOP;

END;

-- Prepare un bloque PL/SQL que muestre los múltiplos de 5 desde el 100 al 1 mediante un bucle WHILE.

DECLARE     
     counter NUMBER(10):=20;
BEGIN
WHILE counter >= 0
LOOP
   dbms_output.put_line(counter*5);
   counter:=counter-1;
END LOOP;

END;

-- Prepare un bloque PL/SQL que muestre los múltiplos de 5 desde el 1 al 100 mediante un bucle LOOP.

DECLARE     
     counter NUMBER(10):=0;
BEGIN
LOOP
   dbms_output.put_line(counter*5);
   counter:=counter+1;
   EXIT WHEN counter=21;
END LOOP;

END;

-- Prepare un bloque PL/SQL que muestre los múltiplos de 5 desde el 100 al 1 mediante un bucle LOOP.

DECLARE     
     counter NUMBER(10):=20;
BEGIN
LOOP
   dbms_output.put_line(counter*5);
   counter:=counter-1;
   EXIT WHEN counter=-1;
END LOOP;

END;

-- Prepare un bloque PL/SQL que calcule el mayor de tres números.

DECLARE     
     numero1 NUMBER(10);
     numero2 NUMBER(10);
     numero3 NUMBER(10);
BEGIN
	numero1:='&numero1';
	numero2:='&numero2';
	numero3:='&numero3';
IF (numero1>numero2 AND numero1>numero3) THEN
   dbms_output.put_line(numero1 ||' es el mayor');

ELSIF (numero2>numero1 AND numero2>numero3) THEN
   dbms_output.put_line(numero2 ||' es el mayor');
ELSE 
   dbms_output.put_line(numero3 ||' es el mayor');

END IF;

END;

-- Prepare un bloque PL/SQL que calcule el máximo y el mínimo de tres números.

DECLARE     
     numero1 NUMBER(10);
     numero2 NUMBER(10);
     numero3 NUMBER(10);
BEGIN
	numero1:='&numero1';
	numero2:='&numero2';
	numero3:='&numero3';

	dbms_output.put_line(GREATEST(numero1,numero2,numero3) ||' es el mayor');
	dbms_output.put_line(LEAST(numero1,numero2,numero3) ||' es el menor');

END;

-- Prepare un bloque PL/SQL que calcule la suma de los números del 1 al 100.

DECLARE     
     counter NUMBER(10):=0;
     suma NUMBER(10):=0;
BEGIN
FOR counter IN 1..100
LOOP
   suma:=suma+counter;
END LOOP;
   dbms_output.put_line(suma);
END;

-- Prepare un bloque PL/SQL que calcule la suma de los números impares del 1 al 100.

DECLARE     
     counter NUMBER(10):=1;
     suma NUMBER(10):=0;
BEGIN
FOR counter IN 1..100
LOOP
   IF (MOD(counter,2) != 0) THEN
      suma:=suma+counter;
   END IF;
END LOOP;
   dbms_output.put_line(suma);
END;

-- Prepare un bloque PL/SQL que dado un número del 1 al 12 muestre el nombre del mes correspondiente (utilice CASE).

DECLARE     
     numero NUMBER(10);
BEGIN
	numero:='&numero';
CASE numero 
WHEN 1 THEN 
   dbms_output.put_line('Enero');
WHEN 2 THEN
   dbms_output.put_line('Febrero');
WHEN 3 THEN
   dbms_output.put_line('Marzo');
WHEN 4 THEN
   dbms_output.put_line('Abril');
WHEN 5 THEN
   dbms_output.put_line('Mayo');
WHEN 6 THEN
   dbms_output.put_line('Junio');
WHEN 7 THEN
   dbms_output.put_line('Julio');
WHEN 8 THEN
   dbms_output.put_line('Agosto');
WHEN 9 THEN
   dbms_output.put_line('Septiembre');
WHEN 10 THEN
   dbms_output.put_line('Octubre');
WHEN 11 THEN
   dbms_output.put_line('Noviembre');
ELSE 
   dbms_output.put_line('Diciembre');
END CASE;

END;

-- Prepare un bloque PL/SQL que dado un número del 1 al 12 muestre el nombre del mes correspondiente (utilice ELSIF).

DECLARE     
     numero NUMBER(10);
BEGIN
	numero:='&numero';
IF (numero = 1) THEN
   dbms_output.put_line('Enero');
ELSIF (numero = 2) THEN
   dbms_output.put_line('Febrero');
ELSIF (numero = 3) THEN
   dbms_output.put_line('Marzo');
ELSIF (numero = 4) THEN
   dbms_output.put_line('Abril');
ELSIF (numero = 5) THEN
   dbms_output.put_line('Mayo');
ELSIF (numero = 6) THEN
   dbms_output.put_line('Junio');
ELSIF (numero = 7) THEN
   dbms_output.put_line('Julio');
ELSIF (numero = 8) THEN
   dbms_output.put_line('Agosto');
ELSIF (numero = 9) THEN
   dbms_output.put_line('Septiembre');
ELSIF (numero = 10) THEN
   dbms_output.put_line('Octubre');
ELSIF (numero = 11) THEN
   dbms_output.put_line('Noviembre');
ELSE 
   dbms_output.put_line('Diciembre');
END IF;

END;

