-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql8
-- Generation Time: Dec 04, 2019 at 08:51 PM
-- Server version: 8.0.18
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ej4-1-jmmh`
--

-- --------------------------------------------------------

--
-- Table structure for table `adquisicion`
--

CREATE TABLE `adquisicion` (
  `ref` int(11) NOT NULL,
  `nif` varchar(9) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `adquisicion`
--

INSERT INTO `adquisicion` (`ref`, `nif`, `fecha`) VALUES
(2, '11111111A', '2018-05-10 00:00:00'),
(1, '22222222B', '2018-06-02 00:00:00'),
(4, '33333333C', '2018-05-12 00:00:00'),
(4, '44444444D', '2018-05-12 00:00:00'),
(3, '55555555E', '2018-03-27 00:00:00'),
(1, '66666666F', '2018-06-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `cod_departamento` varchar(3) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`cod_departamento`, `descripcion`) VALUES
('DEC', 'Decoración'),
('MEN', 'Menaje'),
('PEQ', 'Pequeño electroméstico');

-- --------------------------------------------------------

--
-- Table structure for table `invitado`
--

CREATE TABLE `invitado` (
  `nif` varchar(9) NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `provincia` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Jaén'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `invitado`
--

INSERT INTO `invitado` (`nif`, `nombre`, `provincia`) VALUES
('11111111A', 'Mariano', 'Sevilla'),
('22222222B', 'Raúl', 'Málaga'),
('33333333C', 'Rocío', 'Jaén'),
('44444444D', 'Benjamín', 'Córdoba'),
('55555555E', 'Carlos', 'Almeria'),
('66666666F', 'Manolo', 'Granada');

-- --------------------------------------------------------

--
-- Table structure for table `regalo`
--

CREATE TABLE `regalo` (
  `ref` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `cod_departamento` varchar(3) NOT NULL,
  `precio` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `regalo`
--

INSERT INTO `regalo` (`ref`, `descripcion`, `cod_departamento`, `precio`) VALUES
(1, 'Lámpara', 'DEC', 300.00),
(2, 'Batidora', 'PEQ', 60.00),
(3, 'Cafetera', 'PEQ', 100.00),
(4, 'Vajilla', 'MEN', 450.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adquisicion`
--
ALTER TABLE `adquisicion`
  ADD PRIMARY KEY (`ref`,`nif`,`fecha`),
  ADD KEY `nif` (`nif`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`cod_departamento`);

--
-- Indexes for table `invitado`
--
ALTER TABLE `invitado`
  ADD PRIMARY KEY (`nif`);

--
-- Indexes for table `regalo`
--
ALTER TABLE `regalo`
  ADD PRIMARY KEY (`ref`),
  ADD KEY `cod_departamento` (`cod_departamento`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adquisicion`
--
ALTER TABLE `adquisicion`
  ADD CONSTRAINT `adquisicion_ibfk_1` FOREIGN KEY (`ref`) REFERENCES `regalo` (`ref`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adquisicion_ibfk_2` FOREIGN KEY (`nif`) REFERENCES `invitado` (`nif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regalo`
--
ALTER TABLE `regalo`
  ADD CONSTRAINT `regalo_ibfk_1` FOREIGN KEY (`cod_departamento`) REFERENCES `departamento` (`cod_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
