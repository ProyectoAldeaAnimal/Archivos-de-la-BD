-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2014 a las 21:30:59
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `aldeaanimal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pres`
--

CREATE TABLE IF NOT EXISTS `tipo_pres` (
  `ID_TIPO_PRES` int(11) NOT NULL,
  `NOMBRE_TIPO_PRES` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_PRES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_pres`
--

INSERT INTO `tipo_pres` (`ID_TIPO_PRES`, `NOMBRE_TIPO_PRES`) VALUES
(0, 'Cosmetica'),
(1, 'Medica'),
(2, 'Esterilizacion'),
(3, 'Vacuna'),
(4, 'Desparacitacion');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
