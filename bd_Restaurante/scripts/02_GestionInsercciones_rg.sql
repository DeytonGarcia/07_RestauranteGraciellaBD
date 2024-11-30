-- *******************************************************
-- INSERTS DE DATOS EN LA TABLA 'PERSON'
-- *******************************************************
-- Descripción: Esta serie de sentencias INSERT agrega información de personas 
-- (empleados y clientes) a la tabla 'person'. La tabla almacena datos como 
-- el tipo de persona (empleado o cliente), nombres, apellidos, dirección, 
-- teléfono, correo electrónico, fecha de nacimiento, tipo y número de documento.

-- Inserciones de datos para la tabla 'person' que contienen información 
-- sobre los empleados y clientes.

-- Inserción de un empleado
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('EMPLEADO', 'Pedro', 'Alvarez', 'Calle Lima 101', '123456789', 'pedro.alvarez@example.com', TO_DATE('1988-01-10', 'YYYY-MM-DD'), 'DNI', '11223344');
COMMIT;
-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Maria', 'Gonzalez', 'Calle Santa 202', '987654321', 'maria.gonzalez@example.com', TO_DATE('1990-02-15', 'YYYY-MM-DD'), 'DNI', '22334455');
COMMIT;
-- Inserción de un empleado
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('EMPLEADO', 'Luis', 'Martinez', 'Calle del Sol 303', '654321987', 'luis.martinez@example.com', TO_DATE('1995-03-20', 'YYYY-MM-DD'), 'DNI', '33445566');
COMMIT;
-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Ana', 'Lopez', 'Calle Luna 404', '321654987', 'ana.lopez@example.com', TO_DATE('1985-04-25', 'YYYY-MM-DD'), 'DNI', '44556677');
COMMIT;
-- Inserción de un empleado
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('EMPLEADO', 'Javier', 'Fernandez', 'Calle Norte 505', '123123123', 'javier.fernandez@example.com', TO_DATE('1980-05-30', 'YYYY-MM-DD'), 'DNI', '55667788');
COMMIT;
-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Sofia', 'Ramirez', 'Calle Oeste 606', '456456456', 'sofia.ramirez@example.com', TO_DATE('1992-06-05', 'YYYY-MM-DD'), 'DNI', '66778899');
COMMIT;
-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Diego', 'Torres', 'Calle Este 707', '789789789', 'diego.torres@example.com', TO_DATE('1993-07-10', 'YYYY-MM-DD'), 'DNI', '77889900');
COMMIT;
-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Valeria', 'Perez', 'Calle Sur 808', '159159159', 'valeria.perez@example.com', TO_DATE('1989-08-15', 'YYYY-MM-DD'), 'DNI', '88990011');
COMMIT;
-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Carlos', 'Diaz', 'Calle Central 909', '357357357', 'carlos.diaz@example.com', TO_DATE('1982-09-20', 'YYYY-MM-DD'), 'DNI', '99001122');
COMMIT;
-- Inserción de un cliente
INSERT INTO person (person_type, names, surnames, address, phone, email, date_of_birth, document_type, document_number) 
VALUES ('CLIENTE', 'Laura', 'Gutierrez', 'Calle Abajo 1000', '654654654', 'laura.gutierrez@example.com', TO_DATE('1987-10-25', 'YYYY-MM-DD'), 'DNI', '11223333');
COMMIT;

-- *******************************************************
-- INSERTS DE DATOS EN LA TABLA 'MENU'
-- *******************************************************
-- Inserción de datos en la tabla 'menu' de platos
-- Esta sección agrega los platos y sus detalles como entradas, segundo plato, postre, precio unitario y cantidad disponible.

-- Primer plato: Ensalada Caesar
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Ensalada Caesar', 'Ensalada con pollo y aderezo Caesar', 'Lechuga', 'Pollo', 'Tarta', 12.50, 100);
-- Segundo plato: Pizza Margarita
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Pizza Margarita', 'Pizza con tomate y queso', 'Masa', 'Queso', 'Helado', 15.00, 50);
-- Tercer plato: Pasta Carbonara
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Pasta Carbonara', 'Pasta con salsa de huevo y queso', 'Pasta', 'Tocino', 'Fruta', 10.00, 80);
-- Cuarto plato: Sushi
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Sushi', 'Arroz y pescado crudo', 'Alga', 'Pescado', 'Te', 20.00, 30);
-- Quinto plato: Tacos
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Tacos', 'Tacos de carne y vegetales', 'Tortilla', 'Carne', 'Flan', 8.00, 60);
-- Sexto plato: Ceviche
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Ceviche', 'Pescado marinado en limón', 'Pescado', 'Cebolla', 'Mousse', 18.00, 40);
-- Séptimo plato: Hamburguesa
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Hamburguesa', 'Hamburguesa de carne con queso', 'Pan', 'Carne', 'Brownie', 11.00, 70);
-- Octavo plato: Sopa de Verduras
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Sopa de Verduras', 'Sopa de verduras frescas', 'Verduras', 'Fideos', 'Tarta', 9.00, 90);
-- Noveno plato: Goulash
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Goulash', 'Estofado de carne y verduras', 'Carne', 'Verduras', 'Galleta', 14.00, 20);
-- Décimo plato: Brownie de Chocolate
INSERT INTO menu (dish_name, description, entrance, second_course, dessert, unit_price, amount) 
VALUES ('Brownie de Chocolate', 'Postre de chocolate', 'Chocolate', 'Nuez', 'Helado', 7.50, 50);

