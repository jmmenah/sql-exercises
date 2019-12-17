-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql8
-- Tiempo de generación: 14-12-2019 a las 00:49:27
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ej4-2-jmmh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `referencia` varchar(10) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `genero` enum('drama','accion','comedia','suspense','terror') DEFAULT NULL,
  `ano_estreno` date DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  `nacionalidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `prestamos` date NOT NULL,
  `importe` float NOT NULL,
  `cod_socio` int(10) NOT NULL,
  `referencia_pelicula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `cod_socio` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`referencia`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD KEY `referencia_pelicula` (`referencia_pelicula`),
  ADD KEY `cod_socio` (`cod_socio`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`cod_socio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`referencia_pelicula`) REFERENCES `pelicula` (`referencia`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`referencia_pelicula`) REFERENCES `pelicula` (`referencia`),
  ADD CONSTRAINT `prestamos_ibfk_3` FOREIGN KEY (`cod_socio`) REFERENCES `socios` (`cod_socio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
