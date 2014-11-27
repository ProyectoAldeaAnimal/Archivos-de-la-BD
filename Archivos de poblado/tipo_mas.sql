-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2014 a las 21:31:08
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
-- Estructura de tabla para la tabla `tipo_mas`
--

CREATE TABLE IF NOT EXISTS `tipo_mas` (
  `ID_TIPO_MAS` int(11) NOT NULL COMMENT 'Identificador ?nico para el tipo de mascota.',
  `ESPECIE` varchar(12) NOT NULL COMMENT 'Es la especie del tipo  de mascota que se quiere definir, Por ejemplo: Perro.',
  `CLASE` varchar(12) NOT NULL COMMENT 'Se refiere a la clase de la especie de tipo de mascota. Por ejemplo si se defini? que la especie del tipo de mascota es ''Perro'' , la clase ser?a ''Canino''.',
  PRIMARY KEY (`ID_TIPO_MAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad que posee la informaci?n de los tipos de mascota reg';

--
-- Volcado de datos para la tabla `tipo_mas`
--

INSERT INTO `tipo_mas` (`ID_TIPO_MAS`, `ESPECIE`, `CLASE`) VALUES
(1, 'Canino', 'Perro'),
(2, 'Felino', 'Gato');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
