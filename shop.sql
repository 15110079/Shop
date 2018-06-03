-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 11:43 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--
DROP DATABASE IF EXISTS shopdb;
CREATE DATABASE shopdb;
USE shopdb;
-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE IF NOT EXISTS `binhluan` (
`MABL` int(11) NOT NULL,
  `TIEUDE` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chitietbinhluan`
--

CREATE TABLE IF NOT EXISTS `chitietbinhluan` (
  `MABL` int(11) NOT NULL DEFAULT '0',
  `MANV` int(11) NOT NULL DEFAULT '0',
  `MASP` int(11) NOT NULL DEFAULT '0',
  `NOIDUNG` text,
  `NGAYBL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `MAHD` int(11) NOT NULL DEFAULT '0',
  `MASP` int(11) NOT NULL DEFAULT '0',
  `SOLUONG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE IF NOT EXISTS `chitietkhuyenmai` (
  `MASP` int(11) NOT NULL DEFAULT '0',
  `MAKM` int(11) NOT NULL DEFAULT '0',
  `PHANTRAMKM` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE IF NOT EXISTS `chitietsanpham` (
`MACHITIETs` int(5) NOT NULL,
  `MASP` int(10) NOT NULL,
  `TENCHITIET` varchar(50) NOT NULL,
  `GIATRI` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=711 ;

--
-- Dumping data for table `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MACHITIETs`, `MASP`, `TENCHITIET`, `GIATRI`) VALUES
(154, 1, '3D TV', 'No'),
(155, 1, 'Camera Back', '11 - 15 MP'),
(156, 1, 'Camera Front', '5 - 6 MP'),
(157, 1, '?i?u ki?n', 'M?i'),
(158, 1, 'Curved TV', 'No'),
(159, 1, 'Kích th??c màn hình', '4.7'),
(160, 1, 'M?u mã', '6s'),
(161, 1, 'Network Connections', '3G-HSPA|4G-LTE'),
(162, 1, 'H? ?i?u hành', 'IOS'),
(163, 1, 'Operation System Version', 'IOS9'),
(164, 1, 'Tr?ng l??ng (KG)', '0.2'),
(165, 1, 'S?n xu?t t?i', 'Trung qu?c'),
(166, 1, 'RAM memory', '2GB'),
(167, 1, 'Sim type', 'SIM nano'),
(168, 1, 'Sim Slots', '1'),
(169, 1, 'B? nh? trong', '64GB'),
(170, 1, 'B?o hành', '12 tháng'),
(171, 2, '3D TV', 'No'),
(172, 2, 'Camera Back', '11 - 15 MP'),
(173, 2, 'Camera Front', '5 - 6 MP'),
(174, 2, '?i?u ki?n', 'M?i'),
(175, 2, 'Curved TV', 'No'),
(176, 2, 'Kích th??c màn hình', '4.7'),
(177, 2, 'M?u mã', '6s'),
(178, 2, 'Network Connections', '3G-HSPA|4G-LTE'),
(179, 2, 'H? ?i?u hành', 'IOS'),
(180, 2, 'Operation System Version', 'IOS9'),
(181, 2, 'Tr?ng l??ng (KG)', '0.2'),
(182, 2, 'S?n xu?t t?i', 'Trung qu?c'),
(183, 2, 'RAM memory', '2GB'),
(184, 2, 'Sim type', 'SIM nano'),
(185, 2, 'Sim Slots', '1'),
(186, 2, 'B? nh? trong', '64GB'),
(187, 2, 'B?o hành', '12 tháng'),
(188, 3, '3D TV', 'No'),
(189, 3, 'Camera Back', '11 - 15 MP'),
(190, 3, 'Camera Front', '5 - 6 MP'),
(191, 3, '?i?u ki?n', 'M?i'),
(192, 3, 'Curved TV', 'No'),
(193, 3, 'Kích th??c màn hình', '4.7'),
(194, 3, 'M?u mã', '6s'),
(195, 3, 'Network Connections', '3G-HSPA|4G-LTE'),
(196, 3, 'H? ?i?u hành', 'IOS'),
(197, 3, 'Operation System Version', 'IOS9'),
(198, 3, 'Tr?ng l??ng (KG)', '0.2'),
(199, 3, 'S?n xu?t t?i', 'Trung qu?c'),
(200, 3, 'RAM memory', '2GB'),
(201, 3, 'Sim type', 'SIM nano'),
(202, 3, 'Sim Slots', '1'),
(203, 3, 'B? nh? trong', '64GB'),
(204, 3, 'B?o hành', '12 tháng'),
(205, 4, '3D TV', 'No'),
(206, 4, 'Camera Back', '11 - 15 MP'),
(207, 4, 'Camera Front', '5 - 6 MP'),
(208, 4, '?i?u ki?n', 'M?i'),
(209, 4, 'Curved TV', 'No'),
(210, 4, 'Kích th??c màn hình', '4.7'),
(211, 4, 'M?u mã', '6s'),
(212, 4, 'Network Connections', '3G-HSPA|4G-LTE'),
(213, 4, 'H? ?i?u hành', 'IOS'),
(214, 4, 'Operation System Version', 'IOS9'),
(215, 4, 'Tr?ng l??ng (KG)', '0.2'),
(216, 4, 'S?n xu?t t?i', 'Trung qu?c'),
(217, 4, 'RAM memory', '2GB'),
(218, 4, 'Sim type', 'SIM nano'),
(219, 4, 'Sim Slots', '1'),
(220, 4, 'B? nh? trong', '64GB'),
(221, 4, 'B?o hành', '12 tháng'),
(222, 5, '3D TV', 'No'),
(223, 5, 'Camera Back', '11 - 15 MP'),
(224, 5, 'Camera Front', '5 - 6 MP'),
(225, 5, '?i?u ki?n', 'M?i'),
(226, 5, 'Curved TV', 'No'),
(227, 5, 'Kích th??c màn hình', '4.7'),
(228, 5, 'M?u mã', '6s'),
(229, 5, 'Network Connections', '3G-HSPA|4G-LTE'),
(230, 5, 'H? ?i?u hành', 'IOS'),
(231, 5, 'Operation System Version', 'IOS9'),
(232, 5, 'Tr?ng l??ng (KG)', '0.2'),
(233, 5, 'S?n xu?t t?i', 'Trung qu?c'),
(234, 5, 'RAM memory', '2GB'),
(235, 5, 'Sim type', 'SIM nano'),
(236, 5, 'Sim Slots', '1'),
(237, 5, 'B? nh? trong', '64GB'),
(238, 5, 'B?o hành', '12 tháng'),
(239, 6, '3D TV', 'No'),
(240, 6, 'Camera Back', '11 - 15 MP'),
(241, 6, 'Camera Front', '5 - 6 MP'),
(242, 6, '?i?u ki?n', 'M?i'),
(243, 6, 'Curved TV', 'No'),
(244, 6, 'Kích th??c màn hình', '4.7'),
(245, 6, 'M?u mã', '6s'),
(246, 6, 'Network Connections', '3G-HSPA|4G-LTE'),
(247, 6, 'H? ?i?u hành', 'IOS'),
(248, 6, 'Operation System Version', 'IOS9'),
(249, 6, 'Tr?ng l??ng (KG)', '0.2'),
(250, 6, 'S?n xu?t t?i', 'Trung qu?c'),
(251, 6, 'RAM memory', '2GB'),
(252, 6, 'Sim type', 'SIM nano'),
(253, 6, 'Sim Slots', '1'),
(254, 6, 'B? nh? trong', '64GB'),
(255, 6, 'B?o hành', '12 tháng'),
(256, 7, '3D TV', 'No'),
(257, 7, 'Camera Back', '11 - 15 MP'),
(258, 7, 'Camera Front', '5 - 6 MP'),
(259, 7, '?i?u ki?n', 'M?i'),
(260, 7, 'Curved TV', 'No'),
(261, 7, 'Kích th??c màn hình', '4.7'),
(262, 7, 'M?u mã', '6s'),
(263, 7, 'Network Connections', '3G-HSPA|4G-LTE'),
(264, 7, 'H? ?i?u hành', 'IOS'),
(265, 7, 'Operation System Version', 'IOS9'),
(266, 7, 'Tr?ng l??ng (KG)', '0.2'),
(267, 7, 'S?n xu?t t?i', 'Trung qu?c'),
(268, 7, 'RAM memory', '2GB'),
(269, 7, 'Sim type', 'SIM nano'),
(270, 7, 'Sim Slots', '1'),
(271, 7, 'B? nh? trong', '64GB'),
(272, 7, 'B?o hành', '12 tháng'),
(273, 8, '3D TV', 'No'),
(274, 8, 'Camera Back', '11 - 15 MP'),
(275, 8, 'Camera Front', '5 - 6 MP'),
(276, 8, '?i?u ki?n', 'M?i'),
(277, 8, 'Curved TV', 'No'),
(278, 8, 'Kích th??c màn hình', '4.7'),
(279, 8, 'M?u mã', '6s'),
(280, 8, 'Network Connections', '3G-HSPA|4G-LTE'),
(281, 8, 'H? ?i?u hành', 'IOS'),
(282, 8, 'Operation System Version', 'IOS9'),
(283, 8, 'Tr?ng l??ng (KG)', '0.2'),
(284, 8, 'S?n xu?t t?i', 'Trung qu?c'),
(285, 8, 'RAM memory', '2GB'),
(286, 8, 'Sim type', 'SIM nano'),
(287, 8, 'Sim Slots', '1'),
(288, 8, 'B? nh? trong', '64GB'),
(289, 8, 'B?o hành', '12 tháng'),
(290, 9, '3D TV', 'No'),
(291, 9, 'Camera Back', '11 - 15 MP'),
(292, 9, 'Camera Front', '5 - 6 MP'),
(293, 9, '?i?u ki?n', 'M?i'),
(294, 9, 'Curved TV', 'No'),
(295, 9, 'Kích th??c màn hình', '4.7'),
(296, 9, 'M?u mã', '6s'),
(297, 9, 'Network Connections', '3G-HSPA|4G-LTE'),
(298, 9, 'H? ?i?u hành', 'IOS'),
(299, 9, 'Operation System Version', 'IOS9'),
(300, 9, 'Tr?ng l??ng (KG)', '0.2'),
(301, 9, 'S?n xu?t t?i', 'Trung qu?c'),
(302, 9, 'RAM memory', '2GB'),
(303, 9, 'Sim type', 'SIM nano'),
(304, 9, 'Sim Slots', '1'),
(305, 9, 'B? nh? trong', '64GB'),
(306, 9, 'B?o hành', '12 tháng'),
(307, 10, '3D TV', 'No'),
(308, 10, 'Camera Back', '11 - 15 MP'),
(309, 10, 'Camera Front', '5 - 6 MP'),
(310, 10, '?i?u ki?n', 'M?i'),
(311, 10, 'Curved TV', 'No'),
(312, 10, 'Kích th??c màn hình', '4.7'),
(313, 10, 'M?u mã', '6s'),
(314, 10, 'Network Connections', '3G-HSPA|4G-LTE'),
(315, 10, 'H? ?i?u hành', 'IOS'),
(316, 10, 'Operation System Version', 'IOS9'),
(317, 10, 'Tr?ng l??ng (KG)', '0.2'),
(318, 10, 'S?n xu?t t?i', 'Trung qu?c'),
(319, 10, 'RAM memory', '2GB'),
(320, 10, 'Sim type', 'SIM nano'),
(321, 10, 'Sim Slots', '1'),
(322, 10, 'B? nh? trong', '64GB'),
(323, 10, 'B?o hành', '12 tháng'),
(324, 11, '3D TV', 'No'),
(325, 11, 'Camera Back', '11 - 15 MP'),
(326, 11, 'Camera Front', '5 - 6 MP'),
(327, 11, '?i?u ki?n', 'M?i'),
(328, 11, 'Curved TV', 'No'),
(329, 11, 'Kích th??c màn hình', '4.7'),
(330, 11, 'M?u mã', '6s'),
(331, 11, 'Network Connections', '3G-HSPA|4G-LTE'),
(332, 11, 'H? ?i?u hành', 'IOS'),
(333, 11, 'Operation System Version', 'IOS9'),
(334, 11, 'Tr?ng l??ng (KG)', '0.2'),
(335, 11, 'S?n xu?t t?i', 'Trung qu?c'),
(336, 11, 'RAM memory', '2GB'),
(337, 11, 'Sim type', 'SIM nano'),
(338, 11, 'Sim Slots', '1'),
(339, 11, 'B? nh? trong', '64GB'),
(340, 11, 'B?o hành', '12 tháng'),
(341, 12, '3D TV', 'No'),
(342, 12, 'Camera Back', '11 - 15 MP'),
(343, 12, 'Camera Front', '5 - 6 MP'),
(344, 12, '?i?u ki?n', 'M?i'),
(345, 12, 'Curved TV', 'No'),
(346, 12, 'Kích th??c màn hình', '4.7'),
(347, 12, 'M?u mã', '6s'),
(348, 12, 'Network Connections', '3G-HSPA|4G-LTE'),
(349, 12, 'H? ?i?u hành', 'IOS'),
(350, 12, 'Operation System Version', 'IOS9'),
(351, 12, 'Tr?ng l??ng (KG)', '0.2'),
(352, 12, 'S?n xu?t t?i', 'Trung qu?c'),
(353, 12, 'RAM memory', '2GB'),
(354, 12, 'Sim type', 'SIM nano'),
(355, 12, 'Sim Slots', '1'),
(356, 12, 'B? nh? trong', '64GB'),
(357, 12, 'B?o hành', '12 tháng'),
(358, 13, '3D TV', 'No'),
(359, 13, 'Camera Back', '11 - 15 MP'),
(360, 13, 'Camera Front', '5 - 6 MP'),
(361, 13, '?i?u ki?n', 'M?i'),
(362, 13, 'Curved TV', 'No'),
(363, 13, 'Kích th??c màn hình', '4.7'),
(364, 13, 'M?u mã', '6s'),
(365, 13, 'Network Connections', '3G-HSPA|4G-LTE'),
(366, 13, 'H? ?i?u hành', 'IOS'),
(367, 13, 'Operation System Version', 'IOS9'),
(368, 13, 'Tr?ng l??ng (KG)', '0.2'),
(369, 13, 'S?n xu?t t?i', 'Trung qu?c'),
(370, 13, 'RAM memory', '2GB'),
(371, 13, 'Sim type', 'SIM nano'),
(372, 13, 'Sim Slots', '1'),
(373, 13, 'B? nh? trong', '64GB'),
(374, 13, 'B?o hành', '12 tháng'),
(375, 14, '3D TV', 'No'),
(376, 14, 'Camera Back', '11 - 15 MP'),
(377, 14, 'Camera Front', '5 - 6 MP'),
(378, 14, '?i?u ki?n', 'M?i'),
(379, 14, 'Curved TV', 'No'),
(380, 14, 'Kích th??c màn hình', '4.7'),
(381, 14, 'M?u mã', '6s'),
(382, 14, 'Network Connections', '3G-HSPA|4G-LTE'),
(383, 14, 'H? ?i?u hành', 'IOS'),
(384, 14, 'Operation System Version', 'IOS9'),
(385, 14, 'Tr?ng l??ng (KG)', '0.2'),
(386, 14, 'S?n xu?t t?i', 'Trung qu?c'),
(387, 14, 'RAM memory', '2GB'),
(388, 14, 'Sim type', 'SIM nano'),
(389, 14, 'Sim Slots', '1'),
(390, 14, 'B? nh? trong', '64GB'),
(391, 14, 'B?o hành', '12 tháng'),
(392, 15, '3D TV', 'No'),
(393, 15, 'Camera Back', '11 - 15 MP'),
(394, 15, 'Camera Front', '5 - 6 MP'),
(395, 15, '?i?u ki?n', 'M?i'),
(396, 15, 'Curved TV', 'No'),
(397, 15, 'Kích th??c màn hình', '4.7'),
(398, 15, 'M?u mã', '6s'),
(399, 15, 'Network Connections', '3G-HSPA|4G-LTE'),
(400, 15, 'H? ?i?u hành', 'IOS'),
(401, 15, 'Operation System Version', 'IOS9'),
(402, 15, 'Tr?ng l??ng (KG)', '0.2'),
(403, 15, 'S?n xu?t t?i', 'Trung qu?c'),
(404, 15, 'RAM memory', '2GB'),
(405, 15, 'Sim type', 'SIM nano'),
(406, 15, 'Sim Slots', '1'),
(407, 15, 'B? nh? trong', '64GB'),
(408, 15, 'B?o hành', '12 tháng'),
(409, 16, '3D TV', 'No'),
(410, 16, 'Camera Back', '11 - 15 MP'),
(411, 16, 'Camera Front', '5 - 6 MP'),
(412, 16, '?i?u ki?n', 'M?i'),
(413, 16, 'Curved TV', 'No'),
(414, 16, 'Kích th??c màn hình', '4.7'),
(415, 16, 'M?u mã', '6s'),
(416, 16, 'Network Connections', '3G-HSPA|4G-LTE'),
(417, 16, 'H? ?i?u hành', 'IOS'),
(418, 16, 'Operation System Version', 'IOS9'),
(419, 16, 'Tr?ng l??ng (KG)', '0.2'),
(420, 16, 'S?n xu?t t?i', 'Trung qu?c'),
(421, 16, 'RAM memory', '2GB'),
(422, 16, 'Sim type', 'SIM nano'),
(423, 16, 'Sim Slots', '1'),
(424, 16, 'B? nh? trong', '64GB'),
(425, 16, 'B?o hành', '12 tháng'),
(426, 17, '3D TV', 'No'),
(427, 17, 'Camera Back', '11 - 15 MP'),
(428, 17, 'Camera Front', '5 - 6 MP'),
(429, 17, '?i?u ki?n', 'M?i'),
(430, 17, 'Curved TV', 'No'),
(431, 17, 'Kích th??c màn hình', '4.7'),
(432, 17, 'M?u mã', '6s'),
(433, 17, 'Network Connections', '3G-HSPA|4G-LTE'),
(434, 17, 'H? ?i?u hành', 'IOS'),
(435, 17, 'Operation System Version', 'IOS9'),
(436, 17, 'Tr?ng l??ng (KG)', '0.2'),
(437, 17, 'S?n xu?t t?i', 'Trung qu?c'),
(438, 17, 'RAM memory', '2GB'),
(439, 17, 'Sim type', 'SIM nano'),
(440, 17, 'Sim Slots', '1'),
(441, 17, 'B? nh? trong', '64GB'),
(442, 17, 'B?o hành', '12 tháng'),
(443, 18, '3D TV', 'No'),
(444, 18, 'Camera Back', '11 - 15 MP'),
(445, 18, 'Camera Front', '5 - 6 MP'),
(446, 18, '?i?u ki?n', 'M?i'),
(447, 18, 'Curved TV', 'No'),
(448, 18, 'Kích th??c màn hình', '4.7'),
(449, 18, 'M?u mã', '6s'),
(450, 18, 'Network Connections', '3G-HSPA|4G-LTE'),
(451, 18, 'H? ?i?u hành', 'IOS'),
(452, 18, 'Operation System Version', 'IOS9'),
(453, 18, 'Tr?ng l??ng (KG)', '0.2'),
(454, 18, 'S?n xu?t t?i', 'Trung qu?c'),
(455, 18, 'RAM memory', '2GB'),
(456, 18, 'Sim type', 'SIM nano'),
(457, 18, 'Sim Slots', '1'),
(458, 18, 'B? nh? trong', '64GB'),
(459, 18, 'B?o hành', '12 tháng'),
(460, 19, '3D TV', 'No'),
(461, 19, 'Camera Back', '11 - 15 MP'),
(462, 19, 'Camera Front', '5 - 6 MP'),
(463, 19, '?i?u ki?n', 'M?i'),
(464, 19, 'Curved TV', 'No'),
(465, 19, 'Kích th??c màn hình', '4.7'),
(466, 19, 'M?u mã', '6s'),
(467, 19, 'Network Connections', '3G-HSPA|4G-LTE'),
(468, 19, 'H? ?i?u hành', 'IOS'),
(469, 19, 'Operation System Version', 'IOS9'),
(470, 19, 'Tr?ng l??ng (KG)', '0.2'),
(471, 19, 'S?n xu?t t?i', 'Trung qu?c'),
(472, 19, 'RAM memory', '2GB'),
(473, 19, 'Sim type', 'SIM nano'),
(474, 19, 'Sim Slots', '1'),
(475, 19, 'B? nh? trong', '64GB'),
(476, 19, 'B?o hành', '12 tháng'),
(477, 20, '3D TV', 'No'),
(478, 20, 'Camera Back', '11 - 15 MP'),
(479, 20, 'Camera Front', '5 - 6 MP'),
(480, 20, '?i?u ki?n', 'M?i'),
(481, 20, 'Curved TV', 'No'),
(482, 20, 'Kích th??c màn hình', '4.7'),
(483, 20, 'M?u mã', '6s'),
(484, 20, 'Network Connections', '3G-HSPA|4G-LTE'),
(485, 20, 'H? ?i?u hành', 'IOS'),
(486, 20, 'Operation System Version', 'IOS9'),
(487, 20, 'Tr?ng l??ng (KG)', '0.2'),
(488, 20, 'S?n xu?t t?i', 'Trung qu?c'),
(489, 20, 'RAM memory', '2GB'),
(490, 20, 'Sim type', 'SIM nano'),
(491, 20, 'Sim Slots', '1'),
(492, 20, 'B? nh? trong', '64GB'),
(493, 20, 'B?o hành', '12 tháng'),
(494, 21, '3D TV', 'No'),
(495, 21, 'Camera Back', '11 - 15 MP'),
(496, 21, 'Camera Front', '5 - 6 MP'),
(497, 21, '?i?u ki?n', 'M?i'),
(498, 21, 'Curved TV', 'No'),
(499, 21, 'Kích th??c màn hình', '4.7'),
(500, 21, 'M?u mã', '6s'),
(501, 21, 'Network Connections', '3G-HSPA|4G-LTE'),
(502, 21, 'H? ?i?u hành', 'IOS'),
(503, 21, 'Operation System Version', 'IOS9'),
(504, 21, 'Tr?ng l??ng (KG)', '0.2'),
(505, 21, 'S?n xu?t t?i', 'Trung qu?c'),
(506, 21, 'RAM memory', '2GB'),
(507, 21, 'Sim type', 'SIM nano'),
(508, 21, 'Sim Slots', '1'),
(509, 21, 'B? nh? trong', '64GB'),
(510, 21, 'B?o hành', '12 tháng'),
(511, 22, '3D TV', 'No'),
(512, 22, 'Camera Back', '11 - 15 MP'),
(513, 22, 'Camera Front', '5 - 6 MP'),
(514, 22, '?i?u ki?n', 'M?i'),
(515, 22, 'Curved TV', 'No'),
(516, 22, 'Kích th??c màn hình', '4.7'),
(517, 22, 'M?u mã', '6s'),
(518, 22, 'Network Connections', '3G-HSPA|4G-LTE'),
(519, 22, 'H? ?i?u hành', 'IOS'),
(520, 22, 'Operation System Version', 'IOS9'),
(521, 22, 'Tr?ng l??ng (KG)', '0.2'),
(522, 22, 'S?n xu?t t?i', 'Trung qu?c'),
(523, 22, 'RAM memory', '2GB'),
(524, 22, 'Sim type', 'SIM nano'),
(525, 22, 'Sim Slots', '1'),
(526, 22, 'B? nh? trong', '64GB'),
(527, 22, 'B?o hành', '12 tháng'),
(528, 23, '3D TV', 'No'),
(529, 23, 'Camera Back', '11 - 15 MP'),
(530, 23, 'Camera Front', '5 - 6 MP'),
(531, 23, '?i?u ki?n', 'M?i'),
(532, 23, 'Curved TV', 'No'),
(533, 23, 'Kích th??c màn hình', '4.7'),
(534, 23, 'M?u mã', '6s'),
(535, 23, 'Network Connections', '3G-HSPA|4G-LTE'),
(536, 23, 'H? ?i?u hành', 'IOS'),
(537, 23, 'Operation System Version', 'IOS9'),
(538, 23, 'Tr?ng l??ng (KG)', '0.2'),
(539, 23, 'S?n xu?t t?i', 'Trung qu?c'),
(540, 23, 'RAM memory', '2GB'),
(541, 23, 'Sim type', 'SIM nano'),
(542, 23, 'Sim Slots', '1'),
(543, 23, 'B? nh? trong', '64GB'),
(544, 23, 'B?o hành', '12 tháng'),
(545, 24, '3D TV', 'No'),
(546, 24, 'Camera Back', '11 - 15 MP'),
(547, 24, 'Camera Front', '5 - 6 MP'),
(548, 24, '?i?u ki?n', 'M?i'),
(549, 24, 'Curved TV', 'No'),
(550, 24, 'Kích th??c màn hình', '4.7'),
(551, 24, 'M?u mã', '6s'),
(552, 24, 'Network Connections', '3G-HSPA|4G-LTE'),
(553, 24, 'H? ?i?u hành', 'IOS'),
(554, 24, 'Operation System Version', 'IOS9'),
(555, 24, 'Tr?ng l??ng (KG)', '0.2'),
(556, 24, 'S?n xu?t t?i', 'Trung qu?c'),
(557, 24, 'RAM memory', '2GB'),
(558, 24, 'Sim type', 'SIM nano'),
(559, 24, 'Sim Slots', '1'),
(560, 24, 'B? nh? trong', '64GB'),
(561, 24, 'B?o hành', '12 tháng'),
(562, 25, '3D TV', 'No'),
(563, 25, 'Camera Back', '11 - 15 MP'),
(564, 25, 'Camera Front', '5 - 6 MP'),
(565, 25, '?i?u ki?n', 'M?i'),
(566, 25, 'Curved TV', 'No'),
(567, 25, 'Kích th??c màn hình', '4.7'),
(568, 25, 'M?u mã', '6s'),
(569, 25, 'Network Connections', '3G-HSPA|4G-LTE'),
(570, 25, 'H? ?i?u hành', 'IOS'),
(571, 25, 'Operation System Version', 'IOS9'),
(572, 25, 'Tr?ng l??ng (KG)', '0.2'),
(573, 25, 'S?n xu?t t?i', 'Trung qu?c'),
(574, 25, 'RAM memory', '2GB'),
(575, 25, 'Sim type', 'SIM nano'),
(576, 25, 'Sim Slots', '1'),
(577, 25, 'B? nh? trong', '64GB'),
(578, 25, 'B?o hành', '12 tháng'),
(579, 26, '3D TV', 'No'),
(580, 26, 'Camera Back', '11 - 15 MP'),
(581, 26, 'Camera Front', '5 - 6 MP'),
(582, 26, '?i?u ki?n', 'M?i'),
(583, 26, 'Curved TV', 'No'),
(584, 26, 'Kích th??c màn hình', '4.7'),
(585, 26, 'M?u mã', '6s'),
(586, 26, 'Network Connections', '3G-HSPA|4G-LTE'),
(587, 26, 'H? ?i?u hành', 'IOS'),
(588, 26, 'Operation System Version', 'IOS9'),
(589, 26, 'Tr?ng l??ng (KG)', '0.2'),
(590, 26, 'S?n xu?t t?i', 'Trung qu?c'),
(591, 26, 'RAM memory', '2GB'),
(592, 26, 'Sim type', 'SIM nano'),
(593, 26, 'Sim Slots', '1'),
(594, 26, 'B? nh? trong', '64GB'),
(595, 26, 'B?o hành', '12 tháng'),
(596, 27, '3D TV', 'No'),
(597, 27, 'Camera Back', '11 - 15 MP'),
(598, 27, 'Camera Front', '5 - 6 MP'),
(599, 27, '?i?u ki?n', 'M?i'),
(600, 27, 'Curved TV', 'No'),
(601, 27, 'Kích th??c màn hình', '4.7'),
(602, 27, 'M?u mã', '6s'),
(603, 27, 'Network Connections', '3G-HSPA|4G-LTE'),
(604, 27, 'H? ?i?u hành', 'IOS'),
(605, 27, 'Operation System Version', 'IOS9'),
(606, 27, 'Tr?ng l??ng (KG)', '0.2'),
(607, 27, 'S?n xu?t t?i', 'Trung qu?c'),
(608, 27, 'RAM memory', '2GB'),
(609, 27, 'Sim type', 'SIM nano'),
(610, 27, 'Sim Slots', '1'),
(611, 27, 'B? nh? trong', '64GB'),
(612, 27, 'B?o hành', '12 tháng'),
(613, 27, '3D TV', 'No'),
(614, 27, 'Camera Back', '11 - 15 MP'),
(615, 27, 'Camera Front', '5 - 6 MP'),
(616, 27, '?i?u ki?n', 'M?i'),
(617, 27, 'Curved TV', 'No'),
(618, 27, 'Kích th??c màn hình', '4.7'),
(619, 27, 'M?u mã', '6s'),
(620, 27, 'Network Connections', '3G-HSPA|4G-LTE'),
(621, 27, 'H? ?i?u hành', 'IOS'),
(622, 27, 'Operation System Version', 'IOS9'),
(623, 27, 'Tr?ng l??ng (KG)', '0.2'),
(624, 27, 'S?n xu?t t?i', 'Trung qu?c'),
(625, 27, 'RAM memory', '2GB'),
(626, 28, '3D TV', 'No'),
(627, 28, 'Camera Back', '11 - 15 MP'),
(628, 28, 'Camera Front', '5 - 6 MP'),
(629, 28, '?i?u ki?n', 'M?i'),
(630, 28, 'Curved TV', 'No'),
(631, 28, 'Kích th??c màn hình', '4.7'),
(632, 28, 'M?u mã', '6s'),
(633, 28, 'Network Connections', '3G-HSPA|4G-LTE'),
(634, 28, 'H? ?i?u hành', 'IOS'),
(635, 28, 'Operation System Version', 'IOS9'),
(636, 28, 'Tr?ng l??ng (KG)', '0.2'),
(637, 28, 'S?n xu?t t?i', 'Trung qu?c'),
(638, 28, 'RAM memory', '2GB'),
(639, 28, 'Sim type', 'SIM nano'),
(640, 28, 'Sim Slots', '1'),
(641, 28, 'B? nh? trong', '64GB'),
(642, 28, 'B?o hành', '12 tháng'),
(643, 29, '3D TV', 'No'),
(644, 29, 'Camera Back', '11 - 15 MP'),
(645, 29, 'Camera Front', '5 - 6 MP'),
(646, 29, '?i?u ki?n', 'M?i'),
(647, 29, 'Curved TV', 'No'),
(648, 29, 'Kích th??c màn hình', '4.7'),
(649, 29, 'M?u mã', '6s'),
(650, 29, 'Network Connections', '3G-HSPA|4G-LTE'),
(651, 29, 'H? ?i?u hành', 'IOS'),
(652, 29, 'Operation System Version', 'IOS9'),
(653, 29, 'Tr?ng l??ng (KG)', '0.2'),
(654, 29, 'S?n xu?t t?i', 'Trung qu?c'),
(655, 29, 'RAM memory', '2GB'),
(656, 29, 'Sim type', 'SIM nano'),
(657, 29, 'Sim Slots', '1'),
(658, 29, 'B? nh? trong', '64GB'),
(659, 29, 'B?o hành', '12 tháng'),
(660, 30, '3D TV', 'No'),
(661, 30, 'Camera Back', '11 - 15 MP'),
(662, 30, 'Camera Front', '5 - 6 MP'),
(663, 30, '?i?u ki?n', 'M?i'),
(664, 30, 'Curved TV', 'No'),
(665, 30, 'Kích th??c màn hình', '4.7'),
(666, 30, 'M?u mã', '6s'),
(667, 30, 'Network Connections', '3G-HSPA|4G-LTE'),
(668, 30, 'H? ?i?u hành', 'IOS'),
(669, 30, 'Operation System Version', 'IOS9'),
(670, 30, 'Tr?ng l??ng (KG)', '0.2'),
(671, 30, 'S?n xu?t t?i', 'Trung qu?c'),
(672, 30, 'RAM memory', '2GB'),
(673, 30, 'Sim type', 'SIM nano'),
(674, 30, 'Sim Slots', '1'),
(675, 30, 'B? nh? trong', '64GB'),
(676, 30, 'B?o hành', '12 tháng'),
(677, 31, '3D TV', 'No'),
(678, 31, 'Camera Back', '11 - 15 MP'),
(679, 31, 'Camera Front', '5 - 6 MP'),
(680, 31, '?i?u ki?n', 'M?i'),
(681, 31, 'Curved TV', 'No'),
(682, 31, 'Kích th??c màn hình', '4.7'),
(683, 31, 'M?u mã', '6s'),
(684, 31, 'Network Connections', '3G-HSPA|4G-LTE'),
(685, 31, 'H? ?i?u hành', 'IOS'),
(686, 31, 'Operation System Version', 'IOS9'),
(687, 31, 'Tr?ng l??ng (KG)', '0.2'),
(688, 31, 'S?n xu?t t?i', 'Trung qu?c'),
(689, 31, 'RAM memory', '2GB'),
(690, 31, 'Sim type', 'SIM nano'),
(691, 31, 'Sim Slots', '1'),
(692, 31, 'B? nh? trong', '64GB'),
(693, 31, 'B?o hành', '12 tháng'),
(694, 32, '3D TV', 'No'),
(695, 32, 'Camera Back', '11 - 15 MP'),
(696, 32, 'Camera Front', '5 - 6 MP'),
(697, 32, '?i?u ki?n', 'M?i'),
(698, 32, 'Curved TV', 'No'),
(699, 32, 'Kích th??c màn hình', '4.7'),
(700, 32, 'M?u mã', '6s'),
(701, 32, 'Network Connections', '3G-HSPA|4G-LTE'),
(702, 32, 'H? ?i?u hành', 'IOS'),
(703, 32, 'Operation System Version', 'IOS9'),
(704, 32, 'Tr?ng l??ng (KG)', '0.2'),
(705, 32, 'S?n xu?t t?i', 'Trung qu?c'),
(706, 32, 'RAM memory', '2GB'),
(707, 32, 'Sim type', 'SIM nano'),
(708, 32, 'Sim Slots', '1'),
(709, 32, 'B? nh? trong', '64GB'),
(710, 32, 'B?o hành', '12 tháng');

-- --------------------------------------------------------

--
-- Table structure for table `chitietthuonghieu`
--

CREATE TABLE IF NOT EXISTS `chitietthuonghieu` (
  `MATHUONGHIEU` int(11) NOT NULL DEFAULT '0',
  `MALOAISP` int(11) NOT NULL DEFAULT '0',
  `HINHLOAISPTH` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietthuonghieu`
--

INSERT INTO `chitietthuonghieu` (`MATHUONGHIEU`, `MALOAISP`, `HINHLOAISPTH`) VALUES
(1, 1, '/hinhthuonghieu/apple.png'),
(1, 49, '/hinhthuonghieu/macbook.png'),
(2, 1, '/hinhthuonghieu/nokia.png'),
(3, 1, '/hinhthuonghieu/samsung.png'),
(4, 1, '/hinhthuonghieu/xiaomi.png'),
(5, 1, '/hinhthuonghieu/asus.png'),
(6, 1, '/hinhthuonghieu/lenovo.png'),
(6, 49, '/hinhthuonghieu/laptoplenovo.png'),
(7, 1, '/hinhthuonghieu/oppo.png'),
(8, 1, '/hinhthuonghieu/sony.png'),
(9, 1, '/hinhthuonghieu/htc.png'),
(10, 49, '/hinhthuonghieu/dell.png'),
(11, 1, '/hinhthuonghieu/hp.png'),
(12, 1, '/hinhthuonghieu/scandisk.png'),
(13, 1, '/hinhthuonghieu/silicon.jpg'),
(14, 1, '/hinhthuonghieu/canon.jpg'),
(15, 49, '/hinhthuonghieu/microsoft.png');

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE IF NOT EXISTS `danhgia` (
  `MADG` varchar(200) NOT NULL DEFAULT '',
  `MASP` int(11) DEFAULT NULL,
  `TENTHIETBI` text,
  `TIEUDE` text,
  `NOIDUNG` text,
  `SOSAO` int(1) DEFAULT NULL,
  `NGAYDANHGIA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
`MAHD` int(11) NOT NULL,
  `NGAYMUA` text,
  `NGAYGIAO` text,
  `TRANGTHAI` varchar(20) DEFAULT NULL,
  `TENNGUOINHAN` varchar(50) DEFAULT NULL,
  `SODT` text,
  `DIACHI` text,
  `CHUYENKHOAN` tinyint(1) DEFAULT NULL,
  `MACHUYENKHOAN` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE IF NOT EXISTS `khuyenmai` (
`MAKM` int(11) NOT NULL,
  `MALOAISP` int(11) DEFAULT NULL,
  `TENKM` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `NGAYBATDAU` varchar(20) DEFAULT NULL,
  `NGAYKETTHUC` varchar(20) DEFAULT NULL,
  `HINHKHUYENMAI` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loainhanvien`
--

CREATE TABLE IF NOT EXISTS `loainhanvien` (
`MALOAINV` int(11) NOT NULL,
  `TENLOAINV` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `loainhanvien`
--

INSERT INTO `loainhanvien` (`MALOAINV`, `TENLOAINV`) VALUES
(1, 'Nhan vien '),
(2, 'Khach Hang');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE IF NOT EXISTS `loaisanpham` (
`MALOAISP` int(11) NOT NULL,
  `TENLOAISP` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MALOAI_CHA` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MALOAISP`, `TENLOAISP`, `MALOAI_CHA`) VALUES
(1, 'Điện thoại & Máy tính bảng', 0),
(2, 'Điện thoại di động', 1),
(3, 'Máy tính bảng', 1),
(4, 'Điện thoại bàn', 1),
(5, 'Phụ kiện điện thoại & máy tính bảng', 1),
(6, 'Ốp lưng và bao da điện thoại', 5),
(7, 'Miếng dán màn hình điện thoại', 5),
(8, 'Phụ kiện di động trên xe hơi', 5),
(9, 'Phụ kiện khác', 5),
(10, 'Cáp & Dock sạc', 5),
(11, 'Linh kiện & Dụng cụ', 5),
(12, 'SIM & Thẻ cào', 5),
(13, 'Pin và bộ sạc', 5),
(14, 'Phụ kiện máy tính bảng', 5),
(15, 'Pin sạc dự phòng', 5),
(16, 'Phụ kiện camera điện thoại', 5),
(17, 'Nhà cửa & Đời sống', 0),
(18, 'Bếp phòng ăn', 17),
(19, 'Dụng cụ làm bánh', 18),
(20, 'Dụng cụ nấu ăn', 18),
(21, 'Đồ dùng bàn ăn', 18),
(22, 'Đồ dùng uống trà và cà phê', 18),
(23, 'Dao nấu bếp', 18),
(24, 'Khăn trải bàn & Phụ kiện bằng vải', 18),
(25, 'Phụ kiện & Dụng cụ nhà bếp', 18),
(26, 'Đồ dùng phòng ngủ', 17),
(27, 'Bộ chăn và ga giường gối', 26),
(28, 'Gối', 26),
(29, 'Phụ kiện giường ngủ', 26),
(30, 'Bộ chăn ra gối nệm', 26),
(31, 'Ga giường', 26),
(32, 'Nệm và Vỏ nệm', 26),
(33, 'Đồ nội thất', 17),
(34, 'Nội thất phòng ngủ', 33),
(35, 'Nội thất phòng khách', 33),
(36, 'Nội thất bếp & Phòng ăn', 33),
(37, 'Nội thất phòng trẻ em', 33),
(38, 'Nội thất phòng làm việc tại gia', 33),
(39, 'Nội thất cho hành lang & lối vào', 33),
(40, 'Nội thất phòng trang trí', 33),
(41, 'Nội thất kiểu cổ', 33),
(42, 'Tân trang nhà cửa', 17),
(43, 'Kho chứa dụng cụ và Garage', 42),
(44, 'Điện', 42),
(45, 'Cổng và Hàng rào', 42),
(46, 'Bảo vệ và An toàn', 42),
(47, 'Ống nước', 42),
(48, 'Máy vi tính & Laptop', 17),
(49, 'Laptop', 48),
(50, 'Dòng giải trí', 49),
(51, 'Macbooks', 49),
(52, 'Ultrabooks', 49),
(53, 'Thiết bị lưu trữ', 17),
(54, 'Ổ cứng SSD', 53),
(55, 'Ổ cứng gắn ngoài', 53),
(56, 'Ổ cứng gắn trong', 53),
(57, 'USB lưu trữ', 53),
(58, 'Máy in & Phụ kiện', 17),
(59, 'Máy in', 58),
(60, 'Kệ máy in', 58),
(61, 'Máy Fax', 58),
(62, 'Mực in', 58),
(63, 'Chăm sóc sức khỏe & làm đẹp', 17),
(64, 'Trang điểm', 63),
(65, 'Mặt', 64),
(66, 'Môi', 64),
(67, 'Mắt', 64),
(68, 'Tẩy trang', 64),
(69, 'Chăm sóc mặt', 63),
(70, 'Mặt nạ đắp', 69),
(71, 'Sữa rữa mặt', 69),
(72, 'Thể thao', 17),
(73, 'Yaga & Thể hình', 72),
(74, 'Yoga', 73),
(75, 'Máy tập thể hình', 73),
(76, 'Máy tập thể lực', 73),
(77, 'Giày & Trang phục', 72),
(78, 'Dành cho nữ', 77),
(79, 'Dành cho nam', 77),
(80, 'Dành cho bé', 77),
(81, 'Thời trang', 0),
(82, 'TV, Video, Âm Thanh ,Game & Thiết Bị Số', 0),
(83, 'Tivi', 82),
(84, 'Dưới 24 inches', 83),
(85, '25-32 inches', 83),
(86, '33-42 inches', 83),
(87, '43-54 inches', 83),
(88, 'Trên 55 inches', 83),
(89, 'Tivi giá đặc biệt cho các tỉnh, thành lớn', 83),
(90, 'Thiết bị âm thanh', 82),
(91, 'Các loại tai nghe', 90),
(92, 'Loa di động', 90),
(93, 'Dàn âm thanh giải trí', 90),
(94, 'Máy nghe nhạc', 90),
(95, 'Video', 82),
(96, 'Thiết bị trình chiếu', 95),
(97, 'Thiết bị streaming', 95),
(98, 'Thiết bị chơi game', 82),
(99, 'Xbox', 98),
(100, 'Nitendo', 98),
(101, 'Thiết bị đeo công nghệ', 82),
(102, 'Đồng hồ thông minh', 101),
(103, 'Thiết bị theo dõi sức khỏe & vận động', 101),
(104, 'Mắt kính thông minh', 101),
(105, 'Thiết bị giám sát thông minh', 102),
(106, 'Thể thao & du lịch', 0),
(107, 'Các loại bài tập & thể hình', 106),
(108, 'Máy tập thể hình', 107),
(109, 'Máy tập thể lực', 107),
(110, 'Phụ kiện', 107),
(111, 'Tạ', 107),
(112, 'Yoga', 107),
(113, 'Pilates', 107),
(114, 'Đấm bốc, Võ thuật & Đánh MMA', 107),
(115, 'Thể tao đồng đội', 106),
(116, 'Máy tập thể hình', 115),
(117, 'Máy tập thể hình', 115),
(118, 'Bóng đá', 115),
(119, 'Bóng rổ', 115),
(120, 'Bóng chuyền', 115),
(121, 'Hoạt động dã ngoại', 106),
(122, 'Xe đạp', 121),
(123, 'Dã ngoại & leo núi', 121),
(124, 'Câu cá', 121),
(125, 'Xe Scooters', 121),
(126, 'Trượt băng trong nhà', 121),
(127, 'Trượt ván', 121),
(128, 'Bơi lội', 121),
(129, 'Xe máy và bách hóa', 0),
(130, 'Ô tô & xe máy', 129),
(131, 'Chăm sóc ô tô & xe máy', 130),
(132, 'Phụ kiện bên ngoài', 130),
(133, 'Phụ kiện bên trong', 130),
(134, 'Link kiện thay thế', 130),
(135, 'Thiết bị giám định ô tô', 130),
(136, 'Xe mô tô & xe địa hình', 130),
(137, 'Dầu nhớt', 130),
(138, 'Sơn sửa', 130),
(139, 'Phụ kiện xe tải', 130),
(140, 'Dụng cụ và thiết bị', 130),
(141, 'Bánh & vỏ xe', 130),
(142, 'Thiết bị định vị', 130);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
`MANV` int(11) NOT NULL,
  `TENNV` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `TENDANGNHAP` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MATKHAU` varchar(100) DEFAULT NULL,
  `DIACHI` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `NGAYSINH` varchar(20) DEFAULT NULL,
  `SODT` varchar(20) DEFAULT NULL,
  `GIOITINH` tinyint(1) DEFAULT NULL,
  `MALOAINV` int(11) DEFAULT NULL,
  `EMAILDOCQUYEN` text CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MANV`, `TENNV`, `TENDANGNHAP`, `MATKHAU`, `DIACHI`, `NGAYSINH`, `SODT`, `GIOITINH`, `MALOAINV`, `EMAILDOCQUYEN`) VALUES
(3, 'chau', 'chau@gmail.com', '123456C', NULL, NULL, NULL, NULL, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
`MASP` int(11) NOT NULL,
  `TENSP` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `GIA` decimal(10,0) DEFAULT NULL,
  `ANHLON` text,
  `ANHNHO` text,
  `THONGTIN` text,
  `SOLUONG` int(11) DEFAULT NULL,
  `MALOAISP` int(11) DEFAULT NULL,
  `MATHUONGHIEU` int(11) DEFAULT NULL,
  `LUOTMUA` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `GIA`, `ANHLON`, `ANHNHO`, `THONGTIN`, `SOLUONG`, `MALOAISP`, `MATHUONGHIEU`, `LUOTMUA`) VALUES
(1, 'Apple Iphone 6s Plus 16GB', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(2, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(3, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(4, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(5, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(6, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(7, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(8, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(9, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(10, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 2, 1, 0),
(11, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng ???c nh?p kh?u tr?c ti?p t? n??c ngoài b?i doanh nghi?p trong n??c, không thông qua nhà phân ph?i chính th?c t?i th? tr??ng Vi?t Nam.\r\nHàng nh?p kh?u ???c nhi?u ng??i ch?n l?a b?i giá thành t?t, ch?t l??ng v?n ???c ??m b?o nh? nh?ng s?n ph?m ???c nh?p kh?u thông qua nhà phân ph?i chính th?c (vì ???c s?n xu?t t? cùng m?t nhà máy c?a hãng s?n xu?t). H?n n?a, dù không ???c b?o hành t?i các trung tâm b?o hành chính th?c c?a hãng, các s?n ph?m này v?n ???c áp d?ng ??y ?? chính sách b?o hành c?a doanh nghi?p nh?p kh?u', 10, 49, 1, 0),
(12, 'Pin sạc dự phòng Asus Zenpower 10.050mAh (Vàng) ', '339000', '/hinhsanpham/pinsacduphongasus.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 13, 5, 0),
(13, 'Bao da kiêm bàn phím cho máy tính bảng 7 inch ( Đen)  ', '98000', '/hinhsanpham/baodabanphimmaytinhbang7ich.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 14, 5, 0),
(14, 'Gậy chụp hình Selfie Stick (Đen phối vàng) ', '36000', '/hinhsanpham/gaychuphinhtusuong.png', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 16, 5, 0),
(15, 'Bộ Miếng dán cường lực và ốp lưng cho iPhone 6 - NVPro 30306 (Trong suốt)  ', '86000', '/hinhsanpham/mieng-gian-cuong-luc-iphone-6-6s.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 7, 5, 0),
(16, 'Đế kẹp smartphone cho điện thoại', '36000', '/hinhsanpham/dekepsmartphonechodienthoai.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 8, 5, 0),
(17, 'Sim 3G tài khoản 600 MB', '106000', '/hinhsanpham/sim3gtaikhoan600.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 12, 5, 0),
(18, 'Ổ cắm thông minh Xiaomi Mi Power Strips (Trắng) ', '166000', '/hinhsanpham/o-cam-thong-minh-xiaomi.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 11, 5, 0),
(19, 'Giá đỡ điện thoại cho tay cầm chơi Game Terios T-3 ( Đen)  ', '99000', '/hinhsanpham/taycamchoigame.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 11, 5, 0),
(20, 'Tivi LED Arirang 24inch HD - Model AR-2488F (Đen)', '2439000', '/hinhsanpham/tiviled24inchesariang.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 84, 5, 0),
(21, 'Tivi LED LG 42inch 42LF550T Full HD (Đen)  ', '6939000', '/hinhsanpham/tiviled42inches.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 85, 5, 0),
(22, 'Smart Tivi LED LG 55inch Full HD - Model 55LH575T (Đen)', '17000000', '/hinhsanpham/tiviled55inches.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 87, 5, 0),
(23, 'Load Bluetooth SUNTEK S204 (Đen) ', '269000', '/hinhsanpham/sony-electronics-hd-radio.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 92, 5, 0),
(24, 'Tai nghe chụp tai Ovann X1 Gaming (Đen phối Xanh) ', '60000', '/hinhsanpham/tai-nghe-chup-tai-ovann-x1-gaming-den-phoi-xanh_5235588062018469161_300.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 91, 5, 0),
(25, 'Dàn âm thanh Samsung HT-E350K 5.1 330W (Đen) ', '1760000', '/hinhsanpham/vish-dvd-ht-e350k-2.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 93, 5, 0),
(26, 'Máy nghe nhạc MP3 NVPro Minion (Xanh dương) ', '40000', '/hinhsanpham/may-nghe-nhac-mp3-nvpro-minion-xanh-duong-8610-6315961-e77b808c5237d08a940e6fe597050469-catalog_233.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 94, 5, 0),
(27, 'Máy chiếu mini cho điện thoại (Nâu)  ', '169999', '/hinhsanpham/may-chieu-mini-cho-dien-thoai-nau-9973-9001242-168928dd2df3fa0fae4f2c453b3e8620-catalog_233.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 96, 5, 0),
(28, 'Thiết bị Android TV box MXQ S805 (Đen) ', '429300', '/hinhsanpham/20160530150209551.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 97, 5, 0),
(29, 'Tay cầm chơi game Xbox One Controller và Wireless Adapter for PC (Đen)', '1549000', '/hinhsanpham/36743763_palaciodehierro_wirelesscontrollerc35mmone_xbox_vista_1.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 99, 5, 0),
(30, 'Máy chơi games Nintendo Wii +HDD 500 GB (Full Games) (Đen) ', '5999000', '/hinhsanpham/23. WII CONSOLE BLACK W WII REMOTE PLUS _ NUNCHUCK (UPC 045496880675).jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 100, 5, 0),
(31, 'Đồng hồ thông minh Smart Watch Uwatch DZ09 (Bạc) ', '302676000', '/hinhsanpham/res_50df6f16088731d12e6c6698c47231e4_1200x1200c_mttq.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 102, 5, 0),
(32, 'Vòng đeo tay Xiaomi Miband 2 (Đen)  ', '819000', '/hinhsanpham/sh-02-a.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 103, 5, 0),
(33, 'Bút ghi âm chuyên nghiệp 8 GB (Đen) ', '612000', '/hinhsanpham/130814225508442671.jpg', '', 'Asus ZenPower là viên pin s?c chính hãng hi?m hoi ??n t? m?t nhà s?n xu?t ?i?n tho?i khá l?n ? Vi?t Nam. Hi?n t?i ZenPower có khá nhi?u màu khác nhau, t? h?ng ??p trai ??n màu ?en y?u ?u?i. Hi?n t?i thì mình m??n ???c màu h?ng m?nh m? và vàng sang ch?nh ?? trên tay. Asus có bán các mi?ng b?o v? cao su nhi?u màu cho pin nh?ng không rõ có ???c phân ph?i ? Vi?t Nam hay không.', 10, 104, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE IF NOT EXISTS `thuonghieu` (
`MATHUONGHIEU` int(11) NOT NULL,
  `TENTHUONGHIEU` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `HINHTHUONGHIEU` text,
  `LUOTMUA` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`MATHUONGHIEU`, `TENTHUONGHIEU`, `HINHTHUONGHIEU`, `LUOTMUA`) VALUES
(1, 'Apple', 'hinhthuonghieu/tenapple.jpg', 0),
(2, 'Nokia', 'hinhthuonghieu/tennokia.png', 0),
(3, 'Samsung', 'hinhthuonghieu/tensamsung.png', 0),
(4, 'Xiaomi', 'hinhthuonghieu/tenxiaomi.png', 0),
(5, 'Asus', 'hinhthuonghieu/tenasus.png', 0),
(6, 'Lenovo', 'hinhthuonghieu/tenlenovo.png', 0),
(7, 'Oppo', 'hinhthuonghieu/tenoppo.png', 0),
(8, 'Sony', 'hinhthuonghieu/tensony.png', 0),
(9, 'HTC', 'hinhthuonghieu/tenhtc.png', 0),
(10, 'Dell', 'hinhthuonghieu/tendell.png', 0),
(11, 'HP', 'hinhthuonghieu/tenhp.png', 0),
(12, 'Scandisk', 'hinhthuonghieu/tensandisk.png', 0),
(13, 'Silicon', 'hinhthuonghieu/tensilicon.png', 0),
(14, 'Canon', 'hinhthuonghieu/tencannon.png', 0),
(15, 'Microsoft', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
 ADD PRIMARY KEY (`MABL`);

--
-- Indexes for table `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
 ADD PRIMARY KEY (`MABL`,`MANV`,`MASP`), ADD KEY `KHOANGOAI_CHITIETBINHLUAN_MANV` (`MANV`), ADD KEY `KHOANGOAI_CHITIETBINHLUAN_MASP` (`MASP`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
 ADD PRIMARY KEY (`MAHD`,`MASP`), ADD KEY `KHOANGOAI_CHITIETHOADON_MASP` (`MASP`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
 ADD PRIMARY KEY (`MASP`,`MAKM`), ADD KEY `KHOANGOAI_CHITIETKHUYENMAI_MAKM` (`MAKM`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
 ADD PRIMARY KEY (`MACHITIETs`);

--
-- Indexes for table `chitietthuonghieu`
--
ALTER TABLE `chitietthuonghieu`
 ADD PRIMARY KEY (`MATHUONGHIEU`,`MALOAISP`), ADD KEY `KHOANGOAI_CHITIETTHUONGHIEU_MALOAISP` (`MALOAISP`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
 ADD PRIMARY KEY (`MADG`), ADD KEY `KHOANGOAI_DANHGIA_MASP` (`MASP`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
 ADD PRIMARY KEY (`MAHD`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
 ADD PRIMARY KEY (`MAKM`), ADD KEY `KHOANGOAI_KHUYENMAI_MALOAISP` (`MALOAISP`);

--
-- Indexes for table `loainhanvien`
--
ALTER TABLE `loainhanvien`
 ADD PRIMARY KEY (`MALOAINV`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
 ADD PRIMARY KEY (`MALOAISP`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
 ADD PRIMARY KEY (`MANV`), ADD KEY `KHOANGOAI_NHANVIEN_MALOAINV` (`MALOAINV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
 ADD PRIMARY KEY (`MASP`), ADD KEY `KHOANGOAI_SANPHAM_MALOAISP` (`MALOAISP`), ADD KEY `KHOANGOAI_SANPHAM_MATHUONGHIEU` (`MATHUONGHIEU`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
 ADD PRIMARY KEY (`MATHUONGHIEU`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
MODIFY `MABL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
MODIFY `MACHITIETs` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=711;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
MODIFY `MAHD` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
MODIFY `MAKM` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loainhanvien`
--
ALTER TABLE `loainhanvien`
MODIFY `MALOAINV` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
MODIFY `MALOAISP` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
MODIFY `MANV` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
MODIFY `MASP` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
MODIFY `MATHUONGHIEU` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
ADD CONSTRAINT `KHOANGOAI_CHITIETBINHLUAN_MABL` FOREIGN KEY (`MABL`) REFERENCES `binhluan` (`MABL`),
ADD CONSTRAINT `KHOANGOAI_CHITIETBINHLUAN_MANV` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
ADD CONSTRAINT `KHOANGOAI_CHITIETBINHLUAN_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
ADD CONSTRAINT `KHOANGOAI_CHITIETHOADON_MAHD` FOREIGN KEY (`MAHD`) REFERENCES `hoadon` (`MAHD`),
ADD CONSTRAINT `KHOANGOAI_CHITIETHOADON_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
ADD CONSTRAINT `KHOANGOAI_CHIETIETKUYENMAI_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`),
ADD CONSTRAINT `KHOANGOAI_CHITIETKHUYENMAI_MAKM` FOREIGN KEY (`MAKM`) REFERENCES `khuyenmai` (`MAKM`);

--
-- Constraints for table `chitietthuonghieu`
--
ALTER TABLE `chitietthuonghieu`
ADD CONSTRAINT `KHOANGOAI_CHITIETTHUONGHIEU_MALOAISP` FOREIGN KEY (`MALOAISP`) REFERENCES `loaisanpham` (`MALOAISP`),
ADD CONSTRAINT `KHOANGOAI_CHITIETTHUONGHIEU_MATHUONGHIEU` FOREIGN KEY (`MATHUONGHIEU`) REFERENCES `thuonghieu` (`MATHUONGHIEU`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
ADD CONSTRAINT `KHOANGOAI_DANHGIA_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
ADD CONSTRAINT `KHOANGOAI_KHUYENMAI_MALOAISP` FOREIGN KEY (`MALOAISP`) REFERENCES `loaisanpham` (`MALOAISP`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
ADD CONSTRAINT `KHOANGOAI_NHANVIEN_MALOAINV` FOREIGN KEY (`MALOAINV`) REFERENCES `loainhanvien` (`MALOAINV`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
ADD CONSTRAINT `KHOANGOAI_SANPHAM_MALOAISP` FOREIGN KEY (`MALOAISP`) REFERENCES `loaisanpham` (`MALOAISP`),
ADD CONSTRAINT `KHOANGOAI_SANPHAM_MATHUONGHIEU` FOREIGN KEY (`MATHUONGHIEU`) REFERENCES `thuonghieu` (`MATHUONGHIEU`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
