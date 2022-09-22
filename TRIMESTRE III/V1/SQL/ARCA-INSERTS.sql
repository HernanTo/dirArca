-- * Tablas

-- Usuarios

create table Tipo_documento(
    idTDD int not null auto_increment,
    nombreTDD varchar(45) not null,
    primary key(idTDD)
);

create table Usuario(
    documento_U int not null,
    pNombre_U varchar(15) not null,
    sNombre_U varchar(15) null,
    pApellido_U varchar(15) not null,
    sApellido_U varchar(15) null,
    fechaNacimiento_U date not null,
    direccion_U varchar(40) not null,
    correoElectronico_U varchar(45) not null,
    telefono_U int(10) not null,
    claveU varchar(20) not null,
    fk_pk_tipo_documentoU int not null,
    primary key(documento_U, fk_pk_tipo_documentoU)
);

create table Paciente(
    fk_pk_usuario_TipoDocumento int not null,
    fk_pk_usuario_Documento_U int not null,
    EPS_P varchar(20) not null,
    primary key (fk_pk_usuario_Documento_U, fk_pk_usuario_TipoDocumento)
);

create table Especialidad (
    idEspecialidad int not null auto_increment,
    nombreEspecialidad varchar(45) not null,
    primary key (idEspecialidad)
);


create table Doctor (
    fk_pk_usuario_TipoDocumento int not null,
    fk_pk_usuario_Documento_U int not null,
    fk_especialidad int not null,
    primary key (fk_pk_usuario_Documento_U, fk_pk_usuario_TipoDocumento)
);

create table Secretaria (
    fk_pk_usuario_TipoDocumento int not null,
    fk_pk_usuario_Documento_U int not null,
    primary key (fk_pk_usuario_Documento_U, fk_pk_usuario_TipoDocumento)
);

create table Administrador (
    fk_pk_usuario_TipoDocumento int not null,
    fk_pk_usuario_Documento_U int not null,
    primary key (fk_pk_usuario_Documento_U, fk_pk_usuario_TipoDocumento)
);

-- Citas

create table CitasAgendadas(
    idCitas int NOT NULL auto_increment,
    DiaCita date,
    HoraCita datetime,
    estadoCita tinyint,
    Observaciones varchar(45),
    fk_pk_idTipocita int,
    fk_paciente_TipoDocumento int not null,
    fk_paciente_Documento_U int not null,
    fk_doctor_TipoDocumento int not null,
    fk_doctor_Documento_U int not null,
    primary key(idCitas, fk_pk_idTipocita)
);

create table Tiposdecita(
    idTiposCita int NOT NULL auto_increment,
    NombreTipoCita varchar(45),
    primary key(idTiposCita)
);

-- PQRSF

create table TipoPQRSF(
    idTipoPQRSF INT NOT NULL auto_increment,
    TipoPQRSF varchar(20) NOT NULL,
    PRIMARY KEY (idTipoPQRSF)
);

create table PQRSF(
    NumeroRadicacion INT NOT NULL auto_increment,
    MotivoPQRSF varchar(50) NOT NULL,
    RazonesApoyoPQRSF LONGBLOB NOT NULL,
    FechaPQRSF DATE NOT NULL,
    EstadoPQRSF TINYINT NOT NULL,
    fk_pk_idTipoPQRSF INT NOT NULL,
    fk_usuario_TipoDocumento int not null,
    fk_usuario_Documento_U int not null,
    PRIMARY KEY (NumeroRadicacion, fk_pk_idTipoPQRSF)
);

-- * Relaciones 

-- Usuario - tipo documento
alter table Usuario
add foreign key(fk_pk_tipo_documentoU) references Tipo_documento(idTDD);

-- Usuario - paciente
alter table Paciente
add foreign key(fk_pk_usuario_TipoDocumento, fk_pk_usuario_Documento_U) references Usuario(fk_pk_tipo_documentoU, documento_U);

