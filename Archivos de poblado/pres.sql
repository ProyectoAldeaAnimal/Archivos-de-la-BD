-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2014 a las 21:30:18
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
-- Estructura de tabla para la tabla `pres`
--

CREATE TABLE IF NOT EXISTS `pres` (
  `ID_PRES` int(11) NOT NULL COMMENT 'Identificador Ñnico para el tipo de atenci',
  `ID_TIPO_PRES` int(11) NOT NULL,
  `NOMBRE_PRES` varchar(40) NOT NULL COMMENT 'Nombre de referencia por el cual se puede identificar al tipo de atenci',
  `NUMERO_BLOQUES` int(11) NOT NULL COMMENT 'NÑmero de bloques que dura la atenciÑn. Los bloques son definidos por la clÑnica, estos son de 15 min.',
  `PRECIO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PRES`),
  KEY `FK_PUEDE_SER16` (`ID_TIPO_PRES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad que posee informaciÑn general de los diferentes tipo';

--
-- Volcado de datos para la tabla `pres`
--

INSERT INTO `pres` (`ID_PRES`, `ID_TIPO_PRES`, `NOMBRE_PRES`, `NUMERO_BLOQUES`, `PRECIO`) VALUES
(1, 1, 'Consulta general', 1, 7000),
(2, 3, 'Vacuna antirrábica', 1, 12000),
(3, 3, 'Vacuna óctuple canina', 1, 8000),
(4, 3, 'Vacuna triple felina', 1, 8000),
(5, 3, 'Otra vacuna', 1, 0),
(6, 4, 'Desparasitación interna', 1, 4000),
(7, 4, 'Desparasitación externa', 1, 10000),
(8, 4, 'Desparasitación total', 1, 12000),
(9, 2, 'Esterilización canina', 4, 30000),
(10, 2, 'Esterilización felina', 4, 20000),
(11, 1, 'Corte de cola', 3, 10000),
(12, 1, 'Corte de orejas', 3, 10000),
(13, 1, 'Cirugía ambulatoria', 3, 0),
(14, 1, 'Consulta imagenologia', 2, 12000),
(15, 1, 'Consulta animales exóticos', 2, 12000),
(16, 1, 'Consulta dermatología', 2, 12000),
(17, 1, 'Consulta neurología', 2, 15000),
(18, 1, 'Consulta cardiología', 2, 15000),
(19, 1, 'Consulta odontología', 2, 12000),
(20, 1, 'Consulta oftalmología', 2, 12000),
(21, 1, 'Consulta traumatología', 2, 12000),
(22, 1, 'Consulta cirugía especializada', 2, 10000),
(23, 1, 'Consulta homeopatía', 2, 10000),
(24, 1, 'Otra consulta de especialidad', 2, 12000),
(25, 1, 'Radiografía', 2, 6000),
(26, 1, 'Ecografía', 2, 20000),
(27, 1, 'Electrocardiograma', 2, 10000),
(28, 1, 'Atención de urgencia', 3, 0),
(29, 1, 'Hospitalización', 1, 0),
(30, 1, 'Destartraje', 4, 12000),
(31, 1, 'Examen de laboratorio', 1, 0),
(32, 1, 'Cirugía especializada', 8, 0),
(33, 1, 'Administración de fármaco', 1, 0),
(34, 1, 'Flores Bach', 2, 10000),
(35, 1, 'Acupuntura', 4, 15000),
(36, 0, 'Baño sanitario', 3, 8000),
(37, 0, 'Baño estético', 3, 8000),
(38, 0, 'Corte de pelo', 3, 12000),
(39, 0, 'Corte de uñas', 1, 3000),
(40, 0, 'Limpieza de oídos', 1, 4000),
(41, 0, 'Drenaje glándulas anales', 1, 3000),
(42, 0, 'Atención peluquería completa', 9, 20000);


--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pres`
--
ALTER TABLE `pres`
  ADD CONSTRAINT `FK_PUEDE_SER16` FOREIGN KEY (`ID_TIPO_PRES`) REFERENCES `tipo_pres` (`ID_TIPO_PRES`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
