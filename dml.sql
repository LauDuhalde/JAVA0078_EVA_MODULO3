/*
3. Utilizar lenguaje de manipulación de datos (DML) para la modificación de los datos existentes en una base de datos dando solución a un problema planteado.
	Implementar consultas de inserción (INSERT), actualización (UPDATE) y eliminación (DELETE) para modificar los datos dentro de las tablas.
	Ejemplo: Crear una consulta que actualice la dirección de un cliente en la base de datos o elimine un pedido que no fue procesado.
*/

-- Insertar datos de clientes
INSERT INTO clientes (nombre, email, direccion) VALUES
('Laura Duhalde', 'laura@mail.com', 'Santiago, Chile'),
('Carlos Soto', 'csoto@mail.com', 'Valparaíso, Chile'),
('María Paz', 'mpaz@mail.com', 'Concepción, Chile'),
('Andrés Herrera', 'aherrera@mail.com', 'La Serena, Chile');

-- Productos
INSERT INTO productos (nombre, precio, stock) VALUES
('Laptop Dell', 650000, 15), 
('Mouse Logitech', 15000, 50),
('Teclado Mecánico Redragon', 35000, 20),
('Monitor LG 24"', 120000, 10),
('Auriculares HyperX', 45000, 25),
('Disco SSD 1TB', 85000, 30);

-- Insertar pedidos y detalle de pedidos
INSERT INTO pedidos (cliente_id) VALUES (1); -- fecha usa el valor por default NOW()
INSERT INTO pedidos (cliente_id, fecha) VALUES
(2, '2025-07-01 10:15:00'),
(3, '2025-07-10 14:45:00'),
(4, '2025-07-15 09:30:00');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad) VALUES
(1, 1, 1),  -- 'Laptop Dell'
(2, 2, 2),  -- Mouse Logitech x2
(2, 4, 1),  -- Monitor LG x1
(3, 5, 1),  -- Auriculares x1
(4, 3, 1),  -- Teclado x1
(4, 1, 1);  -- Laptop Dell x1


-- Actualizar stock de productos vendidos
UPDATE productos SET stock = stock - 1 WHERE id = 1; -- Laptop
UPDATE productos SET stock = stock - 2 WHERE id = 2; -- Mouse
UPDATE productos SET stock = stock - 1 WHERE id = 4; -- Monitor
UPDATE productos SET stock = stock - 1 WHERE id = 5; -- Auriculares
UPDATE productos SET stock = stock - 1 WHERE id = 3; -- Teclado

-- Eliminar un pedido
DELETE FROM detalle_pedido WHERE pedido_id = 1;
DELETE FROM pedidos WHERE id = 1;