CREATE DATABASE Prueba_Beneficio;
--Drop table Cliente;
--Drop table Sucursal;
/*Table structure for table `genero` */
CREATE TABLE Genero(
idGenero INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
Cod_Genero VARCHAR(2) NOT NULL,
Nombre_Genero VARCHAR(50) NOT NULL
);
/*Table structure for table `nacionalidad` */
CREATE TABLE Nacionalidad(
idNacionalidad INT(3) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nacionalidad VARCHAR(15) NOT NULL
);
/*Table structure for table `sucursal` */
CREATE TABLE Sucursal(
idSucursal INT(3) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
Sucursal_Provincia VARCHAR(40) NOT NULL
);
/*Table structure for table `cliente` */
CREATE TABLE Cliente(
idCliente INT(3) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(15) NOT NULL,
Apellido VARCHAR(15) NOT NULL,
Email VARCHAR(40) NOT NULL,
Edad INT(3) NOT NULL,
idGenero INT UNSIGNED NOT NULL,
idNacionalidad INT(3) UNSIGNED NOT NULL,
idSucursal INT(3) UNSIGNED NOT NULL,
Calle VARCHAR(40),
Numero VARCHAR(5),
FOREIGN KEY (idGenero) REFERENCES Genero(idGenero),
FOREIGN KEY (idNacionalidad) REFERENCES Nacionalidad(idNacionalidad),
FOREIGN KEY (idSucursal) REFERENCES Sucursal(idSucursal)
);

/*Cargar datos tabla Genero*/
INSERT INTO Genero (Cod_Genero, Nombre_Genero)
VALUES ('M','Masculino'),
	('F','Femenino'),
	('NB','No Binario'),
	('A','Agénero'),
	('G','Genero Fluido'),
	('X','Sin Especificar');
INSERT INTO Nacionalidad(Nacionalidad)
VALUES ('Argentino'),
	('Boliviano'),
    ('Brasilero'),
    ('Colombiano'),
    ('Mexicano'),
    ('Paraguayo'),
    ('Uruguayo'),
    ('Venezolano');
INSERT INTO Sucursal (Sucursal_Provincia)
VALUES ('C.A.B.A'),
	('Chaco'),
    ('Cordoba'),
    ('Entre Rios'),
    ('Formosa'),
    ('Jujuy'),
    ('La Rioja'),
    ('Misiones'),
    ('Santiago del Estero'),
    ('Salta'),
    ('San Luis');
    
INSERT INTO Cliente (Nombre, 
	Apellido, 
    Email, 
    Edad, 
    idGenero, 
    idNacionalidad, 
    idSucursal, 
    calle, 
    numero)
VALUES ('Micaela', 'Vazquez','mVazquez@gmail.com',18, 2, 1, 1, 'Suipacha',345);
INSERT INTO Cliente (Nombre, 
	Apellido, 
    Email, 
    Edad, 
    idGenero, 
    idNacionalidad, 
    idSucursal,
    calle,
    numero)
VALUES ('Carlos', 'Peralta', 'cPeralta@gmail.com',24,1,4,6,'Gral. Belgrano',456);
INSERT INTO Cliente (Nombre, 
	Apellido, 
    Email, 
    Edad, 
    idGenero, 
    idNacionalidad, 
    idSucursal,
    calle,
    numero)
VALUES ('Indigo', 'Quispe', 'quispeI@gmail.com',24,3,4,9,'Gral. Belgrano',987);
