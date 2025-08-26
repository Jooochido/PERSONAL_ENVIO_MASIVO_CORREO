-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2025 a las 01:31:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `envio_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(250) NOT NULL,
  `prod_precion` varchar(20) NOT NULL,
  `prod_preciod` varchar(20) NOT NULL,
  `prod_url` varchar(600) NOT NULL,
  `prod_img` varchar(600) NOT NULL,
  `prod_cupon` varchar(20) NOT NULL,
  `prod_descrip` varchar(600) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_producto`
--

INSERT INTO `tm_producto` (`prod_id`, `prod_nom`, `prod_precion`, `prod_preciod`, `prod_url`, `prod_img`, `prod_cupon`, `prod_descrip`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Envío Masivo de Correos Electrónicos con PHP, MySQL y JS', '499', '199', 'https://www.udemy.com/course/envio-masivo-de-correos-electronicos-con-php-mysql-y-js/', 'https://img-c.udemycdn.com/course/480x270/4288164_4e8d_4.jpg', '0', 'Bienvenido al curso del desarrollo de un Envío Masivo de Correos Electrónicos con PHP, MySQL y JS en PHP POO, PDO, MySQL, JQuery Ajax, Json, Bootstrap, vas a aprender paso a paso como desarrollar un Sistema web desde cero y lo podrás ver en cualquier dispositivo móvil con responsive design.', '2025-08-25 22:10:18', '2025-08-25 19:11:21', NULL, 1),
(2, 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2025-08-25 19:22:04', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(150) DEFAULT NULL,
  `usu_apep` varchar(150) DEFAULT NULL,
  `usu_apem` varchar(150) DEFAULT NULL,
  `usu_correo` varchar(150) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `usu_pass` int(11) DEFAULT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `usu_nom`, `usu_apep`, `usu_apem`, `usu_correo`, `rol_id`, `usu_pass`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Jonathan', 'Ramirez', 'Altamirano', 'correo.desarrollopr@gmail.com', 2, 12345678, '2025-08-21 22:33:05', NULL, NULL, 1),
(2, NULL, NULL, NULL, 'prueba@gmail.com', 1, NULL, '2025-08-21 16:56:17', NULL, NULL, 1),
(3, NULL, NULL, NULL, 'prueba1@gmail.com', 1, NULL, '2025-08-21 17:01:53', NULL, NULL, 0),
(4, NULL, NULL, NULL, 'prueba2@gmail.com', 1, NULL, '2025-08-21 17:20:26', NULL, NULL, 1),
(6, NULL, NULL, NULL, 'jooorami2608@gmail.com', 1, NULL, '2025-08-26 17:04:25', NULL, NULL, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
