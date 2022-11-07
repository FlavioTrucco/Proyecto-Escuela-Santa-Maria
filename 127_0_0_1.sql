-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-11-2022 a las 22:40:47
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumnos`
--
DROP DATABASE IF EXISTS `alumnos`;
CREATE DATABASE IF NOT EXISTS `alumnos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `alumnos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `curso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `curso`, `Nombre`, `Sexo`) VALUES
(1, 'primero', 'Flavio Trucco', 'Masculino'),
(2, 'primero', 'Vanessa Quiñones', 'Femenino'),
(3, 'primero', 'Facundo Wehrli', 'Masculino'),
(4, 'primero', 'Erik Lamela', 'Masculino'),
(5, 'segundo', 'Lionel Andres Messi', 'Masculino'),
(6, 'segundo', 'Tomas Paz', 'Masculino'),
(7, 'primero', 'Gustavo García', 'Masculino'),
(8, 'primero', 'Celina Guzman', 'Femenino'),
(9, 'cuarto', 'Luciano Once', 'Masculino'),
(10, 'quinto', 'Juan perez', 'Masculino'),
(11, 'segundo', 'Facundo Quiroga', 'Masculino'),
(12, 'tercero', 'Ernesto Gonzalez', 'Masculino'),
(13, 'primero', 'Juan Perez', 'Masculino'),
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
