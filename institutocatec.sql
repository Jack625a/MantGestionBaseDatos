-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2024 a las 17:37:24
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
-- Base de datos: `institutocatec`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `codCarrera` text NOT NULL,
  `nombre` text NOT NULL,
  `duracion` int(11) NOT NULL,
  `nivel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`codCarrera`, `nombre`, `duracion`, `nivel`) VALUES
('ADM01', 'Administración de empresas', 3, 'Técnico Superior'),
('COM01', 'Comercio Internacional', 3, 'Técnico Superior'),
('COT01', 'Contabilidad', 3, 'Técnico Superior'),
('DIS01', 'Diseño Grafico', 2, 'Técnico Medio'),
('SEC10', 'Secretariado Ejecutivo', 3, 'Técnico Superior'),
('SIS10', 'Sistemas Informaticos', 3, 'Técnico Superior '),
('TUR01', 'Turismo', 3, 'Técnico Superior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `CiDocente` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Edad` int(11) NOT NULL,
  `Profesion` text NOT NULL,
  `Correo` text NOT NULL,
  `Celular` int(11) NOT NULL,
  `FechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`CiDocente`, `Nombre`, `Apellido`, `Edad`, `Profesion`, `Correo`, `Celular`, `FechaNacimiento`) VALUES
(1001, 'María', 'Pérez', 35, 'Docente de Matemáticas', 'k@gmail.com', 591, '1989-01-02'),
(1002, 'Juan', 'Gómez', 42, 'Docente de Física', 'a@gmail.com', 591, '1982-03-04'),
(1003, 'Ana', 'López', 28, 'Docente de Química', 'q@gmail.com', 591, '1996-05-06'),
(1004, 'Pedro', 'García', 50, 'Docente de Historia', 'w@gmail.com', 591, '1974-07-08'),
(1005, 'Carmen', 'Sánchez', 37, 'Docente de Biología', 'f@gmail.com', 591, '1987-09-10'),
(1006, 'Luis', 'Ramírez', 45, 'Docente de Inglés', 'r@gmail.com', 591, '1979-11-12'),
(1007, 'Rosa', 'Flores', 29, 'Docente de Lenguaje', 'a@gmail.com', 591, '0000-00-00'),
(1008, 'David', 'Martínez', 33, 'Docente de Educación Física', 'q@gmail.com', 591, '0000-00-00'),
(1009, 'Sandra', 'Torres', 41, 'Docente de Computación', 'w@gmail.com', 591, '0000-00-00'),
(1010, 'Carlos', 'Arias', 52, 'Docente de Música', 'f@gmail.com', 591, '0000-00-00'),
(1011, 'Patricia', 'Jiménez', 36, 'Docente de Preescolar', 'r@gmail.com', 591, '0000-00-00'),
(1012, 'Andrés', 'Moreno', 44, 'Docente de Primaria', 'a@gmail.com', 591, '0000-00-00'),
(1013, 'Isabel', 'Rodríguez', 27, 'Docente de Secundaria', 'q@gmail.com', 591, '0000-00-00'),
(1014, 'Miguel', 'López', 39, 'Docente de Cívica', 'k@gmail.com', 591, '0000-00-00'),
(1015, 'Diana', 'Sánchez', 47, 'Docente de Psicología', 'k@gmail.com', 591, '0000-00-00'),
(1016, 'Alejandro', 'García', 31, 'Docente de Filosofía', 'k@gmail.com', 591, '0000-00-00'),
(1017, 'Natalia', 'Ramírez', 40, 'Docente de Ética', 'k@gmail.com', 591, '1984-02-03'),
(1018, 'Francisco', 'Flores', 40, 'Docente de Ética', 'k@gmail.com', 591, '1984-02-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Ci` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Edad` int(11) NOT NULL,
  `Correo` text NOT NULL,
  `Carrera` text NOT NULL,
  `Celular` int(11) NOT NULL,
  `FechaNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Ci`, `Nombre`, `Apellido`, `Edad`, `Correo`, `Carrera`, `Celular`, `FechaNacimiento`) VALUES
(1001, 'Juan', 'Pérez', 20, 'a@gmail.com', 'Ingeniería en Sistemas', 2147483647, '2004-01-01'),
(1002, 'Maria', 'Gómez', 18, 'a@gmail.com', 'Administración de Empresas', 2147483647, '2005-02-02'),
(1003, 'Pedro', 'López', 22, 'a@gmail.com', 'Contabilidad', 2147483647, '2003-03-03'),
(1004, 'Ana', 'García', 21, 'a@gmail.com', 'Derecho', 2147483647, '2002-04-04'),
(1005, 'Carlos', 'Rodríguez', 24, 'a@gmail.com', 'Medicina', 2147483647, '2001-05-05'),
(1006, 'Sofía', 'Ramírez', 19, 'a@gmail.com', 'Psicología', 2147483647, '2006-06-06'),
(1007, 'Diego', 'Muñoz', 23, 'a@gmail.com', 'Ingeniería Industrial', 2147483647, '2000-07-07'),
(1008, 'Valentina', 'Flores', 20, 'a@gmail.com', 'Comunicación Social', 2147483647, '2005-08-08'),
(1009, 'Andrés', 'Martínez', 22, 'a@gmail.com', 'Publicidad', 2147483647, '2004-09-09'),
(1010, 'Gabriela', 'Hernández', 18, 'a@gmail.com', 'Diseño Gráfico', 2147483647, '2006-10-10'),
(1011, 'Javier', 'Vargas', 21, 'a@gmail.com', 'Informática', 2147483647, '2003-11-11'),
(1012, 'Camila', 'Castillo', 20, 'a@gmail.com', 'Administración Pública', 2147483647, '2002-12-12'),
(1013, 'Nicolás', 'Torres', 24, 'a@gmail.com', 'Educación', 2147483647, '2001-01-13'),
(1014, 'Paula', 'Arias', 19, 'a@gmail.com', 'Trabajo Social', 2147483647, '2006-02-14'),
(1015, 'Miguel', 'Sánchez', 23, 'a@gmail.com', 'Administracion de Empresas', 2147483647, '2000-03-15'),
(1016, 'Alexandra', 'Ortiz', 20, 'a@gmail.com', 'Contabilidad', 2147483647, '2005-04-16'),
(1017, 'José', 'Castro', 22, 'a@gmail.com', 'Turismo', 2147483647, '2004-05-17'),
(1018, 'Daniela', 'Silva', 18, 'a@gmail.com', 'Odontología', 2147483647, '2006-06-18'),
(1019, 'Cristian', 'Rivera', 21, 'a@gmail.com', 'Turismo', 2147483647, '2003-07-01'),
(545226, 'Raul', 'Gomez', 25, 'r@gmail.com', 'Sistemas Informaticos', 6542158, '1997-06-12'),
(744111, 'Kevin ', 'Arroyo', 24, 'cam@gmail.com', 'Sistemas', 69553554, '2024-07-11'),
(744115, 'Kevin', 'Arroyo', 28, 'k@gmail.com', 'Sistemas Informáticos ', 65451215, '1994-07-17'),
(745515, 'Juanito', 'Mamani', 23, 'juantio@gmail.com', 'Sistemas Informaticos', 6542258, '1998-08-20'),
(748755, 'Jhonatan ', 'Apaza', 21, 'jho@gmail.com', 'Sistemas Informaticos', 65402282, '2024-07-05'),
(855456, 'Juan', 'Perez', 25, 'juan@gmail.com', 'Sistemas Informaticos', 745551, '1994-08-17'),
(7412496, 'Kevin Arroyo', 'Arroyo Montaño', 25, 'k@gmail.com', 'sisgemas', 65402282, '2024-07-05'),
(7412996, 'Kevin Omar', 'Arroyo Montaño', 28, 'kev@gmail.com', 'Sistemas Informaticos', 65402398, '1995-07-13'),
(54555665, 'Jesus', 'Gomez', 24, 'je@gmail.com', 'Sistemas Informaticos', 71885445, '1998-05-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `codMateria` text NOT NULL,
  `nombre` text NOT NULL,
  `horasTeoricas` int(11) NOT NULL,
  `horasPracticas` int(11) NOT NULL,
  `requisitos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`codMateria`, `nombre`, `horasTeoricas`, `horasPracticas`, `requisitos`) VALUES
