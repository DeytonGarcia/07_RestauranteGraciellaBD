CREATE TABLE carrera (
    carrera_id INTEGER NOT NULL,
    nombre_carrera VARCHAR2(100) NOT NULL,
    duracion_carrera INTEGER NOT NULL,
    valor_matricula NUMBER(10,2) NOT NULL,
    valor_mensual NUMBER(10,2) NOT NULL,
    pago_id_pago INTEGER NOT NULL,
    CONSTRAINT carrera_pk PRIMARY KEY (carrera_id)
);

-- Tabla: ciclo
CREATE TABLE ciclo (
    ciclo_id INTEGER NOT NULL,
    anio_academico INTEGER NOT NULL,
    carrera VARCHAR2(100) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    pago_id_pago INTEGER NOT NULL,
    CONSTRAINT ciclo_pk PRIMARY KEY (ciclo_id)
);

-- Tabla: pago
CREATE TABLE pago (
    pago_id INTEGER NOT NULL,
    fecha_pago DATE NOT NULL,
    monto NUMBER(10,2) NOT NULL,
    tipo VARCHAR2(40) NOT NULL,
    forma_pago CHAR(1) NOT NULL,
    estado_pago CHAR(1) NOT NULL,
    estudiante INTEGER NOT NULL,
    CONSTRAINT pago_pk PRIMARY KEY (pago_id)
);

-- Tabla: detalle_pago
CREATE TABLE detalle_pago (
    detalle_pago_id INTEGER NOT NULL,
    concepto_pago INTEGER NOT NULL,
    descripcion_pago INTEGER NOT NULL,
    tipo_recibo INTEGER NOT NULL,
    pago_id_pago INTEGER NOT NULL,
    CONSTRAINT detalle_pago_pk PRIMARY KEY (detalle_pago_id)
);

-- Tabla: personaa
CREATE TABLE personaa (
    personaa_id INTEGER NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    apellido VARCHAR2(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    direccion VARCHAR2(100) NOT NULL,
    documento VARCHAR2(20) NOT NULL,
    telefono CHAR(9) NOT NULL,
    carrera INTEGER NOT NULL,
    fecha_registro VARCHAR2(100) NOT NULL,
    estado CHAR(1) NOT NULL,
    pago_id_pago INTEGER NOT NULL,
    CONSTRAINT personaa_pk PRIMARY KEY (personaa_id)
);

INSERT INTO carrera (carrera_id, nombre_carrera, duracion_carrera, valor_matricula, valor_mensual, pago_id_pago) 
VALUES
(1, 'Analisis de Sistemas Empresariales', 6, 1000.00, 250.00, 1),
(2, 'Gestion Agricola', 4, 900.00, 230.00, 2),
(3, 'Analisis de Sistemas', 6, 1000.00, 250.00, 3),
(4, 'Producción Agraria', 5, 950.00, 240.00, 4),
(5, 'Analisis de Sistemas y Producción Agraria', 5, 980.00, 260.00, 5);

INSERT INTO ciclo (ciclo_id, anio_academico, carrera, fecha_inicio, fecha_fin, pago_id_pago)
VALUES
(1, 2023, 'Analisis de Sistemas Empresariales', TO_DATE('01-03-2023', 'DD-MM-YYYY'), TO_DATE('30-06-2023', 'DD-MM-YYYY'), 1),
(2, 2023, 'Gestion Agricola', TO_DATE('01-04-2023', 'DD-MM-YYYY'), TO_DATE('31-07-2023', 'DD-MM-YYYY'), 2),
(3, 2023, 'Analisis de Sistemas', TO_DATE('01-03-2023', 'DD-MM-YYYY'), TO_DATE('30-06-2023', 'DD-MM-YYYY'), 3),
(4, 2023, 'Producción Agraria', TO_DATE('01-05-2023', 'DD-MM-YYYY'), TO_DATE('31-08-2023', 'DD-MM-YYYY'), 4),
(5, 2023, 'Analisis de Sistemas y Producción Agraria', TO_DATE('01-06-2023', 'DD-MM-YYYY'), TO_DATE('30-09-2023', 'DD-MM-YYYY'), 5);

INSERT INTO pago (pago_id, fecha_pago, monto, tipo, forma_pago, estado_pago, estudiante)
VALUES
(1, TO_DATE('10-03-2023', 'DD-MM-YYYY'), 1000.00, 'Matricula', 'C', 'P', 101),
(2, TO_DATE('15-04-2023', 'DD-MM-YYYY'), 230.00, 'Mensualidad', 'T', 'P', 102),
(3, TO_DATE('10-03-2023', 'DD-MM-YYYY'), 1000.00, 'Matricula', 'E', 'P', 103),
(4, TO_DATE('10-05-2023', 'DD-MM-YYYY'), 240.00, 'Mensualidad', 'D', 'P', 104),
(5, TO_DATE('10-06-2023', 'DD-MM-YYYY'), 980.00, 'Matricula', 'C', 'P', 105);

INSERT INTO detalle_pago (detalle_pago_id, concepto_pago, descripcion_pago, tipo_recibo, pago_id_pago)
VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5);

INSERT INTO personaa (personaa_id, nombre, apellido, fecha_nacimiento, direccion, documento, telefono, carrera, fecha_registro, estado, pago_id_pago)
VALUES
(101, 'Juan', 'Perez', TO_DATE('10-01-2000', 'DD-MM-YYYY'), 'Av. Principal 123', '12345678', '987654321', 1, '01-03-2023', 'A', 1),
(102, 'Maria', 'Lopez', TO_DATE('15-02-1998', 'DD-MM-YYYY'), 'Calle Secundaria 456', '87654321', '987654322', 2, '01-04-2023', 'A', 2),
(103, 'Carlos', 'Garcia', TO_DATE('20-03-1999', 'DD-MM-YYYY'), 'Av. Tercera 789', '98765432', '987654323', 3, '01-03-2023', 'A', 3),
(104, 'Ana', 'Martinez', TO_DATE('25-04-2001', 'DD-MM-YYYY'), 'Calle Cuarta 101', '76543210', '987654324', 4, '01-05-2023', 'A', 4),
(105, 'Luis', 'Fernandez', TO_DATE('30-05-2002', 'DD-MM-YYYY'), 'Av. Quinta 202', '65432109', '987654325', 5, '01-06-2023', 'A', 5);


-- Seleccionar todos los datos de la tabla carrera
SELECT * FROM carrera;

-- Seleccionar todos los datos de la tabla ciclo
SELECT * FROM ciclo;

-- Seleccionar todos los datos de la tabla pago
SELECT * FROM pago;

-- Seleccionar todos los datos de la tabla detalle_pago
SELECT * FROM detalle_pago;

-- Seleccionar todos los datos de la tabla persona
SELECT * FROM persona;
