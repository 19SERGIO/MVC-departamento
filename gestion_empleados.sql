-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 17:17:54
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
-- Base de datos: `gestion_empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `dep_id` int(11) NOT NULL,
  `dep_nom` varchar(30) DEFAULT NULL,
  `dep_des` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`dep_id`, `dep_nom`, `dep_des`) VALUES
(1001, 'Finanzas', 'Administra los aspectos financieros de la empresa'),
(1002, 'Marketing', 'Diseña y ejecuta estrategias de marketing para promocionar los productos a los clientes'),
(1003, 'Ventas', 'Se encarga de gestionar y cerrar acuerdos comerciales con los clientess'),
(1004, 'Operaciones', 'Supervisa las operaciones diarias de la empresa'),
(1005, 'Desarrollo de Productos', 'Se dedica a la investigación, el diseño y el desarrollo de nuevos productos'),
(1006, 'Servicio al Cliente', 'Brinda asistencia y soporte a los clientes, '),
(1007, 'Tecnología de la Información', 'Gestiona los sistemas informáticos, la infraestructura tecnológica y el soporte técnico'),
(1008, 'Logística', 'Se encarga de la gestión de inventario, el transporte y la distribución'),
(1009, 'Calidad', 'Establece y garantiza el cumplimiento de los estándares de calidad en los productos'),
(1010, 'Legal', 'Proporciona asesoría legal a la empresa en asuntos relacionados con contratos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `emp_id` int(11) NOT NULL,
  `emp_nom` varchar(25) DEFAULT NULL,
  `emp_ape` varchar(25) DEFAULT NULL,
  `emp_gen` varchar(2) DEFAULT NULL,
  `emp_dir` varchar(20) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `pue_id` int(11) DEFAULT NULL,
  `emp_email` varchar(30) DEFAULT NULL,
  `emp_tel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`emp_id`, `emp_nom`, `emp_ape`, `emp_gen`, `emp_dir`, `dep_id`, `pue_id`, `emp_email`, `emp_tel`) VALUES
(1, 'Juan', 'Pérez', 'M', 'Calle 123', 1008, 201, 'juan.perez@taller-examen.com', 1234567890),
(2, 'María', 'López', 'F', 'Avenida 456', 1004, 202, 'maria.lopez@taller-examen.com', 2147483647),
(3, 'Carlos', 'García', 'M', 'Carrera 789', 1002, 203, 'carlos.garcia@taller-examen.co', 2147483647),
(4, 'Laura', 'Martínez', 'F', 'Avenida 012', 1004, 204, 'laura.martinez@taller-examen.c', 2147483647),
(5, 'Pedro', 'Rodríguez', 'M', 'Calle 345', 1010, 204, 'pedro.rodriguez@taller-examen.', 2147483647),
(6, 'Ana', 'Sánchez', 'F', 'Carrera 678', 1001, 203, 'ana.sanchez@taller-examen.com', 2147483647),
(7, 'Diego', 'Hernández', 'M', 'Avenida 901', 1002, 203, 'diego.hernandez@taller-examen.', 2147483647),
(8, 'Sofía', 'Gómez', 'F', 'Calle 234', 1003, 201, 'sofia.gomez@taller-examen.com', 2147483647),
(9, 'Miguel', 'Torres', 'M', 'Carrera 567', 1004, 201, 'miguel.torres@taller-examen.co', 123456789),
(10, 'Isabella', 'Rojas', 'F', 'Avenida 890', 1005, 202, 'isabella.rojas@taller-examen.c', 2147483647),
(11, 'Andrés', 'Vargas', 'M', 'Calle 567', 1006, 203, 'andres.vargas@taller-examen.co', 2147483647),
(12, 'Valentina', 'Gutiérrez', 'F', 'Carrera 123', 1007, 203, 'valentina.gutierrez@taller-exa', 2147483647),
(13, 'Javier', 'Ramírez', 'M', 'Avenida 678', 1008, 203, 'javier.ramirez@taller-examen.c', 2147483647),
(14, 'Camila', 'Navarro', 'F', 'Calle 901', 1009, 203, 'camila.navarro@taller-examen.c', 2147483647),
(15, 'Daniel', 'Luna', 'M', 'Carrera 234', 1010, 203, 'daniel.luna@taller-examen.com', 2147483647),
(16, 'Juan', 'González', 'M', 'Calle 123', 1002, 203, 'juan.gonzalez@taller-examen.co', 1234567890),
(17, 'María', 'López', 'F', 'Avenida 456', 1003, 203, 'maria.lopez@taller-examen.com', 2147483647),
(18, 'Pedro', 'Martínez', 'M', 'Carrera 789', 1003, 202, 'pedro.martinez@taller-examen.c', 2147483647),
(19, 'Pedro', 'González', 'M', 'Calle 123', 1010, 202, 'gonzalez@taller-examen.com', 1474567890),
(20, 'Sofia', 'López', 'F', 'Avenida 456', 1002, 202, 'sofia.lopez@taller-examen.com', 987255555);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion_desempenio`
--

CREATE TABLE `evaluacion_desempenio` (
  `eva_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `eva_fec` date DEFAULT NULL,
  `eva_res` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_laboral`
--

CREATE TABLE `historial_laboral` (
  `his_id` int(11) NOT NULL,
  `pue_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `his_fecIn` date DEFAULT NULL,
  `his_fecFn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `pue_id` int(11) NOT NULL,
  `pue_nombre` varchar(30) DEFAULT NULL,
  `pue_descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`pue_id`, `pue_nombre`, `pue_descripcion`) VALUES
