--BRAYAM EDWIN QUISPE APAZA
CREATE DATABASE clinica_buena_salud;
USE clinica_buena_salud;
CREATE TABLE Departamento (
    Dept_No INT PRIMARY KEY,
    DNombre VARCHAR(50),
    Loc VARCHAR(50)
);
CREATE TABLE Empleado (
    Emp_No INT PRIMARY KEY,
    Apellido VARCHAR(50),
    Oficio VARCHAR(50),
    Dir VARCHAR(50),
    Fecha_Alt DATE,
    Salario INT,
    Comision INT,
    Dept_No INT,
    FOREIGN KEY (Dept_No) REFERENCES Departamento(Dept_No)
);

CREATE TABLE Enfermo (
    Inscripcion INT PRIMARY KEY,
    Apellido VARCHAR(50),
    Direccion VARCHAR(100),
    Fecha_Nac DATE,
    S CHAR(1),
    N$$ DECIMAL(10, 2),
	Dept_No INT,
    FOREIGN KEY (Dept_No) REFERENCES Departamento(Dept_No)
);
----INSERTAR DATOS-----
-- Insertar registros en la tabla Departamento
INSERT INTO Departamento (Dept_No, DNombre, Loc) VALUES
(1, 'Pediatría', 'Piso 2, Ala A'),
(2, 'Medicina General', 'Piso 1, Sala B'),
(3, 'Cirugía', 'Piso 3, Quirófano 1'),
(4, 'Odontología', 'Piso 2, Consultorio 3'),
(5, 'Geriatría', 'Piso 4, Sala de Rehabilitación'),
(6, 'Cardiología', 'Piso 3, Sala de Cardiología'),
(7, 'Laboratorio', 'Piso 1, Laboratorio Clínico'),
(8, 'Radiología', 'Piso 2, Sala de Radiología'),
(9, 'Psicología', 'Piso 3, Consultorio 2'),
(10, 'Nutrición', 'Piso 1, Consultorio 1'),
(11, 'Ginecología', 'Piso 4, Consultorio 5'),
(12, 'Neurología', 'Piso 3, Consultorio 4'),
(13, 'Oftalmología', 'Piso 2, Consultorio 5'),
(14, 'Dermatología', 'Piso 1, Consultorio 4'),
(15, 'Urología', 'Piso 3, Consultorio 1');

-- Insertar registros en la tabla Empleado
INSERT INTO Empleado (Emp_No, Apellido, Oficio, Dir, Fecha_Alt, Salario, Comision, Dept_No) VALUES
(101, 'González', 'Médico General', 'Piso 1, Consultorio 101', '2010-05-15', 50000, 8000, 2),
(102, 'López', 'Pediatra', 'Piso 2, Consultorio 201', '2011-08-22', 60000, 8000, 1),
(103, 'Martínez', 'Cirujano', 'Piso 3, Quirófano 3', '2020-02-10', 80000, 12000, 3),
(104, 'Pérez', 'Odontólogo', 'Piso 2, Consultorio 304', '2015-04-18', 70000, 9000, 4),
(105, 'Rodríguez', 'Geriatra', 'Piso 4, Sala de Rehabilitación', '2014-07-30', 75000, 10000, 5),
(106, 'Gómez', 'Cardiólogo', 'Piso 3, Sala de Cardiología', '2012-11-05', 90000, 15000, 6),
(107, 'Hernández', 'Enfermero', 'Piso 1, Sala de Espera', '2019-09-12', 40000, 8000, 7),
(108, 'Díaz', 'Radiólogo', 'Piso 2, Sala de Radiología', '2016-06-25', 85000, 11000, 8),
(109, 'Torres', 'Psicólogo', 'Piso 3, Consultorio 2', '2017-04-08', 65000, 9500, 9),
(110, 'Flores', 'Nutricionista', 'Piso 1, Consultorio 1', '2019-01-14', 55000, 7000, 10),
(111, 'Ramírez', 'Ginecólogo', 'Piso 4, Consultorio 5', '2013-08-20', 78000, 13000, 11),
(112, 'Vargas', 'Neurólogo', 'Piso 3, Consultorio 4', '2016-03-30', 82000, 10500, 12),
(113, 'Suárez', 'Oftalmólogo', 'Piso 2, Consultorio 5', '2014-09-05', 72000, 9800, 13),
(114, 'Ortiz', 'Dermatólogo', 'Piso 1, Consultorio 4', '2018-11-11', 68000, 8700, 14),
(115, 'Giménez', 'Urologo', 'Piso 3, Consultorio 1', '2015-12-22', 86000, 11500, 15),
(116, 'Cabrera', 'Enfermero', 'Piso 1, Sala de Espera', '2019-07-18', 42000, 8000, 7),
(117, 'Rojas', 'Odontólogo', 'Piso 2, Consultorio 304', '2019-02-14', 71000, 9300, 4),
(118, 'Molina', 'Médico General', 'Piso 1, Consultorio 101', '2013-06-08', 52000, 8000, 2),
(119, 'Fernández', 'Pediatra', 'Piso 2, Consultorio 201', '2016-09-30', 62000, 8500, 1),
(120, 'Silva', 'Cirujano', 'Piso 3, Quirófano 3', '2020-01-12', 82000.00, 11000.00, 3);

