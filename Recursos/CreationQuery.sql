CREATE TABLE empresa  
   (pk_id int PRIMARY KEY NOT NULL,
   v_razon_social varchar(255) NOT NULL,
   v_direccion varchar(255) NOT NULL,
   v_correo varchar(320) UNIQUE)
GO

CREATE TABLE persona
(
    pk_documento int PRIMARY KEY NOT NULL,
    v_nombre varchar(255) NOT NULL,
    v_correo varchar(320) UNIQUE,
    f_fecha_nacimiento date 
)
GO

CREATE TABLE telefono
(
    n_ext int NOT NULL,
    n_numero bigint NOT NULL,
    fk_persona int FOREIGN KEY REFERENCES persona(pk_documento) ON DELETE CASCADE,
    fk_empresa int FOREIGN KEY REFERENCES empresa(pk_id) ON DELETE CASCADE,
)
GO
ALTER TABLE telefono ADD CONSTRAINT PK_telefono primary key (n_ext, n_numero)

CREATE TABLE producto
(
    pk_id int PRIMARY KEY NOT NULL IDENTITY(1,1),
    v_nombre varchar(255) NOT NULL,
    v_descripcion varchar(320),
    m_precio money NOT NULL,
    e_tipo varchar(8)
               CHECK( e_tipo IN('producto','servicio', 'otros')) NOT NULL,
    fk_empresa int FOREIGN KEY REFERENCES empresa(pk_id) ON DELETE CASCADE NOT NULL
)
GO

CREATE TABLE venta
(
    pk_id int PRIMARY KEY NOT NULL IDENTITY(1,1),
    n_cantidad int NOT NULL,
    f_fecha date NOT NULL,
    fk_producto int FOREIGN KEY REFERENCES producto(pk_id) ON DELETE CASCADE NOT NULL,
    fk_persona int FOREIGN KEY REFERENCES persona(pk_documento) ON DELETE CASCADE NOT NULL,
)


CREATE VIEW vista_venta AS
SELECT V.pk_id AS id, 
       E.v_razon_social AS empresa, 
       PR.v_nombre AS producto, 
       PR.v_descripcion AS descripcion, 
       V.n_cantidad AS cantidad,
       v.f_fecha AS fecha 
       PR.e_tipo as tipo, 
       FORMAT(V.n_cantidad * PR.m_precio,'C','En-Us') AS valor_total, 
       PE.v_nombre AS comprador 
    FROM venta AS V 
    INNER JOIN persona AS PE ON (PE.pk_documento = V.fk_persona)
    INNER JOIN producto AS PR ON (PR.pk_id = V.fk_producto)
    INNER JOIN empresa AS E ON (E.pk_id = PR.fk_empresa)
