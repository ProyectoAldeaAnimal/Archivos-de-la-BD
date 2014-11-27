-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2014 a las 21:30:40
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
-- Estructura de tabla para la tabla `cli`
--

CREATE TABLE IF NOT EXISTS `cli` (
  `RUT_CLI` varchar(20) NOT NULL COMMENT 'Rol ?nico tributario que identifica el cliente.',
  `NOMBRE_CLI` varchar(12) NOT NULL COMMENT 'Nombre por el cual se referencia a cliente, y por el cual el sistema lo reconoce.',
  `APELLIDO_PCLI` varchar(12) NOT NULL COMMENT 'Apellido del padre del cliente.',
  `APELLIDO_MCLI` varchar(12) NOT NULL COMMENT 'Apellido de la madre del cliente.',
  `MAIL_CLI` varchar(40) DEFAULT NULL COMMENT 'Direcci?n e-mail por la cual se puede contactar al cliente. Muy importante para el envio de notificaciones.',
  `TEL_CLI` varchar(12) DEFAULT NULL COMMENT 'N?mero de tel?fono por el cual se puede conectar al cliente.',
  `FECHA_REGISTRO_CLI` date NOT NULL COMMENT 'Fecha en la cual el cliente fue registrado en el sistema.',
  `DIR_CLI` varchar(60) DEFAULT NULL COMMENT 'Ubicaci?n de la vivienda del cliente.',
  `HABILITADO_CLI` tinyint(1) NOT NULL COMMENT 'Indica si el ciente se encuentra habilitado para acceder a los servicios de la cl?nica.\r\n            ''H'' indica habilitado.\r\n            ''D'' indica deshabilitado.',
  `PASSWORD_CLI` varchar(50) NOT NULL,
  PRIMARY KEY (`RUT_CLI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Entidad que representa un cliente dentro del sistema, esta p';

--
-- Volcado de datos para la tabla `cli`
--

INSERT INTO `cli` (`RUT_CLI`, `NOMBRE_CLI`, `APELLIDO_PCLI`, `APELLIDO_MCLI`, `MAIL_CLI`, `TEL_CLI`, `FECHA_REGISTRO_CLI`, `DIR_CLI`, `HABILITADO_CLI`, `PASSWORD_CLI`) VALUES
('10.728.565-2', 'RUBEN', 'GUERRERO', 'ACEVEDO', 'micorreo17@yopmail.com', '93554324', '2014-11-14', 'RIQUELME 218 DP C', 0, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('12.882.268-2', 'MARIA TERESA', 'DOMIC', 'ARANGUIZ', 'micorreo13@yopmail.com', '83452352', '2014-11-14', 'ISMAEL V VERGARA 514 DP 42', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('13.660.589-5', 'CRISTIAN', 'ABARCA', 'CASTILLO', 'micorreo01@yopmail.com', '91234567', '2014-11-14', 'COMPA?IA JESUS 227 DP 3-B', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('14.158.895-8', 'FRANCISCO', 'CARCAMO', 'SOTO', 'micorreo11@yopmail.com', '82352624', '2014-11-14', 'MONEDA 3090 DPTO 102', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('14.536.496-5', 'JONATHAN', 'GOMEZ', 'GUTIERREZ', 'micorreo19@yopmail.com', '83264442', '2014-11-14', 'EYZAGUIRRE 1077', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('14.757.500-9', 'JORGE', 'ROMAN', '', 'micorreo02@yopmail.com', '81234567', '2014-11-14', 'TARAPACA 752', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('15.353.552-3', 'MARJORIE', 'HERNANDEZ', 'ZU?IGA', 'micorreo20@yopmail.com', '72452522', '2014-11-14', 'CABILDO 7219', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('15.380.217-3', 'FRANCISCO', 'MARTI', 'RAVANALES', 'micorreo05@yopmail.com', '98765432', '2014-11-14', 'BULNES 409', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('16.339.894-K', 'AARON', 'ACU?A', 'PEREZ', 'micorreo08@yopmail.com', '91233413', '2014-11-14', 'PJ DEL MERCADO 1853 V COMERCIO', 0, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('17.925.891-9', 'Daniel', 'Vargas', 'Mattheus', 'daniel.vargas@usach.cl', '231232142', '2014-11-14', 'Pasaje del Mercado 1836 Villa Comercio', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('18.209.963-5', 'MARIA', 'HERRERA', 'ABARCA', 'micorreo06@yopmail.com', '86543123', '2014-11-14', 'FRANKLIN 1330 PJE. VICU?A 2404-A', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('18.256.799-K', 'BRUNO', 'BAEZ', 'LOPEZ', 'micorreo10@yopmail.com', '73452345', '2014-11-14', 'MATURANA 477 DP 304', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('18.641.830-1', 'CAMILA', 'ROMAN', 'GARCIA', 'micorreo03@yopmail.com', '71234567', '2014-11-13', 'ESPERANZA 651 DEP 19', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('2.635.377-7', 'ERCILIA', 'HERRAZ', 'BRAVO', 'micorreo07@yopmail.com', '75341632', '2014-11-14', 'MAIPU 547 DP 300', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('21.445.964-7', 'FEI', 'GUO', '', 'micorreo18@yopmail.com', '72353437', '2014-11-14', 'RODULFO PHILLIPI 51', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('21.824.189-1', 'FANNY', 'DIAZ', 'REYES', 'micorreo12@yopmail.com', '225160550', '2014-11-14', 'COQUIMBO 1383', 0, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('21.930.126-K', 'ALEJANDRA', 'DOMINE', 'MARIA', 'micorreo14@yopmail.com', '72353544', '2014-11-14', 'BOMBERO SALAS N? 1369, DEPTO. 203', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('3.556.975-8', 'ALICIA', 'DOMINGUEZ', 'BASIEROS', 'micorreo15@yopmail.com', '82521348', '2014-11-14', 'VICTOR MANUEL 2170', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('3.593.139-2', 'JORGE', 'GUERRA', 'VASQUEZ', 'micorreo16@yopmail.com', '92355443', '2014-11-14', 'STO DOMINGO 916', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('3.791.343-K', 'MIRTA', 'BENAVIDES', 'MARTINEZ', 'micorreo04@yopmail.com', '61234567', '2014-11-11', 'BULNES 1182 BL 9 ESC 2534 DP 12', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('9.787.769-6', 'ORIETTA', 'AGUILAR', 'VILLAGRA', 'micorreo09@yopmail.com', '96545452', '2014-11-14', 'VICTORIA 1472', 1, '7c4a8d09ca3762af61e59520943dc26494f8941b');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
