-- Crear base de datos
CREATE DATABASE prueba;

--PARTE 2
--Crear tablas
CREATE TABLE categorias(id SERIAL, nombre VARCHAR(70) NOT NULL, descripcion VARCHAR(100) NOT NULL, PRIMARY KEY(id));
CREATE TABLE facturas(num_factura INT, fecha DATE NOT NULL, subtotal INT NOT NULL, iva INT NOT NULL, precio_total INT NOT NULL, PRIMARY KEY(num_factura));
CREATE TABLE clientes(id SERIAL, nombre VARCHAR(100) NOT NULL, rut VARCHAR(13), direccion VARCHAR(100) NOT NULL, PRIMARY KEY(id));
CREATE TABLE productos(id SERIAL, nombre VARCHAR(100), descripcion VARCHAR(100), valor_unitario INT, categoria_id INT, PRIMARY KEY(id), FOREIGN KEY(categoria_id) REFERENCES categorias(id));
CREATE TABLE detalles(id SERIAL, cantidad INT, valor_total INT,producto_id INT, PRIMARY KEY(id), FOREIGN KEY(producto_id) REFERENCES productos(id));
CREATE TABLE factura_detalle(factura_num_factura INT, detalle_id INT, FOREIGN KEY(factura_num_factura) REFERENCES facturas(num_factura), FOREIGN KEY(detalle_id) REFERENCES detalles(id));
CREATE TABLE cliente_factura(factura_num_factura INT, cliente_id INT, FOREIGN KEY(factura_num_factura) REFERENCES facturas(num_factura), FOREIGN KEY(cliente_id) REFERENCES clientes(id));
--insertar datos
    --tabla categorias
    INSERT INTO categorias(nombre, descripcion) VALUES('bebidas', 'Torquent faucibus lacinia neque leo augue, sem magna aliquet.');
    INSERT INTO categorias(nombre, descripcion) VALUES('articulos de limpieza', 'Auctor purus facilisi dui sodales potenti, inceptos sagittis vel.');
    INSERT INTO categorias(nombre, descripcion) VALUES('abarrotes', 'Lorem ipsum dolor sit amet, consectetur adipiscing.');

    --tabla clientes
    INSERT INTO clientes(nombre, rut, direccion) VALUES('Angie Rivas', '11.111.111-1', 'Mapocho 7070');
    INSERT INTO clientes(nombre, rut, direccion) VALUES('Jose Aguilera', '22.222.222-2', 'Mapocho 7071');
    INSERT INTO clientes(nombre, rut, direccion) VALUES('Luciano Fuentes', '33.333.333-3', 'Mapocho 7072');
    INSERT INTO clientes(nombre, rut, direccion) VALUES('Daniela Lopez', '44.444.444-4', 'Mapocho 7073');
    INSERT INTO clientes(nombre, rut, direccion) VALUES('Martin Maldonado', '55.555.555-5', 'Mapocho 7074');

    --tabla facturas
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12345, '2020-05-16', 3700, 703, 4403);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12346, '2020-05-23', 5500, 1045, 6545);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12347, '2020-06-04', 3100, 589, 3689);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12348, '2020-07-01', 3800, 722, 4522);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12349, '2020-07-15', 3500, 665, 4165);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12350, '2020-05-23', 3600, 684, 4284);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12351, '2020-06-12', 4800, 912, 5712);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12352, '2020-06-28', 4100, 779, 4879);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12353, '2020-07-03', 5200, 988, 6188);
    INSERT INTO facturas(num_factura, fecha, subtotal, iva, precio_total) VALUES(12354, '2020-07-19', 2200, 418, 2618);

    --tabla productos
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('coca-cola', 'bebida con cafeina', 1000, 1);
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('fanta', 'bebida sabor naranja', 900, 1);
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('confort', 'papel higienico', 1300, 2);
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('poett', 'limpiador de piso', 2000, 2);
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('lisoforn', 'aerosol desinfectante', 2200, 2);
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('arroz', 'arroz grano largo', 900, 3);
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('azucar', 'endulzante granulado', 800, 3);
    INSERT INTO productos(nombre, descripcion, valor_unitario, categoria_id) VALUES('sal', 'sal fina', 500, 3);
    
    --tabla detalle
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 1000, 1);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 3, 2700, 6);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 1300, 3);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 2000, 4);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 2200, 5);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 1800, 6);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 800, 7);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 500, 8);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 2000, 1);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 1800, 2);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 900, 2);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 1600, 7);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 1000, 8);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 4, 3600, 6);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 2600, 3);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 2200, 5);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 2000, 1);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 2, 1600, 7);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 500, 8);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 1000, 1);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 900, 2);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 1300, 3);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 2000, 4);
    INSERT INTO detalles(cantidad, valor_total, producto_id) VALUES( 1, 2200, 5);

    --tabla cliente_factura
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12345, 1);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12346, 1);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12347, 2);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12348, 2);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12349, 2);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12350, 3);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12351, 4);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12352, 4);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12353, 4);
    INSERT INTO cliente_factura(factura_num_factura, cliente_id) VALUES(12354, 4);

    --tabla factura_detalle
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12345, 1);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12345, 2);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12346, 3);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12346, 4);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12346, 5);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12347, 6);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12347, 7);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12347, 8);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12348, 9);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12348, 10);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12349, 11);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12349, 12);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12349, 13);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12350, 14);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12351, 15);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12351, 16);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12352, 17);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12352, 18);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12352, 19);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12353, 20);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12353, 21);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12353, 22);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12353, 23);
    INSERT INTO factura_detalle(factura_num_factura, detalle_id) VALUES(12354, 24);

--PARTE 3

    --¿Que cliente realizó la compra más cara?
    --RESPUESTA: precio total = 6545, nombre = Angie Rivas
    SELECT facturas.precio_total, clientes.nombre FROM facturas INNER JOIN cliente_factura ON facturas.num_factura=cliente_factura.factura_num_factura LEFT JOIN clientes ON cliente_factura.cliente_id=clientes.id ORDER BY precio_total DESC LIMIT 1;

    --¿Que cliente pagó sobre 100 de monto?
    SELECT clientes.nombre FROM facturas INNER JOIN cliente_factura ON facturas.num_factura=cliente_factura.factura_num_factura LEFT JOIN clientes ON cliente_factura.cliente_id=clientes.id WHERE precio_total>100 GROUP BY clientes.nombre;

    --¿Cuantos clientes han comprado el producto 6?.
    --RESPUESTA: 3 clientes
    SELECT COUNT(clientes.id)
    FROM clientes
    INNER JOIN cliente_factura
    ON clientes.id=cliente_factura.cliente_id
    RIGHT JOIN factura_detalle
    ON cliente_factura.factura_num_factura=factura_detalle.factura_num_factura
    LEFT JOIN detalles
    ON factura_detalle.detalle_id=detalles.id
    WHERE detalles.producto_id=6
    ;