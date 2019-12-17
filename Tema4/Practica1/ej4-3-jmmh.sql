-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql8
-- Tiempo de generación: 14-12-2019 a las 01:01:23
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
-- Base de datos: `ej4-3-jmmh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `dni` varchar(10) NOT NULL,
  `n_segsocial` varchar(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `nif_empresa` varchar(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(10) NOT NULL,
  `responsale_legal` varchar(20) DEFAULT NULL,
  `sector` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fct`
--

CREATE TABLE `fct` (
  `dni_alumno` varchar(10) NOT NULL,
  `nif_empresa` varchar(10) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `num_horas` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `unique` (`n_segsocial`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`nif_empresa`);

--
-- Indices de la tabla `fct`
--
ALTER TABLE `fct`
  ADD KEY `dni_alumno` (`dni_alumno`),
  ADD KEY `nif_empresa` (`nif_empresa`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fct`
--
ALTER TABLE `fct`
  ADD CONSTRAINT `fct_ibfk_1` FOREIGN KEY (`dni_alumno`) REFERENCES `alumnos` (`dni`),
  ADD CONSTRAINT `fct_ibfk_2` FOREIGN KEY (`nif_empresa`) REFERENCES `empresas` (`nif_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
