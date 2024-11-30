# GESTIÓN DE USUARIOS Y PRIVILEGIOS EN ORACLE

## 1. [Creación de Usuario](#creacion-de-usuario)
   * [Privilegios Básicos](#privilegios-basicos)
   
## 2. [Gestión de Privilegios](#gestion-de-privilegios)
   * [Asignación de Privilegios Adicionales](#asignacion-de-privilegios-adicionales)

## 3. [Gestión de Oracle REST Data Services (ORDS)](#gestion-de-ords)

---

## <a name="creacion-de-usuario">Creación de Usuario</a>

Un usuario en Oracle es necesario para realizar operaciones de creación y manipulación de datos dentro de la base de datos.  
La creación de un usuario debe ir acompañada de la asignación de los privilegios adecuados para garantizar el acceso y control necesarios sobre los objetos de la base de datos.

### <a name="privilegios-basicos">Privilegios Básicos</a>

* Crear un usuario en Oracle:
    ```sql
    CREATE USER DBGRACIELA IDENTIFIED BY "Vallegrande20244";
    ```

* Asignar privilegios básicos para permitir al usuario iniciar sesión y crear objetos dentro del esquema:
    ```sql
    GRANT CREATE SESSION TO DBGRACIELA;       -- Permite iniciar sesión
    GRANT CREATE TABLE TO DBGRACIELA;         -- Permite crear tablas
    GRANT CREATE VIEW TO DBGRACIELA;          -- Permite crear vistas
    GRANT CREATE PROCEDURE TO DBGRACIELA;     -- Permite crear procedimientos
    GRANT CREATE TRIGGER TO DBGRACIELA;       -- Permite crear triggers
    GRANT CREATE SEQUENCE TO DBGRACIELA;      -- Permite crear secuencias
    GRANT CREATE SYNONYM TO DBGRACIELA;       -- Permite crear sinónimos
    GRANT UNLIMITED TABLESPACE TO DBGRACIELA; -- Permite usar todo el espacio de tablas
    ```

---

## <a name="gestion-de-privilegios">Gestión de Privilegios</a>

* Asignar privilegios adicionales para manipular datos en cualquier tabla de la base de datos:
    ```sql
    GRANT SELECT ANY TABLE TO DBGRACIELA;     -- Permite leer cualquier tabla
    GRANT INSERT ANY TABLE TO DBGRACIELA;     -- Permite insertar datos en cualquier tabla
    GRANT UPDATE ANY TABLE TO DBGRACIELA;     -- Permite actualizar datos en cualquier tabla
    GRANT DELETE ANY TABLE TO DBGRACIELA;     -- Permite eliminar datos de cualquier tabla
    ```

* Verificar el estado de la cuenta del usuario:
    ```sql
    SELECT USERNAME, ACCOUNT_STATUS 
    FROM DBA_USERS 
    WHERE USERNAME = 'DBGRACIELA';
    ```

* Desbloquear la cuenta si está bloqueada:
    ```sql
    ALTER USER DBGRACIELA ACCOUNT UNLOCK;
    ```

---

## <a name="gestion-de-ords">Gestión de Oracle REST Data Services (ORDS)</a>

* Habilitar el esquema para ser utilizado por ORDS (Oracle REST Data Services), permitiendo que los objetos del esquema sean accesibles a través de servicios web RESTful:
    ```sql
    BEGIN
       ORDS_ADMIN.ENABLE_SCHEMA(
          p_enabled               => TRUE,            -- Habilitar el esquema
          p_schema                => 'DBGRACIELA',     -- Esquema a habilitar
          p_url_mapping_type      => 'BASE_PATH',      -- Tipo de mapeo de URL
          p_url_mapping_pattern   => 'dbgraciela',     -- Mapeo de URL
          p_auto_rest_auth        => TRUE              -- Autenticación REST automática
       );
    END;
    /
    ```

---

## Descripción general de las acciones realizadas:

1. **Creación de Usuario**: Creación de un usuario en la base de datos con la contraseña especificada, seguido de la asignación de privilegios básicos para su funcionamiento.
2. **Gestión de Privilegios**: Asignación de privilegios adicionales que permiten al usuario manipular los datos y administrar objetos en la base de datos.
3. **Verificación y Desbloqueo**: Verificación del estado de la cuenta y desbloqueo si es necesario.
4. **Habilitación para ORDS**: Configuración para que el esquema sea accesible mediante servicios RESTful, facilitando su integración con aplicaciones externas.

Este conjunto de acciones es crucial para gestionar un esquema Oracle de manera eficiente y habilitarlo para su uso en aplicaciones que consumen servicios REST.
