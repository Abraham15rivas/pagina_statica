-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2018 a las 13:31:06
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `producto_id` int(11) NOT NULL,
  `producto_codigo` varchar(20) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `producto_descripcion` varchar(200) NOT NULL,
  `producto_precio` decimal(9,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_descripcion`, `producto_precio`) VALUES
(1, 'PRO1', 'Cafe Cerrero', ' ', '10.00'),
(24, 'PRO24', 'Ruffles Originales', '', '20.00'),
(2, 'PRO2', 'Cafe con Leche', '', '10.00'),
(21, 'PRO21', 'Ping Pong', '', '20.00'),
(22, 'PRO22', 'Pringles Originales', '', '20.00'),
(23, 'PRO23', 'Ruffles de Queso', '', '20.00'),
(3, 'PRO3', 'Cafe Marron Claro', '', '10.00'),
(20, 'PRO20', 'Oreo Originales', '', '20.00'),
(4, 'PRO4', 'Cafe Marron Oscuro', '', '10.00'),
(18, 'PRO18', 'NatuShips', '', '20.00'),
(19, 'PRO19', 'Oreo de Vainilla', '', '20.00'),
(5, 'PRO5', 'Cafe Marron', '', '10.00'),
(17, 'PRO17', 'MilkyWay', '', '20.00'),
(6, 'PRO6', 'Cafe Negro', '', '10.00'),
(16, 'PRO16', 'Galletas Maria Plus', '', '20.00'),
(12, 'PRO12', 'Doritos', '', '20.00'),
(13, 'PRO13', 'Froot Loops', '', '20.00'),
(14, 'PRO14', 'Galletas Maria Clasicas', '', '20.00'),
(15, 'PRO15', 'Galletas Maria con Chocolate', '', '20.00'),
(7, 'PRO7', 'Bolero', '', '20.00'),
(8, 'PRO8', 'Bolibomba de Fruta y Menta', '', '20.00'),
(9, 'PRO9', 'Chiclets', '', '20.00'),
(10, 'PRO10', 'Cocosette', '', '20.00'),
(11, 'PRO11', 'Corn Flakes', '', '20.00'),
(25, 'PRO25', 'Ruletas', '', '20.00'),
(26, 'PRO26', 'Samba', '', '20.00'),
(27, 'PRO27', 'Savoy', '', '20.00'),
(28, 'PRO28', 'Trix', '', '20.00'),
(29, 'PRO29', 'Zucaritas', '', '20.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