-- *******************************************************
-- INSERTS DE DATOS EN LA TABLA 'ORDERS'
-- *******************************************************
-- Inserción de datos en la tabla 'orders' de pedidos
-- Esta sección agrega los pedidos realizados por los clientes, incluyendo información sobre el mesero, la mesa, el total, el estado del pago, el tipo de pago y el estado del pedido.

-- Primer pedido: Cliente 2, Mesero 1, Mesa 1
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (2, 1, 1, 45.50, 'PENDIENTE', 'EFECTIVO', 'PENDIENTE', 'Sin picante');
-- Segundo pedido: Cliente 4, Mesero 3, Mesa 2
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (4, 3, 2, 78.90, 'PENDIENTE', 'TARJETA', 'EN_PROCESO', 'Extra ensalada');
-- Tercer pedido: Cliente 6, Mesero 1, Mesa 3
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (6, 1, 3, 32.00, 'PAGADO', 'EFECTIVO', 'COMPLETADO', 'Sin cebolla');
-- Cuarto pedido: Cliente 8, Mesero 5, Mesa 4
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (8, 5, 4, 95.70, 'PENDIENTE', 'TARJETA', 'PENDIENTE', 'Término medio');
-- Quinto pedido: Cliente 3, Mesero 3, Mesa 5
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (3, 3, 5, 150.20, 'PAGADO', 'EFECTIVO', 'COMPLETADO', 'Mesa VIP');
-- Sexto pedido: Cliente 5, Mesero 1, Mesa 6
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (5, 1, 6, 67.80, 'CANCELADO', 'TARJETA', 'CANCELADO', 'Cliente canceló');
-- Séptimo pedido: Cliente 7, Mesero 5, Mesa 7
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (7, 5, 7, 88.90, 'PENDIENTE', 'EFECTIVO', 'EN_PROCESO', 'Extra salsa');
-- Octavo pedido: Cliente 9, Mesero 2, Mesa 8
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (9, 2, 8, 120.60, 'PAGADO', 'TARJETA', 'COMPLETADO', 'Conserva la factura');
-- Noveno pedido: Cliente 1, Mesero 4, Mesa 9
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (1, 4, 9, 33.30, 'PENDIENTE', 'EFECTIVO', 'PENDIENTE', 'Todo al gusto');
-- Décimo pedido: Cliente 10, Mesero 2, Mesa 10
INSERT INTO orders (client_id, waiter_id, table_number, total_amount, payment_status, payment_type, order_status, notes) 
VALUES (10, 2, 10, 90.40, 'PAGADO', 'TARJETA', 'COMPLETADO', 'Sin gluten');

-- *******************************************************
-- INSERTS DE DATOS EN LA TABLA 'ORDERS_DETAIL'
-- *******************************************************
-- Inserción de datos en la tabla 'order_detail' de detalles de pedidos
-- Esta sección agrega los detalles de los pedidos, incluyendo el menú, la cantidad, el precio unitario, el subtotal, las notas y el estado del artículo.

