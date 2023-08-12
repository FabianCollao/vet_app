
DROP DATABASE IF EXISTS vet_app;
CREATE DATABASE vet_app;
USE vet_app;

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    rol ENUM('ADMINISTRADOR', 'DOCTOR', 'DUEÑO', 'RECEPCION') NOT NULL
);


CREATE TABLE dueño (
    id INT PRIMARY KEY,
    nombres VARCHAR(50),
    apellido_paterno VARCHAR(50),
    direccion VARCHAR(200),
    telefono INT,
    FOREIGN KEY (id) REFERENCES usuario(id)
);

CREATE TABLE doctor_veterinario (
    id INT PRIMARY KEY,
    nombres VARCHAR(50),
    apellido_paterno VARCHAR(50),
    especialidad VARCHAR(100),
    experiencia INT,
    FOREIGN KEY (id) REFERENCES usuario(id)
);

CREATE TABLE mascota (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50),
    edad VARCHAR(50),
    genero VARCHAR(10),
    dueño_id INT,
    FOREIGN KEY (dueño_id) REFERENCES dueño(id)
);

CREATE TABLE cita (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha TIMESTAMP NOT NULL,
    motivo_consulta VARCHAR(200),
    mascota_id INT,
    doctor_id INT,
    estado ENUM('PENDIENTE', 'PROGRAMADA', 'CANCELADA', 'COMPLETADA') NOT NULL,
    FOREIGN KEY (mascota_id) REFERENCES mascota(id),
    FOREIGN KEY (doctor_id) REFERENCES doctor_veterinario(id)
);

CREATE TABLE historial_clinico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    mascota_id INT,
    diagnostico VARCHAR(500),
    tratamiento VARCHAR(500),
    notas VARCHAR(1000),
    fecha DATE,
    FOREIGN KEY (mascota_id) REFERENCES mascota(id)
);

CREATE TABLE vacuna (
    id INT PRIMARY KEY AUTO_INCREMENT,
    mascota_id INT,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    realizada BOOLEAN NOT NULL,
    FOREIGN KEY (mascota_id) REFERENCES mascota(id)
);
# INSERT DE DATOS

-- Inserción en la tabla usuario
INSERT INTO usuario (user, password, correo, rol) VALUES
('Sebastian', '$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6', 'doctor01@gmail.com', 'DOCTOR'),
('doctor02', '$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6', 'doctor01@gmail.com', 'DOCTOR'),
('doctor03', '$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6', 'doctor01@gmail.com', 'DOCTOR'),
('dueno01', '$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6', 'dueno01@gmail.com', 'DUEÑO'),
('dueno02', '$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6', 'dueno01@gmail.com', 'DUEÑO'),
('dueno03', '$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6', 'dueno01@gmail.com', 'DUEÑO'),
('recepcion01', '$$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6', 'recepcion01@gmail.com', 'RECEPCION'),
('admin','$2a$12$qu.uIUiukGT80gZJnInwKOWbGBAWYfkvslxY7jM6aNi4Jb9Bavmp6','admin@gmail.com',1);

-- Inserción en la tabla dueño
INSERT INTO dueño (id, nombres, apellido_paterno, direccion, telefono) VALUES
(4, 'María', 'González', 'Calle 123 Ciudad', 123456789),
(5, 'Luis', 'Martínez', 'Avenida 456, Pueblo', 987654321),
(6, 'Ana', 'López', 'Carretera 789, Villa', 555555555);

-- Inserción en la tabla doctor_veterinario
INSERT INTO doctor_veterinario (id, nombres, apellido_paterno, especialidad, experiencia) VALUES
(1, 'Carlos', 'Rodríguez', 'Cirugía', 5),
(2, 'Laura', 'Pérez', 'Dermatología', 8),
(3, 'Javier', 'García', 'Cardiología', 10);

-- Inserción en la tabla mascota
INSERT INTO mascota (nombre, especie, raza, edad, genero, dueño_id) VALUES
('Max', 'Perro', 'Labrador', '3 años', 'Macho', 4),
('Luna', 'Gato', 'Siamés', '2 años', 'Hembra', 5),
('Rocky', 'Perro', 'Bulldog', '1 año', 'Macho', 6);

-- Inserción en la tabla cita
INSERT INTO cita (fecha, motivo_consulta, mascota_id, doctor_id, estado) VALUES
('2023-08-15 10:00:00', 'Control de salud', 1, 1, 'PENDIENTE'),
('2023-08-16 15:30:00', 'Vacunación anual', 2, 2, 'PROGRAMADA'),
('2023-08-17 11:45:00', 'Revisión postoperatoria', 3, 3, 'PENDIENTE');

-- Inserción en la tabla historial_clinico
INSERT INTO historial_clinico (mascota_id, diagnostico, tratamiento, notas, fecha) VALUES
(1, 'Pérdida de apetito', 'Recomendación de cambio de dieta', 'Continuar monitoreo', '2023-08-15'),
(2, 'Picazón en piel', 'Tratamiento antipulgas', 'Mejora en la piel', '2023-08-16'),
(3, 'Recuperación exitosa', 'Sin tratamiento adicional', 'Cirugía exitosa', '2023-08-17');

-- Inserción en la tabla vacuna
INSERT INTO vacuna (mascota_id, nombre, fecha, realizada) VALUES
(1, 'Vacuna contra la rabia', '2023-08-15', 1),
(2, 'Vacuna triple felina', '2023-08-16', 0),
(3, 'Vacuna contra el parvovirus', '2023-08-17', 1);