('AC1', 'ADMINISTRACIÓN DE COSTOS Y PRESUPUESTO', 3, 2, 'AF1'),
('ACY2', 'ADMINISTRACIÓN DE COSTOS Y PRESUPUESTO', 4, 2, '-'),
('ADM1', 'FUNDAMENTOS DE ADMINISTRACIÓN', 4, 2, '-'),
('ADM2', 'ADMINISTRACIÓN DE LA PRODUCCIÓN', 3, 2, 'ADM1'),
('ADMPR2', 'ADMINISTRACIÓN DE LA PRODUCCIÓN', 4, 2, '-'),
('ADS1', 'ANÁLISIS Y DISEÑO DE SISTEMAS I', 4, 2, '-'),
('ADS2', 'ANÁLISIS Y DISEÑO DE SISTEMAS II', 4, 2, 'ADS1'),
('AF1', 'ADMINISTRACIÓN FINANCIERA', 3, 2, 'MATF, ESTN'),
('AF2', 'ADMINISTRACIÓN FINANCIERA', 4, 2, 'MATF1'),
('ATH1', 'ADMINISTRACIÓN DEL TALENTO HUMANO', 3, 2, 'ADM1'),
('ATH2', 'ADMINISTRACIÓN DEL TALENTO HUMANO', 4, 2, '-'),
('CNT1', 'CONTABILIDAD GENERAL PARA ADMINISTRADORES', 3, 2, '-'),
('COM2', 'COMERCIO INTERNACIONAL', 4, 2, '-'),
('CON1', 'CONTABILIDAD GENERAL PARA ADMINISTRADORES', 4, 2, '-'),
('DB1', 'BASE DE DATOS I', 4, 2, '-'),
('DB2', 'BASE DE DATOS II', 4, 2, 'DB1'),
('DPW1', 'DISEÑO Y PROGRAMACIÓN WEB I', 4, 2, '-'),
('DPW2', 'DISEÑO Y PROGRAMACIÓN WEB II', 4, 2, 'DPW1'),
('ECO1', 'ECONOMÍA DE LA EMPRESA', 3, 2, 'MATF, ESTN'),
('ECO2', 'ECONOMÍA DE LA EMPRESA', 4, 2, '-'),
('EDA1', 'ESTRUCTURA DE DATOS', 4, 2, '-'),
('EMP1', 'EMPRENDIMIENTO PRODUCTIVO', 3, 2, '-'),
('EMP2', 'EMPRENDIMIENTO PRODUCTIVO', 3, 2, '-'),
('EST2', 'ESTADÍSTICA', 4, 2, 'MAT1'),
('ESTN', 'ESTADÍSTICA PARA LOS NEGOCIOS', 3, 2, 'MAT1'),
('ESTN1', 'ESTADÍSTICA PARA LOS NEGOCIOS', 4, 2, 'EST2'),
('GE1', 'GESTOR EMPRESARIAL', 4, 2, '-'),
('GEM1', 'GESTOR EMPRESARIAL', 3, 2, 'ADM1'),
('GES2', 'GESTIÓN ESTRATÉGICA', 4, 2, '-'),
('GS1', 'GESTIÓN DE SOFTWARE', 4, 2, '-'),
('HAR1', 'HARDWARE DE COMPUTADORAS', 3, 3, '-'),
('IM1', 'INVESTIGACIÓN DE MERCADO', 3, 2, 'MK1'),
('IM2', 'INVESTIGACIÓN DE MERCADO', 4, 2, '-'),
('INA1', 'INFORMÁTICA APLICADA A LA ADMINISTRACIÓN', 2, 2, '-'),
('INC1', 'INCUBACIÓN Y MODELOS DE NEGOCIOS', 3, 2, 'ADM1'),
('INC2', 'INCUBACIÓN Y MODELOS DE NEGOCIOS', 4, 2, '-'),
('INF1', 'INFORMÁTICA APLICADA', 2, 2, '-'),
('ING1', 'INGLÉS TÉCNICO', 2, 2, '-'),
('MAT1', 'MATEMÁTICA PARA LA INFORMÁTICA', 4, 2, '-'),
('MATF', 'MATEMÁTICA FINANCIERA', 3, 2, 'MAT1'),
('MATF1', 'MATEMÁTICA FINANCIERA', 4, 2, 'MAT1'),
('MER2', 'ESTRATEGIAS DE MERCADOTECNIA', 4, 2, '-'),
('MK1', 'ESTRATEGIAS DE MERCADOTECNIA', 3, 2, '-'),
('MYP1', 'ADMINISTRACIÓN DE LA MICRO, PEQUEÑA Y MEDIANA EMPRESA', 3, 2, 'ADM1'),
('MYP2', 'ADMINISTRACIÓN DE LA MICRO, PEQUEÑA Y MEDIANA EMPRESA', 4, 2, 'ADM2'),
('ORG1', 'ORGANIZACIÓN DE LA ADMINISTRACIÓN', 3, 2, 'ADM1'),
('ORG2', 'ORGANIZACIÓN DE LA ADMINISTRACIÓN', 4, 2, 'ADM1'),
('PDM1', 'PROGRAMACIÓN PARA DISPOSITIVOS MÓVILES', 4, 2, 'PRO2'),
('PFY2', 'PROYECTOS Y FUENTES DE FINANCIAMIENTO', 4, 2, '-'),
('PLT1', 'PRÁCTICA LABORAL Y TRIBUTARIA', 2, 3, '-'),
('PRO1', 'PROGRAMACIÓN I', 4, 2, '-'),
('PRO2', 'PROGRAMACIÓN II', 4, 2, 'PRO1'),
('PRO3', 'PROGRAMACIÓN III', 4, 2, 'PRO2'),
('PYF1', 'PROYECTOS Y FUENTES DE FINANCIAMIENTO', 3, 2, 'ADM1, AF1'),
('RCI1', 'REDES DE COMPUTADORAS I', 4, 2, '-'),
('RCI2', 'REDES DE COMPUTADORAS II', 4, 2, 'RCI1'),
('TGM1', 'TECNOLOGÍA GRÁFICA Y MULTIMEDIA', 3, 3, '-'),
('TMG1', 'TALLER DE MODALIDAD DE GRADUACIÓN', 2, 2, '-'),
('TMG2', 'TALLER DE MODALIDAD DE GRADUACIÓN', 2, 2, '-'),
('TSO1', 'TALLER DE SISTEMAS OPERATIVOS', 2, 3, '-');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`codCarrera`(6));

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`CiDocente`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Ci`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`codMateria`(5));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
