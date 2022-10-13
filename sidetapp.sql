-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2022 a las 07:46:22
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sedetapp`
--
CREATE DATABASE IF NOT EXISTS `sedetapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sedetapp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_conocimiento_usu`
--

CREATE TABLE `area_conocimiento_usu` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `area_conocimiento_usu`
--

TRUNCATE TABLE `area_conocimiento_usu`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficios_oferta`
--

CREATE TABLE `beneficios_oferta` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `id_oferta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `beneficios_oferta`
--

TRUNCATE TABLE `beneficios_oferta`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ID` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `ciudad`
--

TRUNCATE TABLE `ciudad`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `DNI` int(11) NOT NULL,
  `nombre_usu` varchar(20) NOT NULL,
  `fechanacimiento_usu` date NOT NULL,
  `edad_usu` varchar(20) NOT NULL,
  `id_areaconocimiento_usu` int(11) NOT NULL,
  `id_habilidad_usu` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `direccion_usu` varchar(20) NOT NULL,
  `telefono_usu` varchar(20) NOT NULL,
  `disponibilidad_usu` varchar(20) NOT NULL,
  `hoja_vida_usu` varchar(20) NOT NULL,
  `calificacion_usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `empleado`
--

TRUNCATE TABLE `empleado`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleador`
--

CREATE TABLE `empleador` (
  `NIT` int(11) NOT NULL,
  `direccion_emp` varchar(20) NOT NULL,
  `telefono_emp` varchar(20) NOT NULL,
  `nombre_emp` varchar(20) NOT NULL,
  `id_razon_social` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `id_calificacion_emp` int(11) NOT NULL,
  `representante_legal_emp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `empleador`
--

TRUNCATE TABLE `empleador`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_oferta`
--

CREATE TABLE `empleado_oferta` (
  `ID` int(11) NOT NULL,
  `fk_empleado` int(11) NOT NULL,
  `fk_oferta` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `empleado_oferta`
--

TRUNCATE TABLE `empleado_oferta`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones:oferta`
--

CREATE TABLE `funciones:oferta` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `id_oferta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `funciones:oferta`
--

TRUNCATE TABLE `funciones:oferta`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades_usuario`
--

CREATE TABLE `habilidades_usuario` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `habilidades_usuario`
--

TRUNCATE TABLE `habilidades_usuario`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `ID` int(11) NOT NULL,
  `descricion_oferta` varchar(30) NOT NULL,
  `horario_oferta` varchar(20) NOT NULL,
  `sueldo_oferta` double NOT NULL,
  `id_beneficios_oferta` int(11) NOT NULL,
  `id_requisitos_oferta` int(11) NOT NULL,
  `id_funciones_oferta` int(11) NOT NULL,
  `cargo_oferta` varchar(20) NOT NULL,
  `fk_NIT_empleador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `oferta`
--

TRUNCATE TABLE `oferta`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razon_social_emp`
--

CREATE TABLE `razon_social_emp` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `id_empleador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `razon_social_emp`
--

TRUNCATE TABLE `razon_social_emp`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisitos_oferta`
--

CREATE TABLE `requisitos_oferta` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `id_oferta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tablas antes de insertar `requisitos_oferta`
--

TRUNCATE TABLE `requisitos_oferta`;
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_conocimiento_usu`
--
ALTER TABLE `area_conocimiento_usu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `beneficios_oferta`
--
ALTER TABLE `beneficios_oferta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_oferta` (`id_oferta`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `id_areaconocimiento_usu` (`id_areaconocimiento_usu`),
  ADD KEY `id_habilidad_usu` (`id_habilidad_usu`),
  ADD KEY `id_ciudad` (`id_ciudad`),
  ADD KEY `calificacion_usu` (`calificacion_usu`);

--
-- Indices de la tabla `empleador`
--
ALTER TABLE `empleador`
  ADD PRIMARY KEY (`NIT`),
  ADD KEY `id_razon_social` (`id_razon_social`),
  ADD KEY `id_ciudad` (`id_ciudad`),
  ADD KEY `id_calificacion_emp` (`id_calificacion_emp`);

--
-- Indices de la tabla `empleado_oferta`
--
ALTER TABLE `empleado_oferta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_empleado` (`fk_empleado`),
  ADD KEY `fk_oferta` (`fk_oferta`);

--
-- Indices de la tabla `funciones:oferta`
--
ALTER TABLE `funciones:oferta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_oferta` (`id_oferta`);

--
-- Indices de la tabla `habilidades_usuario`
--
ALTER TABLE `habilidades_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_beneficios_oferta` (`id_beneficios_oferta`),
  ADD KEY `id_requisitos_oferta` (`id_requisitos_oferta`),
  ADD KEY `id_funciones_oferta` (`id_funciones_oferta`),
  ADD KEY `fk_NIT_empleador` (`fk_NIT_empleador`);

--
-- Indices de la tabla `razon_social_emp`
--
ALTER TABLE `razon_social_emp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_empleador` (`id_empleador`);

--
-- Indices de la tabla `requisitos_oferta`
--
ALTER TABLE `requisitos_oferta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_oferta` (`id_oferta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area_conocimiento_usu`
--
ALTER TABLE `area_conocimiento_usu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `beneficios_oferta`
--
ALTER TABLE `beneficios_oferta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado_oferta`
--
ALTER TABLE `empleado_oferta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funciones:oferta`
--
ALTER TABLE `funciones:oferta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habilidades_usuario`
--
ALTER TABLE `habilidades_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `razon_social_emp`
--
ALTER TABLE `razon_social_emp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `requisitos_oferta`
--
ALTER TABLE `requisitos_oferta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `area_conocimiento_usu`
--
ALTER TABLE `area_conocimiento_usu`
  ADD CONSTRAINT `area_conocimiento_usu_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `beneficios_oferta`
--
ALTER TABLE `beneficios_oferta`
  ADD CONSTRAINT `beneficios_oferta_ibfk_1` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleador`
--
ALTER TABLE `empleador`
  ADD CONSTRAINT `empleador_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado_oferta`
--
ALTER TABLE `empleado_oferta`
  ADD CONSTRAINT `empleado_oferta_ibfk_1` FOREIGN KEY (`fk_empleado`) REFERENCES `empleado` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empleado_oferta_ibfk_2` FOREIGN KEY (`fk_oferta`) REFERENCES `oferta` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `funciones:oferta`
--
ALTER TABLE `funciones:oferta`
  ADD CONSTRAINT `funciones:oferta_ibfk_1` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `habilidades_usuario`
--
ALTER TABLE `habilidades_usuario`
  ADD CONSTRAINT `habilidades_usuario_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`fk_NIT_empleador`) REFERENCES `empleador` (`NIT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `razon_social_emp`
--
ALTER TABLE `razon_social_emp`
  ADD CONSTRAINT `razon_social_emp_ibfk_1` FOREIGN KEY (`id_empleador`) REFERENCES `empleador` (`NIT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `requisitos_oferta`
--
ALTER TABLE `requisitos_oferta`
  ADD CONSTRAINT `requisitos_oferta_ibfk_1` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