-- Usuario - Secretaria
alter table Secretaria
add foreign key(fk_pk_usuario_TipoDocumento, fk_pk_usuario_Documento_U) references Usuario(fk_pk_tipo_documentoU, documento_U);

-- Usuario - admin
alter table Administrador
add foreign key(fk_pk_usuario_TipoDocumento, fk_pk_usuario_Documento_U) references Usuario(fk_pk_tipo_documentoU, documento_U);

-- Usuario - doctor
alter table Doctor
add foreign key(fk_pk_usuario_TipoDocumento, fk_pk_usuario_Documento_U) references Usuario(fk_pk_tipo_documentoU, documento_U);

-- doctor - especialidad
alter table Doctor
add foreign key(fk_especialidad) references Especialidad(idEspecialidad);

-- TipoPqrsf - pqrsf
alter table PQRSF
add foreign key(fk_pk_idTipoPQRSF) references TipoPQRSF(idTipoPQRSF);

-- PQRSF - Paciente
alter table PQRSF
add foreign key(fk_usuario_TipoDocumento, fk_usuario_Documento_U) references Paciente(fk_pk_usuario_TipoDocumento, fk_pk_usuario_Documento_U);

-- Citas agendadas - tipoCita
alter table CitasAgendadas
add foreign key(fk_idTipocita) references Tiposdecita(idTiposCita);

-- Citas agendadas - Paciente
alter table CitasAgendadas
add foreign key(fk_paciente_TipoDocumento,fk_paciente_Documento_U) references Paciente(fk_pk_usuario_TipoDocumento, fk_pk_usuario_Documento_U);

-- Citas agendadas - doctor
alter table CitasAgendadas
add foreign key(fk_doctor_TipoDocumento, fk_doctor_Documento_U) references Doctor(fk_pk_usuario_TipoDocumento, fk_pk_usuario_TipoDocumento);


-- Insercion de datos

insert into tipo_documento (idTDD,nombreTDD)
values (301,'TI'),
(302,'CC'),
(302,'CE'),
(303,'PAP');

insert into Usuario (documento_U,pNombre_U,sNombre_U,pApellido_U,sApellido_U,fechaNacimiento_U,direccion_U,correoElectronico_U,telefono_U,claveU,fk_pk_tipo_documentoU)
values (281379387,'Maria','Jose','Perez','Rojas',('11/3/1999'),'Calle 11 No. 4 - 14','maria32@outlook.com',3219787661,'********',302),
(73827182,'Carlos','Emmanuel','Cruz','Ramirez',('8/9/2007'),'Calle 24 No 5-60','caemcruz32@gmail.com',3117865243,'***********',301),
(52876456,'Juan','Daniel','Rojas','Diaz',('25/02/1974'),'Carrera 49B #60-50','rojas23@arca.com',3024567687,'***********',302),
(721827383,'Yeraldin','Marcela','Vega','Sanchez',('08/12/1994'),'Calle 45 No 60-32','vega4965@arca.com',3145604949,'**************',302),
(73937291,'Alejandra','Maria','Vargas','Torres',('20/12/2000'),'Av. Ciudad de Cali No. 6C-09','maleja67@gmail.com',3058765432,'********',302),
(9876256,'Daniela','Maria','Beltran','Jimenez',('09/11/1967'),'Cra 90b #50A-12','beltran4051@arca.com',3118765421,'******',302),
(748323632,'Pablo','Jose','Cortez','Blanco',('06/04/1983'),'Calle 48b sur No. 21-13','pablito73@outlook.com',3129876543,'********',302),
(1049204933,'Carlos','Manuel','Soler','Rosas',('10/09/1985'),'Calle 90B sur #13-27','soler52@arca.com',3132095640,'**********',302),
(1034586848,'Andres','','Escobar','Castiblanco',('03/07/1989'),'Carrera 29B #10-15','pablito67@arca.com',31566331982,'***********',302),
(1019877654,'Jorge','','VIlla','Sanchez',('13/12/1993'),'Calle 10A #20-19','villa4032@arca.com',3056786452,'**************',302),
(12673126,'Tatiana','','Ospina','Martinez',('19/05/1999'),'Avenida Cra. 60 No. 57-60','taty999@gmail.com',3202876543,'***********',302),
(102128331,'Santiago','','Flores','Gomez',('27/04/1970'),'Calle 43 No. 27-12','flores3261@arca.com',3145439850,'***********',302),
(1018726753,'Flor','','Amaya','Arevalo',('15/07/1995'),'Cra 97c #47C - 78','arevalo45@arca.com',3027685642,'***********',302),
(1040340344,'Martha','Cecilia','Fonseca','Acevedo',('31/05/2001'),'Av. Ciudad de Cali No. 9C-76','acevado@arca.com',3145439851,'*******',302);