-- Primer registro: Pedido 1, Menú 1
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (1, 1, 2, 12.50, 25.00, 'Extra limón', 'PENDIENTE');
-- Segundo registro: Pedido 2, Menú 3
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (2, 3, 1, 20.50, 20.50, 'Sin ají', 'PENDIENTE');
-- Tercer registro: Pedido 3, Menú 2
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (3, 2, 3, 15.30, 45.90, 'Bien cocido', 'PREPARANDO');
-- Cuarto registro: Pedido 4, Menú 4
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (4, 4, 2, 16.50, 33.00, 'Sin tomate', 'PENDIENTE');
-- Quinto registro: Pedido 5, Menú 1
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (5, 1, 1, 12.50, 12.50, 'Normal', 'SERVIDO');
-- Sexto registro: Pedido 6, Menú 5
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (6, 5, 1, 19.50, 19.50, 'Extra queso', 'SERVIDO');
-- Séptimo registro: Pedido 7, Menú 2
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (7, 2, 4, 15.30, 61.20, 'Para compartir', 'PREPARANDO');
-- Octavo registro: Pedido 8, Menú 3
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (8, 3, 2, 20.50, 41.00, 'Sin verduras', 'PENDIENTE');
-- Noveno registro: Pedido 9, Menú 4
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (9, 4, 3, 16.50, 49.50, 'Picante', 'SERVIDO');
-- Décimo registro: Pedido 10, Menú 5
INSERT INTO order_detail (order_id, menu_id, quantity, unit_price, subtotal, notes, item_status) 
VALUES (10, 5, 2, 19.50, 39.00, 'Con extra papas', 'SERVIDO');
-- Insertar primer registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (1, 4, 'DISPONIBLE');
COMMIT;

-- *******************************************************
-- INSERTS DE DATOS EN LA TABLA 'TABLES'
-- *******************************************************
-- Insertar segundo registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (2, 2, 'OCUPADO');
COMMIT;
-- Insertar tercer registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (3, 6, 'RESERVADO');
COMMIT;
-- Insertar cuarto registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (4, 4, 'DISPONIBLE');
COMMIT;
-- Insertar quinto registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (5, 8, 'OCUPADO');
COMMIT;
-- Insertar sexto registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (6, 2, 'DISPONIBLE');
COMMIT;
-- Insertar séptimo registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (7, 4, 'RESERVADO');
COMMIT;
-- Insertar octavo registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (8, 6, 'OCUPADO');
COMMIT;
-- Insertar noveno registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (9, 2, 'DISPONIBLE');
COMMIT;
-- Insertar décimo registro en la tabla tables
INSERT INTO tables (table_number, capacity, status) 
VALUES (10, 8, 'RESERVADO');
COMMIT;

-- *******************************************************
-- INSERTS DE DATOS EN LA TABLA 'RESERVATIONS_DETAIL'
-- *******************************************************

-- Insertar primer registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (2, 'Ensalada Caesar', 1, 25.00);
COMMIT;
-- Insertar segundo registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (4, 'Pizza Margarita', 2, 60.00);
COMMIT;
-- Insertar tercer registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (3, 'Pasta Carbonara', 1, 30.00);
COMMIT;
-- Insertar cuarto registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (5, 'Sushi', 3, 100.00);
COMMIT;
-- Insertar quinto registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (2, 'Tacos', 2, 16.00);
COMMIT;
-- Insertar sexto registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (3, 'Ceviche', 1, 54.00);
COMMIT;
-- Insertar séptimo registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (1, 'Hamburguesa', 2, 11.00);
COMMIT;
-- Insertar octavo registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (2, 'Sopa de Verduras', 1, 18.00);
COMMIT;
-- Insertar noveno registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (1, 'Goulash', 3, 14.00);
COMMIT;
-- Insertar décimo registro en la tabla reservation_detail
INSERT INTO reservation_detail (amount, menu_requested, menu_type, sub_total) 
VALUES (3, 'Brownie de Chocolate', 2, 22.50);
COMMIT;

-- *******************************************************
-- INSERTS DE DATOS EN LA TABLA 'RESERVATIONS'
-- *******************************************************
-- Insertar primer registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (2, TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
COMMIT;
-- Insertar segundo registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (3, TO_DATE('2024-11-11', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-11 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
COMMIT;
-- Insertar tercer registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (4, TO_DATE('2024-11-12', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-12 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
COMMIT;
-- Insertar cuarto registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (5, TO_DATE('2024-11-13', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-13 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
COMMIT;
-- Insertar quinto registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (6, TO_DATE('2024-11-14', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-14 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5);
COMMIT;
-- Insertar sexto registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (7, TO_DATE('2024-11-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6);
COMMIT;
-- Insertar séptimo registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (8, TO_DATE('2024-11-16', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-16 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 7);
COMMIT;
-- Insertar octavo registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (9, TO_DATE('2024-11-17', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-17 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 8);
COMMIT;
-- Insertar noveno registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (10, TO_DATE('2024-11-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-18 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 9);
COMMIT;
-- Insertar décimo registro en la tabla reservations
INSERT INTO reservations (client_id, reservation_date, reservation_time, detalle_reserva_id_detalleReserva) 
VALUES (1, TO_DATE('2024-11-19', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-11-19 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10);
COMMIT;
