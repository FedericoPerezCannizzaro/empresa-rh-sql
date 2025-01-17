create table referencias_hist(
fecha int,
legajo_empleado int not null,
cod_referencia int

);


drop trigger AFT_INS_NEW_REFERIDO;
#su fin es tener una base de datos de quien refirio mas gente en el año 
create trigger AFT_INS_NEW_REFERIDO
AFTER INSERT ON programa_referidos
for each row 
insert into referencias_hist
values(NOW(),new.legajo_empleado,new.cod_referencia);


INSERT INTO programa_referidos(`Cod_referencia`,`legajo_empleado`) VALUES (19,4);
