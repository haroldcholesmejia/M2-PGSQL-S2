--1. Selecciona todos los registros de la tabla "Clientes".
SELECT * FROM CLIENTES;

--2. Obtén una lista de todos los tipos de cuentas sin duplicados.
SELECT DISTINCT tipo_cuenta from cuentas_bancarias;

--3.Cuenta cuántos clientes hay en la tabla "Clientes".
select count(*) from clientes;

--4.Selecciona todas las transacciones que tienen un monto mayor a 1000.
SELECT * FROM TRANSACCIONES WHERE MONTO_TRANS > '1000';  -- EL CAMPO MONTO_TRANS ES DE TIPO MONEY

--5.Ordena la lista de cuentas por su saldo en orden ascendente.
SELECT * from cuentas_bancarias ORDER BY SALDO ASC;

--6.Selecciona los primeros 5 empleados ordenados por su fecha de contratación en orden descendente.
SELECT * FROM EMPLEADOS ORDER BY FECHA_CONTRATACION DESC LIMIT 5;

--7. Selecciona todas las transacciones realizadas entre el 1 de enero de 2023 y el 31 de diciembre de 2023.
SELECT * FROM TRANSACCIONES WHERE FECHA_TRANSACCION BETWEEN '2023-01-01' AND '2023-12-31';

--8. Selecciona todas las cuentas cuyo tipo sea "Ahorro", "Corriente" o "Inversión".
SELECT * FROM cuentas_bancarias WHERE TIPO_CUENTA IN ('corriente', 'inversion');

--9. Selecciona todos los clientes cuyo nombre contiene la letra "a".
SELECT * FROM CLIENTES WHERE NOMBRE LIKE '%a%';

--10. Selecciona todos los empleados cuyos apellidos empiezan con la letra "S".
SELECT * FROM CLIENTES WHERE APELLIDO LIKE 'S%';

--11. Selecciona todos los clientes que viven en direcciones que terminan con "Avenue".
SELECT * FROM CLIENTES WHERE DIRECCION LIKE '%Avenue';

--12. Selecciona todos los empleados cuyo correo electrónico contiene "bank".
SELECT * FROM EMPLEADOS WHERE CORREO_ELECTRONICO LIKE '%bank%';

--13. Selecciona todas las sucursales cuyo nombre comienza con "Central".
SELECT * FROM SUCURSALES WHERE NOMBRE LIKE 'Central%';

--14. Selecciona todas las transacciones que son de tipo "Depósito".
SELECT * FROM TRANSACCIONES WHERE TIPO_TRANSACCION = 'deposito';

--15. Selecciona todas las transacciones que ocurren en el año 2023.
SELECT * FROM TRANSACCIONES WHERE EXTRACT(YEAR FROM fecha_transaccion) = 2023;

--16. Selecciona todas las transacciones cuya descripción contiene la palabra "pago".
SELECT * FROM TRANSACCIONES WHERE DESCRIPCION LIKE '%pago%';

--17. Selecciona todos los clientes cuyo número de teléfono comienza con "555".
SELECT * FROM CLIENTES WHERE TELEFONO LIKE '555%';

--18. Selecciona todos los empleados cuyo cargo contiene la palabra "Manager".
SELECT * FROM EMPLEADOS WHERE POSICION LIKE '%Manager%';
