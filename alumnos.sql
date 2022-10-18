DROP DATABASE IF EXISTS `alumnos`;

CREATE DATABASE IF NOT EXISTS `alumnos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP USER `springuser`@`%`;

CREATE USER `springuser` @`%` IDENTIFIED BY 'ThePassword';

GRANT USAGE ON *.* TO `springuser` @`%`;

GRANT ALL PRIVILEGES ON `alumnos`.* TO ' springuser ' @' % ';

USE `alumnos`;

DROP TABLE IF EXISTS `user`;

CREATE TABLE IF NOT EXISTS `user` (
    `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
    `curso` varchar(255) DEFAULT NULL,
    `Nombre` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO
    `user` (`id`, `curso`, `Nombre`)
VALUES
    (1, 'primero', 'Flavio Trucco'),
    (2, 'primero', 'Vanessa Quiñones'),
    (3, 'primero', 'Facundo Wehrli'),
    (4, 'primero', 'Erik Lamela'),
    (5, 'first@gmail.com', 'First'),
    (6, 'primero@gmail.com', 'Primero'),
    (7, 'segundo@gmail.com', 'Segundo'),
    (8, 'tercero@gmail.com', 'Tercero'),
    (9, 'cuarto@gmail.com', 'Cuarto');
