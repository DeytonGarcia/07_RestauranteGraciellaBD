# Código SQL para Inserciones en la Base de Datos

Este documento contiene las sentencias SQL necesarias para insertar datos en varias tablas de una base de datos orientada a la gestión de un restaurante. Las tablas incluyen información sobre empleados, clientes, menús, pedidos, detalles de pedidos, mesas, reservas y detalles de reservas.

## 1. Inserciones en la Tabla `person`

La tabla `person` almacena información sobre empleados y clientes. Cada registro incluye el tipo de persona (EMPLEADO o CLIENTE), nombres, apellidos, dirección, teléfono, correo electrónico, fecha de nacimiento, tipo y número de documento.

```sql
-- Inserción de un empleado
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('EMPLEADO', 'Pedro', 'Alvarez', 'Calle Lima 101', '123456789', 'pedro.alvarez@example.com', TO_DATE('1988-01-10', 'YYYY-MM-DD'), 'DNI', '11223344');
COMMIT;

-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Maria', 'Gonzalez', 'Calle Santa 202', '987654321', 'maria.gonzalez@example.com', TO_DATE('1990-02-15', 'YYYY-MM-DD'), 'DNI', '22334455');
COMMIT;

-- Inserción de otro empleado
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('EMPLEADO', 'Luis', 'Martinez', 'Calle del Sol 303', '654321987', 'luis.martinez@example.com', TO_DATE('1995-03-20', 'YYYY-MM-DD'), 'DNI', '33445566');
COMMIT;

-- Inserción de otro cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Ana', 'Lopez', 'Calle Luna 404', '321654987', 'ana.lopez@example.com', TO_DATE('1985-04-25', 'YYYY-MM-DD'), 'DNI', '44556677');
COMMIT;

-- Inserción de un empleado más
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('EMPLEADO', 'Javier', 'Fernandez', 'Calle Norte 505', '123123123', 'javier.fernandez@example.com', TO_DATE('1980-05-30', 'YYYY-MM-DD'), 'DNI', '55667788');
COMMIT;

-- Inserción de otro cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Sofia', 'Ramirez', 'Calle Oeste 606', '456456456', 'sofia.ramirez@example.com', TO_DATE('1992-06-05', 'YYYY-MM-DD'), 'DNI', '66778899');
COMMIT;

-- Inserción de otro cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Diego', 'Torres', 'Calle Este 707', '789789789', 'diego.torres@example.com', TO_DATE('1993-07-10', 'YYYY-MM-DD'), 'DNI', '77889900');
COMMIT;

-- Inserción de otro cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Valeria', 'Perez', 'Calle Sur 808', '159159159', 'valeria.perez@example.com', TO_DATE('1989-08-15', 'YYYY-MM-DD'), 'DNI', '88990011');
COMMIT;

-- Inserción de otro cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Carlos', 'Diaz', 'Calle Central 909', '357357357', 'carlos.diaz@example.com', TO_DATE('1982-09-20', 'YYYY-MM-DD'), 'DNI', '99001122');
COMMIT;

-- Inserción de otro cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Laura', 'Gutierrez', 'Calle Abajo 1000', '654654654', 'laura.gutierrez@example.com', TO_DATE('1987-10-25', 'YYYY-MM-DD'), 'DNI', '11223333');
COMMIT;
```

## 2. Inserciones en la Tabla `menu`

La tabla `menu` contiene los platos disponibles en el restaurante, junto con su descripción, precio unitario y cantidad disponible. Esto permite gestionar la oferta gastronómica del establecimiento.

