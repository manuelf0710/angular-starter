-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-06-2020 a las 05:11:26
-- Versión del servidor: 5.7.19
-- Versión de PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citovirtual_dev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conjunto`
--

DROP TABLE IF EXISTS `conjunto`;
CREATE TABLE IF NOT EXISTS `conjunto` (
  `id_conjunto` int(11) NOT NULL AUTO_INCREMENT,
  `id_distribuidor` int(11) DEFAULT NULL,
  `nombre` varchar(128) DEFAULT NULL,
  `direccion` varchar(128) DEFAULT NULL,
  `telefono` varchar(32) DEFAULT NULL,
  `id_zona_horaria` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_conjunto`),
  KEY `id_zona_horaria` (`id_zona_horaria`),
  KEY `id_distribuidor` (`id_distribuidor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conjunto`
--

INSERT INTO `conjunto` (`id_conjunto`, `id_distribuidor`, `nombre`, `direccion`, `telefono`, `id_zona_horaria`, `created_at`, `updated_at`) VALUES
(1, 1, 'yacaira', 'Av siempre viva #1-23', '123456789', 1, NULL, NULL),
(2, 1, 'Compostela', 'av 189 56-90', '987654321', 0, NULL, NULL),
(3, 1, 'Compostela redux', 'av 189 56-90', '987654321', 0, NULL, NULL),
(4, 1, 'Conjunto nuevo', 'av borges 120-45', '1029384756', 0, NULL, NULL),
(5, 4, 'Los arroyuelos editado', 'Calle 160 # 24 123', '28597641', 1, NULL, '2020-05-23 09:20:27'),
(6, 4, 'conjunto 06 junio 2020editcion', 'carrera 123 #45-89', '89400488', 1, '2020-06-07 00:55:54', '2020-06-07 00:56:41'),
(7, 1, 'conjunto testing two al', 'av 5 34-23', '12390033333', 1, '2020-06-07 00:58:03', '2020-06-07 01:32:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conjunto_extension`
--

DROP TABLE IF EXISTS `conjunto_extension`;
CREATE TABLE IF NOT EXISTS `conjunto_extension` (
  `id_conjunto_extension` int(11) NOT NULL AUTO_INCREMENT,
  `id_conjunto` int(11) DEFAULT NULL,
  `usuario` varchar(16) DEFAULT NULL,
  `clave` varchar(32) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_conjunto_extension`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conjunto_extension`
--

INSERT INTO `conjunto_extension` (`id_conjunto_extension`, `id_conjunto`, `usuario`, `clave`, `created_at`, `updated_at`) VALUES
(1, 1, '1001', 'Siempre53gur051', NULL, '2020-06-06 06:05:24'),
(2, 1, '1002', 'Siempre53gur04', NULL, NULL),
(3, 5, '101', 'clavepas', NULL, NULL),
(4, 3, 'charles', '123456', '2020-06-06 05:58:40', '2020-06-06 05:58:40'),
(5, 2, 'usariotresA', 'laclavees', '2020-06-07 00:50:24', '2020-06-07 01:25:41'),
(6, 5, 'carlosRod', '1232112', '2020-06-07 00:51:50', '2020-06-07 00:51:50'),
(7, 5, 'newextension', 'clave12s', '2020-06-07 01:25:58', '2020-06-07 01:25:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribuidor`
--

DROP TABLE IF EXISTS `distribuidor`;
CREATE TABLE IF NOT EXISTS `distribuidor` (
  `id_distribuidor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_distribuidor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `distribuidor`
--

INSERT INTO `distribuidor` (`id_distribuidor`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'principal', NULL, NULL),
(2, 'distribuidor norte', NULL, NULL),
(3, 'distruibuidor t', NULL, NULL),
(4, 'Bgsas', NULL, NULL),
(5, 'distri Caribe', '2020-05-23 09:22:19', '2020-05-23 09:22:39'),
(6, 'distribuidor enter edit', '2020-06-07 01:28:32', '2020-06-07 01:28:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiqueta`
--

DROP TABLE IF EXISTS `etiqueta`;
CREATE TABLE IF NOT EXISTS `etiqueta` (
  `id_etiqueta` int(11) NOT NULL AUTO_INCREMENT,
  `id_conjunto` int(11) DEFAULT NULL,
  `nombre` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_etiqueta`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `etiqueta`
--

INSERT INTO `etiqueta` (`id_etiqueta`, `id_conjunto`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 2, 'torre 1 enterprise', NULL, NULL),
(2, 1, 'torre 2', NULL, NULL),
(3, 1, 'torre 3', NULL, NULL),
(4, 1, 'torre 4', NULL, NULL),
(6, 1, 'torre G', NULL, NULL),
(7, 1, 'torre 33', NULL, NULL),
(8, 1, 'torre ocho', NULL, NULL),
(9, 1, 'torre F', NULL, NULL),
(11, 1, 'torre 11', NULL, NULL),
(12, 1, 'torre 12', NULL, NULL),
(13, 1, 'Torre c', NULL, NULL),
(14, 1, 'Torre B', NULL, NULL),
(15, 1, 'torre A', NULL, NULL),
(19, 1, 'torre prueba', NULL, NULL),
(29, 4, 'ttottore', NULL, '2020-05-23 09:15:51'),
(30, 5, 'torre G2', '2020-06-07 00:46:11', '2020-06-07 00:46:11'),
(31, 4, 'tag redirect to list', '2020-06-07 01:16:13', '2020-06-07 01:16:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llamada`
--

DROP TABLE IF EXISTS `llamada`;
CREATE TABLE IF NOT EXISTS `llamada` (
  `id_llamada` int(11) NOT NULL AUTO_INCREMENT,
  `id_conjunto` int(11) DEFAULT NULL,
  `id_unidad` int(11) DEFAULT NULL,
  `id_distribuidor` int(11) NOT NULL,
  `unidad_identificacion` varchar(10) NOT NULL,
  `origen` varchar(16) DEFAULT NULL,
  `destino` varchar(16) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `unixtime` int(11) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `duracion_total` int(11) NOT NULL,
  `respuesta` varchar(64) DEFAULT NULL,
  `archivo_grabacion` varchar(255) NOT NULL,
  `uniqueid` varchar(128) NOT NULL,
  `tipo` enum('entrada','salida') NOT NULL DEFAULT 'salida',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_llamada`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `llamada`
--

INSERT INTO `llamada` (`id_llamada`, `id_conjunto`, `id_unidad`, `id_distribuidor`, `unidad_identificacion`, `origen`, `destino`, `fecha`, `unixtime`, `duracion`, `duracion_total`, `respuesta`, `archivo_grabacion`, `uniqueid`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(2, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(3, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(4, 3, 2, 1, '201', '3138713019', '1001', '2020-05-11 14:52:05', 1589226725, 2, 13, 'ANSWER', '', '1589226712.213', 'salida', NULL, NULL),
(5, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:01:06', 1589227266, 32, 43, 'ANSWER', '', '1589227223.218', 'salida', NULL, NULL),
(6, 1, 5, 1, '203', '3102346659', '1001', '2020-05-11 15:02:26', 1589227346, 21, 30, 'ANSWER', '', '1589227315.222', 'salida', NULL, NULL),
(7, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:04:19', 1589227459, 0, 3, 'CANCEL', '', '1589227455.227', 'salida', NULL, NULL),
(8, 3, 5, 1, '203', '100', '3102346659', '2020-05-11 15:05:02', 1589227502, 0, 20, 'NOANSWER', '', '1589227482.233', 'salida', NULL, NULL),
(9, 1, 5, 1, '203', '100', '3103340561', '2020-05-11 15:06:16', 1589227576, 59, 73, 'ANSWER', '', '1589227502.237', 'salida', NULL, NULL),
(10, 1, 5, 1, '203', '3103340561', '1001', '2020-05-11 15:08:42', 1589227722, 13, 20, 'ANSWER', '', '1589227701.242', 'salida', NULL, NULL),
(11, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(12, 3, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(13, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(14, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:04:19', 1589227459, 0, 3, 'CANCEL', '', '1589227455.227', 'salida', NULL, NULL),
(15, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:05:02', 1589227502, 0, 20, 'NOANSWER', '', '1589227482.233', 'salida', NULL, NULL),
(16, 1, 5, 1, '203', '100', '3103340561', '2020-05-11 15:06:16', 1589227576, 59, 73, 'ANSWER', '', '1589227502.237', 'salida', NULL, NULL),
(17, 1, 5, 1, '203', '3103340561', '1001', '2020-05-11 15:08:42', 1589227722, 13, 20, 'ANSWER', '', '1589227701.242', 'salida', NULL, NULL),
(18, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(19, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(20, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(21, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(22, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:04:19', 1589227459, 0, 3, 'CANCEL', '', '1589227455.227', 'salida', NULL, NULL),
(23, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:05:02', 1589227502, 0, 20, 'NOANSWER', '', '1589227482.233', 'salida', NULL, NULL),
(24, 1, 5, 1, '203', '100', '3103340561', '2020-05-11 15:06:16', 1589227576, 59, 73, 'ANSWER', '', '1589227502.237', 'salida', NULL, NULL),
(25, 1, 5, 1, '203', '3103340561', '1001', '2020-05-11 15:08:42', 1589227722, 13, 20, 'ANSWER', '', '1589227701.242', 'salida', NULL, NULL),
(26, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(27, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(28, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(29, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(30, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(31, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(32, 1, 2, 1, '201', '3138713019', '1001', '2020-05-11 14:52:05', 1589226725, 2, 13, 'ANSWER', '', '1589226712.213', 'salida', NULL, NULL),
(33, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(34, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(35, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(36, 1, 2, 1, '201', '3138713019', '1001', '2020-05-11 14:52:05', 1589226725, 2, 13, 'ANSWER', '', '1589226712.213', 'salida', NULL, NULL),
(37, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:01:06', 1589227266, 32, 43, 'ANSWER', '', '1589227223.218', 'salida', NULL, NULL),
(38, 1, 5, 1, '203', '3102346659', '1001', '2020-05-11 15:02:26', 1589227346, 21, 30, 'ANSWER', '', '1589227315.222', 'salida', NULL, NULL),
(39, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(40, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(41, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(42, 1, 2, 1, '201', '3138713019', '1001', '2020-05-11 14:52:05', 1589226725, 2, 13, 'ANSWER', '', '1589226712.213', 'salida', NULL, NULL),
(43, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:01:06', 1589227266, 32, 43, 'ANSWER', '', '1589227223.218', 'salida', NULL, NULL),
(44, 1, 5, 1, '203', '3102346659', '1001', '2020-05-11 15:02:26', 1589227346, 21, 30, 'ANSWER', '', '1589227315.222', 'salida', NULL, NULL),
(45, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:04:19', 1589227459, 0, 3, 'CANCEL', '', '1589227455.227', 'salida', NULL, NULL),
(46, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:45:54', 1589226354, 0, 20, 'NOANSWER', '', '1589226334.194', 'salida', NULL, NULL),
(47, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(48, 1, 2, 1, '201', '100', '3138713019', '2020-05-11 14:48:28', 1589226508, 11, 22, 'ANSWER', '', '1589226485.205', 'salida', NULL, NULL),
(49, 1, 2, 1, '201', '3138713019', '1001', '2020-05-11 14:52:05', 1589226725, 2, 13, 'ANSWER', '', '1589226712.213', 'salida', NULL, NULL),
(50, 1, 5, 1, '203', '100', '3102346659', '2020-05-11 15:01:06', 1589227266, 32, 43, 'ANSWER', '', '1589227223.218', 'salida', NULL, NULL),
(51, 1, 5, 1, '203', '100', '3103340561', '2020-05-11 15:06:16', 1589227576, 59, 73, 'ANSWER', '', '1589227502.237', 'salida', NULL, NULL),
(52, 1, 5, 1, '203', '3103340561', '1001', '2020-05-11 15:08:42', 1589227722, 13, 20, 'ANSWER', '', '1589227701.242', 'salida', NULL, NULL),
(53, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL),
(54, 1, 5, 1, '203', '100', '3103340561', '2020-05-11 15:06:16', 1589227576, 59, 73, 'ANSWER', '', '1589227502.237', 'salida', NULL, NULL),
(55, 1, 5, 1, '203', '3103340561', '1001', '2020-05-11 15:08:42', 1589227722, 13, 20, 'ANSWER', '', '1589227701.242', 'salida', NULL, NULL),
(56, 1, 2, 1, '201', '100', '3203057423', '2020-05-11 14:46:14', 1589226374, 0, 20, 'NOANSWER', '', '1589226354.198', 'salida', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('manuelf0710@gmail.com', '$2y$10$Nbph..LBEIGH3Hun1qR9TeP7lrnPKoSpnteC20QtcN.l.YBlnG.Ka', '2020-05-22 00:12:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, NULL),
(2, 'Distribuidor', NULL, NULL),
(3, 'Administrador', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

DROP TABLE IF EXISTS `unidad`;
CREATE TABLE IF NOT EXISTS `unidad` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `id_conjunto` int(11) DEFAULT NULL,
  `identificacion` varchar(16) DEFAULT NULL,
  `propietario` varchar(128) DEFAULT NULL,
  `arrendatario` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_unidad`),
  KEY `id_conjunto` (`id_conjunto`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`id_unidad`, `id_conjunto`, `identificacion`, `propietario`, `arrendatario`, `created_at`, `updated_at`) VALUES
(1, 1, '101', 'user unidad', '', NULL, NULL),
(2, 1, '1011', 'user unidad especial', '', NULL, NULL),
(5, 1, '25896316', 'user test cinco', 'arrendatario test', NULL, NULL),
(17, 1, '101', 'Clara ines rugeles', NULL, NULL, '2020-05-23 08:58:05'),
(19, 2, '123564841', 'José perez brito', 'bartolome de las casas', NULL, '2020-05-23 08:55:22'),
(20, 1, '258963147', 'prueba pruebasasfda', 'Prueba de arrendatario nombre', NULL, '2020-05-23 08:30:59'),
(21, 1, '392342432432', 'nuevo propietario', 'el nombre arrendatario', '2020-05-23 09:05:02', '2020-05-23 09:05:02'),
(22, 5, '3432432', 'propietario auvsaf', 'is arrandatario', '2020-05-23 09:07:50', '2020-05-23 09:07:50'),
(23, 5, '3432432', 'propietario auvsaf', 'is arrandatario', '2020-05-23 09:09:00', '2020-05-23 09:09:00'),
(24, 4, '2342', 'natalia carranza', NULL, '2020-05-23 09:09:57', '2020-05-23 09:09:57'),
(25, 4, '23423', 'yenni gonzales', NULL, '2020-05-23 09:11:48', '2020-05-23 09:11:48'),
(26, 5, '23400', 'Alina', NULL, '2020-05-23 10:25:56', '2020-05-23 10:25:56'),
(27, 5, '3883', 'pro', NULL, '2020-05-26 09:43:32', '2020-05-26 09:43:32'),
(28, 1, '1239011', 'juan lozano e', NULL, '2020-06-02 03:14:05', '2020-06-04 23:15:18'),
(29, 3, '123454321', 'Rodrigo leal', 'Julio Gonzales', '2020-06-06 04:54:15', '2020-06-06 04:54:15'),
(30, 2, '1236530127', 'Camilo Ortega Valencia', 'juanes gonzales', '2020-06-07 00:47:49', '2020-06-07 00:47:49'),
(31, 6, '3299764', 'juancho R', 'julian', '2020-06-07 01:20:18', '2020-06-07 01:20:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_etiqueta`
--

DROP TABLE IF EXISTS `unidad_etiqueta`;
CREATE TABLE IF NOT EXISTS `unidad_etiqueta` (
  `id_unidad_etiqueta` int(11) NOT NULL AUTO_INCREMENT,
  `id_unidad` int(11) DEFAULT NULL,
  `id_etiqueta` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_unidad_etiqueta`),
  KEY `id_unidad` (`id_unidad`),
  KEY `id_etiqueta` (`id_etiqueta`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidad_etiqueta`
--

INSERT INTO `unidad_etiqueta` (`id_unidad_etiqueta`, `id_unidad`, `id_etiqueta`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 20, 1, NULL, NULL),
(4, 20, 2, NULL, NULL),
(5, 20, 29, '2020-05-23 07:32:26', '2020-05-23 07:32:26'),
(7, 19, 2, '2020-05-23 08:55:22', '2020-05-23 08:55:22'),
(8, 19, 3, '2020-05-23 08:55:22', '2020-05-23 08:55:22'),
(9, 19, 1, '2020-05-23 08:55:22', '2020-05-23 08:55:22'),
(10, 17, 29, '2020-05-23 08:58:05', '2020-05-23 08:58:05'),
(11, 23, 29, '2020-05-23 09:09:00', '2020-05-23 09:09:00'),
(12, 24, 6, '2020-05-23 09:09:57', '2020-05-23 09:09:57'),
(13, 24, 2, '2020-05-23 09:09:57', '2020-05-23 09:09:57'),
(14, 24, 13, '2020-05-23 09:09:57', '2020-05-23 09:09:57'),
(15, 24, 14, '2020-05-23 09:09:57', '2020-05-23 09:09:57'),
(16, 25, 29, '2020-05-23 09:11:48', '2020-05-23 09:11:48'),
(17, 25, 13, '2020-05-23 09:11:48', '2020-05-23 09:11:48'),
(18, 25, 14, '2020-05-23 09:11:48', '2020-05-23 09:11:48'),
(19, 25, 3, '2020-05-23 09:12:14', '2020-05-23 09:12:14'),
(20, 26, 1, '2020-05-23 10:25:56', '2020-05-23 10:25:56'),
(21, 26, 2, '2020-05-23 10:25:56', '2020-05-23 10:25:56'),
(22, 26, 3, '2020-05-23 10:25:56', '2020-05-23 10:25:56'),
(23, 26, 8, '2020-05-23 10:26:36', '2020-05-23 10:26:36'),
(24, 26, 6, '2020-05-23 21:57:41', '2020-05-23 21:57:41'),
(25, 26, 13, '2020-05-24 06:58:50', '2020-05-24 06:58:50'),
(26, 27, 1, '2020-05-26 09:43:32', '2020-05-26 09:43:32'),
(27, 27, 2, '2020-05-26 09:43:32', '2020-05-26 09:43:32'),
(28, 27, 3, '2020-05-26 09:43:32', '2020-05-26 09:43:32'),
(29, 27, 4, '2020-05-26 09:43:32', '2020-05-26 09:43:32'),
(30, 27, 8, '2020-05-29 09:23:17', '2020-05-29 09:23:17'),
(31, 27, 11, '2020-05-29 09:23:17', '2020-05-29 09:23:17'),
(32, 27, 12, '2020-05-29 09:23:18', '2020-05-29 09:23:18'),
(33, 27, 13, '2020-05-29 09:23:18', '2020-05-29 09:23:18'),
(34, 27, 6, '2020-06-02 03:08:13', '2020-06-02 03:08:13'),
(35, 27, 7, '2020-06-02 03:08:13', '2020-06-02 03:08:13'),
(36, 27, 14, '2020-06-02 03:08:13', '2020-06-02 03:08:13'),
(39, 28, 3, '2020-06-06 03:54:55', '2020-06-06 03:54:55'),
(40, 28, 4, '2020-06-06 03:54:55', '2020-06-06 03:54:55'),
(41, 28, 6, '2020-06-06 03:54:55', '2020-06-06 03:54:55'),
(42, 29, 1, '2020-06-06 04:54:15', '2020-06-06 04:54:15'),
(43, 29, 2, '2020-06-06 04:54:15', '2020-06-06 04:54:15'),
(44, 29, 3, '2020-06-06 04:54:15', '2020-06-06 04:54:15'),
(45, 29, 4, '2020-06-06 04:54:15', '2020-06-06 04:54:15'),
(47, 30, 2, '2020-06-07 00:47:49', '2020-06-07 00:47:49'),
(48, 30, 3, '2020-06-07 00:47:49', '2020-06-07 00:47:49'),
(49, 30, 4, '2020-06-07 00:47:49', '2020-06-07 00:47:49'),
(50, 31, 9, '2020-06-07 01:20:18', '2020-06-07 01:20:18'),
(51, 31, 11, '2020-06-07 01:20:18', '2020-06-07 01:20:18'),
(52, 31, 12, '2020-06-07 01:20:18', '2020-06-07 01:20:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_telefono`
--

DROP TABLE IF EXISTS `unidad_telefono`;
CREATE TABLE IF NOT EXISTS `unidad_telefono` (
  `id_unidad_telefono` int(11) NOT NULL AUTO_INCREMENT,
  `id_unidad` int(11) DEFAULT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `telefono` varchar(16) DEFAULT NULL,
  `prioridad` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_unidad_telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unidad_telefono`
--

INSERT INTO `unidad_telefono` (`id_unidad_telefono`, `id_unidad`, `nombre`, `telefono`, `prioridad`, `created_at`, `updated_at`) VALUES
(1, 1, 'Francisco', '573208665605', 0, NULL, NULL),
(3, 1, 'maria casas', '3102779180', 1, NULL, NULL),
(4, 2, 'Diana pinzon', '3138713019', 0, NULL, NULL),
(5, 2, 'Mauricio', '3203057423', 1, NULL, NULL),
(6, 3, 'Luis', '3118648813', 0, NULL, NULL),
(7, 4, 'Joaquin', '3219048473', 0, NULL, NULL),
(8, 5, 'Adriana', '3102346659', 0, NULL, NULL),
(9, 26, 'egny', '3103340561', 1, NULL, NULL),
(10, 26, 'cecilia Bedoya', '3118533970', 0, NULL, NULL),
(11, 26, 'claudia pinzon', '3208009119', 1, NULL, NULL),
(12, 26, 'rosa lina castro', '890', 12, '2020-05-24 06:36:36', '2020-05-24 06:36:36'),
(13, 26, 'elvira', '891', 14, '2020-05-24 06:36:36', '2020-05-24 06:36:36'),
(14, 26, 'robert', '9075', 8, '2020-05-24 06:58:50', '2020-05-24 06:58:50'),
(15, 27, 'Rodrigo', '124', 90, '2020-05-26 09:43:32', '2020-05-26 09:43:32'),
(16, 27, 'Fercho', '54343', 5, '2020-05-29 09:23:18', '2020-05-29 09:23:18'),
(17, 27, 'Raul', '3453453', 12, '2020-05-29 09:23:40', '2020-05-29 09:23:40'),
(18, 27, 'Lucelly', '32432', 7, '2020-06-02 03:08:13', '2020-06-02 03:08:13'),
(19, 27, 'Ana', '322323', 2, '2020-06-02 03:08:13', '2020-06-02 03:08:13'),
(26, 28, 'Rocio', '1234567899', 12, '2020-06-06 04:26:08', '2020-06-06 04:26:08'),
(27, 29, 'Yesid Torres', '19003938', 12, '2020-06-06 04:54:15', '2020-06-06 04:54:15'),
(28, 29, 'nora borja', '123123', 4, '2020-06-06 04:54:15', '2020-06-06 04:54:15'),
(29, 30, 'elvira editado', '12900', 2, '2020-06-07 00:47:49', '2020-06-07 00:47:49'),
(30, 30, 'Carlos Rodriguez', '1237777', 5, '2020-06-07 00:47:49', '2020-06-07 00:47:49'),
(31, 30, 'nuevo telefono', '1110038', 5, '2020-06-07 00:48:25', '2020-06-07 00:48:25'),
(32, 31, 'diego c', '3900965', 5, '2020-06-07 01:20:18', '2020-06-07 01:20:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_perfil` int(11) NOT NULL DEFAULT '3',
  `id_distribuidor` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `id_perfil`, `id_distribuidor`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Manuelf', 'manuelf0710@gmail.com', 1, 1, NULL, '$2y$10$qtcykNPFQY4w8ClUWcdFQ.fOaNZ/roymncV1vCGFoSI8wq8ykklmK', NULL, '2020-05-21 03:18:48', '2020-05-21 03:18:48'),
(2, 'demo', 'manuelf0710@hotmail.com', 3, 1, NULL, '$2y$10$qtcykNPFQY4w8ClUWcdFQ.fOaNZ/roymncV1vCGFoSI8wq8ykklmK', NULL, '2020-05-22 00:20:04', '2020-05-22 00:20:04'),
(4, 'manuelf07101', 'manuelf07101@gmail.com', 3, 4, NULL, '$2y$10$qtcykNPFQY4w8ClUWcdFQ.fOaNZ/roymncV1vCGFoSI8wq8ykklmK', NULL, '2020-05-22 02:51:40', '2020-05-22 02:51:40'),
(5, 'Edward Lopez', 'edw1252@hotmail.com', 1, 1, NULL, '$2y$10$qtcykNPFQY4w8ClUWcdFQ.fOaNZ/roymncV1vCGFoSI8wq8ykklmK', NULL, '2020-05-22 07:11:24', '2020-05-22 07:11:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_horaria`
--

DROP TABLE IF EXISTS `zona_horaria`;
CREATE TABLE IF NOT EXISTS `zona_horaria` (
  `id_zona_horaria` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  PRIMARY KEY (`id_zona_horaria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zona_horaria`
--

INSERT INTO `zona_horaria` (`id_zona_horaria`, `nombre`) VALUES
(1, 'America/Bogota');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `unidad_etiqueta`
--
ALTER TABLE `unidad_etiqueta`
  ADD CONSTRAINT `id_unidad` FOREIGN KEY (`id_unidad`) REFERENCES `unidad` (`id_unidad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
