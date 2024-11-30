-- =======================================================
-- Script para la creación y configuración de un usuario
-- en la base de datos Oracle. Este script incluye la 
-- asignación de privilegios, desbloqueo de cuenta y 
-- habilitación de un esquema para el uso de ORDS.
-- Usuario creado: DBGRACIELA
-- Contraseña: Vallegrande20244
-- =======================================================

-- 1. Crear el usuario 'DBGRACIELA' con la contraseña especificada
CREATE USER DBGRACIELA IDENTIFIED BY "Vallegrande20244";

-- 2. Asignación de privilegios básicos para la creación de objetos
GRANT CREATE SESSION TO DBGRACIELA;       -- Permite al usuario iniciar sesión
GRANT CREATE TABLE TO DBGRACIELA;         -- Permite crear tablas
GRANT CREATE VIEW TO DBGRACIELA;          -- Permite crear vistas
GRANT CREATE PROCEDURE TO DBGRACIELA;     -- Permite crear procedimientos
GRANT CREATE TRIGGER TO DBGRACIELA;       -- Permite crear disparadores
GRANT CREATE SEQUENCE TO DBGRACIELA;      -- Permite crear secuencias
GRANT CREATE SYNONYM TO DBGRACIELA;       -- Permite crear sinónimos
GRANT UNLIMITED TABLESPACE TO DBGRACIELA; -- Permite usar espacio de tabla sin restricciones

-- 3. Asignación de privilegios adicionales para manipular datos
GRANT SELECT ANY TABLE TO DBGRACIELA;     -- Permite leer cualquier tabla
GRANT INSERT ANY TABLE TO DBGRACIELA;     -- Permite insertar datos en cualquier tabla
GRANT UPDATE ANY TABLE TO DBGRACIELA;     -- Permite actualizar datos en cualquier tabla
GRANT DELETE ANY TABLE TO DBGRACIELA;     -- Permite eliminar datos de cualquier tabla

-- 4. Verificar el estado de la cuenta del usuario 'DBGRACIELA'
SELECT USERNAME, ACCOUNT_STATUS 
FROM DBA_USERS 
WHERE USERNAME = 'DBGRACIELA';

-- 5. Desbloquear la cuenta del usuario 'DBGRACIELA' si está bloqueada
ALTER USER DBGRACIELA ACCOUNT UNLOCK;

-- 6. Habilitar el esquema 'DBGRACIELA' para ORDS (Oracle REST Data Services)
BEGIN
   ORDS_ADMIN.ENABLE_SCHEMA(
      p_enabled               => TRUE,            -- Habilita el esquema
      p_schema                => 'DBGRACIELA',     -- Esquema a habilitar
      p_url_mapping_type      => 'BASE_PATH',      -- Tipo de mapeo de URL
      p_url_mapping_pattern   => 'dbgraciela',     -- Patrón de mapeo de URL
      p_auto_rest_auth        => TRUE              -- Habilita la autenticación REST automática
   );
END;
/
