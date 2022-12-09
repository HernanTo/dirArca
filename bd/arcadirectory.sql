-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2022 a las 07:30:56
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arcadirectory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregables`
--

CREATE TABLE `entregables` (
  `id` int(11) NOT NULL,
  `entregable` varchar(500) NOT NULL,
  `Trimestre` varchar(10) NOT NULL,
  `patner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entregables`
--

INSERT INTO `entregables` (`id`, `entregable`, `Trimestre`, `patner`) VALUES
(3, 'Definición del proyecto', '1', 1),
(4, 'Técnicas de levantamiento de información', '1', 1),
(5, 'Mapa de procesos', '1', 1),
(6, 'Uso de sistemas de control de versiones', '1', 1),
(7, 'IEE830 (RF, RNF)', '1', 1),
(8, 'Diagrama de casos de uso', '1', 1),
(9, 'Formato de casos de uso extendido', '1', 1),
(10, 'Modelo entidad relación', '2', 1),
(11, 'Diccionario de datos', '2', 1),
(12, 'Diagrama de Gantt', '2', 1),
(13, 'Diagrama de Distribución', '2', 1),
(14, 'Mockups ', '2', 1),
(15, 'Normalización MER', '2', 1),
(16, 'Sentencias DDL', '3', 0),
(17, 'Datos insertados y sus respectivos consultas y Joins usando sentencias DML', '3', 0),
(18, 'Prototipo no funcional', '3', 0),
(19, 'Control de Versiones', '3', 0),
(20, 'Uso de sistemas de integración continua', '3', 0),
(21, 'Informe de costos que dependen de hardware y el software', '3', 0),
(22, 'Manual Técnico', '4', 0),
(23, 'Pruebas Unitarias, Pruebas caja negra, Pruebas caja blanca', '4', 0),
(24, 'Manual de instalación del aplicativo', '4', 0),
(25, 'Diagrama de distribución mínimo en software', '4', 0),
(26, 'Informe de migración de datos', '4', 0),
(27, 'Plan de instalación. plan de respaldo y plan de migración', '4', 0),
(28, 'Cuadro comparativo - Proveedores', '5', 0),
(29, 'Contrato de Desarrollo de Software', '5', 0),
(30, 'Documentación de las Pruebas', '5', 0),
(31, 'Modelo de calidad', '5', 0),
(32, 'Construcción de Manuales de Usuario y de Operación', '6', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name_file` varchar(400) NOT NULL,
  `trimestre` varchar(100) NOT NULL,
  `url_local` varchar(500) NOT NULL,
  `url_cloud` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `name_file`, `trimestre`, `url_local`, `url_cloud`) VALUES
