CREATE SCHEMA IF NOT EXISTS BASEDATOS;
USE BASEDATOS;

CREATE TABLE distrito (
  id_distrito INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL
);

INSERT INTO distrito (nombre) VALUES ('Chimbote'), ('Santa'), ('Huaraz');

CREATE TABLE agenda (
  codigoper VARCHAR(3) NOT NULL PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  direccion VARCHAR(45),
  telefijo VARCHAR(9),
  telemovil VARCHAR(9),
  email VARCHAR(30),
  fbc VARCHAR(30),
  id_distrito INT,
  CONSTRAINT fk_agenda_distrito FOREIGN KEY (id_distrito) REFERENCES distrito (id_distrito)
);

INSERT INTO agenda (codigoper, nombre, apellido, direccion, telefijo, telemovil, email, fbc, id_distrito) VALUES
('1', 'Carlos', 'Serna', 'av. palmeras 145', '043524875', '942587568', 'carlos@hotmail.com', 'carlos serna', 1),
('2', 'Carmen', 'Figueroa', 'av. alamos f-5', '043154784', '943124578', 'carmen@hotmail.com', 'carmen figeroa', 1),
('3', 'Juan', 'Perez', 'av.pacaes', '043758694', '943582674', 'juan@hotmail.com', 'juan perez', 2),
('4', 'Jean', 'Ramirez', 'av.pardo 580', '043587469', '941748596', 'jean@hotmail.com', 'jean ramirez', 3),
('5', 'Melisa', 'Cavero', 'av.huaraz 220', '043152648', '942121415', 'melisa@hotmail.com', 'melisa cavero', 3),
('6', 'Klaus', 'Arteaga', 'av.lima 145', '048757686', '943332524', 'klaus@hotmail.com', 'klaus arteaga', 3),
('7', 'Octavio', 'Baldarrago', 'av.galvez 874', '043584736', '941747485', 'octavio585@hotmail.com', 'octavio baldarrago', 3),
('8', 'Angela', 'Suarez', 'av.pardo 1894', '043252526', '941741212', 'angela_humilde@hotmail.com', 'angela suarez', 3),
('9', 'Antonhy', 'Orbegozo', 'av.palmeras 456', '043151919', '942321212', 'antonhyelgozo@hotmail.com', 'antonhy orbegozo', 3),
('10', 'Giancarlo', 'Sarrin', 'av.huaraz 123', '043411742', '974410547', 'giancarlosarrines@hotmail.com', 'giancarlo sarrin', 3);
