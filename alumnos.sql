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
    `Sexo` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO
    `user` (`id`, `curso`, `Nombre`,`Sexo`)
VALUES
    (1, 'primero', 'Flavio Trucco', 'Masculino'),
    (2, 'primero', 'Vanessa Quiñones', 'Femenino'),
    (3, 'primero', 'Facundo Wehrli', 'Masculino'),
    (4, 'primero', 'Erik Lamela', 'Masculino'),
    (5, 'segundo', 'Lionel Andres Messi','Masculino'),
    (6, 'segundo', 'Tomas Paz','Masculino'),
    (7, 'tercero', 'Gustavo Guzman','Masculino'),
    (8, 'cuarto', 'Celina García' , 'Femenino'),
    (9, 'cuarto', 'Luciano Once' , 'Masculino'),
    (10, 'quinto' , 'Juan perez' , 'Masculino' );
