CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_referidos`(in p_Cod_referencia int, in p_legajo_empleado int)
BEGIN
set @Cod_referencia = p_Cod_referencia;
set @legajo_empleado = p_legajo_empleado;
INSERT INTO programa_referidos (`Cod_referencia`,`legajo_empleado`) VALUES (p_Cod_referencia,p_legajo_empleado);
END