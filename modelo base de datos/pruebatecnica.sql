-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2021 a las 00:59:17
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebatecnica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_compra`
--

CREATE TABLE `carrito_compra` (
  `US_ID` int(11) DEFAULT NULL,
  `PROD_ID` int(11) DEFAULT NULL,
  `CARCOM_COMPRA_REALIZADA` tinyint(1) DEFAULT NULL,
  `CARCOM_ENVIO_REALIZADO` tinyint(1) DEFAULT NULL,
  `CARCOM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito_compra`
--

INSERT INTO `carrito_compra` (`US_ID`, `PROD_ID`, `CARCOM_COMPRA_REALIZADA`, `CARCOM_ENVIO_REALIZADO`, `CARCOM_ID`) VALUES
(1, 1, 0, 0, 1),
(1, 2, 0, 0, 2),
(1, 3, 0, 0, 3),
(2, 1, 1, 1, 4),
(2, 2, 1, 0, 5),
(3, 1, 0, 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `PROD_ID` int(11) NOT NULL,
  `PROD_NOMBRE` varchar(25) DEFAULT NULL,
  `PROD_DESCRIPCION` varchar(25) DEFAULT NULL,
  `PROD_PRECIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`PROD_ID`, `PROD_NOMBRE`, `PROD_DESCRIPCION`, `PROD_PRECIO`) VALUES
(1, 'producto1', 'producto de prueba', 500),
(2, 'producto2', 'producto de prueba', 1000),
(3, 'producto3', 'producto de prueba', 500),
(4, 'producto4', 'producto de prueba', 500),
(5, 'producto5', 'producto de prueba', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `US_ID` int(11) NOT NULL,
  `US_NOMBRE` varchar(25) DEFAULT NULL,
  `US_APELLIDO` varchar(25) DEFAULT NULL,
  `US_CORREO` varchar(25) DEFAULT NULL,
  `US_PASSWORD` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`US_ID`, `US_NOMBRE`, `US_APELLIDO`, `US_CORREO`, `US_PASSWORD`) VALUES
(1, 'pedro', 'apellido1', 'pedro@gmail.com', '1234'),
(2, 'camilo', 'apellido2', 'camilo@gmail.com', '4321'),
(3, 'pedro', 'apellido3', 'pedro3@gmail.com', 'qwe'),
(4, 'jose', 'apellido', 'jose@gmail.com', 'qwe'),
(5, 'juan', 'apellido', 'juan@gmail.com', 'qwe'),
(6, 'daniel', 'apellido', 'daniel@gmail.com', 'qwe'),
(7, 'daniel2', 'apéllido', 'daniel1@gmail.com', 'qwe'),
(8, 'daniel4', 'apellido2', 'daniel4@gmail.com', 'qwe'),
(9, 'pamela', 'apellido', 'pamela@gmail.com', 'qwe'),
(10, 'camila', 'apellido', 'camila@gmail.com', 'qwe'),
(11, 'daniela', 'apellido', 'daniela@gmail.com', 'qwe'),
(12, 'miguel', 'apellido', 'miguwel@gmail.com', 'qwe'),
(13, 'jorge', 'apellido', 'jorge@gmail.com', 'asd'),
(14, 'jose miguel', 'apellido', 'josemiguel@gmail.com', 'asd'),
(15, 'marcelo', 'apellido', 'marcelo@gmail.com', 'asd'),
(16, 'marcela', 'apellido', 'marcela@gmail.com', 'asd'),
(17, 'andres', 'apellido', 'andres@gmail.com', 'asd'),
(18, 'andrea', 'apellido', 'andrea@gmail.com', 'zxc'),
(19, 'pablo', 'apellido', 'pablo@gmail.com', 'sdf'),
(20, 'victor', 'apellido', 'victor@gmail.com', 'sdf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito_compra`
--
ALTER TABLE `carrito_compra`
  ADD PRIMARY KEY (`CARCOM_ID`),
  ADD KEY `FK_PRODUCTO_CARRITO` (`PROD_ID`),
  ADD KEY `FK_US_CARRITO` (`US_ID`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`PROD_ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`US_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito_compra`
--
ALTER TABLE `carrito_compra`
  MODIFY `CARCOM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `PROD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `US_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito_compra`
--
ALTER TABLE `carrito_compra`
  ADD CONSTRAINT `FK_PRODUCTO_CARRITO` FOREIGN KEY (`PROD_ID`) REFERENCES `producto` (`PROD_ID`),
  ADD CONSTRAINT `FK_US_CARRITO` FOREIGN KEY (`US_ID`) REFERENCES `usuario` (`US_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
