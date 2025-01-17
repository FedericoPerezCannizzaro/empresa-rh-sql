create view `empleados_empresas` AS 
 select e.nombre,em.descripcion,e.cod_empresa
from empleados_rh as e
inner join empresa as em
where e.cod_empresa = em.cod_empresa;

create view `empleados_puntuacion` AS 
 select e.nombre,f.puntuacion_empleado,f.comentarios,e.legajo_empleado
from empleados_rh as e
inner join feedback as f
where e.legajo_empleado = f.legajo_empleado;
;

create view `empleados_referencias` AS 
select e.nombre,count(p.legajo_empleado) as referencias_echas
from empleados_rh as e
inner join programa_referidos as p
where p.legajo_empleado = e.legajo_empleado
group by e.nombre;

create view `empleados_descripcion_contrato` AS 
SELECT e.nombre,c.cod_contrato,c.descripcion,e.cod_empresa,e.tipo_contrato
from  empleados_rh as e 
inner join contrato as c
where e.tipo_contrato = c.cod_contrato
group by e.nombre;


create view `puestos_para_referidos` AS 
select b.cod_busqueda,b.cod_referencia,b.descripcion_puesto
from busquedas_activas as b
inner join programa_referidos as p
where b.Cod_referencia = p.Cod_referencia
group by b.Cod_busqueda;



