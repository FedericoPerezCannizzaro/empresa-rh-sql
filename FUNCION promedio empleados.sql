CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_promedio`(legajo_empleado int) RETURNS float
    READS SQL DATA
BEGIN

declare resultado float;

set resultado = (SELECT sum(puntuacion_empleado)/count(puntuacion_empleado) from feedback having legajo_empleado = legajo_empleado);

RETURN resultado;

END