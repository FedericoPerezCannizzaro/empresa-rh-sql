Create table LogsDB(
fecha_hora DATETIME,
usuario VARCHAR(100),
tabla varchar(200),
acion varchar(200),
DB varchar(200)
);

#Historial: su fin es que el admin pueda ver un historial de lo que sucede dentro de las tablas a que Db pertenecen y que se realizo

CREATE TRIGGER bef_del_feedback_log
before delete on feedback
for each row 
insert into LogsdB
values (now(),user(),'feedback','delete', database());


delete from feedback where legajo_empleado = 11;

