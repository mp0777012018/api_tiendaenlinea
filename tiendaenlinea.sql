-- Crear la base de datos
CREATE DATABASE TiendaEnLinea;

-- Usar la base de datos
USE TiendaEnLinea;

-- Crear la tabla Productos
CREATE TABLE Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    direccion TEXT,
    telefono VARCHAR(15)
);

-- Crear la tabla Orden
CREATE TABLE Orden (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    fecha_orden DATETIME,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

-- Insertar 7 registros en la tabla Productos
INSERT INTO Productos (nombre, descripcion, precio, stock) VALUES
('Camiseta', 'Camiseta de algodón 100%', 15.99, 50),
('Pantalones', 'Pantalones de mezclilla', 29.99, 40),
('Zapatos', 'Zapatos deportivos', 59.99, 30),
('Gorra', 'Gorra ajustable', 9.99, 20),
('Chaqueta', 'Chaqueta de cuero', 99.99, 15),
('Mochila', 'Mochila resistente al agua', 39.99, 25),
('Reloj', 'Reloj digital', 19.99, 35);

-- Insertar 7 registros en la tabla Cliente
INSERT INTO Cliente (nombre, email, direccion, telefono) VALUES
('Juan Pérez', 'juan.perez@example.com', 'Calle 123, Ciudad', '555-1234'),
('María López', 'maria.lopez@example.com', 'Avenida 456, Ciudad', '555-5678'),
('Carlos García', 'carlos.garcia@example.com', 'Plaza 789, Ciudad', '555-9876'),
('Ana Torres', 'ana.torres@example.com', 'Boulevard 101, Ciudad', '555-1010'),
('Luis Fernández', 'luis.fernandez@example.com', 'Camino 202, Ciudad', '555-2020'),
('Carmen Sánchez', 'carmen.sanchez@example.com', 'Vereda 303, Ciudad', '555-3030'),
('Jorge Ramírez', 'jorge.ramirez@example.com', 'Callejón 404, Ciudad', '555-4040');

-- Insertar 7 registros en la tabla Orden
INSERT INTO Orden (cliente_id, producto_id, cantidad, fecha_orden) VALUES
(1, 1, 2, '2024-08-01 10:00:00'),
(2, 3, 1, '2024-08-02 11:30:00'),
(3, 5, 1, '2024-08-03 14:45:00'),
(4, 2, 3, '2024-08-04 09:20:00'),
(5, 4, 2, '2024-08-05 16:50:00'),
(6, 6, 1, '2024-08-06 12:15:00'),
(7, 7, 1, '2024-08-07 18:00:00');
