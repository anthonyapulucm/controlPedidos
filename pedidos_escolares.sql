-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2023 a las 19:16:15
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedidos_escolares`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `id_asignacion` int(11) NOT NULL,
  `carnet` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `id_jornada` int(11) NOT NULL,
  `ciclo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `nit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_completo`, `direccion`, `telefono`, `correo`, `nit`) VALUES
(2023001, 'Anthony Alexander Puluc Mejia', 'Mixco', 38877930, 'aapm.live@gmail.com', '99382199'),
(2023002, 'Walter Ruiz', 'Guatemala', 38597740, 'walter.14@gmail.com', '52368974');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `correlativo` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_util` int(11) DEFAULT NULL,
  `id_uniforme` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`correlativo`, `id_factura`, `id_util`, `id_uniforme`, `cantidad`, `precio_venta`) VALUES
(1, 1, 1, NULL, 1, 150),
(2, 2, NULL, 1, 1, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_tallas`
--

CREATE TABLE `detalle_tallas` (
  `correlativo` int(11) NOT NULL,
  `id_uniforme` int(11) NOT NULL,
  `talla` varchar(25) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_tallas`
--

INSERT INTO `detalle_tallas` (`correlativo`, `id_uniforme`, `talla`, `cantidad`, `precio_venta`) VALUES
(1, 1, 'XS', 100, 150),
(2, 1, 'S', 50, 125),
(3, 1, 'M', 90, 130);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `carnet` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`carnet`, `nombre`, `apellido`, `telefono`, `correo_electronico`) VALUES
(201710311, 'Anthony', 'Puluc', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `no_factura` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_asignacion` int(11) NOT NULL,
  `carnet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `no_factura`, `fecha`, `id_cliente`, `id_usuario`, `id_asignacion`, `carnet`) VALUES
(1, '1', '2023-10-11', 2023001, 1, 0, 201710311),
(2, '2', '2023-10-11', 2023002, 1, 0, 201710311);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre_grado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `id_jornada` int(11) NOT NULL,
  `nombre_jornada` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(11) NOT NULL,
  `nombre_seccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_utiles`
--

CREATE TABLE `tipos_utiles` (
  `id_tipo` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_utiles`
--

INSERT INTO `tipos_utiles` (`id_tipo`, `descripcion`) VALUES
(1, 'Libro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` tinyint(4) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `tipo_usuario`, `descripcion`) VALUES
(1, 'Administrador', 'Administrador'),
(2, 'Encargado', 'Encargado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uniformes`
--

CREATE TABLE `uniformes` (
  `id_uniforme` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `tipo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `uniformes`
--

INSERT INTO `uniformes` (`id_uniforme`, `nombre`, `tipo`) VALUES
(1, 'Pantalón', 'Diario'),
(2, 'Camisa', 'Diario'),
(3, 'Playera', 'Física');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(150) NOT NULL,
  `correo_electronico` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `tipo_usuario` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `correo_electronico`, `password`, `tipo_usuario`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin1234!', 1),
(2, 'encargado1', 'encargado1@gmail.com', 'encargado1234!', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `utiles`
--

CREATE TABLE `utiles` (
  `id_util` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `precio_compra` decimal(8,2) NOT NULL,
  `precio_venta` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `utiles`
--

INSERT INTO `utiles` (`id_util`, `nombre`, `cantidad`, `id_tipo`, `precio_compra`, `precio_venta`) VALUES
(1, 'Libro Computación', 5, 1, 100.00, 150.00),
(2, 'Libro Mecanografía', 150, 1, 150.00, 200.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`id_asignacion`),
  ADD KEY `carnet` (`carnet`),
  ADD KEY `id_grado` (`id_grado`),
  ADD KEY `id_seccion` (`id_seccion`),
  ADD KEY `id_jornada` (`id_jornada`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`correlativo`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `id_uniforme_util` (`id_util`),
  ADD KEY `id_uniforme` (`id_uniforme`),
  ADD KEY `id_util` (`id_util`);

--
-- Indices de la tabla `detalle_tallas`
--
ALTER TABLE `detalle_tallas`
  ADD PRIMARY KEY (`correlativo`),
  ADD KEY `id_uniforme` (`id_uniforme`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`carnet`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `carnet` (`carnet`),
  ADD KEY `id_asignacion` (`id_asignacion`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`id_jornada`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `tipos_utiles`
--
ALTER TABLE `tipos_utiles`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `uniformes`
--
ALTER TABLE `uniformes`
  ADD PRIMARY KEY (`id_uniforme`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `tipo_usuario` (`tipo_usuario`);

--
-- Indices de la tabla `utiles`
--
ALTER TABLE `utiles`
  ADD PRIMARY KEY (`id_util`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD CONSTRAINT `asignaciones_ibfk_1` FOREIGN KEY (`carnet`) REFERENCES `estudiantes` (`carnet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignaciones_ibfk_2` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignaciones_ibfk_3` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id_seccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignaciones_ibfk_4` FOREIGN KEY (`id_jornada`) REFERENCES `jornadas` (`id_jornada`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignaciones_ibfk_5` FOREIGN KEY (`id_asignacion`) REFERENCES `facturas` (`id_asignacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`id_util`) REFERENCES `utiles` (`id_util`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_factura_ibfk_3` FOREIGN KEY (`id_uniforme`) REFERENCES `detalle_tallas` (`correlativo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_tallas`
--
ALTER TABLE `detalle_tallas`
  ADD CONSTRAINT `detalle_tallas_ibfk_1` FOREIGN KEY (`id_uniforme`) REFERENCES `uniformes` (`id_uniforme`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `utiles`
--
ALTER TABLE `utiles`
  ADD CONSTRAINT `utiles_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipos_utiles` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