(201, 'Director Ejecutivo', 'Es el máximo responsable de la empresa y toma decisiones estratégicas'),
(202, 'Técnico', 'Proporciona soporte técnico a los empleados de la empresa para resolver problemas relacionados con e'),
(203, 'Analista de Datos', ' Recolecta, organiza y analiza datos para proporcionar información valiosa a la empresa'),
(204, 'Gerente', 'Responsable de la planificación, ejecución y seguimiento de proyectos dentro de la empresa.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salario`
--

CREATE TABLE `salario` (
  `sal_id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `pue_id` int(11) DEFAULT NULL,
  `sal_sal` double DEFAULT NULL,
  `sal_fecIn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salario`
--

INSERT INTO `salario` (`sal_id`, `emp_id`, `pue_id`, `sal_sal`, `sal_fecIn`) VALUES
(3001, 1, 201, 2000450, '2019-05-10'),
(3002, 2, 202, 2520450, '2019-05-10'),
(3003, 3, 203, 1000450, '2019-05-10'),
(3004, 4, 204, 1550450, '2019-05-10'),
(3005, 5, 204, 920450, '2019-05-10'),
(3006, 6, 203, 3150450, '2019-05-10'),
(3007, 7, 203, 2120450, '2019-05-10'),
(3008, 8, 201, 2000440, '2019-05-10'),
(3009, 9, 201, 4010450, '2019-05-10'),
(3010, 10, 202, 1000450, '2019-05-10'),
(3011, 11, 203, 2550450, '2019-05-10'),
(3012, 12, 203, 2030450, '2019-05-10'),
(3013, 13, 203, 900450, '2019-05-10'),
(3014, 14, 203, 2111450, '2019-05-10'),
(3015, 15, 203, 1100450, '2019-05-10'),
(3016, 16, 203, 1800450, '2019-05-10'),
(3017, 17, 203, 1700450, '2019-05-10'),
(3018, 18, 202, 2600450, '2019-05-10'),
(3019, 19, 202, 2200450, '2019-05-10'),
(3020, 20, 202, 2500450, '2019-05-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `pue_id` (`pue_id`);

--
-- Indices de la tabla `evaluacion_desempenio`
--
ALTER TABLE `evaluacion_desempenio`
  ADD PRIMARY KEY (`eva_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indices de la tabla `historial_laboral`
--
ALTER TABLE `historial_laboral`
  ADD PRIMARY KEY (`his_id`),
  ADD KEY `pue_id` (`pue_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`pue_id`);

--
-- Indices de la tabla `salario`
--
ALTER TABLE `salario`
  ADD PRIMARY KEY (`sal_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `pue_id` (`pue_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `departamento` (`dep_id`),
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`pue_id`) REFERENCES `puesto` (`pue_id`);

--
-- Filtros para la tabla `evaluacion_desempenio`
--
ALTER TABLE `evaluacion_desempenio`
  ADD CONSTRAINT `evaluacion_desempenio_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `empleado` (`emp_id`);

--
-- Filtros para la tabla `historial_laboral`
--
ALTER TABLE `historial_laboral`
  ADD CONSTRAINT `historial_laboral_ibfk_1` FOREIGN KEY (`pue_id`) REFERENCES `puesto` (`pue_id`),
  ADD CONSTRAINT `historial_laboral_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `empleado` (`emp_id`);

--
-- Filtros para la tabla `salario`
--
ALTER TABLE `salario`
  ADD CONSTRAINT `salario_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `empleado` (`emp_id`),
  ADD CONSTRAINT `salario_ibfk_2` FOREIGN KEY (`pue_id`) REFERENCES `puesto` (`pue_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
