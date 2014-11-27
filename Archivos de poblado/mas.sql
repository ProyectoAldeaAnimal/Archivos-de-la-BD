-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2014 a las 21:31:20
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
-- Estructura de tabla para la tabla `mas`
--

CREATE TABLE IF NOT EXISTS `mas` (
  `ID_MAS` int(11) NOT NULL COMMENT 'Identificador ?nico para la mascota.',
  `ID_TIPO_MAS` int(11) NOT NULL COMMENT 'Identificador ?nico para el tipo de mascota.',
  `RUT_CLI` varchar(20) DEFAULT NULL COMMENT 'Rol ?nico tributario que identifica el cliente.',
  `NOMBRE_MAS` varchar(12) NOT NULL COMMENT 'Nombre  por el cual el due?o se refiere a su mascota.',
  `RAZA_MAS` varchar(28) NOT NULL COMMENT 'Raza de la mascota, pueder Mestizo o Quiltro.',
  `FECHA_NACIMIENTO` date NOT NULL COMMENT 'Fecha en la cual la mascota naci?, de desconocer dicha fecha, puede ser un aproximado.',
  `SEXO` char(1) NOT NULL COMMENT 'Es el g?nero de la mascota. \r\n            Puede ser ''M'' para macho y ''H'' para hembra.',
  `COLOR` varchar(28) NOT NULL COMMENT 'Color dominante en la mascota, puede ser un mezcla.',
  `CARACTERISTICA` varchar(120) DEFAULT NULL COMMENT 'Se refiere a cualquier caracter?stica extra que el veterinario quiere aportar al ingresar la mascota al sistema, por ejemplo : si le falta alguna pata, caracter, cola cortada, etc.',
  `FECHA_DEFUNCION` date DEFAULT NULL COMMENT 'Indica la fecha en la cual la mascota muri',
  PRIMARY KEY (`ID_MAS`),
  KEY `FK_ES` (`ID_TIPO_MAS`),
  KEY `FK_TIENE2` (`RUT_CLI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad que representa una mascota dentro del sistema, esta ';

--
-- Volcado de datos para la tabla `mas`
--

INSERT INTO `mas` (`ID_MAS`, `ID_TIPO_MAS`, `RUT_CLI`, `NOMBRE_MAS`, `RAZA_MAS`, `FECHA_NACIMIENTO`, `SEXO`, `COLOR`, `CARACTERISTICA`, `FECHA_DEFUNCION`) VALUES
(0, 1, '10.728.565-2', 'Puppy', 'Pug', '2014-11-16', 'M', 'Blanco', 'Cicatriz en el ojo', '2014-11-16');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mas`
--
ALTER TABLE `mas`
  ADD CONSTRAINT `FK_ES` FOREIGN KEY (`ID_TIPO_MAS`) REFERENCES `tipo_mas` (`ID_TIPO_MAS`),
  ADD CONSTRAINT `FK_TIENE2` FOREIGN KEY (`RUT_CLI`) REFERENCES `cli` (`RUT_CLI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
