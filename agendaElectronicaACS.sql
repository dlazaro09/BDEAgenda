DROP DATABASE if exists agendaElectronicaACS;

CREATE DATABASE agendaElectronicaACS;
USE agendaElectronicaACS;

CREATE TABLE rol(
id_rol INT(10) NOT NULL AUTO_INCREMENT,
descripcion VARCHAR(20),
CONSTRAINT pk_idrol PRIMARY KEY(id_rol)
);

CREATE TABLE usuario(
id_user INT(10) NOT NULL AUTO_INCREMENT,
login_name VARCHAR(100),
contrasena VARCHAR(100),
nombreUser VARCHAR(100),
apellidosUser VARCHAR(100),
ciudad VARCHAR(120),
rol_id INT(10),
activo INT(10),
CONSTRAINT pk_iduser PRIMARY KEY (id_User),
CONSTRAINT rolid_fk FOREIGN KEY(rol_id) REFERENCES rol(id_rol)
);


CREATE TABLE evento(
id_evento INT NOT NULL AUTO_INCREMENT,
lugar_evento VARCHAR(150),
cant_invitados INT,
fecha_evento VARCHAR(100),
nombre_organizador VARCHAR(240),
telefono INT,
nombre_patrocinador VARCHAR(240),
telefono_patrocinador INT,
CONSTRAINT PK_idevent PRIMARY KEY(id_evento)
);


-- INSERTAMOS EN LAS TABLAS
INSERT INTO rol VALUES (null,'ADMINISTRADOR');
INSERT INTO rol VALUES (null,'OPERADOR');
INSERT INTO rol VALUES (null,'CONSULTAS');
INSERT INTO usuario(id_user,login_name,contrasena,nombreUser,apellidosUser,ciudad,rol_id,activo) VALUES (null,'dlazaro', 'd12345','Douglas','Lazaro','Escuintla',1,1);
INSERT INTO usuario(id_user,login_name,contrasena,nombreUser,apellidosUser,ciudad,rol_id,activo) VALUES (null,'odorantes', 'abc','Ofelia','Dorantes','Guatemala',2,1);
INSERT INTO usuario(id_user,login_name,contrasena,nombreUser,apellidosUser,ciudad,rol_id,activo) VALUES(null,'saguilar','NHUL','Salomon','Aguilar','Suchitepequez',3,1);
