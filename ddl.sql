/*
4. Implementar estructuras de datos relacionales utilizando lenguaje de definición de datos (DDL) a partir de un modelo de datos para la creación y mantención de las definiciones de los objetos de una base de datos.
	Utilizar el lenguaje DDL para crear, modificar y eliminar tablas, índices y otros objetos dentro de una base de datos.
	Ejemplo: Crear una tabla para almacenar información de empleados, con las columnas correspondientes como nombre, salario y fecha de ingreso.
*/

-- Se crea una base de datos en caso de que no exista y luego se indica que será usada
CREATE DATABASE IF NOT EXISTS tienda_tecnologia;
USE tienda_tecnologia;

-- Eliminación de tablas en caso de que existan
DROP TABLE IF EXISTS detalle_pedido;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;

-- Creación de tablas
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    direccion VARCHAR(200)
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0),
    stock INT NOT NULL CHECK (stock >= 0)
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    fecha DATETIME NOT NULL DEFAULT NOW(),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE detalle_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

-- Modificación de una tabla
ALTER TABLE clientes
MODIFY COLUMN email VARCHAR(100) NOT NULL;
