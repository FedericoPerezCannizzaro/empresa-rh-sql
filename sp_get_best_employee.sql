CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_best_employee`()
BEGIN
select e.nombre, e.dni,puntuacion_empleado from empleados_rh as e 
    inner join feedback as f on f.legajo_empleado = e.legajo_empleado
    ORDER BY f.puntuacion_empleado desc;
END