DROP DATABASE IF EXISTS `alumnos`;

CREATE DATABASE IF NOT EXISTS `alumnos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP USER `springuser`@`%`;

CREATE USER `springuser` @`%` IDENTIFIED BY 'ThePassword';

GRANT USAGE ON *.* TO `springuser` @`%`;

GRANT ALL PRIVILEGES ON `alumnos`.* TO ' springuser ' @' % ';

USE `alumnos`;

DROP TABLE IF EXISTS `alumno`;

CREATE TABLE IF NOT EXISTS `alumno` (
    `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
    `curso` varchar(255) DEFAULT NULL,
    `nombre` varchar(255) DEFAULT NULL,
    `Sexo` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

INSERT INTO
    `alumno` (`id`, `curso`, `nombre`,`Sexo`)
VALUES
    (1, 'primero', 'Flavio Trucco', 'Masculino'),
    (2, 'primero', 'Vanessa Quiñones', 'Femenino'),
    (3, 'primero', 'Facundo Wehrli', 'Masculino'),
    (4, 'primero', 'Erik Lamela', 'Masculino'),
    (5, 'segundo', 'Lionel Andres Messi','Masculino'),
    (6, 'segundo', 'Tomas Paz','Masculino'),
    (7, 'primero', 'Gustavo García','Masculino'),
    (8, 'primero', 'Celina Guzman' , 'Femenino'),
    (9, 'cuarto', 'Luciano Once' , 'Masculino'),
    (10, 'quinto' , 'Juan perez' , 'Masculino' ),
/*los siguientes alumnos deben subirlos al a base de datos de la siguiente manera:
 en SQL colocamos:
   INSERT INTO
    `alumno` (`id`, `curso`, `nombre`,`Sexo`)

    y abajo de esto todos los nuevos nombres que agregué, osea de la línea 45 hasta la 74
*/
    (11, 'segundo', 'Facundo Quiroga', 'Masculino'),
    (12, 'tercero', 'Ernesto Gonzalez', 'Masculino'),
    (13, 'primero', 'Juan Perez', 'Masculino' ),
    (14, 'primero', 'Juana Dominguez', 'Femenino'),
    (15, 'primero', 'Jorge Fernandez', 'Masculino'),
    (16, 'segundo', 'Jorgelina Basualdo', 'Femenino'),
    (17, 'tercero', 'Josefa Díaz', 'Femenino'),
    (18, 'cuarto', 'Ernestina Rivarola', 'Femenino'),
    (19, 'quinto', 'Julián Alvarez', 'Masculino'),
    (20, 'segundo', 'David Nievas', 'Masculino'),
    (21, 'tercero', 'Juana Villegas', 'Femenino'),
    (22, 'cuarto', 'Elias Bamonde', 'Maculino'),
    (23, 'quinto', 'Ambar Bamonde', 'Femenino'),
    (24, 'sexto', 'Andres Inocenti', 'Masculino'),
    (25, 'séptimo', 'Ariel Inocente', 'Masculino'),
    (26, 'primero', 'Liliana Guaidini', 'Femenino'),
    (27, 'segundo', 'Giselle Guerra', 'Femenino'),
    (28, 'tercero', 'Alfonso Villaruel', 'Masculino'),
    (29, 'cuarto', 'Renato Perez', 'Masculino'),
    (30, 'quinto', 'José Vargas', 'Masculino'),
    (31, 'sexto', 'Gerardo Casco', 'Masculino'),
    (32, 'quinto', 'Valentina Iraola', 'Femenino'),
    (33, 'quinto', 'Fernando Escobar', 'Masculino'),
    (34, 'primero', 'Felicita Gutierrez', 'Femenino'),
    (35, 'primero', 'Joaquín Guerra', 'Masculino'),
    (36, 'primero', 'Sofía Sosa', 'Femenino'),
    (37, 'segundo', 'Jorge Hernandez', 'Masculino'),
    (38, 'tercero', 'Jesica Fresco', 'Femenino'),
    (39, 'tercero', 'Lázaro Fresco', 'Masculino'),
    (40, 'tercero', 'Milagros Hernandez', 'Femenino');