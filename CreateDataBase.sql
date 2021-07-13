USE [master]
GO

CREATE DATABASE [HistoriaDB]
GO

USE [HistoriaDB]
GO
CREATE TABLE pacientes
   (
	    id INT IDENTITY(1,1) PRIMARY KEY,
		primer_nombre VARCHAR(25) NOT NULL,
		segundo_nombre VARCHAR(25),
		primer_apellido VARCHAR(25) NOT NULL,
		segundo_apellido VARCHAR(25),
		tipo_identificacion VARCHAR(3) NOT NULL,
		identificacion VARCHAR(12) NOT NULL,
		telefono VARCHAR(12) NOT NULL,
		direccion VARCHAR(25),
		edad INT,
		sexo VARCHAR(2),
		fecha_nacimiento DATE NOT NULL,
   );
GO