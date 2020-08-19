-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2018 a las 13:31:51
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
-- Base de datos: `compra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bebidas`
--

CREATE TABLE `tbl_bebidas` (
  `producto_id` int(11) NOT NULL,
  `producto_codigo` int(20) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `producto_descripcion` varchar(200) NOT NULL,
  `producto_precio` decimal(9,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_bebidas`
--

INSERT INTO `tbl_bebidas` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_descripcion`, `producto_precio`) VALUES
(31, 31, 'Jugo de Naranja de Yukery', '', '15.00'),
(32, 32, 'Jugo de Manzana de Yukery', '', '15.00'),
(33, 33, 'Jugo de Pera de Yukery', '', '15.00'),
(34, 34, 'Jugo de Durazno de Yukery', '', '15.00'),
(35, 35, 'Jugo de Mango de Yukery', '', '15.00'),
(36, 36, 'Jugo de Manzana de California', '', '15.00'),
(37, 37, 'Jugo de Naranja de California', '', '15.00'),
(38, 38, 'Jugo de Manzana de Frica', '', '15.00'),
(39, 39, 'Jugo de Naranja de Frica', '', '15.00'),
(40, 40, 'Jugo de Pera de Frica', '', '15.00'),
(41, 41, 'Jugo de Manzana de Los Andes', '', '15.00'),
(42, 42, 'Jugo de Naranja de Los Andes', '', '15.00'),
(43, 43, 'Jugo de Pera de Los Andes', '', '15.00'),
(44, 44, 'CocaCola de 2L', '', '18.00'),
(45, 45, 'Pepsi de 2L', '', '18.00'),
(46, 46, 'Chinotto de 2L', '', '18.00'),
(47, 47, '7Up de 2L', '', '18.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_confiteria`
--

CREATE TABLE `tbl_confiteria` (
  `producto_id` int(11) NOT NULL,
  `producto_codigo` varchar(20) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `producto_descripcion` varchar(200) NOT NULL,
  `producto_precio` decimal(9,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_confiteria`
--

INSERT INTO `tbl_confiteria` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_descripcion`, `producto_precio`) VALUES
(7, '7', 'Bolero', 'Deliciosos bomboncitos de maíz cubiertos de chocolate SAVOY®.', '5.00'),
(8, '8', 'Bolibomba de frutas', 'Bolibomba Frutas® Globitos de chicles que encantan a todos por su único sabor a frutas. Referencia obligada a la niñez de todos los venezolanos.', '8.00'),
(9, '9', 'Bolibomba de Menta', 'Bolibomba Menta® Globitos de chicle que encantan a todos por su único sabor a menta. Referencia obligada a la niñez de todos los venezolanos.', '8.00'),
(10, '10', 'Cliclets', 'El Chiclets original, no fue \"inventado\", fue \"descubierto\" por Adams en una visita que realizó a México, los aztecas lo usaban para limpiarse los dientes.  Chiclets es una marca de goma de mascar rec', '2.00'),
(11, '11', 'Cocosette', 'La mejor combinación de galleta y crema de coco para despertar tus sentidos y hacer de cada beso un momento ideal. Pruébalo y te lo comerás a besos.', '10.00'),
(12, '12', 'Corn Flakes', 'es una popular marca de cereal, comúnmente usada en el desayuno y producida por la compañía Kellogg\'s. Se fabrica con granos de maíz sometidos a un tratamiento, por medio del cual se obtienen unas peq', '15.00'),
(13, '13', 'Doritos', 'es una marca de tortilla chip con sabor producidos desde 1964 por la empresa de alimentos estadounidense Frito-Lay (una subsidiaria de propiedad total de PepsiCo). El aperitivo es el tradicional totop', '10.00'),
(14, '14', 'Froot Loops', 'es una marca de cereales para desayuno azucarados sazonados con sabor a frutas producida por Kellogg\'s y vendida en muchos países. Los cereales tienen forma de anillos y hay una variedad de colores br', '15.00'),
(15, '15', 'Galletas Maria Clasicas', 'NO ENCONTRADA DESCRIPCION', '10.00'),
(16, '16', 'Galletas Maria con Chocolate', 'NO ENCONTRADA DESCRIPCION', '12.00'),
(17, '17', 'Galletas Maria Plus', 'NO ENCONTRADA DESCRIPCION', '15.00'),
(18, '18', 'MilkyWay', 'es una barrita de chocolate elaborada y distribuida por Mars Incorporated. La barrita original, disponible en Estados Unidos, presenta un centro de nougat y chocolate o vainilla, con caramelo en la pa', '8.00'),
(19, '19', 'NatuShips', ': NatuShips es la marca de tradición que ofrece a sus consumidores locales un portafolio de productos innovadores, hechos con raíces frescas, con frutas y tubérculos de origen local y de gran calidad;', '15.00'),
(20, '20', 'Oreo de Vainilla', 'NO ENCONTRADA DESCRIPCION', '8.00'),
(21, '21', 'Oreo Originales', 'es una marca de galletas tipo sándwich creada por la compañía estadounidense Nabisco, una división de Mondel?z International Inc. y Kraft Foods, caracterizada por estar constituida por dos galletas ci', '8.00'),
(22, '22', 'Ping Pong', 'Irresistible clásico: crujiente maní cubierto con delicioso chocolate SAVOY®. Para comerlos uno a uno y disfrutar de un buen momento con una gran sonrisa.', '5.00'),
(23, '23', 'Pringles Originales', 'es la marca de un aperitivo con forma de patata frita. Está compuesto por patata deshidratada, almidón de trigo y harinas (patata, maíz y arroz) mezcladas con aceite vegetal. La empresa está controlad', '10.00'),
(24, '24', 'Ruffles de Queso', 'NO ENCONTRADA DESCRIPCION', '10.00'),
(25, '25', 'Ruffles Originales', 'es el nombre de una marca de Papas fritas inglesas onduladas, producidas originalmente por la marca Frito-Lay, una propiedad de PepsiCo. La empresa Frito Lay adquirió los derechos de la marca de fritu', '12.00'),
(26, '26', 'Ruletas con Extra de Picante', 'Los nuevos Doritos® Roulette con salsa de TABASCO® tienen la misma intensidad de tus Tex-Mex de siempre pero algunos con el sabor ultra picante de TABASCO®. No los distinguirás ni por el olor ni por e', '15.00'),
(27, '27', 'Samba', 'La mezcla de ingredientes de SAMBA®; es única en aroma y sabor, porque la combinación de la galleta, el chocolate SAVOY®; y el relleno de crema de fresa, avellana o chocolate, hacen que quien lo prueb', '15.00'),
(28, '28', 'Savoy', 'SAVOY® Chocolate con Leche®; es el chocolate con el que todo comenzó. Es el típico SABOR VENEZOLANO®; porque al comerlo se puede sentir el orgullo de saber que se produce con el mejor cacao del mundo.', '10.00'),
(29, '29', 'Trix', 'Si lo que te gusta desayunar son frutitas, esta es tu opción. Cereal Trix® de Nestlé® con sabor a fruta y además fortificado con 5 vitaminas y 3 minerales esenciales.', '15.00'),
(30, '30', 'Zucaritas', 'es un cereal para el desayuno creado por la compañía Kellogg\'s e introducido en el mercado estadounidense. Está compuesto de maíz tostado.', '15.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_panaderia`
--

CREATE TABLE `tbl_panaderia` (
  `producto_id` int(11) NOT NULL,
  `producto_codigo` varchar(20) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `producto_descripcion` varchar(200) NOT NULL,
  `producto_precio` decimal(9,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_panaderia`
--

INSERT INTO `tbl_panaderia` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_descripcion`, `producto_precio`) VALUES
(48, '48', 'Andino', 'NO ENCONTRADA DESCRIPCION', '12.00'),
(49, '49', 'Campesino', 'Cuando se trata de pan la variedad es una de las características principales. Algunos son más blandos y menos procesados, como el pan para sándwich;  otros, como el baguette, no contienen mantequilla;', '12.00'),
(50, '50', 'Canillas', 'es una variedad de pan que se caracteriza por emplear harina de trigo, por ser mucho más largo que ancho y por su corteza crujiente. Es ideal para la elaboración de bocadillos', '7.00'),
(51, '51', 'Golfeado', 'es un pan dulce típico de la gastronomía de Venezuela, originario de la Región Capital del país, especialmente de la zona de los Altos Mirandinos, en particular de Carrizal.', '10.00'),
(52, '52', 'Pan de Guayaba', 'es originario de Venezuela. Esta es una fruta muy tropical y deliciosa con la que se puede hacer un puré y con este se rellena el pan. La preparación y la idea es bastante simple: un pan dulce con jal', '12.00'),
(53, '53', 'Pan de Jamon y Queso', 'NO ENCONTRADA DESCRIPCION ', '15.00'),
(54, '54', 'Pan de Jamon', 'es un pan relleno de jamón, tocineta sofrita (también llamada panceta ahumada), uvas pasas y aceitunas verdes, por lo general, rellenas con pimiento o pimentón rojo.', '9.00'),
(55, '55', 'Pan de Maiz', 'es un pan de miga blanca y suave, con corteza dura, aunque el nombre pan de maíz se le da a cualquier tipo de pan hecho con mezcla de harina refinada de maíz.', '9.00'),
(56, '56', 'Pan de Perro Caliente', 'es un alimento en forma de bocadillo que se genera con la combinación de una salchicha del tipo salchicha de Frankfurt, o vienesa hervida, o frita, servida en un pan con forma alargada que suele acomp', '7.00'),
(57, '57', 'Pan de Hamburguesa', 'es un alimento en forma de bocadillo hecho a base de carne picada aglutinada en forma de filete, cocinado a la parrilla o a la plancha, aunque también puede freírse u hornearse. Actualmente, se pueden', '9.00'),
(58, '58', 'Pan Integral', 'también conocido como pan moreno o pan marrón, está compuesto de harina no refinada, sal, agua y levadura activa. Se denomina integral al pan que posee una gran cantidad de fibra dietética. Algunos pa', '10.00'),
(59, '59', 'Piñitas', 'En Caracas, la capital de Venezuela si algo podemos decir que abundan son las panaderías, las colonias procedentes de Europa que se instalaron en nuestro país en los tiempos de post guerra fueron marc', '5.00'),
(60, '60', 'Rosquillas', 'es un dulce frito u horneado hecho con distintos tipos de masa, desde una masa más o menos esponjosa hasta masa hojaldradas. Tiene forma toroide, es decir, forma de rosca, de ahí su nombre', '5.00');

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
(1, '1', 'Cafe Cerrero', 'Muy concentrado y sin ningún endulzante, por lo general se usa hasta el doble de la cantidad de café necesaria para hacer un “negro”, aunque se sirve la misma cantidad de líquido, es normal que se dej', '10.00'),
(2, '2', 'Cafe con Leche', 'El café de nuestra infancia, el primero que se suministra a los venezolanos como parte del desayuno. La proporción de leche suele ser más del 70% del líquido pero sin llegar a un 85%. Se puede confund', '10.00'),
(3, '3', 'Cafe Marron Claro', 'Tomando como referencia las proporciones del marrón, el marrón claro tiene más leche que café (la leche puede ser entre el 60 y 70% de proporción respecto al líquido), algunas veces puede rayar y conf', '10.00'),
(4, '4', 'Cafe Marron Oscuro', 'Tomando como referencia las proporciones del marrón, el marrón oscuro tiene más café que leche (el café puede ser entre el 70 y 80% de proporción respecto al líquido), cuando se habla de un marrón fue', '10.00'),
(5, '5', 'Cafe Marron', 'El marrón es una mezcla casi misteriosa, ya que la gente lo confunde con el café con leche, los extranjeros lo reconocerían así, pero en Venezuela la proporción de líquidos es mitad leche y mitad café', '10.00'),
(6, '6', 'Cafe Negro', 'También es conocido cariñosamente como negrito; es un grave error hacerle equivalencia con el espresso de los italianos, porque no lleva la espuma que lo caracteriza. Es fuerte, pero endulzado y gener', '10.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bebidas`
--
ALTER TABLE `tbl_bebidas`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `tbl_confiteria`
--
ALTER TABLE `tbl_confiteria`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `tbl_panaderia`
--
ALTER TABLE `tbl_panaderia`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bebidas`
--
ALTER TABLE `tbl_bebidas`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `tbl_confiteria`
--
ALTER TABLE `tbl_confiteria`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tbl_panaderia`
--
ALTER TABLE `tbl_panaderia`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