-- Insertar registros en la tabla Enfermo
INSERT INTO Enfermo (Inscripcion, Apellido, Direccion, Fecha_Nac, S, N$$,Dept_No) VALUES
(501, 'Vega', 'Calle A, #101', '1990-03-12', 'F', 120.50,1),
(502, 'Luna', 'Avenida B, #202', '1985-05-18', 'M', 150.75,2),
(503, 'Ríos', 'Calle C, #303', '1992-08-25', 'F', 95.30,3),
(504, 'Navarro', 'Avenida D, #404', '1988-11-10', 'M', 200.25,4),
(505, 'Romero', 'Calle E, #505', '1995-01-15', 'F', 180.80,5),
(506, 'Santos', 'Avenida F, #606', '1983-04-20', 'M', 160.40,6),
(507, 'Jiménez', 'Calle G, #707', '1998-06-28', 'F', 135.90,7),
(508, 'Castillo', 'Avenida H, #808', '1987-09-05', 'M', 175.60,8),
(509, 'García', 'Calle I, #909', '1993-12-12', 'F', 190.20,9),
(510, 'Peralta', 'Avenida J, #1010', '1986-02-28', 'M', 110.45,10),
(511, 'Soto', 'Calle K, #1111', '1996-07-08', 'F', 130.70,11),
(512, 'Valdez', 'Avenida L, #1212', '1984-10-15', 'M', 170.35,12),
(513, 'Gutiérrez', 'Calle M, #1313', '1990-01-22', 'F', 145.60,13),
(514, 'Herrera', 'Avenida N, #1414', '1982-03-30', 'M', 155.25,14),
(515, 'Mendez', 'Calle O, #1515', '1994-06-18', 'F', 125.80,15),
(516, 'Alvarez', 'Avenida P, #1616', '1989-09-10', 'M', 165.45,1),
(517, 'Fuentes', 'Calle Q, #1717', '1997-12-28', 'F', 140.70,2),
(518, 'Torres', 'Avenida R, #1818', '1985-02-15', 'M', 185.30,3),
(519, 'Núñez', 'Calle S, #1919', '1991-05-22', 'F', 100.50,4),
(520, 'Reyes', 'Avenida T, #2020', '1986-08-30', 'M', 145.25,5),
(521, 'Diaz', 'Calle U, #2121', '1995-11-08', 'F', 155.90,6),
(522, 'Mendoza', 'Avenida V, #2222', '1983-01-12', 'M', 180.40,7),
(523, 'Guerra', 'Calle W, #2323', '1998-04-20', 'F', 170.75,8),
(524, 'Gomez', 'Avenida X, #2424', '1987-07-28', 'M', 120.90,9),
(525, 'Martinez', 'Calle Y, #2525', '1992-10-15', 'F', 200.60,10),
(526, 'Fernandez', 'Avenida Z, #2626', '1984-01-22', 'M', 160.85,11),
(527, 'Perez', 'Calle 1, #2727', '1990-04-30', 'F', 135.10,12),
(528, 'Lopez', 'Avenida 2, #2828', '1986-08-08', 'M', 190.75,13),
(529, 'Hernandez', 'Calle 3, #2929', '1995-11-15', 'F', 110.30,14),
(530, 'Rodriguez', 'Avenida 4, #3030', '1983-02-28', 'M', 150.95,15);


