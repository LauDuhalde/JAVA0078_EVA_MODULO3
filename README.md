# Caso de Ejemplo: Gestión de Pedidos en una Tienda de Tecnología
## Contexto
Una tienda de tecnología necesita gestionar su inventario, los clientes y los pedidos. Cada cliente puede hacer múltiples pedidos, y cada pedido puede contener varios productos. La base de datos debe permitir almacenar, consultar y modificar esta información.

## Requerimientos
1. Distinguir las características, rol y elementos fundamentales de una base de datos relacional para la gestión de la información en una organización.
- Tabla: componente principal de una base de datos, almacena los datos en filas y columnas. Para este caso de ejemplo se utilizarán las tablas clientes, productos, pedidos y detalle_pedido.
- Registro: Cada fila de una tabla representa una instancia (cliente, producto, etc.)
- Campos: Son las columnas de una tabla, representan los atributos de una instancia, como por ejemplo, nombre, precio, fecha_pedido, etc.
- Claves primarias: Identifica de forma única cada registro en una tabla. Para el caso se utilizarán clientes.id, productos.id, pedidos.id y detalle_pedido.id
- Claves foráneas: Establece relaciones entre tablas. Se usarán: pedidos.cliente_id, detalle_pedido.pedido_id y detalle_pedido.producto_id.

2. Utilizar Lenguaje Estructurado de Consultas (SQL) para la obtención de información que satisface los requerimientos planteados a partir de un modelo de datos dado.
- La solución a este punto la pueden encontrar en el archivo consultas.sql

3. Utilizar lenguaje de manipulación de datos (DML) para la modificación de los datos existentes en una base de datos dando solución a un problema planteado.
- Este punto está desarrollado en dml.sql

4. Implementar estructuras de datos relacionales utilizando lenguaje de definición de datos (DDL) a partir de un modelo de datos para la creación y mantención de las definiciones de los objetos de una base de datos.
- La solución está desarrollada en ddl.sql

5. Elaborar un modelo de datos de acuerdo a los estándares de modelamiento para resolver un problema de baja complejidad.
- El ERD es el archivo ERD.png.