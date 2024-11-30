# **Restricciones para las tablas del Sistema de Restaurante**

Este archivo contiene las restricciones necesarias para garantizar la integridad de los datos en las tablas de la base de datos del sistema de restaurante.

```sql
-- **Restricciones para la tabla `person`**

-- Verifica que los nombres solo contengan letras, espacios y caracteres especiales (como tildes y ñ).
ALTER TABLE person
  ADD CONSTRAINT chk_names CHECK (
    REGEXP_LIKE(names, '^[A-Za-zÁáÉéÍíÓóÚúÑñ]+(\s+[A-Za-zÁáÉéÍíÓóÚúÑñ]+)*$')
  );

-- Verifica que los apellidos solo contengan letras, espacios y caracteres especiales.
ALTER TABLE person
  ADD CONSTRAINT chk_surnames CHECK (
    REGEXP_LIKE(surnames, '^[A-Za-zÁáÉéÍíÓóÚúÑñ]+(\s+[A-Za-zÁáÉéÍíÓóÚúÑñ]+)*$')
  );

-- Verifica que el estado de la persona sea 'ACTIVE' o 'INACTIVE'.
ALTER TABLE person
  ADD CONSTRAINT chk_status CHECK (status IN ('ACTIVE', 'INACTIVE'));

-- **Restricciones para la tabla `menu`**

-- Verifica que el precio unitario sea mayor a 0.
ALTER TABLE menu
  ADD CONSTRAINT chk_unit_price CHECK (unit_price > 0);

-- Verifica que el estado del plato sea 'ACTIVE' o 'INACTIVE'.
ALTER TABLE menu
  ADD CONSTRAINT chk_state CHECK (state IN ('ACTIVE', 'INACTIVE'));

-- **Restricciones para la tabla `orders`**

-- Verifica que el estado del pago sea 'PENDIENTE', 'PAGADO' o 'CANCELADO'.
ALTER TABLE orders
  ADD CONSTRAINT chk_payment_status CHECK (payment_status IN ('PENDIENTE', 'PAGADO', 'CANCELADO'));

-- Verifica que el estado de la orden sea 'PENDIENTE', 'EN_PROCESO', 'COMPLETADO' o 'CANCELADO'.
ALTER TABLE orders
  ADD CONSTRAINT chk_order_status CHECK (order_status IN ('PENDIENTE', 'EN_PROCESO', 'COMPLETADO', 'CANCELADO'));

-- Verifica que el estado de la orden sea 'ACTIVE' o 'INACTIVE'.
ALTER TABLE orders
  ADD CONSTRAINT chk_order_status_state CHECK (status IN ('ACTIVE', 'INACTIVE'));

-- **Restricciones para la tabla `order_detail`**

-- Verifica que el estado del elemento sea 'PENDIENTE', 'PREPARANDO', 'SERVIDO' o 'CANCELADO'.
ALTER TABLE order_detail
  ADD CONSTRAINT chk_item_status CHECK (item_status IN ('PENDIENTE', 'PREPARANDO', 'SERVIDO', 'CANCELADO'));

-- Verifica que el estado del detalle de la orden sea 'ACTIVE' o 'INACTIVE'.
ALTER TABLE order_detail
  ADD CONSTRAINT chk_item_status_state CHECK (status IN ('ACTIVE', 'INACTIVE'));

-- **Restricciones para la tabla `tables`**

-- Verifica que el estado de la mesa sea 'DISPONIBLE', 'OCUPADO' o 'RESERVADO'.
ALTER TABLE tables
  ADD CONSTRAINT chk_table_status CHECK (status IN ('DISPONIBLE', 'OCUPADO', 'RESERVADO'));

-- Verifica que el estado de la mesa sea 'ACTIVE' o 'INACTIVE'.
ALTER TABLE tables
  ADD CONSTRAINT chk_table_status_state CHECK (active_status IN ('ACTIVE', 'INACTIVE'));

-- **Restricciones para la tabla `reservation_detail`**

-- Verifica que el subtotal sea mayor o igual a 0.
ALTER TABLE reservation_detail
  ADD CONSTRAINT chk_sub_total CHECK (sub_total >= 0);

-- **Restricciones para la tabla `reservations`**

-- Verifica que el cliente esté registrado en la tabla `person`.
ALTER TABLE reservations
  ADD CONSTRAINT fk_client_id FOREIGN KEY (client_id) REFERENCES person(person_id) ON DELETE CASCADE;

-- Verifica que el detalle de la reserva esté registrado en la tabla `reservation_detail`.
ALTER TABLE reservations
  ADD CONSTRAINT fk_detalle_reserva FOREIGN KEY (detalle_reserva_id_detalleReserva) REFERENCES reservation_detail(detail_id) ON DELETE CASCADE;
