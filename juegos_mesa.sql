-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2023 a las 16:56:40
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
-- Base de datos: `juegos_mesa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'Estrategia'),
(2, 'Rol'),
(3, 'Familiares'),
(4, 'Cards'),
(5, 'Abstractos'),
(6, 'Cooperativos'),
(7, 'Temáticos'),
(8, 'Party Games'),
(9, 'Legacy'),
(10, 'Deck-building'),
(11, 'Miniaturas'),
(12, 'Puzzle'),
(13, 'Economía'),
(14, 'Aventura'),
(15, 'Construcción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juego` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_cat` int(3) NOT NULL,
  `id_pro` int(3) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `ganancia` decimal(8,2) GENERATED ALWAYS AS (`precio` * 0.35) STORED,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juego`, `nombre`, `id_cat`, `id_pro`, `precio`, `stock`) VALUES
(1, 'Codenames', 10, 14, 98.62, 91),
(2, 'Carcassonne', 7, 5, 84.32, 19),
(3, 'Catan', 3, 4, 42.64, 7),
(4, 'El uno', 15, 7, 99.47, 68),
(5, 'Ticket to Ride', 15, 5, 65.98, 29),
(7, 'Gloomhaven', 2, 14, 111.70, 33),
(8, 'Catan', 8, 5, 22.16, 72),
(9, 'Codenames', 1, 3, 116.84, 68),
(10, 'Dixit', 14, 11, 108.70, 24),
(12, 'Small World', 11, 14, 109.14, 7),
(13, 'Wingspan', 6, 10, 62.78, 55),
(14, 'Puerto Rico', 12, 7, 35.43, 58),
(16, 'Dominion', 6, 2, 74.96, 27),
(17, 'Carcassonne', 1, 11, 66.61, 49),
(18, 'Puerto Rico', 2, 5, 64.56, 64),
(19, 'Codenames', 7, 2, 26.57, 73),
(20, 'Ticket to Ride', 12, 1, 42.09, 77),
(21, 'Wingspan', 7, 7, 109.70, 63),
(22, 'Dominion', 12, 5, 99.34, 81),
(23, 'Twilight Struggle', 6, 3, 45.02, 22),
(24, 'Dixit', 9, 14, 79.49, 52),
(25, 'Twilight Struggle', 8, 2, 103.89, 95),
(26, 'Azul', 13, 2, 24.52, 29),
(27, 'Codenames', 9, 13, 117.09, 47),
(28, 'Splendor', 12, 9, 64.71, 46),
(29, 'Lords of Waterdeep', 1, 8, 75.63, 86),
(30, '7 Wonders', 10, 13, 62.92, 97),
(31, 'King of Tokyo', 2, 7, 51.92, 33),
(32, 'Wingspan', 7, 4, 114.30, 57),
(33, '7 Wonders', 8, 1, 102.53, 89),
(34, 'Wingspan', 12, 3, 76.10, 79),
(35, 'Ticket to Ride', 7, 7, 80.00, 29),
(36, 'Risk', 14, 2, 104.90, 94),
(37, 'Risk', 5, 5, 91.80, 95),
(38, 'Ticket to Ride', 12, 3, 71.42, 91),
(39, 'Twilight Struggle', 3, 9, 95.11, 73),
(40, 'Twilight Struggle', 7, 7, 40.29, 85),
(41, 'Puerto Rico', 7, 6, 115.12, 14),
(42, 'Dixit', 14, 12, 82.06, 94),
(43, 'Catan', 9, 1, 116.48, 46),
(44, 'Dixit', 1, 14, 62.89, 35),
(45, 'Dixit', 11, 11, 46.14, 36),
(46, 'Lords of Waterdeep', 9, 1, 52.85, 69),
(47, 'Dominion', 2, 14, 42.53, 42),
(48, 'King of Tokyo', 2, 14, 35.51, 94),
(49, 'Codenames', 14, 9, 52.69, 53),
(50, 'Terraforming Mars', 4, 3, 116.11, 74),
(51, 'Dominion', 14, 6, 26.15, 18),
(52, 'Risk', 13, 5, 116.87, 52),
(53, 'Small World', 6, 6, 103.47, 11),
(54, 'Carcassonne', 1, 7, 81.92, 84),
(55, 'Puerto Rico', 11, 7, 119.91, 96),
(56, 'Azul', 11, 12, 40.97, 36),
(57, 'Twilight Struggle', 11, 2, 100.10, 78),
(58, 'Twilight Struggle', 12, 9, 61.48, 88),
(59, 'King of Tokyo', 2, 12, 75.79, 9),
(60, 'Small World', 15, 8, 63.47, 62),
(61, 'Twilight Struggle', 15, 12, 90.81, 89),
(62, 'Splendor', 4, 9, 111.46, 63),
(63, 'Lords of Waterdeep', 9, 9, 24.95, 44),
(64, 'Codenames', 9, 3, 46.82, 26),
(65, 'Risk', 1, 13, 31.73, 90),
(66, 'Dominion', 3, 7, 34.60, 83),
(67, 'Gloomhaven', 6, 3, 71.11, 46),
(68, 'Codenames', 2, 13, 114.42, 70),
(69, 'Puerto Rico', 4, 13, 93.79, 18),
(70, 'Dominion', 3, 6, 73.85, 65),
(71, 'Azul', 12, 5, 35.91, 76),
(72, 'Pandemic', 2, 12, 38.83, 84),
(73, 'Lords of Waterdeep', 7, 15, 96.98, 96),
(74, 'Lords of Waterdeep', 9, 6, 69.71, 31),
(75, 'Carcassonne', 14, 9, 118.36, 51),
(76, 'Puerto Rico', 9, 14, 46.88, 66),
(77, '7 Wonders', 15, 2, 114.62, 74),
(78, 'Dixit', 15, 9, 64.16, 74),
(79, 'Twilight Struggle', 5, 1, 97.98, 50),
(80, 'Splendor', 2, 4, 66.24, 23),
(81, 'The Settlers of Zarahemla', 14, 10, 113.68, 55),
(82, 'Small World', 7, 11, 65.61, 10),
(83, 'Risk', 14, 15, 39.32, 74),
(84, 'Small World', 12, 8, 34.31, 48),
(85, 'Dixit', 9, 4, 42.99, 13),
(86, 'Azul', 13, 11, 72.69, 12),
(87, 'Pandemic', 10, 5, 114.92, 15),
(88, 'Lords of Waterdeep', 9, 12, 90.94, 37),
(89, 'King of Tokyo', 5, 3, 32.64, 41),
(90, 'Azul', 4, 6, 115.52, 89),
(91, 'Carcassonne', 15, 15, 20.70, 32),
(92, 'Azul', 15, 9, 96.46, 80),
(93, 'Puerto Rico', 3, 13, 118.10, 12),
(94, 'Lords of Waterdeep', 9, 7, 103.62, 5),
(95, 'King of Tokyo', 12, 9, 61.27, 79),
(96, '7 Wonders', 9, 7, 63.45, 91),
(97, 'The Settlers of Zarahemla', 11, 13, 81.93, 25),
(98, 'Wingspan', 10, 13, 101.22, 36),
(99, 'Codenames', 12, 15, 45.82, 7),
(100, 'The Settlers of Zarahemla', 10, 14, 92.16, 16),
(101, 'Catan', 1, 13, 95.66, 56),
(102, 'Carcassonne', 12, 11, 24.56, 37),
(103, 'Azul', 1, 5, 42.36, 13),
(104, 'Twilight Struggle', 5, 7, 85.35, 44),
(105, 'Twilight Struggle', 15, 3, 44.55, 81),
(106, 'The Settlers of Zarahemla', 7, 1, 119.42, 78),
(107, 'Ticket to Ride', 8, 11, 111.02, 47),
(108, 'Pandemic', 13, 3, 117.53, 94),
(109, 'King of Tokyo', 11, 2, 64.72, 37),
(110, 'Gloomhaven', 14, 4, 64.30, 89),
(111, 'Terraforming Mars', 3, 11, 56.33, 45),
(112, 'Dominion', 6, 8, 30.33, 48),
(113, 'Terraforming Mars', 12, 6, 65.64, 99),
(114, 'Catan', 7, 15, 92.31, 61),
(115, 'Wingspan', 12, 2, 72.38, 6),
(116, '7 Wonders', 8, 8, 57.72, 33),
(117, 'Wingspan', 10, 14, 23.63, 46),
(118, 'Catan', 14, 5, 92.15, 34),
(119, 'Terraforming Mars', 13, 1, 93.76, 24),
(120, 'King of Tokyo', 9, 6, 72.46, 16),
(121, 'Azul', 3, 12, 25.51, 97),
(122, 'Wingspan', 15, 1, 44.61, 55),
(123, 'blue', 15, 3, 34.57, 72),
(124, 'Dominion', 8, 10, 20.92, 97),
(125, 'Terraforming Mars', 7, 14, 65.45, 76),
(126, 'Twilight Struggle', 14, 1, 31.18, 82),
(127, 'Small World', 3, 13, 87.07, 83),
(128, 'Codenames', 11, 9, 83.52, 71),
(129, 'Azul', 14, 5, 91.07, 6),
(130, 'The Settlers of Zarahemla', 11, 8, 90.64, 98),
(131, 'Splendor', 2, 10, 52.41, 87),
(132, 'Ticket to Ride', 6, 3, 105.57, 43),
(133, 'Lords of Waterdeep', 2, 4, 90.26, 44),
(134, 'Catan', 11, 6, 30.57, 86),
(135, 'Carcassonne', 7, 10, 68.47, 8),
(136, 'Lords of Waterdeep', 11, 12, 112.16, 61),
(137, 'The Settlers of Zarahemla', 15, 14, 84.52, 88),
(138, 'King of Tokyo', 14, 3, 93.32, 61),
(139, 'Dominion', 10, 10, 43.58, 38),
(140, 'Azul', 8, 4, 26.39, 97),
(141, 'Dominion', 1, 13, 94.65, 80),
(142, 'Dominion', 9, 13, 119.38, 11),
(143, 'The Settlers of Zarahemla', 5, 9, 54.70, 94),
(144, '7 Wonders', 14, 12, 113.19, 55),
(145, 'Terraforming Mars', 9, 4, 38.28, 83),
(146, 'Codenames', 10, 11, 65.85, 57),
(147, 'Pandemic', 9, 9, 94.33, 30),
(148, 'Codenames', 12, 9, 28.41, 68),
(149, 'Twilight Struggle', 8, 9, 85.65, 59),
(150, 'Lords of Waterdeep', 9, 3, 44.86, 83),
(151, 'King of Tokyo', 5, 14, 36.63, 47),
(152, 'Codenames', 5, 11, 78.83, 73),
(153, 'Codenames', 13, 6, 77.78, 32),
(154, 'Gloomhaven', 10, 2, 54.05, 30),
(155, 'Catan', 14, 9, 84.14, 51),
(156, 'Codenames', 14, 3, 31.70, 63),
(157, 'Terraforming Mars', 12, 11, 24.16, 63),
(158, 'Codenames', 12, 5, 36.85, 25),
(159, 'Carcassonne', 12, 13, 55.63, 29),
(160, 'Dixit', 3, 2, 115.62, 65),
(161, 'Wingspan', 2, 14, 107.40, 44),
(162, 'Twilight Struggle', 13, 15, 29.94, 21),
(163, 'Dixit', 13, 1, 55.35, 62),
(164, 'Gloomhaven', 15, 15, 79.39, 53),
(165, 'King of Tokyo', 15, 14, 117.05, 77),
(166, 'The Settlers of Zarahemla', 5, 12, 80.22, 28),
(167, 'King of Tokyo', 8, 10, 117.45, 94),
(168, 'Carcassonne', 9, 12, 90.41, 99),
(169, 'Risk', 13, 2, 21.16, 17),
(170, 'Azul', 6, 2, 112.13, 70),
(171, '7 Wonders', 10, 1, 59.04, 9),
(172, 'Dominion', 10, 1, 55.91, 18),
(173, 'Carcassonne', 14, 15, 38.67, 61),
(174, '7 Wonders', 4, 5, 43.73, 56),
(175, 'Terraforming Mars', 12, 1, 114.24, 94),
(176, 'Dominion', 12, 12, 118.70, 10),
(177, 'Codenames', 5, 2, 71.30, 51),
(178, 'Dominion', 12, 8, 59.02, 30),
(179, 'Dixit', 5, 5, 56.67, 89),
(180, 'Azul', 1, 10, 100.22, 64),
(181, 'Terraforming Mars', 6, 1, 47.08, 50),
(182, 'Codenames', 15, 12, 20.34, 52),
(183, 'Dominion', 8, 10, 116.09, 12),
(184, 'Dixit', 14, 3, 97.70, 89),
(185, 'Dixit', 8, 15, 41.60, 26),
(186, 'Lords of Waterdeep', 9, 15, 49.76, 49),
(187, 'Splendor', 2, 8, 117.68, 67),
(188, 'Splendor', 3, 7, 31.20, 90),
(189, 'Codenames', 11, 12, 78.47, 51),
(190, 'Puerto Rico', 7, 14, 95.07, 77),
(191, 'Azul', 10, 4, 46.86, 40),
(256, 'Codenames', 2, 7, 56.37, 56),
(257, 'The Settlers of Zarahemla', 11, 1, 98.61, 62),
(258, 'Pandemic', 5, 4, 26.81, 41),
(259, 'Lords of Waterdeep', 8, 11, 42.35, 14),
(260, 'King of Tokyo', 2, 8, 24.12, 38),
(261, 'Risk', 11, 13, 46.28, 49),
(262, 'Twilight Struggle', 2, 12, 110.76, 33),
(263, 'Codenames', 5, 13, 71.09, 11),
(264, 'Puerto Rico', 5, 7, 56.40, 47),
(265, 'Codenames', 5, 6, 52.39, 7),
(266, 'Small World', 5, 2, 28.17, 79),
(267, 'Risk', 10, 10, 99.49, 86),
(268, 'Gloomhaven', 1, 14, 58.64, 94),
(269, 'Lords of Waterdeep', 9, 7, 65.06, 18),
(270, 'Lords of Waterdeep', 11, 10, 81.50, 88),
(271, 'Carcassonne', 5, 6, 23.28, 98),
(272, 'Twilight Struggle', 15, 12, 22.30, 30),
(273, 'Twilight Struggle', 7, 7, 115.46, 43),
(274, '7 Wonders', 7, 1, 94.35, 24),
(275, 'Splendor', 8, 7, 90.72, 83),
(276, 'Lords of Waterdeep', 5, 1, 70.41, 54),
(277, 'Azul', 2, 11, 43.43, 15),
(278, 'Pandemic', 10, 13, 33.13, 6),
(279, 'Risk', 7, 9, 37.65, 72),
(280, 'Dixit', 3, 3, 77.47, 54),
(281, 'Puerto Rico', 10, 6, 40.85, 50),
(282, 'Carcassonne', 10, 12, 36.74, 84),
(283, 'Pandemic', 9, 11, 96.44, 74),
(284, 'Lords of Waterdeep', 2, 11, 83.31, 19),
(285, '7 Wonders', 1, 3, 21.18, 58),
(286, 'Puerto Rico', 10, 11, 105.00, 38),
(287, 'Dixit', 4, 1, 88.14, 13),
(288, 'Pandemic', 11, 12, 76.52, 42),
(289, 'Wingspan', 12, 6, 102.09, 72),
(290, 'Carcassonne', 1, 15, 61.17, 37),
(291, 'Puerto Rico', 14, 5, 97.46, 62),
(292, '7 Wonders', 5, 13, 105.38, 97),
(293, 'Dominion', 6, 13, 58.61, 11),
(294, 'Small World', 12, 5, 103.48, 44),
(295, 'Small World', 12, 14, 55.88, 90),
(296, 'Catan', 2, 14, 36.09, 26),
(297, 'Ticket to Ride', 5, 14, 38.82, 44),
(298, 'Splendor', 13, 14, 91.36, 45),
(299, 'Catan', 6, 14, 20.89, 86),
(300, 'Azul', 7, 14, 64.08, 7),
(301, 'Ticket to Ride', 8, 8, 22.19, 57),
(302, 'Carcassonne', 13, 9, 104.79, 70),
(303, 'Terraforming Mars', 9, 3, 43.83, 80),
(304, 'Azul', 5, 1, 36.97, 91),
(305, 'Ticket to Ride', 11, 14, 33.95, 19),
(306, 'Catan', 3, 15, 77.82, 9),
(307, 'Catan', 8, 2, 69.30, 77),
(308, 'Catan', 14, 2, 102.42, 69),
(309, 'Carcassonne', 14, 12, 82.71, 15),
(310, '7 Wonders', 6, 2, 111.74, 54),
(311, 'Carcassonne', 15, 6, 66.00, 28),
(312, 'Pandemic', 1, 1, 23.31, 69),
(313, '7 Wonders', 14, 15, 42.48, 68),
(314, 'Catan', 8, 5, 28.93, 34),
(315, '7 Wonders', 6, 11, 27.30, 54),
(316, '7 Wonders', 15, 11, 62.92, 72),
(317, 'Pandemic', 13, 15, 56.17, 96),
(318, 'Carcassonne', 14, 6, 55.02, 70),
(319, 'Dixit', 2, 11, 44.60, 59),
(320, 'Small World', 1, 8, 42.55, 79),
(321, 'Ticket to Ride', 8, 3, 59.48, 22),
(322, 'Codenames', 15, 4, 69.83, 60),
(323, 'Catan', 7, 7, 40.44, 39),
(324, 'King of Tokyo', 4, 6, 109.75, 10),
(325, 'Dixit', 4, 6, 48.08, 24),
(326, '7 Wonders', 15, 4, 43.54, 85),
(327, 'King of Tokyo', 8, 14, 45.20, 65),
(328, 'Twilight Struggle', 6, 9, 100.58, 63),
(329, 'Catan', 9, 15, 85.98, 22),
(330, 'Puerto Rico', 5, 5, 23.10, 12),
(331, 'The Settlers of Zarahemla', 7, 2, 86.36, 84),
(332, 'Dixit', 15, 1, 45.28, 94),
(333, 'Carcassonne', 7, 3, 50.44, 25),
(334, 'Gloomhaven', 3, 5, 72.67, 27),
(335, 'Small World', 11, 13, 111.72, 56),
(336, 'Dixit', 3, 7, 35.38, 99),
(337, 'Terraforming Mars', 7, 10, 73.84, 36),
(338, 'Carcassonne', 10, 7, 112.20, 69),
(339, 'Codenames', 13, 8, 42.46, 41),
(340, 'Ticket to Ride', 13, 13, 27.17, 92),
(341, 'Gloomhaven', 14, 9, 87.56, 45),
(342, 'Carcassonne', 13, 14, 31.34, 40),
(343, 'Ticket to Ride', 9, 4, 103.27, 63),
(344, 'Gloomhaven', 1, 10, 75.71, 93),
(345, 'Splendor', 7, 15, 28.05, 82),
(346, 'Azul', 3, 11, 60.23, 30),
(347, '7 Wonders', 14, 9, 21.15, 89),
(348, 'Dixit', 9, 12, 25.49, 65),
(349, 'Puerto Rico', 2, 4, 27.94, 55),
(350, 'Pandemic', 11, 11, 107.21, 74),
(351, 'Codenames', 15, 14, 82.60, 10),
(352, 'Wingspan', 1, 9, 73.34, 15),
(353, 'Splendor', 2, 6, 97.19, 41),
(354, 'Azul', 11, 8, 55.11, 60),
(355, 'Dixit', 13, 5, 44.61, 75),
(356, 'Dixit', 1, 11, 41.15, 99),
(357, 'Azul', 5, 10, 47.39, 75),
(358, 'Dixit', 3, 4, 40.22, 74),
(359, 'Pandemic', 2, 4, 97.71, 44),
(360, 'Small World', 14, 8, 90.93, 88),
(361, 'Azul', 5, 2, 96.10, 20),
(362, 'Splendor', 5, 6, 92.93, 21),
(363, 'Twilight Struggle', 15, 6, 99.52, 39),
(364, 'Terraforming Mars', 9, 2, 112.66, 33),
(365, 'Codenames', 1, 6, 85.66, 42),
(366, 'Pandemic', 9, 3, 71.34, 14),
(367, 'Risk', 2, 9, 54.14, 33),
(368, 'Splendor', 9, 7, 64.75, 23),
(369, 'Azul', 9, 1, 78.12, 12),
(370, 'Azul', 1, 13, 61.13, 83),
(371, 'Small World', 8, 14, 41.30, 89),
(372, 'Codenames', 1, 5, 113.85, 98),
(373, 'Azul', 13, 1, 52.80, 28),
(374, 'Puerto Rico', 5, 13, 110.07, 32),
(375, 'King of Tokyo', 8, 1, 40.05, 73),
(376, 'Small World', 7, 14, 92.27, 72),
(377, 'Puerto Rico', 4, 14, 60.41, 40),
(378, 'Small World', 6, 7, 101.08, 77),
(379, 'Codenames', 9, 13, 115.62, 71),
(380, 'Codenames', 8, 10, 80.54, 25),
(381, 'Catan', 4, 4, 81.05, 98),
(382, 'Lords of Waterdeep', 13, 8, 69.66, 29),
(383, 'Ticket to Ride', 10, 7, 44.68, 39),
(384, 'Azul', 5, 9, 53.31, 6),
(385, 'Wingspan', 3, 13, 118.48, 98),
(386, 'Terraforming Mars', 6, 10, 99.34, 88),
(387, 'Catan', 9, 4, 108.50, 45),
(388, 'Ticket to Ride', 4, 15, 57.74, 53),
(389, 'Pandemic', 8, 9, 49.32, 32),
(390, 'Puerto Rico', 11, 12, 46.99, 89),
(391, 'Dixit', 2, 7, 87.69, 60),
(392, 'Ticket to Ride', 1, 10, 106.67, 28),
(393, 'Codenames', 6, 12, 26.16, 53),
(394, 'Splendor', 7, 8, 72.30, 80),
(395, 'Lords of Waterdeep', 7, 11, 37.80, 47),
(396, 'Codenames', 8, 5, 31.96, 85),
(397, 'Risk', 15, 11, 95.86, 91),
(398, 'Terraforming Mars', 4, 12, 65.67, 6),
(399, 'Splendor', 1, 1, 25.36, 35),
(400, 'Gloomhaven', 12, 14, 115.84, 57),
(401, 'Twilight Struggle', 7, 8, 42.74, 84),
(402, 'Risk', 15, 15, 51.19, 51),
(403, 'Dixit', 4, 10, 101.01, 95),
(404, 'Risk', 2, 7, 58.50, 32),
(405, 'Carcassonne', 5, 9, 113.11, 62),
(406, 'Small World', 11, 5, 29.47, 17),
(407, 'Terraforming Mars', 4, 13, 63.69, 87),
(408, 'Ticket to Ride', 8, 7, 59.13, 94),
(409, 'Carcassonne', 5, 1, 70.91, 16),
(410, 'Codenames', 12, 6, 36.41, 77),
(411, 'Wingspan', 14, 5, 57.92, 47),
(412, 'Splendor', 9, 3, 110.52, 93),
(413, 'Terraforming Mars', 6, 3, 37.88, 37),
(414, 'Dixit', 12, 6, 106.54, 91),
(415, 'Carcassonne', 15, 9, 60.35, 55),
(416, 'Puerto Rico', 14, 13, 111.72, 92),
(417, 'Lords of Waterdeep', 14, 14, 68.43, 5),
(418, 'Gloomhaven', 3, 11, 117.90, 30),
(419, 'Dominion', 1, 8, 44.76, 37),
(420, 'Catan', 6, 11, 57.52, 88),
(421, 'Splendor', 10, 1, 53.27, 42),
(422, 'Small World', 4, 11, 68.36, 35),
(423, 'Pandemic', 8, 7, 90.73, 47),
(424, 'Wingspan', 7, 7, 72.52, 29),
(425, 'Carcassonne', 6, 15, 112.29, 93),
(426, 'Wingspan', 7, 5, 85.18, 88),
(427, 'Dixit', 3, 4, 42.77, 61),
(428, 'Azul', 6, 2, 81.82, 38),
(429, 'Codenames', 4, 6, 50.90, 96),
(430, 'Carcassonne', 1, 3, 22.64, 76),
(431, 'Catan', 5, 3, 97.21, 89),
(432, 'Wingspan', 11, 5, 25.20, 23),
(433, '7 Wonders', 12, 13, 51.49, 34),
(434, 'Twilight Struggle', 8, 4, 98.74, 97),
(435, 'Lords of Waterdeep', 13, 10, 68.64, 92),
(436, '7 Wonders', 7, 2, 85.45, 72),
(437, 'Puerto Rico', 13, 9, 42.34, 76),
(438, 'Dominion', 6, 4, 40.25, 66),
(439, 'Splendor', 1, 12, 36.60, 97),
(440, 'Splendor', 10, 13, 100.98, 95),
(441, 'Terraforming Mars', 15, 12, 49.92, 83),
(442, 'Pandemic', 1, 1, 27.45, 29),
(443, 'Gloomhaven', 7, 6, 108.26, 82),
(444, 'Puerto Rico', 14, 12, 79.95, 36),
(445, 'Pandemic', 5, 4, 33.04, 23),
(446, 'Risk', 8, 11, 44.41, 97),
(517, 'Jaipur', 5, 14, 40.23, 33),
(534, '7 Wonders Duel', 3, 9, 98.17, 59),
(548, 'Jaipur', 13, 12, 35.63, 94),
(556, 'Jaipur', 15, 6, 34.99, 6),
(557, 'El Grande', 3, 3, 103.16, 28),
(565, 'Power Grid', 11, 5, 91.85, 23),
(572, 'Hive', 13, 1, 29.14, 28),
(576, 'Hive', 2, 1, 69.83, 66),
(599, 'Arboretum', 8, 2, 99.42, 52),
(622, 'Arboretum', 15, 14, 50.16, 55),
(647, 'Jaipur', 7, 7, 74.50, 21),
(651, '7 Wonders Duel', 4, 13, 98.02, 31),
(655, 'Power Grid', 8, 11, 79.36, 87),
(661, 'Arboretum', 1, 8, 113.96, 53),
(662, 'Arboretum', 5, 6, 56.68, 94),
(668, 'El Grande', 14, 2, 29.33, 23),
(684, '7 Wonders Duel', 7, 13, 99.66, 19),
(688, 'Hive', 12, 14, 81.00, 20),
(699, 'El Grande', 5, 6, 59.02, 39),
(700, 'El Grande', 7, 5, 109.95, 35),
(766, 'Solitario', 13, 9, 3.37, 55),
(784, 'Poker', 2, 1, 5.74, 69),
(786, 'Rummy', 5, 15, 2.90, 79),
(790, 'Solitario', 2, 1, 1.97, 91),
(808, 'Solitario', 1, 2, 4.81, 21),
(853, 'Rummy', 4, 1, 8.08, 17),
(912, 'Hearts', 5, 7, 1.09, 19),
(922, 'Solitario', 7, 13, 5.82, 41),
(927, 'Bridge', 8, 11, 9.94, 45),
(951, 'Bridge', 11, 6, 5.00, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `telefono`) VALUES
(1, 'Asmodee', 555),
(2, 'Ravensburger', 555),
(3, 'Hasbro', 555),
(4, 'Matele', 555),
(5, 'Fantasy Flight Games', 555),
(6, 'Days of Wonder', NULL),
(7, 'Gamewright', NULL),
(8, 'Z-Man Games', NULL),
(9, 'JuegosFantásticos Lt', NULL),
(10, 'DiversiónInterminabl', NULL),
(11, 'InnovaciónLúdica Inc', NULL),
(12, 'Ludomágico Corporati', NULL),
(13, 'Juegolandia Global', NULL),
(14, 'CartasCreativas Corp', NULL),
(15, 'JuegosdelFuturo Ltd.', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `fk_cat` (`id_cat`),
  ADD KEY `fk_pro` (`id_pro`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `fk_cat` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `fk_pro` FOREIGN KEY (`id_pro`) REFERENCES `proveedor` (`id_proveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