insert into Administrador (fk_pk_usuario_Documento_U,fk_pk_usuario_TipoDocumento)
values (102128331,302),		
(1040340344,302);

insert into Secretaria (fk_pk_usuario_Documento_U,fk_pk_usuario_TipoDocumento)
values 	(1049204933,302),	
(1034586848,302);

insert into especialidad (idEspecialidad,nombreEspecialidad)
values (41,'Medico General'),
(42,'Psicologo');

insert into paciente (fk_pk_usuario_Documento_U,fk_pk_usuario_TipoDocumento,EPS_P)
(281379387,302,'Sanitas'),
(73827182,301,'Cafam'),		
(73937291,302,'Sura'),
(748323632,302,'Compensar'),		
(12673126,302,'Sura'),


insert into doctor (fk_pk_usuario_Documento_U,fk_pk_usuario_TipoDocumento,fk_especialidad)
values (52876456,302,41),
(721827383,302,42),
(9876256,302,42),
(1019877654,302,41),
(1018726753,302,41);

insert into tipoCita (idTiposCita,NombreTipoCita)
values (501,'General'),
(502,'Psicologo');

insert into CitasAgendadas (idCitas,DiaCita,HoraCita,estadoCita,Observaciones,fk_pk_idTipocita,fk_paciente_Documento_U,fk_paciente_TipoDocumento,fk_doctor_TipoDocumento,fk_doctor_Documento_U)
values (701,('14/06/2022'),('14:00'),'Se nota una leve mejoria',501,302,281379387,302,52876456),	
(702,('18/03/2022'),('9:00'),'Su avance no ha sido el esperado',502,301,73827182,302,721827383),	
(703,('23/07/2022'),('16:00'),'Su avance ha sido satisfactorio',502,302,73937291,302,9876256),	
(704,('26/11/2022'),('12:30'),'Su avance ha sido satisfactorio',501,302,748323632,302,1019877654),
(705,('14/04/2022'),('17:00'),'Su avance no ha sido el esperado',501,302,12673126,302,1018726753);

insert into TipoPQRSF (idTipoPQRSF,TipoPQRSF)
values (1001,'Queja'),
(1002,'Felicitaciones'),
(1003,'Peticiones'),
(1004,'Reclamos'),
(1005,'Sugerencias');

insert into PQRSF (NumeroRadicacion,MotivoPQRSF,RazonesApoyoPQRSF,FechaPQRSF,EstadoPQRSF,fk_pk_idTipoPQRSF,fk_usuario_TipoDocumento,fk_usuario_Documento_U)
values (43245,'No permite descargar informe','El sistema no permite descargar el informe de la cita del dia 03-06-2021',('4/06/2021'),'No respondido',1001,302,281379387),
(53522,'Buena interfaz del sistema','Felicitacion por la buena interfaz que tiene el sistema',('15/07/2021'),'Respondido',1002,301,73827182),
(36652,'Dificultades para obtener cita medica','Desde el dia 15-05-2050 no he podido programar una cita medica.',('22/05/2050'),'Respondido',1004,302,73937291),
(87262,'Sugerencia de diseno','La letra podria ser mas grande para mayor visibilidad.',('08/09/2030'),'No respondido',1005,302,12673126);


--Consultas