```sql
-- Inserción de un plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Ensalada Caesar', 'Ensalada con pollo y aderezo Caesar', 'Lechuga', 'Pollo', 'Tarta', 12.50, 100);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Pizza Margarita', 'Pizza con tomate y queso', 'Masa', 'Queso', 'Helado', 15.00, 50);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Pasta Carbonara', 'Pasta con salsa de huevo y queso', 'Pasta', 'Tocino', 'Fruta', 10.00, 80);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Sushi', 'Arroz y pescado crudo', 'Alga', 'Pescado', 'Te', 20.00, 30);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Tacos', 'Tacos de carne y vegetales', 'Tortilla', 'Carne', 'Flan', 8.00, 60);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Ceviche', 'Pescado marinado en limón', 'Pescado', 'Cebolla', 'Mousse', 18.00, 40);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Hamburguesa', 'Hamburguesa de carne con queso', 'Pan', 'Carne', 'Brownie', 11.00, 70);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Sopa de Verduras', 'Sopa de verduras frescas', 'Verduras', 'Fideos', 'Tarta', 9.00, 90);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Goulash', 'Estofado de carne y verduras', 'Carne', 'Verduras', 'Galleta', 14.00, 20);

-- Inserción de otro plato
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Brownie de Chocolate', 'Postre de chocolate', 'Chocolate', 'Nuez', 'Helado', 7.50, 50);
```

## 3. Inserciones en la Tabla `orders`

La tabla `orders` registra los pedidos realizados por los clientes, incluyendo información sobre el cliente, el mesero, la mesa, el total, el estado del pago y notas adicionales. Esto permite un seguimiento efectivo de las transacciones.

```sql
-- Inserción de un pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (2, 1, 1, 45.50, 'PENDIENTE', 'EFECTIVO', 'PENDIENTE', 'Sin picante');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (4, 3, 2, 78.90, 'PENDIENTE', 'TARJETA', 'EN_PROCESO', 'Extra ensalada');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (6, 1, 3, 32.00, 'PAGADO', 'EFECTIVO', 'COMPLETADO', 'Sin cebolla');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (8, 5, 4, 95.70, 'PENDIENTE', 'TARJETA', 'PENDIENTE', 'Término medio');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (3, 3, 5, 150.20, 'PAGADO', 'EFECTIVO', 'COMPLETADO', 'Mesa VIP');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (5, 1, 6, 67.80, 'CANCELADO', 'TARJETA', 'CANCELADO', 'Cliente canceló');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (7, 5, 7, 88.90, 'PENDIENTE', 'EFECTIVO', 'EN_PROCESO', 'Extra salsa');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (9, 2, 8, 120.60, 'PAGADO', 'TARJETA', 'COMPLETADO', 'Conserva la factura');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (1, 4, 9, 33.30, 'PENDIENTE', 'EFECTIVO', 'PENDIENTE', 'Todo al gusto');

-- Inserción de otro pedido
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (10, 2, 10, 90.40, 'PAGADO', 'TARJETA', 'COMPLETADO', 'Sin gluten');
```

## 4. Inserciones en la Tabla `order_detail`

La tabla `order_detail` contiene detalles de cada pedido, incluyendo el ID del pedido, el ID del menú, la cantidad, el precio unitario, el subtotal, notas y el estado del artículo. Esto ayuda a desglosar cada pedido en sus componentes.

```sql
-- Inserción de un detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (1, 1, 2, 12.50, 25.00, 'Extra limón', 'PENDIENTE');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (2, 3, 1, 20.50, 20.50, 'Sin ají', 'PENDIENTE');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (3, 2, 3, 15.30, 45.90, 'Bien cocido', 'PREPARANDO');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (4, 4, 2, 16.50, 33.00, 'Sin tomate', 'PENDIENTE');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (5, 1, 1, 12.50, 12.50, 'Normal', 'SERVIDO');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (6, 5, 1, 19.50, 19.50, 'Extra queso', 'SERVIDO');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (7, 2, 4, 15.30, 61.20, 'Para compartir', 'PREPARANDO');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (8, 3, 2, 20.50, 41.00, 'Sin verduras', 'PENDIENTE');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (9, 4, 3, 16.50, 49.50, 'Picante', 'SERVIDO');

-- Inserción de otro detalle de pedido
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (10, 5, 2, 19.50, 39.00, 'Con extra papas', 'SERVIDO');
```

## 5. Inserciones en la Tabla `tables`

La tabla `tables` almacena información sobre las mesas del restaurante, incluyendo el número de mesa, la capacidad y el estado (disponible, ocupado, reservado). Esto permite gestionar la distribución del espacio en el restaurante.

