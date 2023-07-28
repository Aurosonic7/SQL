/* Seleccionamos la base de datos */
USE hr;
/* Hacemos una prueba de lo que queremos hacer en el procedimiento */
SELECT MAX(employee_id) AS _Query FROM employees;
/* Eliminamos el procedure */
DROP PROCEDURE cve_max;
/* Procedimiento */
DELIMITER //
CREATE PROCEDURE cve_max(OUT param1 INT)
BEGIN
    SELECT MAX(employee_id) INTO param1 FROM employees;
END
//
/* Ejecutamos el procedure */
CALL cve_max(@a);
/* Mostramos el contenido de la variable que nos devuelve el procedure */
SELECT @a AS _Procedure;