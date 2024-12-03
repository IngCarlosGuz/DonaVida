-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2024 a las 09:04:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointment`
--

CREATE TABLE `appointment` (
  `codcit` int(11) NOT NULL,
  `dates` date NOT NULL,
  `hour` time NOT NULL,
  `codpaci` int(11) NOT NULL,
  `coddoc` int(11) NOT NULL,
  `codespe` int(11) DEFAULT NULL,
  `estado` char(1) NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appointment`
--

INSERT INTO `appointment` (`codcit`, `dates`, `hour`, `codpaci`, `coddoc`, `codespe`, `estado`, `fecha_create`) VALUES
(12, '2024-11-20', '03:15:00', 8, 8, NULL, '1', '2024-11-28 05:57:55'),
(20, '2024-11-21', '04:35:00', 7, 8, NULL, '0', '2024-11-20 10:33:20'),
(21, '2024-11-22', '04:35:00', 1, 8, NULL, '0', '2024-11-20 10:33:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clinicas`
--

CREATE TABLE `clinicas` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `domicilio` varchar(500) DEFAULT NULL,
  `ubicacion` varchar(500) DEFAULT NULL,
  `proximidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clinicas`
--

INSERT INTO `clinicas` (`codigo`, `nombre`, `domicilio`, `ubicacion`, `proximidad`) VALUES
(0, 'Donante', NULL, NULL, NULL),
(1, 'IMSS T-1', 'Blvd. Adolfo López Mateos S/N, Colonia Los Paraísos', 'https://maps.app.goo.gl/MAsbowg3gcTKMpPJ6', 10),
(2, 'IMSS T-58', 'De Rancheria, Blvd. Juan Alonso de Torres Pte. 2125, San Miguel', 'https://maps.app.goo.gl/d88Yu4XgdGS6kEwt5', 8),
(3, 'Hospital Los Aangeles', 'Av Cerro Gordo, Lomas del Campestre, 37150', 'https://maps.app.goo.gl/Gq8LiPdRsn3kRmpRA', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `codpaci` int(11) NOT NULL,
  `dnipa` varchar(50) NOT NULL,
  `nombrep` varchar(50) NOT NULL,
  `apellidop` varchar(50) NOT NULL,
  `seguro` char(10) DEFAULT NULL,
  `tele` char(9) NOT NULL,
  `sexo` char(15) NOT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `cargo` char(1) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipo_sangre` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`codpaci`, `dnipa`, `nombrep`, `apellidop`, `seguro`, `tele`, `sexo`, `usuario`, `clave`, `cargo`, `estado`, `fecha_create`, `tipo_sangre`, `edad`) VALUES
(1, '75745848', 'Manuel', 'Ramirez', 'Si', '47762', 'Masculino', 'manu', 'b0baee9d279d34fa1dfd71aadb908c3f', '1', '1', '2024-11-20 08:48:00', 'O+', 40),
(6, 'AJNBD154', 'Alejandra', 'Ramirez', '', '477480778', 'Masculino', 'alejandra', '827ccb0eea8a706c4c34a16891f84e7b', '0', '1', '2024-11-13 09:12:01', 'A+', NULL),
(7, 'ASN546', 'Luis', 'Ponce', '', '4845151', 'Masculino', 'ponce', '827ccb0eea8a706c4c34a16891f84e7b', '2', '1', '2024-11-20 09:26:26', 'O+', 30),
(8, '15151', 'Armando', 'Arellano', '', '47785214', 'Masculino', 'armando', '827ccb0eea8a706c4c34a16891f84e7b', '2', '1', '2024-11-20 09:26:27', 'O+', 29),
(9, 'EHKMSLKD', 'Rafa', 'Ponce', NULL, '484515145', 'Masculino', NULL, NULL, '1', '1', '2024-11-20 05:40:17', 'AB+', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `coddoc` int(11) NOT NULL,
  `dnidoc` char(8) NOT NULL,
  `nomdoc` varchar(50) NOT NULL,
  `apedoc` varchar(50) NOT NULL,
  `codespe` int(11) DEFAULT NULL,
  `sexo` char(15) NOT NULL,
  `telefo` char(9) NOT NULL,
  `fechanaci` date DEFAULT NULL,
  `correo` varchar(50) NOT NULL,
  `naciona` varchar(35) DEFAULT NULL,
  `estado` char(15) NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipo_sangre` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` varchar(250) DEFAULT NULL,
  `cargo` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`coddoc`, `dnidoc`, `nomdoc`, `apedoc`, `codespe`, `sexo`, `telefo`, `fechanaci`, `correo`, `naciona`, `estado`, `fecha_create`, `tipo_sangre`, `usuario`, `clave`, `cargo`, `edad`) VALUES
(8, '146531', 'RITA', 'HERNANDEZ', NULL, 'Femenino', '475251', '2024-11-19', 'luis@luis', NULL, '1', '2024-11-20 06:43:40', 'O+', 'rita', '827ccb0eea8a706c4c34a16891f84e7b', 0, 30),
(10, 'AJNDJ15', 'jOSE', 'RAMIREZ', NULL, 'Masculino', '48451515', '2024-11-06', 'PEPE@PEPE', NULL, '1', '2024-11-28 05:35:37', 'O+', 'jose', '827ccb0eea8a706c4c34a16891f84e7b', 0, 30),
(12, 'AJNDJ188', 'Lucas', 'RAMIREZ', NULL, 'Masculino', '48451515', '2024-11-12', 'PEPE@PEPE', NULL, '1', '2024-11-28 06:40:34', 'AB+', 'lucas', '827ccb0eea8a706c4c34a16891f84e7b', 0, 30),
(18, 'AJNDJ187', 'Felipe', 'Martinez', NULL, 'Masculino', '484845151', '2007-06-28', 'felipe@felipe', NULL, '1', '2024-11-28 07:57:38', 'AB+', 'felipe', '827ccb0eea8a706c4c34a16891f84e7b', 0, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `codhor` int(11) NOT NULL,
  `nomhor` varchar(30) NOT NULL,
  `coddoc` int(11) NOT NULL,
  `estado` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `cargo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `email`, `clave`, `cargo`) VALUES
(3, 'Carlos', 'admin_58', 'carlos@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2'),
(14, 'Luis', 'admin_1', 'luis@luis', '827ccb0eea8a706c4c34a16891f84e7b', '1'),
(15, 'Jose', 'admin_angeles', 'angeles@angeles', '827ccb0eea8a706c4c34a16891f84e7b', '3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`codcit`),
  ADD KEY `codpaci` (`codpaci`,`coddoc`,`codespe`),
  ADD KEY `coddoc` (`coddoc`),
  ADD KEY `codespe` (`codespe`);

--
-- Indices de la tabla `clinicas`
--
ALTER TABLE `clinicas`
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`codpaci`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`coddoc`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`codhor`),
  ADD KEY `coddoc` (`coddoc`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointment`
--
ALTER TABLE `appointment`
  MODIFY `codcit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `codpaci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `coddoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `codhor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`codpaci`) REFERENCES `customers` (`codpaci`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`coddoc`) REFERENCES `doctor` (`coddoc`);

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`codespe`) REFERENCES `specialty` (`codespe`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`coddoc`) REFERENCES `doctor` (`coddoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