(7, 'Entrevista', '1', './assets/entregables/trimI/Preguntas Entrevista.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/ET_vCEFz7OxDjjd1SB009TsBIruvntBaXKJo6NmOVbU6tQ?e=WxhYtT'),
(8, 'Modelo entidad relacion', '1', './assets/entregables/trimI/arca.png', 'https://soysena-my.sharepoint.com/:i:/g/personal/scastillo70_soy_sena_edu_co/EfVx4TfXJLVOsQ7ZUs9ffCcBbEE6BLxDorqjetc6EUjVsQ?e=xCdKbj'),
(9, 'Diagrama de clases', '1', './assets/entregables/trimI/Diagrama de Clases.jpg', 'https://soysena-my.sharepoint.com/:i:/g/personal/scastillo70_soy_sena_edu_co/EU8GrmKttlVEmuzlxHUYu6EBVzM80Jr1DguoznZxCblDug?e=buLWSw'),
(10, 'Presentación', '1', './assets/entregables/trimI/PROYECTO ARCA .pptx', 'https://soysena-my.sharepoint.com/:p:/g/personal/scastillo70_soy_sena_edu_co/ETgzz8t6LuZMupgk-VsOadYBhZO12V_jOblRW_ypoJN7SQ?e=nLW14e'),
(13, 'SRS IEEE830', '3', './assets/entregables/trimIII/SRS IEE830.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/EX0S5RHxUXBDg3uT6QZZ2eYBtO60lYlPPGrBKRpzP6f4IA?e=fdX5BV'),
(14, 'Normalización', '3', './assets/entregables/trimIII/Fundación Arcángeles.xlsx', 'https://soysena-my.sharepoint.com/:x:/g/personal/scastillo70_soy_sena_edu_co/EVQprIBysO9CkKjVf2k1wigBqyuetdeyHkvqsEPrvTan0Q?e=CKBHgu'),
(15, 'GANTT', '3', './assets/entregables/trimIII/Gantt_Arca.mpp', 'https://soysena-my.sharepoint.com/:u:/g/personal/scastillo70_soy_sena_edu_co/EXV3Ocsld2BEkZxgIao8ETIBdzB5cm959aKjyCtLNbBWFg?e=V2zJXX'),
(16, 'Ficha del técnica', '3', './assets/entregables/trimIII/FichaTecnica Investigación Tecnológica Proyecto.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/EYoJ6DhniXNAt8Yzx3McYH0B72iNLLxjyBodQjEdePYCTg?e=jbpa3J'),
(17, 'Diseño del sistema', '3', './assets/entregables/trimIII/diseñodelsistema.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/EQ-9SJrgL49Jqeir2H7vpFoBf0yEEP2rtCwKuZJAh6dBsg?e=ktFLxA'),
(18, 'Corrección BPMN Propuesta', '3', './assets/entregables/trimIII/Nuevo Modelo.bpm', 'https://soysena-my.sharepoint.com/:u:/g/personal/scastillo70_soy_sena_edu_co/EQ1fJ4hymcdCka2n4EcweNEBCfj2e7ysPH1N6FZrgcsiaQ?e=keFllO'),
(19, 'Corrección BPMN Actual', '3', './assets/entregables/trimIII/situacion actual.bpm', 'https://soysena-my.sharepoint.com/:u:/g/personal/scastillo70_soy_sena_edu_co/ERJEGzmR-MhDsqIm8sRSPvsBFD6Ig2Sy5MY7FgbP7tYIjw?e=4FJXaW'),
(20, 'Formato de caso de uso extendido', '3', './assets/entregables/trimIII/Formato de Caso de Uso Extendido.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/EYXr9eZ2salAlxt1uH8_NX0BxM811Sh3-owMfgeQFCHTnQ?e=Ovxmea'),
(21, 'Corrección Casos de Uso', '3', './assets/entregables/trimIII/Use Cases.jpg', 'https://soysena-my.sharepoint.com/:i:/g/personal/scastillo70_soy_sena_edu_co/EaGDiGxcY0ZCmDuCVdPp3aABL_YwxcQZ0X3tNlHH9UB19w?e=6EBxah'),
(22, 'Presentación', '3', './assets/entregables/trimIII/ARCA .pptx', 'https://soysena-my.sharepoint.com/:p:/g/personal/scastillo70_soy_sena_edu_co/EQY0qR5fV0tMnbi30sNuJdkBSCAke4rT00XfNaoD_lWzTg?e=iBEv5M'),
(23, 'Modelo relacional', '4', './assets/entregables/trimIV/Modelo relacioanl.png', 'https://soysena-my.sharepoint.com/:i:/g/personal/scastillo70_soy_sena_edu_co/ETn1WvtL-v5CoUAM6zYWv0YB9vnOxzY-1cJ0q3oOFRtTRA?e=94jwS2'),
(24, 'Plan de respaldo y migración', '4', './assets/entregables/trimIV/Planes - Arca.pdf', 'https://soysena-my.sharepoint.com/:b:/g/personal/scastillo70_soy_sena_edu_co/EeSD76XNKVtJsfEDEtmeIboBQB1cAGFAlFN445oqjqRb5Q?e=KuDOuG'),
(25, 'Informe de migración de datos', '4', './assets/entregables/trimIV/Informe de migracion de datos Arca.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/Ed0BpN8qvXpNr0wzIA9P11YBIoYEKRwWiv4FDdtPls8sZA?e=M4PiS6'),
(26, 'Diagrama de distribución', '4', './assets/entregables/trimIV/Diagrama de Despliegue - Arca.png', 'https://soysena-my.sharepoint.com/:i:/g/personal/scastillo70_soy_sena_edu_co/EasEk-1MgT1As5NLSpgWc0MB7-wwpWLm0YmTejciuXZ0MA?e=0X7u8n'),
(27, 'Manual de Instalación', '4', './assets/entregables/trimIV/Manual de instalacion - Arca.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/EU3Jwr2c8K5AiupEawAUpQIBmfe80Dq2s-E5GgQSneh97A?e=tuiQQk'),
(28, 'Pruebas', '4', './assets/entregables/trimIV/Documentación de pruebas Arca.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/Efa3XVFTxgNPuSJKA2R-ECwBDFgcdl5ni-mpSKQW5xatsg?e=9ncVp5'),
(29, 'Manual Técnico', '4', './assets/entregables/trimIV/Maquetado manual técnico Arca.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/EbcEx2eQTGJErthoe1i5ltQBMRsMzq8jnHXPoEyJTFaNGw?e=4bqHM9'),
(30, 'Presentación', '4', './assets/entregables/trimIV/ARCA .pptx', 'https://soysena-my.sharepoint.com/:p:/g/personal/scastillo70_soy_sena_edu_co/Ef4_zzPftslGrGeQhT-5AwIB5nzuCG8YupoWQDm3FZbYTg?e=8kGQkD'),
(32, 'Contrato de Desarrollo de Software', '5', './assets/entregables/trimV/Contrato de Software Arca.pdf', 'https://soysena-my.sharepoint.com/:b:/g/personal/scastillo70_soy_sena_edu_co/EcKYAXEyH_ZFmyGyMJwAvAgBtrCZ4Tvy01ldJLDgfbau1g?e=MNNUG3'),
(33, 'Documentación de las Pruebas', '5', './assets/entregables/trimV/Documentación de pruebas Arca.pdf', 'https://soysena-my.sharepoint.com/:b:/g/personal/scastillo70_soy_sena_edu_co/Ec0oMZDSA79CiGsveRJuWMUBITYx0y2DfXVO-vP2_OmzEg?e=ZMVCYI'),
(34, 'Cuadro comparativo - Proveedores', '5', './assets/entregables/trimV/Proveedores.pdf', 'https://soysena-my.sharepoint.com/:b:/g/personal/scastillo70_soy_sena_edu_co/Ebjr-6yG_GVAoNOtMKqqj-sBeY4xtpOKM2Fwp9df2KukGQ?e=NO01PJ'),
(35, 'Modelo relacional', '5', './assets/entregables/trimV/Modelo Relacional.png', 'https://soysena-my.sharepoint.com/:i:/g/personal/scastillo70_soy_sena_edu_co/EfnVO7x79pJJmW7Z6JLQU00Bjg3jtHDBRZqn_2NIxW8oHg?e=GnlY3b'),
(36, 'C. Manual de instalación', '5', './assets/entregables/trimV/Manual de Instalación - ARCA.docx', 'https://soysena-my.sharepoint.com/:w:/g/personal/scastillo70_soy_sena_edu_co/EYfu3hNtT95EtaxH8qNfXjkBALWKTm8PYVb4xgKGYFw4VA?e=r0CDRC'),
(37, 'C. Manual Técnico', '5', './assets/entregables/trimV/Manual tecnico Arca.pdf', 'https://soysena-my.sharepoint.com/:b:/g/personal/scastillo70_soy_sena_edu_co/EepSwywUF9NGjwOfIypjboMBBwUVwKRd2CTESpn2H001lg?e=5yQEzY');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entregables`
--
ALTER TABLE `entregables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entregables`
--
ALTER TABLE `entregables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