---Obtener empleados dados de alta antes de 2018 en un departamento específico:
CREATE PROCEDURE ObtenerEmpleadosAntes2018(@DeptNo INT)
AS
BEGIN
    SELECT * 
    FROM Empleado
    WHERE YEAR(Fecha_Alt) < 2018 AND Dept_No = @DeptNo;
END;
EXEC ObtenerEmpleadosAntes2018 @DeptNo = 2;

---Insertar nuevo departamento:
CREATE PROCEDURE InsertarDepartamento(@DeptNo INT, @DNombre VARCHAR(50), @Loc VARCHAR(50))
AS
BEGIN
    INSERT INTO Departamento (Dept_No, DNombre, Loc)
    VALUES (@DeptNo, @DNombre, @Loc);
END;
EXEC InsertarDepartamento @DeptNo = 16, @DNombre = 'Neurocirugía', @Loc = 'Piso 44, Quirófano 8';
SELECT * FROM Departamento WHERE Dept_No = 16;

---Recuperar el promedio de edad por departamento:
CREATE PROCEDURE ObtenerPromedioEdadEnfermosPorDepartamento(@DeptNo INT)
AS
BEGIN
    SELECT AVG(DATEDIFF(YEAR, Fecha_Nac, GETDATE())) AS PromedioEdad
    FROM Enfermo
    WHERE Dept_No = @DeptNo;
END;
EXEC ObtenerPromedioEdadEnfermosPorDepartamento @DeptNo = 3;

---Obtener información de empleado por número de empleado:
CREATE PROCEDURE ObtenerInfoEmpleado(@EmpNo INT)
AS
BEGIN
    SELECT Apellido, Oficio, Salario
    FROM Empleado
    WHERE Emp_No = @EmpNo;
END;
EXEC ObtenerInfoEmpleado @EmpNo = 101;

---Dar de baja a un empleado por apellido:
CREATE PROCEDURE DarDeBajaEmpleado(@Apellido VARCHAR(50))
AS
BEGIN
    DELETE FROM Empleado
    WHERE Apellido = @Apellido;
END;
EXEC DarDeBajaEmpleado @Apellido = 'Silva';

--Restricciones
-- Aplicar restricciones a la tabla Departamento
ALTER TABLE Departamento
ADD CONSTRAINT PK_Departamento PRIMARY KEY (Dept_No);
-- Aplicar restricciones a la tabla Empleado
ALTER TABLE Empleado
ADD CONSTRAINT PK_Empleado PRIMARY KEY (Emp_No),
ADD CONSTRAINT FK_Empleado_Departamento FOREIGN KEY (Dept_No) REFERENCES Departamento(Dept_No);
-- Aplicar restricciones a la tabla Enfermo
ALTER TABLE Enfermo
ADD CONSTRAINT PK_Enfermo PRIMARY KEY (Inscripcion);

--Uso de tipos de datos y restricciones:
-- Modificar la tabla Empleado para añadir restricciones y tipos de datos
ALTER TABLE Empleado
ALTER COLUMN Apellido VARCHAR(50) NOT NULL,
ALTER COLUMN Oficio VARCHAR(50) NOT NULL,
ALTER COLUMN Dir VARCHAR(50) NOT NULL,
ALTER COLUMN Fecha_Alt DATE NOT NULL,
ALTER COLUMN Salario DECIMAL(10, 2) NOT NULL,
ALTER COLUMN Comision DECIMAL(5, 2) NULL,
ALTER COLUMN Dept_No INT NOT NULL,
ADD CONSTRAINT CHK_Salario CHECK (Salario >= 0),
ADD CONSTRAINT CHK_Comision CHECK (Comision >= 0 AND Comision <= 100);

-- Añadir restricciones DEFAULT, UNIQUE e IDENTITY a la tabla Departamento
ALTER TABLE Departamento
ALTER COLUMN Dept_No INT IDENTITY(1, 1) PRIMARY KEY,
ALTER COLUMN DNombre VARCHAR(50) DEFAULT 'Sin Nombre' NOT NULL,
ALTER COLUMN Loc VARCHAR(50) DEFAULT 'Sin Localización' NOT NULL,
ADD CONSTRAINT UQ_DNombre UNIQUE (DNombre);
