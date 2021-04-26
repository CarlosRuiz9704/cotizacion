-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 06:01 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registro`
--

-- --------------------------------------------------------

--
-- Table structure for table `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre`, `id_departamento`) VALUES
(1, 'Cali', 1),
(2, 'Yumbo', 1),
(3, 'Palmira', 1),
(4, 'Medellin', 2),
(5, 'Bogota', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id` int(2) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` int(10) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cotizacion`
--

INSERT INTO `cotizacion` (`id`, `modelo`, `nombre`, `email`, `telefono`, `departamento`, `ciudad`) VALUES
(1, 'Rexton G4', '', 'carlosruiz@hotmail.com', 2147483647, 'valle del cauca', 'cali'),
(2, 'Rexton G4', '', 'carlosruiz@hotmail.com', 2147483647, 'valle del cauca', 'cali'),
(3, 'KorandoC', '', 'cruiz@hotmail.com', 2147483647, 'valle del cauca', 'cali'),
(4, 'KorandoC', '', 'cruiz@hotmail.com', 362012152, 'valle del cauca', 'cali'),
(5, 'KorandoC', 'Daniel Alberto Ruiz', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'cali'),
(6, 'KorandoC', 'Daniel Mesa', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'florida'),
(7, 'KorandoC', 'Daniel Mesa', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'florida'),
(8, 'KorandoC', 'Daniel Mesa', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'florida'),
(9, 'KorandoC', 'Daniel Mesa', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'florida'),
(10, 'KorandoC', 'Daniel Mesa', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'florida'),
(11, 'KorandoC', 'Daniel Mesa', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'florida'),
(12, 'KorandoC', 'Daniel Mesa', 'danielruiz@hotmail.com', 362012152, 'valle del cauca', 'florida');

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`) VALUES
(1, 'Valle del cauca'),
(2, 'Antioquia'),
(3, 'Bogota DC'),
(4, 'Tolima'),
(5, 'Caldas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indexes for table `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
