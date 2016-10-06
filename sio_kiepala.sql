-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: mysql1.paris1.alwaysdata.com
-- Generation Time: Oct 02, 2016 at 07:51 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sio_kiepala`
--

-- --------------------------------------------------------

--
-- Table structure for table `Absence`
--

CREATE TABLE IF NOT EXISTS `Absence` (
  `IdAbsence` int(11) NOT NULL AUTO_INCREMENT,
  `HeureD` time NOT NULL,
  `StatutTraitement` varchar(1) NOT NULL,
  `HeureF` time NOT NULL,
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) DEFAULT NULL,
  `IdDate` int(11) DEFAULT NULL,
  `IdAdmin` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdAbsence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `Absence`
--

INSERT INTO `Absence` (`IdAbsence`, `HeureD`, `StatutTraitement`, `HeureF`, `IdProf`, `IdEleve`, `IdDate`, `IdAdmin`) VALUES
(69, '08:00:00', 'A', '08:55:00', 1, 6, 0, NULL),
(70, '08:00:00', 'A', '08:55:00', 1, 16, 0, NULL),
(71, '08:00:00', 'A', '08:55:00', 1, 6, 14, NULL),
(72, '08:00:00', 'A', '08:55:00', 1, 16, 14, NULL),
(76, '08:00:00', 'A', '08:55:00', 1, 6, 14, NULL),
(77, '08:00:00', 'A', '08:55:00', 1, 16, 14, NULL),
(78, '08:00:00', 'A', '08:55:00', 1, 6, 14, NULL),
(79, '08:00:00', 'A', '08:55:00', 1, 16, 14, NULL),
(80, '08:00:00', 'A', '08:55:00', 1, 6, 14, NULL),
(81, '08:00:00', 'A', '08:55:00', 1, 16, 14, NULL),
(82, '08:00:00', 'A', '08:55:00', 1, 16, 14, NULL),
(83, '08:00:00', 'R', '08:55:00', 1, 6, 14, NULL),
(84, '08:00:00', 'A', '08:55:00', 1, 16, 14, NULL),
(85, '08:00:00', 'R', '08:55:00', 1, 6, 14, NULL),
(86, '08:00:00', 'A', '08:55:00', 1, 16, 14, NULL),
(87, '08:00:00', 'R', '08:55:00', 1, 6, 14, NULL),
(88, '08:00:00', 'A', '09:50:00', 1, 4, 12, NULL),
(89, '08:00:00', 'R', '09:50:00', 1, 14, 12, NULL),
(90, '08:00:00', 'A', '08:55:00', 1, 4, 0, NULL),
(91, '08:00:00', 'R', '08:55:00', 1, 14, 0, NULL),
(92, '08:00:00', 'A', '08:55:00', 1, 4, 0, NULL),
(93, '08:00:00', 'R', '08:55:00', 1, 14, 0, NULL),
(94, '08:00:00', 'A', '08:55:00', 1, 4, 0, NULL),
(95, '08:00:00', 'R', '08:55:00', 1, 14, 0, NULL),
(96, '08:00:00', 'A', '08:55:00', 1, 4, 0, NULL),
(97, '08:00:00', 'R', '08:55:00', 1, 14, 0, NULL),
(98, '08:00:00', 'A', '08:55:00', 1, 6, 6, NULL),
(99, '08:00:00', 'A', '08:55:00', 1, 16, 6, NULL),
(100, '08:00:00', 'A', '08:55:00', 1, 6, 6, NULL),
(101, '08:00:00', 'A', '08:55:00', 1, 16, 6, NULL),
(102, '08:00:00', 'A', '08:55:00', 1, 6, 6, NULL),
(103, '08:00:00', 'A', '08:55:00', 1, 16, 6, NULL),
(104, '08:00:00', 'R', '08:55:00', 1, 6, 6, NULL),
(105, '08:00:00', 'R', '08:55:00', 1, 16, 6, NULL),
(106, '08:00:00', 'A', '09:50:00', 1, 3, 6, NULL),
(107, '08:00:00', 'A', '09:50:00', 1, 7, 35, NULL),
(108, '08:00:00', 'R', '09:50:00', 1, 17, 35, NULL),
(109, '08:00:00', 'A', '08:55:00', 1, 3, 14, NULL),
(110, '08:00:00', 'A', '08:55:00', 1, 14, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE IF NOT EXISTS `Admin` (
  `IdAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `NomAdmin` varchar(25) DEFAULT NULL,
  `PrenomAdmin` varchar(25) DEFAULT NULL,
  `Fonction` varchar(25) DEFAULT NULL,
  `Statut` varchar(25) DEFAULT NULL,
  `identifiant` varchar(25) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  PRIMARY KEY (`IdAdmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`IdAdmin`, `NomAdmin`, `PrenomAdmin`, `Fonction`, `Statut`, `identifiant`, `mdp`) VALUES
(1, 'NomAdmin1', 'PrenomAdmin1', 'FonctionAdm1', 'StatutAdm1', 'admin', 'admin'),
(2, 'NomAdmin2', 'PrenomAdmin2', 'FonctionAdm2', 'StatutAdm2', '', '0'),
(3, 'NomAdmin3', 'PrenomAdmin3', 'FonctionAdm3', 'StatutAdm3', '', '0'),
(4, 'NomAdmin4', 'PrenomAdmin4', 'FonctionAdm4', 'StatutAdm4', '', '0'),
(5, 'NomAdmin5', 'PrenomAdmin5', 'FonctionAdm5', 'StatutAdm5', '', '0'),
(6, 'NomAdmin6', 'PrenomAdmin6', 'FonctionAdm6', 'StatutAdm6', '', '0'),
(7, 'NomAdmin7', 'PrenomAdmin7', 'FonctionAdm7', 'StatutAdm7', '', '0'),
(8, 'NomAdmin8', 'PrenomAdmin8', 'FonctionAdm8', 'StatutAdm8', '', '0'),
(9, 'NomAdmin9', 'PrenomAdmin9', 'FonctionAdm9', 'StatutAdm9', '', '0'),
(10, 'NomAdmin10', 'PrenomAdmin10', 'FonctionAdm10', 'StatutAdm10', '', '0'),
(11, 'NomAdmin11', 'PrenomAdmin11', 'FonctionAdm11', 'StatutAdm11', '', '0'),
(12, 'NomAdmin12', 'PrenomAdmin12', 'FonctionAdm12', 'StatutAdm12', '', '0'),
(13, 'NomAdmin13', 'PrenomAdmin13', 'FonctionAdm13', 'StatutAdm13', '', '0'),
(14, 'NomAdmin14', 'PrenomAdmin14', 'FonctionAdm14', 'StatutAdm14', '', '0'),
(15, 'NomAdmin15', 'PrenomAdmin15', 'FonctionAdm15', 'StatutAdm15', '', '0'),
(16, 'NomAdmin16', 'PrenomAdmin16', 'FonctionAdm16', 'StatutAdm16', '', '0'),
(17, 'NomAdmin17', 'PrenomAdmin17', 'FonctionAdm17', 'StatutAdm17', '', '0'),
(18, 'NomAdmin18', 'PrenomAdmin18', 'FonctionAdm18', 'StatutAdm18', '', '0'),
(19, 'NomAdmin19', 'PrenomAdmin19', 'FonctionAdm19', 'StatutAdm19', '', '0'),
(20, 'NomAdmin20', 'PrenomAdmin20', 'FonctionAdm20', 'StatutAdm20', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Classe`
--

CREATE TABLE IF NOT EXISTS `Classe` (
  `IdClasse` int(11) NOT NULL AUTO_INCREMENT,
  `Effectif` int(11) DEFAULT NULL,
  `NomClasse` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`IdClasse`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Classe`
--

INSERT INTO `Classe` (`IdClasse`, `Effectif`, `NomClasse`) VALUES
(1, 18, 'SIO 1'),
(2, 16, 'SIO 2'),
(3, 21, 'SIO 3'),
(4, 10, 'DCEV 1'),
(5, 25, 'DCEV 2'),
(6, 40, 'DCEV 3'),
(7, 30, 'MANAA'),
(8, 28, 'NRC 1'),
(9, 19, 'NRC 2'),
(10, 39, 'NRC 3');

-- --------------------------------------------------------

--
-- Table structure for table `DateSaisi`
--

CREATE TABLE IF NOT EXISTS `DateSaisi` (
  `IdDate` int(11) NOT NULL AUTO_INCREMENT,
  `Ddate` date DEFAULT NULL,
  PRIMARY KEY (`IdDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=639 ;

--
-- Dumping data for table `DateSaisi`
--

INSERT INTO `DateSaisi` (`IdDate`, `Ddate`) VALUES
(1, '2016-10-01'),
(2, '2016-10-02'),
(3, '2016-10-03'),
(4, '2016-10-04'),
(5, '2016-10-05'),
(6, '2016-10-06'),
(7, '2016-10-07'),
(8, '2016-10-08'),
(9, '2016-10-09'),
(10, '2016-10-10'),
(11, '2016-10-11'),
(12, '2016-10-12'),
(13, '2016-10-13'),
(14, '2016-10-14'),
(15, '2016-10-15'),
(16, '2016-10-16'),
(17, '2016-10-17'),
(18, '2016-10-18'),
(19, '2016-10-19'),
(20, '2016-10-20'),
(21, '2016-10-21'),
(22, '2016-10-22'),
(23, '2016-10-23'),
(24, '2016-10-24'),
(25, '2016-10-25'),
(26, '2016-10-26'),
(27, '2016-10-27'),
(28, '2016-10-28'),
(29, '2016-10-29'),
(30, '2016-10-30'),
(31, '2016-10-31'),
(32, '2016-11-01'),
(33, '2016-11-02'),
(34, '2016-11-03'),
(35, '2016-11-04'),
(36, '2016-11-05'),
(37, '2016-11-06'),
(38, '2016-11-07'),
(39, '2016-11-08'),
(40, '2016-11-09'),
(41, '2016-11-10'),
(42, '2016-11-11'),
(43, '2016-11-12'),
(44, '2016-11-13'),
(45, '2016-11-14'),
(46, '2016-11-15'),
(47, '2016-11-16'),
(48, '2016-11-17'),
(49, '2016-11-18'),
(50, '2016-11-19'),
(51, '2016-11-20'),
(52, '2016-11-21'),
(53, '2016-11-22'),
(54, '2016-11-23'),
(55, '2016-11-24'),
(56, '2016-11-25'),
(57, '2016-11-26'),
(58, '2016-11-27'),
(59, '2016-11-28'),
(60, '2016-11-29'),
(61, '2016-11-30'),
(62, '2016-12-01'),
(63, '2016-12-02'),
(64, '2016-12-03'),
(65, '2016-12-04'),
(66, '2016-12-05'),
(67, '2016-12-06'),
(68, '2016-12-07'),
(69, '2016-12-08'),
(70, '2016-12-09'),
(71, '2016-12-10'),
(72, '2016-12-11'),
(73, '2016-12-12'),
(74, '2016-12-13'),
(75, '2016-12-14'),
(76, '2016-12-15'),
(77, '2016-12-16'),
(78, '2016-12-17'),
(79, '2016-12-18'),
(80, '2016-12-19'),
(81, '2016-12-20'),
(82, '2016-12-21'),
(83, '2016-12-22'),
(84, '2016-12-23'),
(85, '2016-12-24'),
(86, '2016-12-25'),
(87, '2016-12-26'),
(88, '2016-12-27'),
(89, '2016-12-28'),
(90, '2016-12-29'),
(91, '2016-12-30'),
(92, '2016-12-31'),
(93, '2017-01-01'),
(94, '2017-01-02'),
(95, '2017-01-03'),
(96, '2017-01-04'),
(97, '2017-01-05'),
(98, '2017-01-06'),
(99, '2017-01-07'),
(100, '2017-01-08'),
(101, '2017-01-09'),
(102, '2017-01-10'),
(103, '2017-01-11'),
(104, '2017-01-12'),
(105, '2017-01-13'),
(106, '2017-01-14'),
(107, '2017-01-15'),
(108, '2017-01-16'),
(109, '2017-01-17'),
(110, '2017-01-18'),
(111, '2017-01-19'),
(112, '2017-01-20'),
(113, '2017-01-21'),
(114, '2017-01-22'),
(115, '2017-01-23'),
(116, '2017-01-24'),
(117, '2017-01-25'),
(118, '2017-01-26'),
(119, '2017-01-27'),
(120, '2017-01-28'),
(121, '2017-01-29'),
(122, '2017-01-30'),
(123, '2017-01-31'),
(124, '2017-02-01'),
(125, '2017-02-02'),
(126, '2017-02-03'),
(127, '2017-02-04'),
(128, '2017-02-05'),
(129, '2017-02-06'),
(130, '2017-02-07'),
(131, '2017-02-08'),
(132, '2017-02-09'),
(133, '2017-02-10'),
(134, '2017-02-11'),
(135, '2017-02-12'),
(136, '2017-02-13'),
(137, '2017-02-14'),
(138, '2017-02-15'),
(139, '2017-02-16'),
(140, '2017-02-17'),
(141, '2017-02-18'),
(142, '2017-02-19'),
(143, '2017-02-20'),
(144, '2017-02-21'),
(145, '2017-02-22'),
(146, '2017-02-23'),
(147, '2017-02-24'),
(148, '2017-02-25'),
(149, '2017-02-26'),
(150, '2017-02-27'),
(151, '2017-02-28'),
(152, '2017-03-01'),
(153, '2017-03-02'),
(154, '2017-03-03'),
(155, '2017-03-04'),
(156, '2017-03-05'),
(157, '2017-03-06'),
(158, '2017-03-07'),
(159, '2017-03-08'),
(160, '2017-03-09'),
(161, '2017-03-10'),
(162, '2017-03-11'),
(163, '2017-03-12'),
(164, '2017-03-13'),
(165, '2017-03-14'),
(166, '2017-03-15'),
(167, '2017-03-16'),
(168, '2017-03-17'),
(169, '2017-03-18'),
(170, '2017-03-19'),
(171, '2017-03-20'),
(172, '2017-03-21'),
(173, '2017-03-22'),
(174, '2017-03-23'),
(175, '2017-03-24'),
(176, '2017-03-25'),
(177, '2017-03-26'),
(178, '2017-03-27'),
(179, '2017-03-28'),
(180, '2017-03-29'),
(181, '2017-03-30'),
(182, '2017-03-31'),
(183, '2017-04-01'),
(184, '2017-04-02'),
(185, '2017-04-03'),
(186, '2017-04-04'),
(187, '2017-04-05'),
(188, '2017-04-06'),
(189, '2017-04-07'),
(190, '2017-04-08'),
(191, '2017-04-09'),
(192, '2017-04-10'),
(193, '2017-04-11'),
(194, '2017-04-12'),
(195, '2017-04-13'),
(196, '2017-04-14'),
(197, '2017-04-15'),
(198, '2017-04-16'),
(199, '2017-04-17'),
(200, '2017-04-18'),
(201, '2017-04-19'),
(202, '2017-04-20'),
(203, '2017-04-21'),
(204, '2017-04-22'),
(205, '2017-04-23'),
(206, '2017-04-24'),
(207, '2017-04-25'),
(208, '2017-04-26'),
(209, '2017-04-27'),
(210, '2017-04-28'),
(211, '2017-04-29'),
(212, '2017-04-30'),
(213, '2017-05-01'),
(214, '2017-05-02'),
(215, '2017-05-03'),
(216, '2017-05-04'),
(217, '2017-05-05'),
(218, '2017-05-06'),
(219, '2017-05-07'),
(220, '2017-05-08'),
(221, '2017-05-09'),
(222, '2017-05-10'),
(223, '2017-05-11'),
(224, '2017-05-12'),
(225, '2017-05-13'),
(226, '2017-05-14'),
(227, '2017-05-15'),
(228, '2017-05-16'),
(229, '2017-05-17'),
(230, '2017-05-18'),
(231, '2017-05-19'),
(232, '2017-05-20'),
(233, '2017-05-21'),
(234, '2017-05-22'),
(235, '2017-05-23'),
(236, '2017-05-24'),
(237, '2017-05-25'),
(238, '2017-05-26'),
(239, '2017-05-27'),
(240, '2017-05-28'),
(241, '2017-05-29'),
(242, '2017-05-30'),
(243, '2017-05-31'),
(244, '2017-06-01'),
(245, '2017-06-02'),
(246, '2017-06-03'),
(247, '2017-06-04'),
(248, '2017-06-05'),
(249, '2017-06-06'),
(250, '2017-06-07'),
(251, '2017-06-08'),
(252, '2017-06-09'),
(253, '2017-06-10'),
(254, '2017-06-11'),
(255, '2017-06-12'),
(256, '2017-06-13'),
(257, '2017-06-14'),
(258, '2017-06-15'),
(259, '2017-06-16'),
(260, '2017-06-17'),
(261, '2017-06-18'),
(262, '2017-06-19'),
(263, '2017-06-20'),
(264, '2017-06-21'),
(265, '2017-06-22'),
(266, '2017-06-23'),
(267, '2017-06-24'),
(268, '2017-06-25'),
(269, '2017-06-26'),
(270, '2017-06-27'),
(271, '2017-06-28'),
(272, '2017-06-29'),
(273, '2017-06-30'),
(274, '2017-07-01'),
(275, '2017-07-02'),
(276, '2017-07-03'),
(277, '2017-07-04'),
(278, '2017-07-05'),
(279, '2017-07-06'),
(280, '2017-07-07'),
(281, '2017-07-08'),
(282, '2017-07-09'),
(283, '2017-07-10'),
(284, '2017-07-11'),
(285, '2017-07-12'),
(286, '2017-07-13'),
(287, '2017-07-14'),
(288, '2017-07-15'),
(289, '2017-07-16'),
(290, '2017-07-17'),
(291, '2017-07-18'),
(292, '2017-07-19'),
(293, '2017-07-20'),
(294, '2017-07-21'),
(295, '2017-07-22'),
(296, '2017-07-23'),
(297, '2017-07-24'),
(298, '2017-07-25'),
(299, '2017-07-26'),
(300, '2017-07-27'),
(301, '2017-07-28'),
(302, '2017-07-29'),
(303, '2017-07-30'),
(304, '2017-07-31'),
(305, '2017-08-01'),
(306, '2017-08-02'),
(307, '2017-08-03'),
(308, '2017-08-04'),
(309, '2017-08-05'),
(310, '2017-08-06'),
(311, '2017-08-07'),
(312, '2017-08-08'),
(313, '2017-08-09'),
(314, '2017-08-10'),
(315, '2017-08-11'),
(316, '2017-08-12'),
(317, '2017-08-13'),
(318, '2017-08-14'),
(319, '2017-08-15'),
(320, '2017-08-16'),
(321, '2017-08-17'),
(322, '2017-08-18'),
(323, '2017-08-19'),
(324, '2017-08-20'),
(325, '2017-08-21'),
(326, '2017-08-22'),
(327, '2017-08-23'),
(328, '2017-08-24'),
(329, '2017-08-25'),
(330, '2017-08-26'),
(331, '2017-08-27'),
(332, '2017-08-28'),
(333, '2017-08-29'),
(334, '2017-08-30'),
(335, '2017-08-31'),
(336, '2017-09-01'),
(337, '2017-09-02'),
(338, '2017-09-03'),
(339, '2017-09-04'),
(340, '2017-09-05'),
(341, '2017-09-06'),
(342, '2017-09-07'),
(343, '2017-09-08'),
(344, '2017-09-09'),
(345, '2017-09-10'),
(346, '2017-09-11'),
(347, '2017-09-12'),
(348, '2017-09-13'),
(349, '2017-09-14'),
(350, '2017-09-15'),
(351, '2017-09-16'),
(352, '2017-09-17'),
(353, '2017-09-18'),
(354, '2017-09-19'),
(355, '2017-09-20'),
(356, '2017-09-21'),
(357, '2017-09-22'),
(358, '2017-09-23'),
(359, '2017-09-24'),
(360, '2017-09-25'),
(361, '2017-09-26'),
(362, '2017-09-27'),
(363, '2017-09-28'),
(364, '2017-09-29'),
(365, '2017-09-30'),
(366, '2017-10-01'),
(367, '2017-10-02'),
(368, '2017-10-03'),
(369, '2017-10-04'),
(370, '2017-10-05'),
(371, '2017-10-06'),
(372, '2017-10-07'),
(373, '2017-10-08'),
(374, '2017-10-09'),
(375, '2017-10-10'),
(376, '2017-10-11'),
(377, '2017-10-12'),
(378, '2017-10-13'),
(379, '2017-10-14'),
(380, '2017-10-15'),
(381, '2017-10-16'),
(382, '2017-10-17'),
(383, '2017-10-18'),
(384, '2017-10-19'),
(385, '2017-10-20'),
(386, '2017-10-21'),
(387, '2017-10-22'),
(388, '2017-10-23'),
(389, '2017-10-24'),
(390, '2017-10-25'),
(391, '2017-10-26'),
(392, '2017-10-27'),
(393, '2017-10-28'),
(394, '2017-10-29'),
(395, '2017-10-30'),
(396, '2017-10-31'),
(397, '2017-11-01'),
(398, '2017-11-02'),
(399, '2017-11-03'),
(400, '2017-11-04'),
(401, '2017-11-05'),
(402, '2017-11-06'),
(403, '2017-11-07'),
(404, '2017-11-08'),
(405, '2017-11-09'),
(406, '2017-11-10'),
(407, '2017-11-11'),
(408, '2017-11-12'),
(409, '2017-11-13'),
(410, '2017-11-14'),
(411, '2017-11-15'),
(412, '2017-11-16'),
(413, '2017-11-17'),
(414, '2017-11-18'),
(415, '2017-11-19'),
(416, '2017-11-20'),
(417, '2017-11-21'),
(418, '2017-11-22'),
(419, '2017-11-23'),
(420, '2017-11-24'),
(421, '2017-11-25'),
(422, '2017-11-26'),
(423, '2017-11-27'),
(424, '2017-11-28'),
(425, '2017-11-29'),
(426, '2017-11-30'),
(427, '2017-12-01'),
(428, '2017-12-02'),
(429, '2017-12-03'),
(430, '2017-12-04'),
(431, '2017-12-05'),
(432, '2017-12-06'),
(433, '2017-12-07'),
(434, '2017-12-08'),
(435, '2017-12-09'),
(436, '2017-12-10'),
(437, '2017-12-11'),
(438, '2017-12-12'),
(439, '2017-12-13'),
(440, '2017-12-14'),
(441, '2017-12-15'),
(442, '2017-12-16'),
(443, '2017-12-17'),
(444, '2017-12-18'),
(445, '2017-12-19'),
(446, '2017-12-20'),
(447, '2017-12-21'),
(448, '2017-12-22'),
(449, '2017-12-23'),
(450, '2017-12-24'),
(451, '2017-12-25'),
(452, '2017-12-26'),
(453, '2017-12-27'),
(454, '2017-12-28'),
(455, '2017-12-29'),
(456, '2017-12-30'),
(457, '2017-12-31'),
(458, '2018-01-01'),
(459, '2018-01-02'),
(460, '2018-01-03'),
(461, '2018-01-04'),
(462, '2018-01-05'),
(463, '2018-01-06'),
(464, '2018-01-07'),
(465, '2018-01-08'),
(466, '2018-01-09'),
(467, '2018-01-10'),
(468, '2018-01-11'),
(469, '2018-01-12'),
(470, '2018-01-13'),
(471, '2018-01-14'),
(472, '2018-01-15'),
(473, '2018-01-16'),
(474, '2018-01-17'),
(475, '2018-01-18'),
(476, '2018-01-19'),
(477, '2018-01-20'),
(478, '2018-01-21'),
(479, '2018-01-22'),
(480, '2018-01-23'),
(481, '2018-01-24'),
(482, '2018-01-25'),
(483, '2018-01-26'),
(484, '2018-01-27'),
(485, '2018-01-28'),
(486, '2018-01-29'),
(487, '2018-01-30'),
(488, '2018-01-31'),
(489, '2018-02-01'),
(490, '2018-02-02'),
(491, '2018-02-03'),
(492, '2018-02-04'),
(493, '2018-02-05'),
(494, '2018-02-06'),
(495, '2018-02-07'),
(496, '2018-02-08'),
(497, '2018-02-09'),
(498, '2018-02-10'),
(499, '2018-02-11'),
(500, '2018-02-12'),
(501, '2018-02-13'),
(502, '2018-02-14'),
(503, '2018-02-15'),
(504, '2018-02-16'),
(505, '2018-02-17'),
(506, '2018-02-18'),
(507, '2018-02-19'),
(508, '2018-02-20'),
(509, '2018-02-21'),
(510, '2018-02-22'),
(511, '2018-02-23'),
(512, '2018-02-24'),
(513, '2018-02-25'),
(514, '2018-02-26'),
(515, '2018-02-27'),
(516, '2018-02-28'),
(517, '2018-03-01'),
(518, '2018-03-02'),
(519, '2018-03-03'),
(520, '2018-03-04'),
(521, '2018-03-05'),
(522, '2018-03-06'),
(523, '2018-03-07'),
(524, '2018-03-08'),
(525, '2018-03-09'),
(526, '2018-03-10'),
(527, '2018-03-11'),
(528, '2018-03-12'),
(529, '2018-03-13'),
(530, '2018-03-14'),
(531, '2018-03-15'),
(532, '2018-03-16'),
(533, '2018-03-17'),
(534, '2018-03-18'),
(535, '2018-03-19'),
(536, '2018-03-20'),
(537, '2018-03-21'),
(538, '2018-03-22'),
(539, '2018-03-23'),
(540, '2018-03-24'),
(541, '2018-03-25'),
(542, '2018-03-26'),
(543, '2018-03-27'),
(544, '2018-03-28'),
(545, '2018-03-29'),
(546, '2018-03-30'),
(547, '2018-03-31'),
(548, '2018-04-01'),
(549, '2018-04-02'),
(550, '2018-04-03'),
(551, '2018-04-04'),
(552, '2018-04-05'),
(553, '2018-04-06'),
(554, '2018-04-07'),
(555, '2018-04-08'),
(556, '2018-04-09'),
(557, '2018-04-10'),
(558, '2018-04-11'),
(559, '2018-04-12'),
(560, '2018-04-13'),
(561, '2018-04-14'),
(562, '2018-04-15'),
(563, '2018-04-16'),
(564, '2018-04-17'),
(565, '2018-04-18'),
(566, '2018-04-19'),
(567, '2018-04-20'),
(568, '2018-04-21'),
(569, '2018-04-22'),
(570, '2018-04-23'),
(571, '2018-04-24'),
(572, '2018-04-25'),
(573, '2018-04-26'),
(574, '2018-04-27'),
(575, '2018-04-28'),
(576, '2018-04-29'),
(577, '2018-04-30'),
(578, '2018-05-01'),
(579, '2018-05-02'),
(580, '2018-05-03'),
(581, '2018-05-04'),
(582, '2018-05-05'),
(583, '2018-05-06'),
(584, '2018-05-07'),
(585, '2018-05-08'),
(586, '2018-05-09'),
(587, '2018-05-10'),
(588, '2018-05-11'),
(589, '2018-05-12'),
(590, '2018-05-13'),
(591, '2018-05-14'),
(592, '2018-05-15'),
(593, '2018-05-16'),
(594, '2018-05-17'),
(595, '2018-05-18'),
(596, '2018-05-19'),
(597, '2018-05-20'),
(598, '2018-05-21'),
(599, '2018-05-22'),
(600, '2018-05-23'),
(601, '2018-05-24'),
(602, '2018-05-25'),
(603, '2018-05-26'),
(604, '2018-05-27'),
(605, '2018-05-28'),
(606, '2018-05-29'),
(607, '2018-05-30'),
(608, '2018-05-31'),
(609, '2018-06-01'),
(610, '2018-06-02'),
(611, '2018-06-03'),
(612, '2018-06-04'),
(613, '2018-06-05'),
(614, '2018-06-06'),
(615, '2018-06-07'),
(616, '2018-06-08'),
(617, '2018-06-09'),
(618, '2018-06-10'),
(619, '2018-06-11'),
(620, '2018-06-12'),
(621, '2018-06-13'),
(622, '2018-06-14'),
(623, '2018-06-15'),
(624, '2018-06-16'),
(625, '2018-06-17'),
(626, '2018-06-18'),
(627, '2018-06-19'),
(628, '2018-06-20'),
(629, '2018-06-21'),
(630, '2018-06-22'),
(631, '2018-06-23'),
(632, '2018-06-24'),
(633, '2018-06-25'),
(634, '2018-06-26'),
(635, '2018-06-27'),
(636, '2018-06-28'),
(637, '2018-06-29'),
(638, '2018-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `Eleve`
--

CREATE TABLE IF NOT EXISTS `Eleve` (
  `IdEleve` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(25) DEFAULT NULL,
  `Prenom` varchar(25) DEFAULT NULL,
  `DateDeNaissance` date DEFAULT NULL,
  `Adresse` text,
  `NumTelPerso` varchar(12) DEFAULT NULL,
  `NumTelResp` varchar(12) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `LienPhoto` varchar(100) DEFAULT NULL,
  `IdVille` int(11) DEFAULT NULL,
  `IdClasse` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdEleve`),
  KEY `FK_Eleve_IdVille` (`IdVille`),
  KEY `FK_Eleve_IdClasse` (`IdClasse`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `Eleve`
--

INSERT INTO `Eleve` (`IdEleve`, `Nom`, `Prenom`, `DateDeNaissance`, `Adresse`, `NumTelPerso`, `NumTelResp`, `Mail`, `LienPhoto`, `IdVille`, `IdClasse`) VALUES
(1, 'NomEleve1', 'PrenomEleve1', '1995-03-04', 'AdresseEleve1', '06********', '07********', 'MailEleve1', 'LienPhoto1', 300, 1),
(2, 'NomEleve2', 'PrenomEleve2', '1995-03-05', 'AdresseEleve2', '06********', '07********', 'MailEleve2', 'LienPhoto2', 156, 1),
(3, 'NomEleve3', 'PrenomEleve3', '1995-03-06', 'AdresseEleve3', '06********', '07********', 'MailEleve3', 'LienPhoto3', 122, 2),
(4, 'NomEleve4', 'PrenomEleve4', '1995-03-07', 'AdresseEleve4', '06********', '07********', 'MailEleve4', 'LienPhoto4', 20, 3),
(5, 'NomEleve5', 'PrenomEleve5', '1995-03-08', 'AdresseEleve5', '06********', '07********', 'MailEleve5', 'LienPhoto5', 30, 4),
(6, 'NomEleve6', 'PrenomEleve6', '1995-03-09', 'AdresseEleve6', '06********', '07********', 'MailEleve6', 'LienPhoto6', 303, 5),
(7, 'NomEleve7', 'PrenomEleve7', '1995-03-10', 'AdresseEleve7', '06********', '07********', 'MailEleve7', 'LienPhoto7', 254, 6),
(8, 'NomEleve8', 'PrenomEleve8', '1995-03-11', 'AdresseEleve8', '06********', '07********', 'MailEleve8', 'LienPhoto8', 201, 7),
(9, 'NomEleve9', 'PrenomEleve9', '1995-03-12', 'AdresseEleve9', '06********', '07********', 'MailEleve9', 'LienPhoto9', 69, 8),
(10, 'NomEleve10', 'PrenomEleve10', '1995-03-13', 'AdresseEleve10', '06********', '07********', 'MailEleve10', 'LienPhoto10', 47, 9),
(11, 'NomEleve11', 'PrenomEleve11', '1995-03-14', 'AdresseEleve11', '06********', '07********', 'MailEleve11', 'LienPhoto11', 210, 10),
(12, 'NomEleve12', 'PrenomEleve12', '1995-03-15', 'AdresseEleve12', '06********', '07********', 'MailEleve12', 'LienPhoto12', 233, 1),
(13, 'NomEleve13', 'PrenomEleve13', '1995-03-16', 'AdresseEleve13', '06********', '07********', 'MailEleve13', 'LienPhoto13', 147, 2),
(14, 'NomEleve14', 'PrenomEleve14', '1995-03-17', 'AdresseEleve14', '06********', '07********', 'MailEleve14', 'LienPhoto14', 129, 3),
(15, 'NomEleve15', 'PrenomEleve15', '1995-03-18', 'AdresseEleve15', '06********', '07********', 'MailEleve15', 'LienPhoto15', 99, 4),
(16, 'NomEleve16', 'PrenomEleve16', '1995-03-19', 'AdresseEleve16', '06********', '07********', 'MailEleve16', 'LienPhoto16', 38, 5),
(17, 'NomEleve17', 'PrenomEleve17', '1995-03-20', 'AdresseEleve17', '06********', '07********', 'MailEleve17', 'LienPhoto17', 73, 6),
(18, 'NomEleve18', 'PrenomEleve18', '1995-03-21', 'AdresseEleve18', '06********', '07********', 'MailEleve18', 'LienPhoto18', 41, 7),
(19, 'NomEleve19', 'PrenomEleve19', '1995-03-22', 'AdresseEleve19', '06********', '07********', 'MailEleve19', 'LienPhoto19', 34, 8),
(20, 'NomEleve20', 'PrenomEleve20', '1995-03-23', 'AdresseEleve20', '06********', '07********', 'MailEleve20', 'LienPhoto20', 98, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Enseigner`
--

CREATE TABLE IF NOT EXISTS `Enseigner` (
  `IdMatiere` int(11) NOT NULL,
  `IdProf` int(11) NOT NULL,
  PRIMARY KEY (`IdMatiere`,`IdProf`),
  KEY `FK_Enseigner_IdProf` (`IdProf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Intervenir`
--

CREATE TABLE IF NOT EXISTS `Intervenir` (
  `IdProf` int(11) NOT NULL,
  `IdClasse` int(11) NOT NULL,
  PRIMARY KEY (`IdProf`,`IdClasse`),
  KEY `FK_Intervenir_IdClasse` (`IdClasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Justificatif`
--

CREATE TABLE IF NOT EXISTS `Justificatif` (
  `IdJustificatif` int(11) NOT NULL AUTO_INCREMENT,
  `LienJustificatif` varchar(100) DEFAULT NULL,
  `DateDebut` date DEFAULT NULL,
  `DateFin` date DEFAULT NULL,
  `IdEleve` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdJustificatif`),
  KEY `FK_Justificatif_IdEleve` (`IdEleve`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Justificatif`
--

INSERT INTO `Justificatif` (`IdJustificatif`, `LienJustificatif`, `DateDebut`, `DateFin`, `IdEleve`) VALUES
(1, '23', '2016-10-01', '2016-10-20', 15);

-- --------------------------------------------------------

--
-- Table structure for table `Matiere`
--

CREATE TABLE IF NOT EXISTS `Matiere` (
  `IdMatiere` int(11) NOT NULL AUTO_INCREMENT,
  `NomMatiere` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`IdMatiere`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Matiere`
--

INSERT INTO `Matiere` (`IdMatiere`, `NomMatiere`) VALUES
(1, 'Matiere1'),
(2, 'Matiere2'),
(3, 'Matiere3'),
(4, 'Matiere4'),
(5, 'Matiere5'),
(6, 'Matiere6'),
(7, 'Matiere7'),
(8, 'Matiere8'),
(9, 'Matiere9'),
(10, 'Matiere10'),
(11, 'Matiere11'),
(12, 'Matiere12'),
(13, 'Matiere13'),
(14, 'Matiere14'),
(15, 'Matiere15'),
(16, 'Matiere16'),
(17, 'Matiere17'),
(18, 'Matiere18'),
(19, 'Matiere19'),
(20, 'Matiere20');

-- --------------------------------------------------------

--
-- Table structure for table `Professeur`
--

CREATE TABLE IF NOT EXISTS `Professeur` (
  `IdProf` int(11) NOT NULL AUTO_INCREMENT,
  `NomProf` varchar(50) DEFAULT NULL,
  `PrenomProf` varchar(100) DEFAULT NULL,
  `MailProf` varchar(100) DEFAULT NULL,
  `NumTel` varchar(12) DEFAULT NULL,
  `identifiant` varchar(25) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  PRIMARY KEY (`IdProf`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Professeur`
--

INSERT INTO `Professeur` (`IdProf`, `NomProf`, `PrenomProf`, `MailProf`, `NumTel`, `identifiant`, `mdp`) VALUES
(1, 'NomProf1', 'PrenomProf1', 'MailProf1', '05 ** ** ** ', 'fhadek', 'sofiane2010'),
(2, 'NomProf2', 'PrenomProf2', 'MailProf2', '05 ** ** ** ', '', ''),
(3, 'NomProf3', 'PrenomProf3', 'MailProf3', '05 ** ** ** ', '', ''),
(4, 'NomProf4', 'PrenomProf4', 'MailProf4', '05 ** ** ** ', '', ''),
(5, 'NomProf5', 'PrenomProf5', 'MailProf5', '05 ** ** ** ', '', ''),
(6, 'NomProf6', 'PrenomProf6', 'MailProf6', '05 ** ** ** ', '', ''),
(7, 'NomProf7', 'PrenomProf7', 'MailProf7', '05 ** ** ** ', '', ''),
(8, 'NomProf8', 'PrenomProf8', 'MailProf8', '05 ** ** ** ', '', ''),
(9, 'NomProf9', 'PrenomProf9', 'MailProf9', '05 ** ** ** ', '', ''),
(10, 'NomProf10', 'PrenomProf10', 'MailProf10', '05 ** ** ** ', '', ''),
(11, 'NomProf11', 'PrenomProf11', 'MailProf11', '05 ** ** ** ', '', ''),
(12, 'NomProf12', 'PrenomProf12', 'MailProf12', '05 ** ** ** ', '', ''),
(13, 'NomProf13', 'PrenomProf13', 'MailProf13', '05 ** ** ** ', '', ''),
(14, 'NomProf14', 'PrenomProf14', 'MailProf14', '05 ** ** ** ', '', ''),
(15, 'NomProf15', 'PrenomProf15', 'MailProf15', '05 ** ** ** ', '', ''),
(16, 'NomProf16', 'PrenomProf16', 'MailProf16', '05 ** ** ** ', '', ''),
(17, 'NomProf17', 'PrenomProf17', 'MailProf17', '05 ** ** ** ', '', ''),
(18, 'NomProf18', 'PrenomProf18', 'MailProf18', '05 ** ** ** ', '', ''),
(19, 'NomProf19', 'PrenomProf19', 'MailProf19', '05 ** ** ** ', '', ''),
(20, 'NomProf20', 'PrenomProf20', 'MailProf20', '05 ** ** ** ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Ville`
--

CREATE TABLE IF NOT EXISTS `Ville` (
  `IdVille` int(11) NOT NULL AUTO_INCREMENT,
  `NomVille` varchar(100) DEFAULT NULL,
  `CodePostal` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdVille`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=306 ;

--
-- Dumping data for table `Ville`
--

INSERT INTO `Ville` (`IdVille`, `NomVille`, `CodePostal`) VALUES
(1, 'ALLONNE', 79130),
(2, 'FRONTENAY-ROHAN-ROHAN', 79270),
(3, 'CHENAY', 79120),
(4, 'LOUZY', 79100),
(5, 'ECHIRE', 79410),
(6, 'SAINT-CLEMENTIN', 79150),
(7, 'L''ABSIE', 79240),
(8, 'LES FOSSES', 79360),
(9, 'COURLAY', 79440),
(10, 'ENSIGNE', 79170),
(11, 'BOISME', 79300),
(12, 'PRIN-DEYRANCON', 79210),
(13, 'LE BEUGNON', 79130),
(14, 'MONTALEMBERT', 79190),
(15, 'BOUILLE-LORETZ', 79290),
(16, 'LEZAY', 79120),
(17, 'LES GROSEILLERS', 79220),
(18, 'MENIGOUTE', 79340),
(19, 'LOUBILLE', 79110),
(20, 'MOUGON', 79370),
(21, 'FORS', 79230),
(22, 'CHICHE', 79350),
(23, 'SAINT-REMY', 79410),
(24, 'MAGNE', 79460),
(25, 'LIMALONGES', 79190),
(26, 'AVON', 79800),
(27, 'BRETIGNOLLES', 79140),
(28, 'CLAVE', 79420),
(29, 'CERIZAY', 79140),
(30, 'AVAILLES-THOUARSAIS', 79600),
(31, 'FOMPERRON', 79340),
(32, 'VITRE', 79370),
(33, 'LA CHAPELLE-POUILLOUX', 79190),
(34, 'PARTHENAY', 79200),
(35, 'CHEF-BOUTONNE', 79110),
(36, 'JUSCORPS', 79230),
(37, 'SAINT-MAURICE-LA-FOUGEREUSE', 79150),
(38, 'AUGE', 79400),
(39, 'MISSE', 79100),
(40, 'SAINT-GERMIER', 79340),
(41, 'POMPAIRE', 79200),
(42, 'MARIGNY', 79360),
(43, 'SAINT-GENARD', 79500),
(44, 'SELIGNE', 79170),
(45, 'NIORT', 79000),
(46, 'LA PETITE-BOISSIERE', 79700),
(47, 'ASSAIS-LES-JUMEAUX', 79600),
(48, 'SAINT-LEGER-DE-LA-MARTINIERE', 79500),
(49, 'SAINT-PAUL-EN-GATINE', 79240),
(50, 'FAYE-L''ABBESSE', 79350),
(51, 'AIGONNAY', 79370),
(52, 'SAINT-GEORGES-DE-NOISNE', 79400),
(53, 'SAINT-GEORGES-DE-REX', 79210),
(54, 'CELLES-SUR-BELLE', 79370),
(55, 'VASLES', 79340),
(56, 'VILLEFOLLET', 79170),
(57, 'SAINTE-NEOMAYE', 79260),
(58, 'BEAUVOIR-SUR-NIORT', 79360),
(59, 'SAINT-GERMAIN-DE-LONGUE-CHAUME', 79200),
(60, 'SANSAIS', 79270),
(61, 'SAINT-LOUP-LAMAIRE', 79600),
(62, 'SAINT-JEAN-DE-THOUARS', 79100),
(63, 'NEUVY-BOUIN', 79130),
(64, 'TOURTENAY', 79100),
(65, 'SAINT-ANDRE-SUR-SEVRE', 79380),
(66, 'LHOUMOIS', 79390),
(67, 'ULCOT', 79150),
(68, 'OROUX', 79390),
(69, 'FONTENILLE-SAINT-MARTIN-D''ENTRAIGUES', 79110),
(70, 'SAINT-GENEROUX', 79600),
(71, 'FRESSINES', 79370),
(72, 'GOURGE', 79200),
(73, 'SAINT-CHRISTOPHE-SUR-ROC', 79220),
(74, 'TILLOU', 79110),
(75, 'LA FOYE-MONJAULT', 79360),
(76, 'XAINTRAY', 79220),
(77, 'CHAURAY', 79180),
(78, 'SAINT-MAIXENT-L''ECOLE', 79400),
(79, 'SAINT-MARTIN-DU-FOUILLOUX', 79420),
(80, 'FENIOUX', 79160),
(81, 'CHEY', 79120),
(82, 'AIFFRES', 79230),
(83, 'BELLEVILLE', 79360),
(84, 'BEAUSSAIS', 79370),
(85, 'AMURE', 79210),
(86, 'SAINT-MEDARD', 79370),
(87, 'LA CHAPELLE-GAUDIN', 79300),
(88, 'MELLERAN', 79190),
(89, 'LOUIN', 79600),
(90, 'MASSAIS', 79150),
(91, 'LA CRECHE', 79260),
(92, 'LE CHILLOU', 79600),
(93, 'SAINTE-OUENNE', 79220),
(94, 'SAINT-HILAIRE-LA-PALUD', 79210),
(95, 'GOURNAY-LOIZE', 79110),
(96, 'CHAIL', 79500),
(97, 'THORIGNE', 79370),
(98, 'EPANNES', 79270),
(99, 'SAINT-MARTIN-DE-SAINT-MAIXENT', 79400),
(100, 'SAUZE-VAUSSAIS', 79190),
(101, 'LA MOTHE-SAINT-HERAY', 79800),
(102, 'LUSSERAY', 79170),
(103, 'MAUZE-THOUARSAIS', 79100),
(104, 'SEPVRET', 79120),
(105, 'COUTIERES', 79340),
(106, 'COULON', 79510),
(107, 'SAINT-ROMANS-LES-MELLE', 79500),
(108, 'PRAILLES', 79370),
(109, 'JUILLE', 79170),
(110, 'MAUZE-SUR-LE-MIGNON', 79210),
(111, 'SAINT-LEGER-DE-MONTBRUN', 79100),
(112, 'SAINT-JOUIN-DE-MILLY', 79380),
(113, 'BRULAIN', 79230),
(114, 'LORIGNE', 79190),
(115, 'BOUSSAIS', 79600),
(116, 'PRISSE-LA-CHARRIERE', 79360),
(117, 'VERNOUX-SUR-BOUTONNE', 79170),
(118, 'MAZIERES-SUR-BERONNE', 79500),
(119, 'VILLIERS-EN-BOIS', 79360),
(120, 'SAINTE-EANNE', 79800),
(121, 'AIRVAULT', 79600),
(122, 'BRION-PRES-THOUET', 79290),
(123, 'LE BUSSEAU', 79240),
(124, 'SAINT-MARC-LA-LANDE', 79310),
(125, 'SAINT-ETIENNE-LA-CIGOGNE', 79360),
(126, 'ROMANS', 79260),
(127, 'AZAY-SUR-THOUET', 79130),
(128, 'LES ALLEUDS', 79190),
(129, 'AMAILLOUX', 79350),
(130, 'BOUGON', 79800),
(131, 'SAINT-MAIXENT-DE-BEUGNE', 79160),
(132, 'NANTEUIL', 79400),
(133, 'COULONGES-SUR-L''AUTIZE', 79160),
(134, 'VILLEMAIN', 79110),
(135, 'LA FERRIERE-EN-PARTHENAY', 79390),
(136, 'LA CHAPELLE-THIREUIL', 79160),
(137, 'HANC', 79110),
(138, 'CIRIERES', 79140),
(139, 'LE RETAIL', 79130),
(140, 'SAINT-VARENT', 79330),
(141, 'THENEZAY', 79390),
(142, 'VAUSSEROUX', 79420),
(143, 'PIOUSSAY', 79110),
(144, 'ARDILLEUX', 79110),
(145, 'PAS-DE-JEU', 79100),
(146, 'LOUBIGNE', 79110),
(147, 'MAZIERES-EN-GATINE', 79310),
(148, 'MONCOUTANT', 79320),
(149, 'SAINT-LAURS', 79160),
(150, 'TAIZE', 79100),
(151, 'SAINTE-RADEGONDE', 79100),
(152, 'SECONDIGNY', 79130),
(153, 'PUGNY', 79320),
(154, 'SAINT-PARDOUX', 79310),
(155, 'VERNOUX-EN-GATINE', 79240),
(156, 'IRAIS', 79600),
(157, 'SURIN', 79220),
(158, 'LAGEON', 79200),
(159, 'BRIOUX-SUR-BOUTONNE', 79170),
(160, 'SCILLE', 79240),
(161, 'MOUTIERS-SOUS-ARGENTON', 79150),
(162, 'BRESSUIRE', 79300),
(163, 'GENNETON', 79150),
(164, 'LE BREUIL-BERNARD', 79320),
(165, 'SAINT-MARTIN-LES-MELLE', 79500),
(166, 'CHERVEUX', 79410),
(167, 'LA CHAPELLE-BATON', 79220),
(168, 'SAINT-JACQUES-DE-THOUARS', 79100),
(169, 'USSEAU', 79210),
(170, 'SAINTE-BLANDINE', 79370),
(171, 'VANZAY', 79120),
(172, 'PAMPLIE', 79220),
(173, 'GLENAY', 79330),
(174, 'LE BREUIL-SOUS-ARGENTON', 79150),
(175, 'SAINT-MARTIN-DE-MACON', 79100),
(176, 'LARGEASSE', 79240),
(177, 'CHATILLON-SUR-THOUET', 79200),
(178, 'BOUILLE-SAINT-PAUL', 79290),
(179, 'ARGENTON-L''EGLISE', 79290),
(180, 'SAINT-AUBIN-DU-PLAIN', 79300),
(181, 'VILLIERS-SUR-CHIZE', 79170),
(182, 'REFFANNES', 79420),
(183, 'SAURAIS', 79200),
(184, 'VILLIERS-EN-PLAINE', 79160),
(185, 'CHANTELOUP', 79320),
(186, 'LES FORGES', 79340),
(187, 'MARNES', 79600),
(188, 'GEAY', 79330),
(189, 'SAINT-MARTIN-DE-BERNEGOUE', 79230),
(190, 'VERRUYES', 79310),
(191, 'LA PEYRATTE', 79200),
(192, 'THOUARS', 79100),
(193, 'LE TALLUD', 79200),
(194, 'SCIECQ', 79000),
(195, 'SOUVIGNE', 79800),
(196, 'SAINT-LIN', 79420),
(197, 'SAINT-MARTIN-DE-SANZAY', 79290),
(198, 'BOUIN', 79110),
(199, 'POUFFONDS', 79500),
(200, 'LA BOISSIERE-EN-GATINE', 79310),
(201, 'MAISONTIERS', 79600),
(202, 'FRANCOIS', 79260),
(203, 'VOULTEGON', 79150),
(204, 'PUIHARDY', 79160),
(205, 'MOUTIERS-SOUS-CHANTEMERLE', 79320),
(206, 'LA CHAPELLE-SAINT-ETIENNE', 79240),
(207, 'NUEIL-LES-AUBIERS', 79250),
(208, 'SAIVRES', 79400),
(209, 'CERSAY', 79290),
(210, 'BEAULIEU-SOUS-PARTHENAY', 79420),
(211, 'COUTURE-D''ARGENSON', 79110),
(212, 'SAINT-AUBIN-LE-CLOUD', 79450),
(213, 'MAIRE-LEVESCAULT', 79190),
(214, 'LUZAY', 79100),
(215, 'CHERIGNE', 79170),
(216, 'COMBRAND', 79140),
(217, 'BOISSEROLLES', 79360),
(218, 'SAINT-PIERRE-DES-ECHAUBROGNES', 79700),
(219, 'VOUILLE', 79230),
(220, 'ADILLY', 79200),
(221, 'SAINT-AMAND-SUR-SEVRE', 79700),
(222, 'VANCAIS', 79120),
(223, 'LA COUDRE', 79150),
(224, 'SAINT-JOUIN-DE-MARNES', 79600),
(225, 'PRIAIRES', 79210),
(226, 'SAINTE-GEMME', 79330),
(227, 'ETUSSON', 79150),
(228, 'EXOUDUN', 79800),
(229, 'COULONGES-THOUARSAIS', 79330),
(230, 'EXIREUIL', 79400),
(231, 'GERMOND-ROUVRE', 79220),
(232, 'VALLANS', 79270),
(233, 'POUGNE-HERISSON', 79130),
(234, 'SAINT-VINCENT-LA-CHATRE', 79500),
(235, 'DOUX', 79390),
(236, 'FENERY', 79450),
(237, 'MESSE', 79120),
(238, 'GRANZAY-GRIPT', 79360),
(239, 'ARDIN', 79160),
(240, 'PAMPROUX', 79800),
(241, 'CLUSSAIS-LA-POMMERAIE', 79190),
(242, 'SAINT-POMPAIN', 79160),
(243, 'LA BATAILLE', 79110),
(244, 'SAINT-COUTANT', 79120),
(245, 'MAULEON', 79700),
(246, 'VIENNAY', 79200),
(247, 'PAIZAY-LE-TORT', 79500),
(248, 'SALLES', 79800),
(249, 'LE VANNEAU-IRLEAU', 79270),
(250, 'ARCAIS', 79210),
(251, 'LE BOURDET', 79210),
(252, 'SAINT-ROMANS-DES-CHAMPS', 79230),
(253, 'CHANTECORPS', 79340),
(254, 'PLIBOUX', 79190),
(255, 'AUBIGNE', 79110),
(256, 'ASNIERES-EN-POITOU', 79170),
(257, 'CHIZE', 79170),
(258, 'PERS', 79190),
(259, 'SAINT-CYR-LA-LANDE', 79100),
(260, 'LUCHE-THOUARSAIS', 79330),
(261, 'SOUDAN', 79800),
(262, 'MONTRAVERS', 79140),
(263, 'LE PIN', 79140),
(264, 'PRESSIGNY', 79390),
(265, 'LA COUARDE', 79800),
(266, 'SOMPT', 79110),
(267, 'CREZIERES', 79110),
(268, 'AZAY-LE-BRULE', 79400),
(269, 'BESSINES', 79000),
(270, 'SAINT-GELAIS', 79410),
(271, 'BECELEUF', 79160),
(272, 'PIERREFITTE', 79330),
(273, 'BRIEUIL-SUR-CHIZE', 79170),
(274, 'BRIE', 79100),
(275, 'OIRON', 79100),
(276, 'TRAYES', 79240),
(277, 'LA CHAPELLE-BERTRAND', 79200),
(278, 'CAUNAY', 79190),
(279, 'SAINTE-VERGE', 79100),
(280, 'SECONDIGNE-SUR-BELLE', 79170),
(281, 'CLESSE', 79350),
(282, 'ROM', 79120),
(283, 'LA CHAPELLE-SAINT-LAURENT', 79430),
(284, 'TESSONNIERE', 79600),
(285, 'COURS', 79220),
(286, 'LUCHE-SUR-BRIOUX', 79170),
(287, 'LE VERT', 79170),
(288, 'FAYE-SUR-ARDIN', 79160),
(289, 'SAINT-MAXIRE', 79410),
(290, 'CHAMPDENIERS-SAINT-DENIS', 79220),
(291, 'SAINT-SYMPHORIEN', 79270),
(292, 'SAINTE-SOLINE', 79120),
(293, 'LA ROCHENARD', 79270),
(294, 'THORIGNY-SUR-LE-MIGNON', 79360),
(295, 'MAISONNAY', 79500),
(296, 'ARGENTON-LES-VALLEES', 79150),
(297, 'SOUTIERS', 79310),
(298, 'PRAHECQ', 79230),
(299, 'MELLE', 79500),
(300, 'PERIGNE', 79170),
(301, 'LA FORET-SUR-SEVRE', 79380),
(302, 'AUBIGNY', 79390),
(303, 'VAUTEBIS', 79420),
(304, 'VOUHE', 79310),
(305, 'PAIZAY-LE-CHAPT', 79170);

-- --------------------------------------------------------

--
-- Stand-in structure for view `V_Absence`
--
CREATE TABLE IF NOT EXISTS `V_Absence` (
`IdAbsence` int(11)
,`HeureD` time
,`StatutTraitement` varchar(1)
,`HeureF` time
,`IdProf` int(11)
,`IdEleve` int(11)
,`IdDate` int(11)
,`IdAdmin` int(11)
,`Nom` varchar(25)
,`Prenom` varchar(25)
,`DateDeNaissance` date
,`Adresse` text
,`NumTelPerso` varchar(12)
,`NumTelResp` varchar(12)
,`Mail` varchar(100)
,`LienPhoto` varchar(100)
,`IdVille` int(11)
,`IdClasse` int(11)
,`NomProf` varchar(50)
,`PrenomProf` varchar(100)
,`MailProf` varchar(100)
,`NumTel` varchar(12)
,`Ddate` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `V_Absence1`
--
CREATE TABLE IF NOT EXISTS `V_Absence1` (
`IdAbsence` int(11)
,`HeureD` time
,`StatutTraitement` varchar(1)
,`HeureF` time
,`NomProf` varchar(50)
,`Nom` varchar(25)
,`IdDate` int(11)
);
-- --------------------------------------------------------

--
-- Structure for view `V_Absence`
--
DROP TABLE IF EXISTS `V_Absence`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sio`@`%` SQL SECURITY DEFINER VIEW `V_Absence` AS select `Absence`.`IdAbsence` AS `IdAbsence`,`Absence`.`HeureD` AS `HeureD`,`Absence`.`StatutTraitement` AS `StatutTraitement`,`Absence`.`HeureF` AS `HeureF`,`Absence`.`IdProf` AS `IdProf`,`Absence`.`IdEleve` AS `IdEleve`,`Absence`.`IdDate` AS `IdDate`,`Absence`.`IdAdmin` AS `IdAdmin`,`Eleve`.`Nom` AS `Nom`,`Eleve`.`Prenom` AS `Prenom`,`Eleve`.`DateDeNaissance` AS `DateDeNaissance`,`Eleve`.`Adresse` AS `Adresse`,`Eleve`.`NumTelPerso` AS `NumTelPerso`,`Eleve`.`NumTelResp` AS `NumTelResp`,`Eleve`.`Mail` AS `Mail`,`Eleve`.`LienPhoto` AS `LienPhoto`,`Eleve`.`IdVille` AS `IdVille`,`Eleve`.`IdClasse` AS `IdClasse`,`Professeur`.`NomProf` AS `NomProf`,`Professeur`.`PrenomProf` AS `PrenomProf`,`Professeur`.`MailProf` AS `MailProf`,`Professeur`.`NumTel` AS `NumTel`,`DateSaisi`.`Ddate` AS `Ddate` from (((`Absence` join `Eleve` on((`Absence`.`IdEleve` = `Eleve`.`IdEleve`))) join `Professeur` on((`Absence`.`IdProf` = `Professeur`.`IdProf`))) join `DateSaisi` on((`Absence`.`IdDate` = `DateSaisi`.`IdDate`)));

-- --------------------------------------------------------

--
-- Structure for view `V_Absence1`
--
DROP TABLE IF EXISTS `V_Absence1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sio`@`%` SQL SECURITY DEFINER VIEW `V_Absence1` AS select `Absence`.`IdAbsence` AS `IdAbsence`,`Absence`.`HeureD` AS `HeureD`,`Absence`.`StatutTraitement` AS `StatutTraitement`,`Absence`.`HeureF` AS `HeureF`,`Professeur`.`NomProf` AS `NomProf`,`Eleve`.`Nom` AS `Nom`,`Absence`.`IdDate` AS `IdDate` from ((`Absence` join `Eleve` on((`Absence`.`IdEleve` = `Eleve`.`IdEleve`))) left join `Professeur` on((`Absence`.`IdProf` = `Professeur`.`IdProf`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Eleve`
--
ALTER TABLE `Eleve`
  ADD CONSTRAINT `FK_Eleve_IdClasse` FOREIGN KEY (`IdClasse`) REFERENCES `Classe` (`IdClasse`),
  ADD CONSTRAINT `FK_Eleve_IdVille` FOREIGN KEY (`IdVille`) REFERENCES `Ville` (`IdVille`);

--
-- Constraints for table `Enseigner`
--
ALTER TABLE `Enseigner`
  ADD CONSTRAINT `FK_Enseigner_IdMatiere` FOREIGN KEY (`IdMatiere`) REFERENCES `Matiere` (`IdMatiere`),
  ADD CONSTRAINT `FK_Enseigner_IdProf` FOREIGN KEY (`IdProf`) REFERENCES `Professeur` (`IdProf`);

--
-- Constraints for table `Intervenir`
--
ALTER TABLE `Intervenir`
  ADD CONSTRAINT `FK_Intervenir_IdClasse` FOREIGN KEY (`IdClasse`) REFERENCES `Classe` (`IdClasse`),
  ADD CONSTRAINT `FK_Intervenir_IdProf` FOREIGN KEY (`IdProf`) REFERENCES `Professeur` (`IdProf`);

--
-- Constraints for table `Justificatif`
--
ALTER TABLE `Justificatif`
  ADD CONSTRAINT `FK_Justificatif_IdEleve` FOREIGN KEY (`IdEleve`) REFERENCES `Eleve` (`IdEleve`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
