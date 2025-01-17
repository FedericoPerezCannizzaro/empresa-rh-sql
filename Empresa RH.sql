CREATE TABLE empresa (
	cod_empresa int not null,
    primary key (Cod_empresa),
    Dir varchar(100),
    Descripcion varchar(100) );
    
Create table contrato(
cod_contrato int not null,
 primary key (cod_contrato),
 Descripcion varchar(50)
 );
    
CREATE TABLE Empleados_RH (
	legajo_empleado int not null,
    primary key (legajo_empleado),
    Nombre varchar(100),
    DNI INT not null,
    cod_empresa int not null,
    foreign key (Cod_empresa) REFERENCES empresa(Cod_empresa),
    tipo_contrato int,
    FOREIGN key(tipo_contrato) references contrato(cod_contrato)
    );
    
Create table feedback(
	cod_empresa int not null,
    foreign key (Cod_empresa) REFERENCES empresa(Cod_empresa),
    legajo_empleado int not null,
    foreign key (legajo_empleado) references Empleados_RH(legajo_empleado),
    Puntuacion_empleado int,
    Comentarios varchar(200)
);


create table Programa_referidos(
Cod_referencia int not null,
primary key (Cod_referencia),
legajo_empleado  int not null,
foreign key (legajo_empleado) references Empleados_RH(legajo_empleado)
);

create table Busquedas_activas(
Cod_referencia int not null,
foreign key (Cod_referencia) references Programa_referidos(Cod_referencia),
Cod_busqueda INT NOT NULL,
primary key (Cod_busqueda),
Descripcion_puesto varchar(200)
);

INSERT INTO `` (`cod_empresa`,`Dir`,`Descripcion`) VALUES (1,'cale 345','Red Link');
INSERT INTO `` (`cod_empresa`,`Dir`,`Descripcion`) VALUES (2,'calle 4567','Prisma MP');
INSERT INTO `` (`cod_empresa`,`Dir`,`Descripcion`) VALUES (3,'calle 678','Visa');
INSERT INTO `` (`cod_empresa`,`Dir`,`Descripcion`) VALUES (4,'calle falsa 123','Santander Rio');
INSERT INTO `` (`cod_empresa`,`Dir`,`Descripcion`) VALUES (5,'otra calle 678','Mercado Libre');

INSERT INTO `` (`cod_contrato`,`Descripcion`) VALUES (1,'Temporal');
INSERT INTO `` (`cod_contrato`,`Descripcion`) VALUES (2,'Por Proyecto');


INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (1,'Juan Perez',54199385,1,1);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (2,'Miguel Diaz',42159243,2,1);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (3,'Juana Arco',22934155,3,2);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (4,'Agustina Belen',29104293,4,1);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (5,'Federico Agustin',42159256,5,1);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (6,'Lucas Film',29104266,5,1);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (7,'Michele Gomez',22934567,1,2);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (8,'Rocio Perez',54099387,1,2);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (9,'Agustina Ciccone',40104293,2,2);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (10,'Ana Bessa',69104293,2,1);
INSERT INTO `` (`legajo_empleado`,`Nombre`,`DNI`,`cod_empresa`,`tipo_contrato`) VALUES (11,'Laura Laterza',10104293,3,1);

INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,1,8,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,2,8,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (3,3,6,'mejorar habilidades duras');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (4,4,6,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (5,5,5,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (5,6,5,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,7,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,8,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,9,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,10,8,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (3,11,10,'');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,1,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,2,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (3,3,7,'mejorar habilidades duras');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (4,4,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (5,5,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (5,6,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,7,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,8,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,9,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,10,9,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (3,11,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,1,8,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,2,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (3,3,9,'mejorar habilidades duras');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (4,4,4,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (5,5,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (5,6,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,7,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (1,8,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,9,7,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (2,10,9,'mejorar habilidades blandas');
INSERT INTO `` (`cod_empresa`,`legajo_empleado`,`Puntuacion_empleado`,`Comentarios`) VALUES (3,11,7,'mejorar habilidades blandas');
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (1,1);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (2,1);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (3,1);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (4,1);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (5,2);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (6,2);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (7,2);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (8,2);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (9,3);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (10,3);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (11,3);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (12,4);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (13,4);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (14,4);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (15,5);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (16,5);
INSERT INTO `` (`Cod_referencia`,`legajo_empleado`) VALUES (17,5);

INSERT INTO `` (`Cod_referencia`,`Cod_busqueda`,`Descripcion_puesto`) VALUES (1,1,'Analista');
INSERT INTO `` (`Cod_referencia`,`Cod_busqueda`,`Descripcion_puesto`) VALUES (2,2,'Programador ');
INSERT INTO `` (`Cod_referencia`,`Cod_busqueda`,`Descripcion_puesto`) VALUES (3,3,'Analista');
INSERT INTO `` (`Cod_referencia`,`Cod_busqueda`,`Descripcion_puesto`) VALUES (4,4,'Contador');
INSERT INTO `` (`Cod_referencia`,`Cod_busqueda`,`Descripcion_puesto`) VALUES (5,5,'DBA');
	






