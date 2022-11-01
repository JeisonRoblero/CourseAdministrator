-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:33065
-- Tiempo de generación: 29-10-2022 a las 05:47:36
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `administracion_cursos_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id_actividad` int(11) NOT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `subtema` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `punteo` float DEFAULT NULL,
  `completado` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `fecha_disponible` date DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_tipo_actividad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id_actividad`, `tema`, `subtema`, `descripcion`, `punteo`, `completado`, `fecha_inicio`, `fecha_entrega`, `fecha_disponible`, `id_curso`, `id_tipo_actividad`) VALUES
(0, 'Derivadas', 'Multiplicacion', 'La derivada de una multiplicación es igual al primer factor multiplicado por la derivada del segundo más el segundo factor multiplicado por la derivada del primero.', NULL, 0, '2022-06-01', NULL, NULL, 5, 1),
(1, 'Tarea 1 - Derivadas', 'Multiplicacion de derivadas', 'Realizar los ejercicios del archivo adjunto', 2, 0, '2022-06-01', '2022-06-10', '2022-06-11', 5, 2),
(2, 'Ejercicios de Derivadas', 'Operaciones con derivadas', 'Realizar el proyecto del archivo adjunto', 15, 0, '2022-06-12', '2022-07-12', '2022-07-12', 5, 3),
(3, 'Derivadas', 'Multiplicacion', 'Realizar el examen parcial', 15, 0, '2022-07-13', '2022-07-13', '2022-07-13', 5, 4),
(4, 'Derivadas', 'Multiplicacion', 'Realizar el examen final', 20, 0, '2022-07-15', '2022-07-15', '2022-07-15', 5, 5),
(5, 'Derivadas', 'Multiplicacion', 'Realizar el examen extraordinario', 20, 0, '2022-07-17', '2022-07-17', '2022-07-17', 5, 6),
(6, 'Sesion 1', 'Analisis del contexto', 'Analisis del contexto y Tecnicas de analisis y Establecimiento de la propuesta de valor', NULL, 0, '2022-06-01', NULL, NULL, 4, 1),
(7, 'Tecnicas de analisis ', 'Tecnicas de analisis ', 'Realizar las tecnicas de analisis para poder realizar su investigacion', 2, 0, '2022-06-01', '2022-06-10', '2022-06-11', 4, 2),
(8, 'Investigacion', 'Emprendimientos de su area', 'Realizar la investigacion sobre los emprendimientos de su area', 15, 0, '2022-07-01', '2022-07-01', '2022-07-01', 4, 3),
(9, 'Modulo 1', 'Temas vistos en el modulo 1', 'Realizar el examen parcial', 15, 0, '2022-07-13', '2022-07-13', '2022-07-13', 4, 4),
(10, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen final', 20, 0, '2022-07-21', '2022-07-21', '2022-07-21', 4, 5),
(11, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-08-17', '2022-08-17', '2022-08-17', 4, 6),
(12, 'Objetos', 'Partes e un objeto', 'Declaracion definicion e implemetacion de objetos', 0, 0, '2022-06-15', '0000-00-00', '0000-00-00', 3, 1),
(13, 'Tarea 1 - Objetos', 'Objetos', 'Debe crear un objeto que represente a un carro su definicion e implementacion', 2, 0, '2022-07-03', '2022-07-12', '2022-07-13', 3, 2),
(14, 'Gestion de parqueos', 'Manejo de objetos', 'Implemetar los conocimientos aprendidos en clase sobre objetos para realizar este programa', 15, 0, '2022-07-15', '2022-07-30', '2022-07-30', 3, 3),
(15, 'Modulos 1 y 2', 'Temas vistos en los modulos', 'Realizar el examen parcial', 15, 0, '2022-08-11', '2022-08-11', '2022-08-11', 3, 4),
(16, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen final', 20, 0, '2022-08-24', '2022-08-24', '2022-08-24', 3, 5),
(17, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-09-07', '2022-09-07', '2022-09-07', 3, 6),
(18, 'Inferencia estadistica', 'Metodos de estimacion de parametros', 'Inferir significa, literalmente, extraer juicios o conclusiones a partir de ciertos supuestos, sean estos generales o particulares.', NULL, 0, '2022-06-07', NULL, NULL, 2, 1),
(19, 'Tarea 1 - Ejercicios de practica', 'Inferencia', 'Resolver los ejercicios presentados en clase', 2, 0, '2022-06-08', '2022-08-12', '2022-08-18', 2, 2),
(20, 'Proyecto 1', 'Empresa los soles', 'Se le plantea el siguiente caso sobre la Empresa los soles, resolver según lo solicitado', 15, 0, '2022-06-20', '2022-07-20', '2022-07-20', 2, 3),
(21, 'Modulos 1 ', 'Temas en el modulo', 'Realizar el examen parcial', 15, 0, '2022-08-01', '2022-08-01', '2022-08-01', 2, 4),
(22, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen final', 20, 0, '2022-08-15', '2022-08-15', '2022-08-15', 2, 5),
(23, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-09-01', '2022-09-01', '2022-09-01', 2, 6),
(24, 'Circuitos integrados', 'Tipos de circuitos integrados', 'La función de un circuito integrado es simplificar una función eléctrica, el mismo nombre nos lo dice circuito “integrado”, todo un circuito electrico dentro de uno (resistencias, transitores... etc).', 0, 0, '2022-06-10', '0000-00-00', '0000-00-00', 1, 1),
(25, 'Tarea 1 - Simular Circuito', 'Circuitos integrados', 'Debe simular el siguiente grafico de circuito en Tinkercard', 2, 0, '2022-07-01', '2022-07-22', '2022-07-25', 1, 2),
(26, 'Carro seguidor de linea negra', 'Circuitos integrados', 'Debe realizar un carro seguidor de linea negra usando electronica digital y analogica', 15, 0, '2022-08-01', '2022-08-30', '2022-08-30', 1, 3),
(27, 'Modulos 1 y 2', 'Temas en los modulos', 'Realizar el examen parcial', 15, 0, '2022-09-20', '2022-09-20', '2022-09-20', 1, 4),
(28, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen final', 20, 0, '2022-10-15', '2022-10-15', '2022-10-15', 1, 5),
(29, 'Aprendido en clase', 'Todos los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-10-25', '2022-10-25', '2022-10-25', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catedratico`
--

