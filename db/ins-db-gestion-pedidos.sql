DROP DATABASE if exists gestion_pedidos;
CREATE DATABASE gestion_pedidos;
USE gestion_pedidos;
CREATE TABLE productos (
    id_producto INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(99) NOT NULL,
    precio_producto FLOAT(6, 2) unsigned zerofill
) ENGINE = InnoDB;
CREATE TABLE usuarios (
    id_usuario INT unsigned NOT NULL AUTO_INCREMENT,
    nombre_usuario VARCHAR(99) NOT NULL,
    PRIMARY KEY (id_usuario)
) ENGINE = InnoDB;
CREATE TABLE pedidos (
    id_pedido INT unsigned NOT NULL AUTO_INCREMENT,
    fecha_pedido TIMESTAMP,
    id_usuario INT unsigned zerofill NOT NULL,
    confirmar_pedido TINYINT NULL,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
) ENGINE = InnoDB;
CREATE TABLE detalles (
    id_detalle INT unsigned NOT NULL AUTO_INCREMENT,
    id_pedido INT unsigned zerofill NOT NULL,
    id_producto INT unsigned zerofill NOT NULL,
    cantidad INT(2) DEFAULT 1,
    PRIMARY KEY (id_detalle),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
) ENGINE = InnoDB;
-- Cargamos productos
INSERT INTO productos
VALUES (NULL, 'Pizza Capriciosa', 14.00),
    (NULL, 'Pizza Puttanesca', 12.00),
    (NULL, 'Pizza quatro formagi', 16.00),
    (NULL, 'Pizza Procciutto', 12.50),
    (NULL, 'Pizza frutti di mare', 14.62);
-- Registramos un usuario
INSERT INTO usuarios
VALUES (NULL, 'raul');
-- Registramos el pedido sin confirmar
INSERT INTO pedidos
VALUES (NULL, NULL, 1, NULL);
-- Detallamos el pedido
INSERT INTO detalles
VALUES (NULL, 1, 1, 1);
INSERT INTO detalles
VALUES (NULL, 1, 2, 2);
-- confirmamos el pedido
update pedidos
set confirmar_pedido = 1
where id_pedido = 1;