```sql
-- Inserción de una mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (1, 4, 'DISPONIBLE');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (2, 2, 'OCUPADO');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (3, 6, 'RESERVADO');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (4, 4, 'DISPONIBLE');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (5, 8, 'OCUPADO');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (6, 2, 'DISPONIBLE');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (7, 4, 'RESERVADO');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (8, 6, 'OCUPADO');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (9, 2, 'DISPONIBLE');
COMMIT;

-- Inserción de otra mesa
INSERT INTO tables (table_number, capacity, status) 
VALUES (10, 8, 'RESERVADO');
COMMIT;
```

## 6. Inserciones en la Tabla `reservation_detail`

La tabla `reservation_detail` contiene detalles sobre las reservas, incluyendo la cantidad de platos solicitados, el menú y el subtotal. Esto permite gestionar las reservas de manera eficiente y asegurar que se cumplan las solicitudes de los clientes.

```sql
-- Inserción de un detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (2, 'Ensalada Caesar', 1, 25.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (4, 'Pizza Margarita', 2, 60.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (3, 'Pasta Carbonara', 1, 30.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (5, 'Sushi', 3, 100.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (2, 'Tacos', 2, 16.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (3, 'Ceviche', 1, 54.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (1, 'Hamburguesa', 1, 11.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (4, 'Sopa de Verduras', 1, 36.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (3, 'Brownie de Chocolate', 2, 21.00);
COMMIT;

-- Inserción de otro detalle de reserva
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (2, 'Goulash', 1, 28.00);
COMMIT;
```

## 7. Inserciones en la Tabla `reservation`

La tabla `reservation` almacena información sobre las reservas realizadas por los clientes, incluyendo el ID del cliente, la mesa reservada, la fecha y hora de la reserva, el estado de la reserva y notas adicionales. Esto permite gestionar las reservas de manera eficiente.

```sql
-- Inserción de una reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (2, 1, TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-01 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'CONFIRMADA', 'Celebración de cumpleaños');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (4, 2, TO_DATE('2024-12-02', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-02 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'CONFIRMADA', 'Cena romántica');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (6, 3, TO_DATE('2024-12-03', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-03 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'CANCELADA', 'Cambio de planes');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (8, 4, TO_DATE('2024-12-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-04 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'CONFIRMADA', 'Reunión de negocios');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (3, 5, TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-05 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'PENDIENTE', 'Grupo de amigos');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (5, 6, TO_DATE('2024-12-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-06 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'CONFIRMADA', 'Cena familiar');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (7, 7, TO_DATE('2024-12-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-07 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'CONFIRMADA', 'Aniversario');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (9, 8, TO_DATE('2024-12-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-08 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'PENDIENTE', 'Cena de empresa');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (1, 9, TO_DATE('2024-12-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-09 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'CANCELADA', 'Cambio de fecha');
COMMIT;

-- Inserción de otra reserva
INSERT INTO reservation (client_id, table_number, reservation_date, reservation_time, status, notes) 
VALUES (10, 10, TO_DATE('2024-12-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-12-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'CONFIRMADA', 'Cena de despedida');
COMMIT;
```

## Resumen Completo

Este documento proporciona un conjunto completo de inserciones SQL para gestionar un sistema de base de datos para un restaurante. Las tablas cubiertas incluyen:

- **`person`**: Información sobre empleados y clientes.
- **`menu`**: Detalles de los platos ofrecidos en el restaurante.
- **`orders`**: Registros de pedidos realizados por los clientes.
- **`order_detail`**: Desglose de cada pedido en sus componentes.
- **`tables`**: Información sobre las mesas disponibles en el restaurante.
- **`reservation`**: Detalles sobre las reservas realizadas por los clientes.
- **`reservation_detail`**: Detalles sobre los platos solicitados en las reservas.

Cada sección incluye inserciones con comentarios que explican el propósito de cada registro, asegurando que la estructura de la base de datos sea clara y fácil de entender. ¡Con esto, estás listo para obtener una excelente calificación!
