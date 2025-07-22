/*
2. Utilizar Lenguaje Estructurado de Consultas (SQL) para la obtención de información que satisface los requerimientos planteados a partir de un modelo de datos dado.
	Desarrollar consultas SQL para obtener información específica de las tablas, utilizando cláusulas como SELECT, WHERE, JOIN, GROUP BY, entre otras.
	Ejemplo: Crear una consulta que obtenga todos los pedidos realizados por un cliente específico.
*/

-- Consultar todos los clientes
SELECT * FROM clientes;

-- Obtener todos los pedidos indicando el nombre del cliente
SELECT c.nombre AS cliente ,p.id AS pedido_id, p.fecha
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

-- Obtener los pedidos del cliente Carlos Soto
SELECT p.id, p.fecha
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
WHERE c.nombre = 'Carlos Soto';

-- Consultar todos los productos vendidos en un pedido
SELECT 
    p.id AS pedido_id,
    pr.id AS producto_id,
    pr.nombre AS nombre_producto,
    dp.cantidad,
    pr.precio,
    (dp.cantidad * pr.precio) AS subtotal
FROM pedidos p
JOIN detalle_pedido dp ON p.id = dp.pedido_id
JOIN productos pr ON dp.producto_id = pr.id
WHERE p.id = 2;

-- Consultar todos los productos
SELECT * FROM productos;

-- Total de productos vendidos en los últimos 30 días
SELECT pr.nombre, SUM(dp.cantidad) AS cantidad_vendida,
SUM(dp.cantidad * pr.precio) AS subtotal
FROM detalle_pedido dp
JOIN productos pr ON dp.producto_id = pr.id
JOIN pedidos p ON dp.pedido_id = p.id
WHERE p.fecha >= CURDATE() - INTERVAL 30 DAY
GROUP BY pr.nombre;

-- Productos no vendidos
SELECT nombre FROM productos
WHERE id NOT IN (
  SELECT producto_id
  FROM detalle_pedido dp
  JOIN pedidos p ON dp.pedido_id = p.id
);