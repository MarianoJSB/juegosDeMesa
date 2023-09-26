-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 21:33:11
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
(4, 'Cartas'),
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
  `ganancia` decimal(8,2) GENERATED ALWAYS AS (`precio` * 0.35) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juego`, `nombre`, `id_cat`, `id_pro`, `precio`) VALUES
(1, 'Codenames', 10, 14, 98.62),
(2, 'Carcassonne', 7, 5, 84.32),
(3, 'Catan', 3, 4, 42.64),
(4, 'Twilight Struggle', 15, 7, 94.47),
(5, 'Ticket to Ride', 15, 5, 65.98),
(6, 'Twilight Struggle', 8, 8, 87.91),
(7, 'Gloomhaven', 2, 14, 111.70),
(8, 'Catan', 8, 5, 22.16),
(9, 'Codenames', 1, 3, 116.84),
(10, 'Dixit', 14, 11, 108.70),
(11, 'Small World', 1, 9, 101.05),
(12, 'Small World', 11, 14, 109.14),
(13, 'Wingspan', 6, 10, 62.78),
(14, 'Puerto Rico', 12, 7, 35.43),
(15, 'Carcassonne', 11, 2, 99.65),
(16, 'Dominion', 6, 2, 74.96),
(17, 'Carcassonne', 1, 11, 66.61),
(18, 'Puerto Rico', 2, 5, 64.56),
(19, 'Codenames', 7, 2, 26.57),
(20, 'Ticket to Ride', 12, 1, 42.09),
(21, 'Wingspan', 7, 7, 109.70),
(22, 'Dominion', 12, 5, 99.34),
(23, 'Twilight Struggle', 6, 3, 45.02),
(24, 'Dixit', 9, 14, 79.49),
(25, 'Twilight Struggle', 8, 2, 103.89),
(26, 'Azul', 13, 2, 24.52),
(27, 'Codenames', 9, 13, 117.09),
(28, 'Splendor', 12, 9, 64.71),
(29, 'Lords of Waterdeep', 1, 8, 75.63),
(30, '7 Wonders', 10, 13, 62.92),
(31, 'King of Tokyo', 2, 7, 51.92),
(32, 'Wingspan', 7, 4, 114.30),
(33, '7 Wonders', 8, 1, 102.53),
(34, 'Wingspan', 12, 3, 76.10),
(35, 'Ticket to Ride', 7, 7, 80.00),
(36, 'Risk', 14, 2, 104.90),
(37, 'Risk', 5, 5, 91.80),
(38, 'Ticket to Ride', 12, 3, 71.42),
(39, 'Twilight Struggle', 3, 9, 95.11),
(40, 'Twilight Struggle', 7, 7, 40.29),
(41, 'Puerto Rico', 7, 6, 115.12),
(42, 'Dixit', 14, 12, 82.06),
(43, 'Catan', 9, 1, 116.48),
(44, 'Dixit', 1, 14, 62.89),
(45, 'Dixit', 11, 11, 46.14),
(46, 'Lords of Waterdeep', 9, 1, 52.85),
(47, 'Dominion', 2, 14, 42.53),
(48, 'King of Tokyo', 2, 14, 35.51),
(49, 'Codenames', 14, 9, 52.69),
(50, 'Terraforming Mars', 4, 3, 116.11),
(51, 'Dominion', 14, 6, 26.15),
(52, 'Risk', 13, 5, 116.87),
(53, 'Small World', 6, 6, 103.47),
(54, 'Carcassonne', 1, 7, 81.92),
(55, 'Puerto Rico', 11, 7, 119.91),
(56, 'Azul', 11, 12, 40.97),
(57, 'Twilight Struggle', 11, 2, 100.10),
(58, 'Twilight Struggle', 12, 9, 61.48),
(59, 'King of Tokyo', 2, 12, 75.79),
(60, 'Small World', 15, 8, 63.47),
(61, 'Twilight Struggle', 15, 12, 90.81),
(62, 'Splendor', 4, 9, 111.46),
(63, 'Lords of Waterdeep', 9, 9, 24.95),
(64, 'Codenames', 9, 3, 46.82),
(65, 'Risk', 1, 13, 31.73),
(66, 'Dominion', 3, 7, 34.60),
(67, 'Gloomhaven', 6, 3, 71.11),
(68, 'Codenames', 2, 13, 114.42),
(69, 'Puerto Rico', 4, 13, 93.79),
(70, 'Dominion', 3, 6, 73.85),
(71, 'Azul', 12, 5, 35.91),
(72, 'Pandemic', 2, 12, 38.83),
(73, 'Lords of Waterdeep', 7, 15, 96.98),
(74, 'Lords of Waterdeep', 9, 6, 69.71),
(75, 'Carcassonne', 14, 9, 118.36),
(76, 'Puerto Rico', 9, 14, 46.88),
(77, '7 Wonders', 15, 2, 114.62),
(78, 'Dixit', 15, 9, 64.16),
(79, 'Twilight Struggle', 5, 1, 97.98),
(80, 'Splendor', 2, 4, 66.24),
(81, 'The Settlers of Zarahemla', 14, 10, 113.68),
(82, 'Small World', 7, 11, 65.61),
(83, 'Risk', 14, 15, 39.32),
(84, 'Small World', 12, 8, 34.31),
(85, 'Dixit', 9, 4, 42.99),
(86, 'Azul', 13, 11, 72.69),
(87, 'Pandemic', 10, 5, 114.92),
(88, 'Lords of Waterdeep', 9, 12, 90.94),
(89, 'King of Tokyo', 5, 3, 32.64),
(90, 'Azul', 4, 6, 115.52),
(91, 'Carcassonne', 15, 15, 20.70),
(92, 'Azul', 15, 9, 96.46),
(93, 'Puerto Rico', 3, 13, 118.10),
(94, 'Lords of Waterdeep', 9, 7, 103.62),
(95, 'King of Tokyo', 12, 9, 61.27),
(96, '7 Wonders', 9, 7, 63.45),
(97, 'The Settlers of Zarahemla', 11, 13, 81.93),
(98, 'Wingspan', 10, 13, 101.22),
(99, 'Codenames', 12, 15, 45.82),
(100, 'The Settlers of Zarahemla', 10, 14, 92.16),
(101, 'Catan', 1, 13, 95.66),
(102, 'Carcassonne', 12, 11, 24.56),
(103, 'Azul', 1, 5, 42.36),
(104, 'Twilight Struggle', 5, 7, 85.35),
(105, 'Twilight Struggle', 15, 3, 44.55),
(106, 'The Settlers of Zarahemla', 7, 1, 119.42),
(107, 'Ticket to Ride', 8, 11, 111.02),
(108, 'Pandemic', 13, 3, 117.53),
(109, 'King of Tokyo', 11, 2, 64.72),
(110, 'Gloomhaven', 14, 4, 64.30),
(111, 'Terraforming Mars', 3, 11, 56.33),
(112, 'Dominion', 6, 8, 30.33),
(113, 'Terraforming Mars', 12, 6, 65.64),
(114, 'Catan', 7, 15, 92.31),
(115, 'Wingspan', 12, 2, 72.38),
(116, '7 Wonders', 8, 8, 57.72),
(117, 'Wingspan', 10, 14, 23.63),
(118, 'Catan', 14, 5, 92.15),
(119, 'Terraforming Mars', 13, 1, 93.76),
(120, 'King of Tokyo', 9, 6, 72.46),
(121, 'Azul', 3, 12, 25.51),
(122, 'Wingspan', 15, 1, 44.61),
(123, 'Azul', 15, 3, 39.57),
(124, 'Dominion', 8, 10, 20.92),
(125, 'Terraforming Mars', 7, 14, 65.45),
(126, 'Twilight Struggle', 14, 1, 31.18),
(127, 'Small World', 3, 13, 87.07),
(128, 'Codenames', 11, 9, 83.52),
(129, 'Azul', 14, 5, 91.07),
(130, 'The Settlers of Zarahemla', 11, 8, 90.64),
(131, 'Splendor', 2, 10, 52.41),
(132, 'Ticket to Ride', 6, 3, 105.57),
(133, 'Lords of Waterdeep', 2, 4, 90.26),
(134, 'Catan', 11, 6, 30.57),
(135, 'Carcassonne', 7, 10, 68.47),
(136, 'Lords of Waterdeep', 11, 12, 112.16),
(137, 'The Settlers of Zarahemla', 15, 14, 84.52),
(138, 'King of Tokyo', 14, 3, 93.32),
(139, 'Dominion', 10, 10, 43.58),
(140, 'Azul', 8, 4, 26.39),
(141, 'Dominion', 1, 13, 94.65),
(142, 'Dominion', 9, 13, 119.38),
(143, 'The Settlers of Zarahemla', 5, 9, 54.70),
(144, '7 Wonders', 14, 12, 113.19),
(145, 'Terraforming Mars', 9, 4, 38.28),
(146, 'Codenames', 10, 11, 65.85),
(147, 'Pandemic', 9, 9, 94.33),
(148, 'Codenames', 12, 9, 28.41),
(149, 'Twilight Struggle', 8, 9, 85.65),
(150, 'Lords of Waterdeep', 9, 3, 44.86),
(151, 'King of Tokyo', 5, 14, 36.63),
(152, 'Codenames', 5, 11, 78.83),
(153, 'Codenames', 13, 6, 77.78),
(154, 'Gloomhaven', 10, 2, 54.05),
(155, 'Catan', 14, 9, 84.14),
(156, 'Codenames', 14, 3, 31.70),
(157, 'Terraforming Mars', 12, 11, 24.16),
(158, 'Codenames', 12, 5, 36.85),
(159, 'Carcassonne', 12, 13, 55.63),
(160, 'Dixit', 3, 2, 115.62),
(161, 'Wingspan', 2, 14, 107.40),
(162, 'Twilight Struggle', 13, 15, 29.94),
(163, 'Dixit', 13, 1, 55.35),
(164, 'Gloomhaven', 15, 15, 79.39),
(165, 'King of Tokyo', 15, 14, 117.05),
(166, 'The Settlers of Zarahemla', 5, 12, 80.22),
(167, 'King of Tokyo', 8, 10, 117.45),
(168, 'Carcassonne', 9, 12, 90.41),
(169, 'Risk', 13, 2, 21.16),
(170, 'Azul', 6, 2, 112.13),
(171, '7 Wonders', 10, 1, 59.04),
(172, 'Dominion', 10, 1, 55.91),
(173, 'Carcassonne', 14, 15, 38.67),
(174, '7 Wonders', 4, 5, 43.73),
(175, 'Terraforming Mars', 12, 1, 114.24),
(176, 'Dominion', 12, 12, 118.70),
(177, 'Codenames', 5, 2, 71.30),
(178, 'Dominion', 12, 8, 59.02),
(179, 'Dixit', 5, 5, 56.67),
(180, 'Azul', 1, 10, 100.22),
(181, 'Terraforming Mars', 6, 1, 47.08),
(182, 'Codenames', 15, 12, 20.34),
(183, 'Dominion', 8, 10, 116.09),
(184, 'Dixit', 14, 3, 97.70),
(185, 'Dixit', 8, 15, 41.60),
(186, 'Lords of Waterdeep', 9, 15, 49.76),
(187, 'Splendor', 2, 8, 117.68),
(188, 'Splendor', 3, 7, 31.20),
(189, 'Codenames', 11, 12, 78.47),
(190, 'Puerto Rico', 7, 14, 95.07),
(191, 'Azul', 10, 4, 46.86),
(256, 'Codenames', 2, 7, 56.37),
(257, 'The Settlers of Zarahemla', 11, 1, 98.61),
(258, 'Pandemic', 5, 4, 26.81),
(259, 'Lords of Waterdeep', 8, 11, 42.35),
(260, 'King of Tokyo', 2, 8, 24.12),
(261, 'Risk', 11, 13, 46.28),
(262, 'Twilight Struggle', 2, 12, 110.76),
(263, 'Codenames', 5, 13, 71.09),
(264, 'Puerto Rico', 5, 7, 56.40),
(265, 'Codenames', 5, 6, 52.39),
(266, 'Small World', 5, 2, 28.17),
(267, 'Risk', 10, 10, 99.49),
(268, 'Gloomhaven', 1, 14, 58.64),
(269, 'Lords of Waterdeep', 9, 7, 65.06),
(270, 'Lords of Waterdeep', 11, 10, 81.50),
(271, 'Carcassonne', 5, 6, 23.28),
(272, 'Twilight Struggle', 15, 12, 22.30),
(273, 'Twilight Struggle', 7, 7, 115.46),
(274, '7 Wonders', 7, 1, 94.35),
(275, 'Splendor', 8, 7, 90.72),
(276, 'Lords of Waterdeep', 5, 1, 70.41),
(277, 'Azul', 2, 11, 43.43),
(278, 'Pandemic', 10, 13, 33.13),
(279, 'Risk', 7, 9, 37.65),
(280, 'Dixit', 3, 3, 77.47),
(281, 'Puerto Rico', 10, 6, 40.85),
(282, 'Carcassonne', 10, 12, 36.74),
(283, 'Pandemic', 9, 11, 96.44),
(284, 'Lords of Waterdeep', 2, 11, 83.31),
(285, '7 Wonders', 1, 3, 21.18),
(286, 'Puerto Rico', 10, 11, 105.00),
(287, 'Dixit', 4, 1, 88.14),
(288, 'Pandemic', 11, 12, 76.52),
(289, 'Wingspan', 12, 6, 102.09),
(290, 'Carcassonne', 1, 15, 61.17),
(291, 'Puerto Rico', 14, 5, 97.46),
(292, '7 Wonders', 5, 13, 105.38),
(293, 'Dominion', 6, 13, 58.61),
(294, 'Small World', 12, 5, 103.48),
(295, 'Small World', 12, 14, 55.88),
(296, 'Catan', 2, 14, 36.09),
(297, 'Ticket to Ride', 5, 14, 38.82),
(298, 'Splendor', 13, 14, 91.36),
(299, 'Catan', 6, 14, 20.89),
(300, 'Azul', 7, 14, 64.08),
(301, 'Ticket to Ride', 8, 8, 22.19),
(302, 'Carcassonne', 13, 9, 104.79),
(303, 'Terraforming Mars', 9, 3, 43.83),
(304, 'Azul', 5, 1, 36.97),
(305, 'Ticket to Ride', 11, 14, 33.95),
(306, 'Catan', 3, 15, 77.82),
(307, 'Catan', 8, 2, 69.30),
(308, 'Catan', 14, 2, 102.42),
(309, 'Carcassonne', 14, 12, 82.71),
(310, '7 Wonders', 6, 2, 111.74),
(311, 'Carcassonne', 15, 6, 66.00),
(312, 'Pandemic', 1, 1, 23.31),
(313, '7 Wonders', 14, 15, 42.48),
(314, 'Catan', 8, 5, 28.93),
(315, '7 Wonders', 6, 11, 27.30),
(316, '7 Wonders', 15, 11, 62.92),
(317, 'Pandemic', 13, 15, 56.17),
(318, 'Carcassonne', 14, 6, 55.02),
(319, 'Dixit', 2, 11, 44.60),
(320, 'Small World', 1, 8, 42.55),
(321, 'Ticket to Ride', 8, 3, 59.48),
(322, 'Codenames', 15, 4, 69.83),
(323, 'Catan', 7, 7, 40.44),
(324, 'King of Tokyo', 4, 6, 109.75),
(325, 'Dixit', 4, 6, 48.08),
(326, '7 Wonders', 15, 4, 43.54),
(327, 'King of Tokyo', 8, 14, 45.20),
(328, 'Twilight Struggle', 6, 9, 100.58),
(329, 'Catan', 9, 15, 85.98),
(330, 'Puerto Rico', 5, 5, 23.10),
(331, 'The Settlers of Zarahemla', 7, 2, 86.36),
(332, 'Dixit', 15, 1, 45.28),
(333, 'Carcassonne', 7, 3, 50.44),
(334, 'Gloomhaven', 3, 5, 72.67),
(335, 'Small World', 11, 13, 111.72),
(336, 'Dixit', 3, 7, 35.38),
(337, 'Terraforming Mars', 7, 10, 73.84),
(338, 'Carcassonne', 10, 7, 112.20),
(339, 'Codenames', 13, 8, 42.46),
(340, 'Ticket to Ride', 13, 13, 27.17),
(341, 'Gloomhaven', 14, 9, 87.56),
(342, 'Carcassonne', 13, 14, 31.34),
(343, 'Ticket to Ride', 9, 4, 103.27),
(344, 'Gloomhaven', 1, 10, 75.71),
(345, 'Splendor', 7, 15, 28.05),
(346, 'Azul', 3, 11, 60.23),
(347, '7 Wonders', 14, 9, 21.15),
(348, 'Dixit', 9, 12, 25.49),
(349, 'Puerto Rico', 2, 4, 27.94),
(350, 'Pandemic', 11, 11, 107.21),
(351, 'Codenames', 15, 14, 82.60),
(352, 'Wingspan', 1, 9, 73.34),
(353, 'Splendor', 2, 6, 97.19),
(354, 'Azul', 11, 8, 55.11),
(355, 'Dixit', 13, 5, 44.61),
(356, 'Dixit', 1, 11, 41.15),
(357, 'Azul', 5, 10, 47.39),
(358, 'Dixit', 3, 4, 40.22),
(359, 'Pandemic', 2, 4, 97.71),
(360, 'Small World', 14, 8, 90.93),
(361, 'Azul', 5, 2, 96.10),
(362, 'Splendor', 5, 6, 92.93),
(363, 'Twilight Struggle', 15, 6, 99.52),
(364, 'Terraforming Mars', 9, 2, 112.66),
(365, 'Codenames', 1, 6, 85.66),
(366, 'Pandemic', 9, 3, 71.34),
(367, 'Risk', 2, 9, 54.14),
(368, 'Splendor', 9, 7, 64.75),
(369, 'Azul', 9, 1, 78.12),
(370, 'Azul', 1, 13, 61.13),
(371, 'Small World', 8, 14, 41.30),
(372, 'Codenames', 1, 5, 113.85),
(373, 'Azul', 13, 1, 52.80),
(374, 'Puerto Rico', 5, 13, 110.07),
(375, 'King of Tokyo', 8, 1, 40.05),
(376, 'Small World', 7, 14, 92.27),
(377, 'Puerto Rico', 4, 14, 60.41),
(378, 'Small World', 6, 7, 101.08),
(379, 'Codenames', 9, 13, 115.62),
(380, 'Codenames', 8, 10, 80.54),
(381, 'Catan', 4, 4, 81.05),
(382, 'Lords of Waterdeep', 13, 8, 69.66),
(383, 'Ticket to Ride', 10, 7, 44.68),
(384, 'Azul', 5, 9, 53.31),
(385, 'Wingspan', 3, 13, 118.48),
(386, 'Terraforming Mars', 6, 10, 99.34),
(387, 'Catan', 9, 4, 108.50),
(388, 'Ticket to Ride', 4, 15, 57.74),
(389, 'Pandemic', 8, 9, 49.32),
(390, 'Puerto Rico', 11, 12, 46.99),
(391, 'Dixit', 2, 7, 87.69),
(392, 'Ticket to Ride', 1, 10, 106.67),
(393, 'Codenames', 6, 12, 26.16),
(394, 'Splendor', 7, 8, 72.30),
(395, 'Lords of Waterdeep', 7, 11, 37.80),
(396, 'Codenames', 8, 5, 31.96),
(397, 'Risk', 15, 11, 95.86),
(398, 'Terraforming Mars', 4, 12, 65.67),
(399, 'Splendor', 1, 1, 25.36),
(400, 'Gloomhaven', 12, 14, 115.84),
(401, 'Twilight Struggle', 7, 8, 42.74),
(402, 'Risk', 15, 15, 51.19),
(403, 'Dixit', 4, 10, 101.01),
(404, 'Risk', 2, 7, 58.50),
(405, 'Carcassonne', 5, 9, 113.11),
(406, 'Small World', 11, 5, 29.47),
(407, 'Terraforming Mars', 4, 13, 63.69),
(408, 'Ticket to Ride', 8, 7, 59.13),
(409, 'Carcassonne', 5, 1, 70.91),
(410, 'Codenames', 12, 6, 36.41),
(411, 'Wingspan', 14, 5, 57.92),
(412, 'Splendor', 9, 3, 110.52),
(413, 'Terraforming Mars', 6, 3, 37.88),
(414, 'Dixit', 12, 6, 106.54),
(415, 'Carcassonne', 15, 9, 60.35),
(416, 'Puerto Rico', 14, 13, 111.72),
(417, 'Lords of Waterdeep', 14, 14, 68.43),
(418, 'Gloomhaven', 3, 11, 117.90),
(419, 'Dominion', 1, 8, 44.76),
(420, 'Catan', 6, 11, 57.52),
(421, 'Splendor', 10, 1, 53.27),
(422, 'Small World', 4, 11, 68.36),
(423, 'Pandemic', 8, 7, 90.73),
(424, 'Wingspan', 7, 7, 72.52),
(425, 'Carcassonne', 6, 15, 112.29),
(426, 'Wingspan', 7, 5, 85.18),
(427, 'Dixit', 3, 4, 42.77),
(428, 'Azul', 6, 2, 81.82),
(429, 'Codenames', 4, 6, 50.90),
(430, 'Carcassonne', 1, 3, 22.64),
(431, 'Catan', 5, 3, 97.21),
(432, 'Wingspan', 11, 5, 25.20),
(433, '7 Wonders', 12, 13, 51.49),
(434, 'Twilight Struggle', 8, 4, 98.74),
(435, 'Lords of Waterdeep', 13, 10, 68.64),
(436, '7 Wonders', 7, 2, 85.45),
(437, 'Puerto Rico', 13, 9, 42.34),
(438, 'Dominion', 6, 4, 40.25),
(439, 'Splendor', 1, 12, 36.60),
(440, 'Splendor', 10, 13, 100.98),
(441, 'Terraforming Mars', 15, 12, 49.92),
(442, 'Pandemic', 1, 1, 27.45),
(443, 'Gloomhaven', 7, 6, 108.26),
(444, 'Puerto Rico', 14, 12, 79.95),
(445, 'Pandemic', 5, 4, 33.04),
(446, 'Risk', 8, 11, 44.41),
(517, 'Jaipur', 5, 14, 40.23),
(534, '7 Wonders Duel', 3, 9, 98.17),
(548, 'Jaipur', 13, 12, 35.63),
(556, 'Jaipur', 15, 6, 34.99),
(557, 'El Grande', 3, 3, 103.16),
(565, 'Power Grid', 11, 5, 91.85),
(572, 'Hive', 13, 1, 29.14),
(576, 'Hive', 2, 1, 69.83),
(599, 'Arboretum', 8, 2, 99.42),
(622, 'Arboretum', 15, 14, 50.16),
(647, 'Jaipur', 7, 7, 74.50),
(651, '7 Wonders Duel', 4, 13, 98.02),
(655, 'Power Grid', 8, 11, 79.36),
(661, 'Arboretum', 1, 8, 113.96),
(662, 'Arboretum', 5, 6, 56.68),
(668, 'El Grande', 14, 2, 29.33),
(684, '7 Wonders Duel', 7, 13, 99.66),
(688, 'Hive', 12, 14, 81.00),
(699, 'El Grande', 5, 6, 59.02),
(700, 'El Grande', 7, 5, 109.95),
(766, 'Solitario', 13, 9, 3.37),
(784, 'Poker', 2, 1, 5.74),
(786, 'Rummy', 5, 15, 2.90),
(790, 'Solitario', 2, 1, 1.97),
(808, 'Solitario', 1, 2, 4.81),
(853, 'Rummy', 4, 1, 8.08),
(912, 'Hearts', 5, 7, 1.09),
(922, 'Solitario', 7, 13, 5.82),
(927, 'Bridge', 8, 11, 9.94),
(951, 'Bridge', 11, 6, 5.00);

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
(4, 'Mattel', 555),
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