CREATE TABLE `catedratico` (
  `id_catedratico` int(11) NOT NULL,
  `nombre` varchar(75) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contrasenia` varchar(30) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `catedratico`
--

INSERT INTO `catedratico` (`id_catedratico`, `nombre`, `correo`, `contrasenia`, `telefono`) VALUES
(1, 'Juan Argueta', 'JuanArgueta@gmail.com', '123', 12542232),
(2, 'Paulo Silva', 'PauloSilva@gmail.com', 'ABC', 12125487),
(3, 'Danilo Escobar', 'DaniloEscobar@gmail.com', '321', 35452144);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nombre` varchar(75) DEFAULT NULL,
  `creditos` int(11) DEFAULT NULL,
  `seccion` char(1) DEFAULT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `nombre`, `creditos`, `seccion`, `imagen`) VALUES
(1, 'Electronica', 45, 'A', 'https://becas-mexico.mx/wp-content/uploads/2018/11/becas-mexico-2018-estudia-una-ingenieria-en-electronica.jpg'),
(2, 'Estadistica', 30, 'A', 'https://concepto.de/wp-content/uploads/2018/08/Estadistica-inferencial-min-e1533841684477.jpg'),
(3, 'Programacion II', 35, 'B', 'https://concepto.de/wp-content/uploads/2018/09/lenguaje-de-programaci?n-e1537466880796-800x400.jpg'),
(4, 'Emprendedores de negocio', 35, 'A', 'https://efiempresa.com/wp-content/uploads/2018/03/plan-de-negocios-para-emprendedores.jpg'),
(5, 'Calculo I', 25, 'B', 'https://conceptodefinicion.de/wp-content/uploads/2020/05/calculo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_catedratico`
--

CREATE TABLE `curso_catedratico` (
  `id_curso_catedratico` int(11) NOT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_catedratico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso_catedratico`
--

INSERT INTO `curso_catedratico` (`id_curso_catedratico`, `id_curso`, `id_catedratico`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2),
(4, 4, 1),
(5, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_actividad`
--

CREATE TABLE `tipo_actividad` (
  `id_tipo_actividad` int(11) NOT NULL,
  `nombre_tipo` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_actividad`
--

INSERT INTO `tipo_actividad` (`id_tipo_actividad`, `nombre_tipo`) VALUES
(1, 'Clase'),
(2, 'Tarea'),
(3, 'Proyecto'),
(4, 'Examen Parcial'),
(5, 'Examen Final'),
(6, 'Examen extraordinario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id_actividad`),
  ADD KEY `id_tipo_actividad` (`id_tipo_actividad`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `catedratico`
--
ALTER TABLE `catedratico`
  ADD PRIMARY KEY (`id_catedratico`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `curso_catedratico`
--
ALTER TABLE `curso_catedratico`
  ADD PRIMARY KEY (`id_curso_catedratico`),
  ADD KEY `id_catedratico` (`id_catedratico`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `tipo_actividad`
--
ALTER TABLE `tipo_actividad`
  ADD PRIMARY KEY (`id_tipo_actividad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`id_tipo_actividad`) REFERENCES `tipo_actividad` (`id_tipo_actividad`),
  ADD CONSTRAINT `actividad_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `curso_catedratico`
--
ALTER TABLE `curso_catedratico`
  ADD CONSTRAINT `curso_catedratico_ibfk_1` FOREIGN KEY (`id_catedratico`) REFERENCES `catedratico` (`id_catedratico`),
  ADD CONSTRAINT `curso_catedratico_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
