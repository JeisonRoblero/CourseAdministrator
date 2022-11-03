-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:33065
-- Tiempo de generación: 03-11-2022 a las 03:33:55
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
(0, 'Fuentes de tensión y de corriente', 'Tipos de fuentes', 'Una fuente de tensión ideal es la que nos suministra una tensión constante independientemente del valor de la intensidad que suministra', NULL, 1, '2022-06-10', NULL, NULL, 0, 0),
(1, 'Tarea - Fuentes', 'Investigacion', 'Realizar una investigacion sobre los tipos de fuentes que existen', 2, 1, '2022-06-11', '2022-06-15', '2022-06-16', 0, 1),
(2, 'Semiconductores', 'Materiales seminconductores', 'Un semiconductor es un elemento que se comporta o bien como un conductor o bien como un aislante dependiendo de diversos factores', NULL, 1, '2022-06-18', NULL, NULL, 0, 0),
(3, 'Tarea - Semiconductores', 'Investigacion', 'Realizar una tabla sobre los semiconductores mas usados en la industia', 2, 1, '2022-06-20', '2022-06-25', '2022-06-26', 0, 1),
(4, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 0, '2022-07-15', '2022-07-15', '2022-07-15', 0, 3),
(5, 'Diodos', 'Tipos de diodos', 'Un diodo es un componente electrónico de dos terminales que permite la circulación de la corriente eléctrica a través de él en un solo sentido', NULL, 0, '2022-07-21', NULL, NULL, 0, 0),
(6, 'Tarea - Diodos', 'Investigacion', 'Investigar las aplicaciones de los diodos', 4, 0, '2022-07-23', '2022-07-29', '2022-07-30', 0, 1),
(7, 'Implementacion de Diodos', 'diodos', 'Realizar el proyecto del archivo adjunto', 15, 0, '2022-08-01', '2022-08-15', '2022-08-15', 0, 2),
(8, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-08-30', '2022-08-30', '2022-08-30', 0, 4),
(9, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-09-15', '2022-09-15', '2022-09-15', 0, 5),
(10, 'Estadistica descriptiva', 'Probabilidades', 'La probabilidad es simplemente qué tan posible es que ocurra un evento determinado.', NULL, 1, '2022-01-10', NULL, NULL, 1, 0),
(11, 'Tarea - Probabilidades', 'Ejercicios de probabilidad', 'Realizar los ejercicios del archivo adjunto', 2, 1, '2022-01-11', '2022-01-15', '2022-01-16', 1, 1),
(12, 'Inferencia estadistica', 'Metodos de inferencia', 'La estadística inferencial es una parte de la estadística que comprende los métodos y procedimientos que por medio de la inducción determina propiedades de una población estadística, a partir de una parte de esta.', NULL, 1, '2022-01-18', NULL, NULL, 1, 0),
(13, 'Tarea - Inferencia', 'Ejercicios de inferencia', 'Realizar los ejercicios del archivo adjunto', 2, 1, '2022-01-20', '2022-01-25', '2022-01-26', 1, 1),
(14, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 1, '2022-02-15', '2022-02-15', '2022-02-15', 1, 3),
(15, 'Modelo de transporte', 'Ejercicios de inferencia', 'El modelo de transporte es un problema de optimización de redes donde debe determinarse como hacer llegar los productos desde los puntos de existencia hasta los puntos de demanda, minimizando los costos de envio.', NULL, 1, '2022-02-21', NULL, NULL, 1, 0),
(16, 'Tarea - Trasbordo', 'Investigacion', 'Investigar los distintos metodos de trasbordo', 4, 0, '2022-02-23', '2022-02-27', '2022-02-28', 1, 1),
(17, 'Caso de empresa', 'Trasbordo', 'Realizar el proyecto del archivo adjunto', 15, 1, '2022-03-01', '2022-03-15', '2022-03-15', 1, 2),
(18, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 1, '2022-03-30', '2022-03-30', '2022-03-30', 1, 4),
(19, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-04-15', '2022-04-15', '2022-04-15', 1, 5),
(20, 'Introduccion a la POO', 'Clases, objetos y variables', 'La programación orientada a objetos se basa en el concepto de crear un modelo del problema de destino en sus programas.', NULL, 1, '2022-07-03', NULL, NULL, 2, 0),
(21, 'Tarea - POO', 'Investigacion', 'Investigar los lenguajes de programacion orientados a objetos', 2, 1, '2022-07-06', '2022-07-10', '2022-07-13', 2, 1),
(22, 'Java web', 'JSPs', 'El software de Java Web Start permite descargar y ejecutar aplicaciones Java desde la Web', NULL, 1, '2022-07-25', NULL, NULL, 2, 0),
(23, 'Tarea - Java web', 'Java web', 'Realizar la siguiente interfaz en Java', 2, 0, '2022-08-01', '2022-08-07', '2022-08-07', 2, 1),
(24, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 0, '2022-08-25', '2022-08-25', '2022-08-25', 2, 3),
(25, 'Estructuras de datos', 'Listas enlazadas y circulares', 'Las listas enlazadas permiten inserciones y eliminación de nodos en cualquier punto de la lista en tiempo constante (suponiendo que dicho punto está previamente identificado o localizado), pero no permiten un acceso aleatorio.', NULL, 0, '2022-09-01', NULL, NULL, 2, 0),
(26, 'Tarea - Estructura de datos', 'Listas enlazadas y circulares', 'Implementar listas en la interfaz hecha en la tarea 2', 4, 0, '2022-09-10', '2022-09-27', '2022-09-30', 2, 1),
(27, 'Pagina web', 'Java web', 'Realizar lo solicitado en el siguiente documento', 15, 0, '2022-10-01', '2022-10-15', '2022-10-15', 2, 2),
(28, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-10-30', '2022-10-30', '2022-10-30', 2, 4),
(29, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-11-15', '2022-11-15', '2022-11-15', 2, 5),
(30, 'Introduccion a la POO', 'Clases, objetos y variables', 'La programación orientada a objetos se basa en el concepto de crear un modelo del problema de destino en sus programas.', NULL, 1, '2022-07-03', NULL, NULL, 3, 0),
(31, 'Tarea - POO', 'Investigacion', 'Investigar los lenguajes de programacion orientados a objetos', 2, 1, '2022-07-06', '2022-07-10', '2022-07-13', 3, 1),
(32, 'Java web', 'JSPs', 'El software de Java Web Start permite descargar y ejecutar aplicaciones Java desde la Web', NULL, 0, '2022-07-25', NULL, NULL, 3, 0),
(33, 'Tarea - Java web', 'Java web', 'Realizar la siguiente interfaz en Java', 2, 1, '2022-08-01', '2022-08-07', '2022-08-07', 3, 1),
(34, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 1, '2022-08-25', '2022-08-25', '2022-08-25', 3, 3),
(35, 'Estructuras de datos', 'Listas enlazadas y circulares', 'Las listas enlazadas permiten inserciones y eliminación de nodos en cualquier punto de la lista en tiempo constante (suponiendo que dicho punto está previamente identificado o localizado), pero no permiten un acceso aleatorio.', NULL, 0, '2022-09-01', NULL, NULL, 3, 0),
(36, 'Tarea - Estructura de datos', 'Listas enlazadas y circulares', 'Implementar listas en la interfaz hecha en la tarea 2', 4, 1, '2022-09-10', '2022-09-19', '2022-09-19', 3, 1),
(37, 'Pagina web', 'Java web', 'Realizar lo solicitado en el siguiente documento', 15, 0, '2022-09-20', '2022-10-15', '2022-10-15', 3, 2),
(38, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-10-30', '2022-10-30', '2022-10-30', 3, 4),
(39, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-11-15', '2022-11-15', '2022-11-15', 3, 5),
(40, 'Movimiento rectilineo uniforme', 'Formulas', 'En física, un movimiento es rectilíneo uniforme cuando un «objeto» viaja en una trayectoria recta a una velocidad constante, ​ dado que su aceleración es nula.', NULL, 1, '2022-02-03', NULL, NULL, 4, 0),
(41, 'Ejercicios MRU', 'MRU', 'Realizar los ejercicios propuestos en el documento', 2, 1, '2022-02-05', '2022-02-12', '2022-02-14', 4, 1),
(42, 'Movimiento circular', 'Periodo y Frecuencia', 'En cinemática, el movimiento circular es el que se basa en un eje de giro y giro constante, por lo cual la trayectoria es una circunferencia.', NULL, 1, '2022-02-18', NULL, NULL, 4, 0),
(43, 'Ejericios Movimiento Ciruclar', 'Fuerza Centripeta', 'Realizar los ejercicios propuestos en el documento', 2, 0, '2022-02-22', '2022-02-28', '2022-02-28', 4, 1),
(44, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 1, '2022-03-12', '2022-03-12', '2022-03-12', 4, 3),
(45, 'Estructura de un atomo', 'Neutrones, protones y electrones', 'El átomo es la unidad más pequeña de la materia que tiene propiedades de un elemento químico.​', NULL, 0, '2022-03-15', NULL, NULL, 4, 0),
(46, 'Maqueta de un atomo', 'Estructura de un atomo', 'Realizar una maqueta de la estructura clasica de un atomo', 4, 1, '2022-03-19', '2022-03-27', '2022-03-30', 4, 1),
(47, 'Disparador de papas', 'Caida libre y MRU', 'Realuzar un disparador de papas y calcular según su distancia y tiempo los datos solicitados en el documento', 15, 1, '2022-04-04', '2022-04-25', '2022-04-30', 4, 2),
(48, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 1, '2022-05-15', '2022-05-15', '2022-05-15', 4, 4),
(49, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 1, '2022-05-30', '2022-05-30', '2022-05-30', 4, 5),
(50, 'Derivadas', 'Operaciones con derivadas', 'En cálculo diferencial y análisis matemático, la derivada de una función es la razón de cambio instantánea con la que varía el valor de dicha función matemática, según se modifique el valor de su variable independiente.', NULL, 1, '2022-06-10', NULL, NULL, 5, 0),
(51, 'Tarea - Derivada', 'Multiplicacion Y Division', 'Realizar los ejercicios del archivo adjunto', 2, 1, '2022-06-15', '2022-06-21', '2022-06-22', 5, 1),
(52, 'Integrales', 'Operaciones con integrales', 'Básicamente, una integral es una generalización de la suma de infinitos sumandos, infinitesimalmente pequeños: una suma continua.', NULL, 0, '2022-06-29', NULL, NULL, 5, 0),
(53, 'Tarea - Integrales', 'Metodos de integracion', 'Realizar los ejercicios del archivo adjunto', 2, 0, '2022-07-05', '2022-07-15', '2022-07-16', 5, 1),
(54, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 0, '2022-07-30', '2022-07-30', '2022-07-30', 5, 3),
(55, 'Calculo vectorial', 'Operaciones', 'El cálculo vectorial, análisis vectorial o cálculo multivariable es un campo de las matemáticas referidas al análisis real multivariable de vectores en 2 o más dimensiones.', NULL, 0, '2022-08-08', NULL, NULL, 5, 0),
(56, 'Tarea - vectorial', 'Investigacion', 'Realizar los ejercicios del archivo adjunto', 4, 0, '2022-08-15', '2022-08-20', '2022-08-21', 5, 1),
(57, 'Derivadas', 'Multiplicacion', 'Realizar el proyecto del archivo adjunto', 15, 0, '2022-08-27', '2022-09-15', '2022-09-15', 5, 2),
(58, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-09-20', '2022-09-20', '2022-09-20', 5, 4),
(59, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-09-28', '2022-09-28', '2022-09-28', 5, 5),
(60, 'Estructura de una base de datos', 'Llaves foraneas y primarias', 'Una base de datos es una herramienta para recopilar y organizar información. Las bases de datos pueden almacenar información sobre personas, productos, pedidos u otras cosas.', NULL, 1, '2022-06-15', NULL, NULL, 6, 0),
(61, 'Investigacion', 'Estructura de una base de datos', 'Realizar una investigacion sobre los elementos de una base de datos relacional', 2, 1, '2022-06-16', '2022-06-24', '2022-06-27', 6, 1),
(62, 'Diagramas ER', 'Implementacion de un diagrama', 'Un modelo entidad-relación es una herramienta para el modelo de datos, la cual facilita la representación de entidades de una base de datos.​', NULL, 1, '2022-07-01', NULL, NULL, 6, 0),
(63, 'Tarea - Diagrama ER', 'Diagramas ER', 'Realizar un diagrama ER de la inscripcion a cursos de de un alumno', 2, 1, '2022-07-05', '2022-07-18', '2022-07-20', 6, 1),
(64, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 1, '2022-08-05', '2022-08-05', '2022-08-05', 6, 3),
(65, 'Funciones de un SGBD', 'Triggers y Secuencias', 'Un desencadenador es un tipo especial de procedimiento almacenado que se ejecuta automáticamente cuando se produce un evento en el servidor de bases de datos.', NULL, 1, '2022-08-09', NULL, NULL, 6, 0),
(66, 'Aplicación de triggers', 'Triggers y Secuencias', 'Realizar 2 triggers sobre la base de datos propuesta en clase', 4, 0, '2022-08-12', '2022-08-20', '2022-08-22', 6, 1),
(67, 'Conectar una BD con un programa', 'Conexiones a base de datos', 'Realizar la conexión de un programa hecho por ustedes a una base de datos', 15, 0, '2022-09-01', '2022-09-15', '2022-09-15', 6, 2),
(68, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-09-30', '2022-09-30', '2022-09-30', 6, 4),
(69, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-10-15', '2022-10-15', '2022-10-15', 6, 5),
(70, 'Estructura de una base de datos', 'Llaves foraneas y primarias', 'Una base de datos es una herramienta para recopilar y organizar información. Las bases de datos pueden almacenar información sobre personas, productos, pedidos u otras cosas.', NULL, 1, '2022-06-15', NULL, NULL, 7, 0),
(71, 'Investigacion', 'Estructura de una base de datos', 'Realizar una investigacion sobre los elementos de una base de datos relacional', 5, 1, '2022-06-16', '2022-06-24', '2022-06-27', 7, 1),
(72, 'Diagramas ER', 'Implementacion de un diagrama', 'Un modelo entidad-relación es una herramienta para el modelo de datos, la cual facilita la representación de entidades de una base de datos.​', NULL, 1, '2022-06-30', NULL, NULL, 7, 0),
(73, 'Tarea - Diagrama ER', 'Diagramas ER', 'Realizar un diagrama ER de la inscripcion a cursos de de un alumno', 5, 0, '2022-07-05', '2022-07-18', '2022-07-20', 7, 1),
(74, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 1, '2022-08-05', '2022-08-05', '2022-08-05', 7, 3),
(75, 'Funciones de un SGBD', 'Triggers y Secuencias', 'Un desencadenador es un tipo especial de procedimiento almacenado que se ejecuta automáticamente cuando se produce un evento en el servidor de bases de datos.', NULL, 1, '2022-08-09', NULL, NULL, 7, 0),
(76, 'Aplicación de triggers', 'Triggers y Secuencias', 'Realizar 2 triggers sobre la base de datos propuesta en clase', 5, 0, '2022-08-12', '2022-08-20', '2022-08-22', 7, 1),
(77, 'Conectar una BD con un programa', 'Conexiones a base de datos', 'Realizar la conexión de un programa hecho por ustedes a una base de datos', 15, 0, '2022-09-01', '2022-09-15', '2022-09-15', 7, 2),
(78, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-09-30', '2022-09-30', '2022-09-30', 7, 4),
(79, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-10-15', '2022-10-15', '2022-10-15', 7, 5),
(80, 'Expresiones regulares', 'Ejemplos de expresiones', 'En cómputo teórico y teoría de lenguajes formales, una expresión regular, o expresión racional, ​​ también son conocidas como regex o regexp, ​ por su contracción de las palabras inglesas regular expression, es una secuencia de caracteres que conforma un patrón de búsqueda.', NULL, 1, '2022-06-07', NULL, NULL, 8, 0),
(81, 'Ejercicios de expresiones regulares', 'Expresiones regulares', 'Realizar los ejercicios del archivo adjunto', 3, 1, '2022-06-10', '2022-06-15', '2022-06-16', 8, 1),
(82, 'Automatas finitos no deterministas', 'Implementacion de los AFND', 'Es un grafo que sirve para representar la formacion de una expresion regular', NULL, 1, '2022-06-20', NULL, NULL, 8, 0),
(83, 'Tarea - AFND', 'Automatas finitos no deterministas', 'Realizar los AFND propuestos en clase', 3, 1, '2022-06-24', '2022-07-05', '2022-07-06', 8, 1),
(84, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 0, '2022-07-26', '2022-07-26', '2022-07-26', 8, 3),
(85, 'Maquina de turing', 'Partes de una maquina de turing', 'Una máquina de Turing es un dispositivo que manipula símbolos sobre una tira de cinta de acuerdo con una tabla de reglas.', NULL, 0, '2022-08-05', NULL, NULL, 8, 0),
(86, 'Investigacion', 'Maquinas de turing', 'Investigar sobre 3 maquinas de turing y su implementacion', 4, 0, '2022-08-10', '2022-08-24', '2022-08-25', 8, 1),
(87, 'Implementacion de MT', 'Maquinas de turing', 'Realizar un programa que reciba un txt y según este simule una maquina de turing', 15, 0, '2022-09-01', '2022-09-24', '2022-09-24', 8, 2),
(88, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-10-01', '2022-10-01', '2022-10-01', 8, 4),
(89, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-10-15', '2022-10-15', '2022-10-15', 8, 5),
(90, 'Gestion de procesos', 'Tipos de procesos', 'Un proceso informático consiste en la realización de una serie de tareas e instrucciones que conllevan a un resultado final', NULL, 1, '2022-07-02', NULL, NULL, 9, 0),
(91, 'Investigacion', 'Gestion de procesos', 'Investigue las metodologias de la gestion de procesos', 2, 1, '2022-07-05', '2022-07-12', '2022-07-15', 9, 1),
(92, 'Concurrencia', 'Algoritmos de gestion de concurrencia', 'En informática, la concurrencia es la capacidad de diferentes partes o unidades de un programa, algoritmo o problema para ejecutarse fuera de orden o en orden parcial, sin afectar el resultado final.', NULL, 1, '2022-07-22', NULL, NULL, 9, 0),
(93, 'Ejercicios de Algoritmo del banquero', 'Algoritmo del banquero', 'Establecer si los siguientes procesos terminan con éxito o no', 4, 1, '2022-08-01', '2022-08-09', '2022-08-10', 9, 1),
(94, 'Modulo 1', 'Temas vistos en modulo 1', 'Realizar el examen parcial', 15, 0, '2022-08-20', '2022-08-20', '2022-08-20', 9, 3),
(95, 'Interbloqueos', 'Algoritmos de gestion de interbloqueos', 'También conocido como bloqueo mutuo o deadlock. Es una espera circular permanente de dos o más procesos.', NULL, 0, '2022-08-25', NULL, NULL, 9, 0),
(96, 'Investigacion', 'Interbloqueos', 'Investigar sobre los algoritmo de trata de interbloqueos', 4, 0, '2022-09-03', '2022-09-12', '2022-09-12', 9, 1),
(97, 'Algoritmo del barbero dormilon en C', 'Algoritmo del barbero dormilon', 'Realizar un programa en C que simule el algoritmo del baerbero dormilon', 15, 0, '2022-09-15', '2022-09-30', '2022-09-30', 9, 2),
(98, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen final', 20, 0, '2022-10-15', '2022-10-15', '2022-10-15', 9, 4),
(99, 'Todos los modulos', 'Temas aprendidos en los modulos', 'Realizar el examen extraordinario', 20, 0, '2022-11-01', '2022-11-01', '2022-11-01', 9, 5);

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
(0, 'Juan Argueta', 'JuanArgueta@gmail.com', '123', 12542232),
(1, 'Paulo Silva', 'PauloSilva@gmail.com', '456', 12125487),
(2, 'Danilo Escobar', 'DaniloEscobar@gmail.com', '789', 35452144),
(3, 'Alfredo Ochoa', 'AlfredoOchoa@gmail.com', '321', 25648754),
(4, 'Saul Roblero', 'SaulRoblerto@gmail.com', '12345', 11112354);

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
(0, 'Electronica', 45, 'A', 'https://becas-mexico.mx/wp-content/uploads/2018/11/becas-mexico-2018-estudia-una-ingenieria-en-electronica.jpg'),
(1, 'Estadistica', 30, 'A', 'https://concepto.de/wp-content/uploads/2018/08/Estadistica-inferencial-min-e1533841684477.jpg'),
(2, 'Programacion II', 35, 'B', 'https://i0.wp.com/aprendeycrea.net/wp-content/uploads/2021/10/Estos-son-los-lenguajes-de-programacion-que-utilizan-Facebook-Google-Windows-Apple-Linux-y-otros.jpg?fit=600%2C339&ssl=1'),
(3, 'Programacion II', 35, 'A', 'https://i0.wp.com/aprendeycrea.net/wp-content/uploads/2021/10/Estos-son-los-lenguajes-de-programacion-que-utilizan-Facebook-Google-Windows-Apple-Linux-y-otros.jpg?fit=600%2C339&ssl=1'),
(4, 'Fisica I', 20, 'A', 'https://img.freepik.com/vector-gratis/iconos-bosquejo-coloreado-decorativo-cientifico-quimica-fisica-ciencia-fijaron-ejemplo-aislado-vector_98292-6700.jpg'),
(5, 'Calculo I', 25, 'B', 'https://conceptodefinicion.de/wp-content/uploads/2020/05/calculo.jpg'),
(6, 'Base de datos', 55, 'A', 'https://concepto.de/wp-content/uploads/2018/04/base-de-datos-min-e1523470739502.jpg'),
(7, 'Base de datos', 55, 'B', 'https://concepto.de/wp-content/uploads/2018/04/base-de-datos-min-e1523470739502.jpg'),
(8, 'Automatas y lenguajes formales', 55, 'A', 'https://i.pinimg.com/originals/6a/18/73/6a187302819928d73f703ebbab5291ff.jpg'),
(9, 'Sistemas operativos I', 55, 'A', 'https://definicion.de/wp-content/uploads/2008/05/sistema-operativo.png');

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
(0, 0, 0),
(1, 0, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 0),
(5, 3, 2),
(6, 4, 3),
(7, 5, 3),
(8, 6, 2),
(9, 6, 4),
(10, 6, 0),
(11, 7, 1),
(12, 8, 4),
(13, 9, 1);

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
(0, 'Clase'),
(1, 'Tarea'),
(2, 'Proyecto'),
(3, 'Examen Parcial'),
(4, 'Examen Final'),
(5, 'Examen extraordinario');

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
