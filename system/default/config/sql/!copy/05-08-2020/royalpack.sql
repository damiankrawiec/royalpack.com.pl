-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 05 Sie 2020, 13:25
-- Wersja serwera: 5.7.26
-- Wersja PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `royalpack`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_category`
--

DROP TABLE IF EXISTS `im_category`;
CREATE TABLE IF NOT EXISTS `im_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Wyzwalacze `im_category`
--
DROP TRIGGER IF EXISTS `im_category_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_category_insert_date_create` BEFORE INSERT ON `im_category` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_category_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_category_insert_date_modify` BEFORE INSERT ON `im_category` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_category_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_category_update_date_modify` BEFORE UPDATE ON `im_category` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_file`
--

DROP TABLE IF EXISTS `im_file`;
CREATE TABLE IF NOT EXISTS `im_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_file`
--

INSERT INTO `im_file` (`file_id`, `name`, `content`, `url`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Obowiązek informacyjny', '<p><span style=\"font-size: 10pt;\">(dokument dotyczący przetwarzania danych osobowych)</span></p>', 'obowiazek-informacyjny-kontrahenci-1ab149fac33bd7f9292e02147a767de2.pdf', 'on', 'kontakt, kontrahenci', '2020-07-14 17:36:42', '2020-07-24 08:12:26'),
(2, 'Artykuł ekologiczne i ekonomiczne - świat druku', NULL, 'swiat-druku-924bf7ef033d814dc221bde1cc7b6b65.pdf', 'on', NULL, '2020-07-14 18:41:33', '2020-07-14 18:41:33'),
(3, 'Ogólne warunki handlowe', '<p><span style=\"font-size: 10pt;\">(dokument w języku polskim)</span></p>', 'ogolne-warunki-handlowe-9d217e255fd0618d76de85f68a0919f0.pdf', 'on', 'Dokument w języku polskim', '2020-07-21 18:07:58', '2020-07-21 18:14:18'),
(4, 'Allgemeine geschäftsbedingungen', '<p><span style=\"font-size: 10pt;\">(dokument in deutscher Sprache)</span></p>', 'allgemeine-geschaftsbedingungen-7959bea2346f5de43e3f126e9771bda7.pdf', 'on', 'Dokument w języku niemieckim', '2020-07-21 18:09:35', '2020-07-21 18:24:53'),
(5, 'General terms and conditions of deliveries', '<p><span style=\"font-size: 10pt;\">(document in English)</span></p>', 'general-terms-and-conditions-of-deliveries-8d15e18893d4e0a7aa4a792129d96807.pdf', 'on', 'Dokument w języku angielskim', '2020-07-21 18:12:29', '2020-07-21 18:14:58'),
(6, 'Obowiązek informacyjny', '<p><span style=\"font-size: 13.3333px;\">(dokument dotyczący przetwarzania danych osobowych w procesie rekrutacji)</span></p>', 'obowiazek-informacyjny-rekrutacja-65f9927fefe7d1f4b00de3014efff91a.pdf', 'on', 'kariera, rekrutacja, cv', '2020-07-24 08:08:18', '2020-07-24 08:13:09'),
(7, 'załącznik nr 1_ZO 1 2018', '', 'zalacznik-nr-1_zo-1-2018-80fad7f7c9b8733ec044d46ca1d605df.pdf', 'on', '', '2020-07-28 13:06:28', '2020-07-28 13:07:49'),
(8, 'załącznik nr 2_ZO 1 2018', NULL, 'zalacznik-nr-2_zo-1-2018-39dd87af594770bb89028d6a5819457f.pdf', 'on', NULL, '2020-07-28 13:08:10', '2020-07-28 13:08:10'),
(9, 'załącznik nr 3_ZO 1 2018', NULL, 'zalacznik-nr-3_zo-1-2018-af2bb2550fdd3aa1e5510dac5a698be0.pdf', 'on', NULL, '2020-07-28 13:08:41', '2020-07-28 13:08:41'),
(10, 'ZO 1 2018', NULL, 'zo-1-2018-67a853c5c5ef2bf870719cb95b733b20.pdf', 'on', NULL, '2020-07-28 13:29:04', '2020-07-28 13:29:04'),
(11, 'ZO 2A 2018', NULL, 'zo-2a-2018-0baeaaa2d852cf8049cd6169951672b2.pdf', 'on', NULL, '2020-07-28 14:08:51', '2020-07-28 14:08:51'),
(12, 'załącznik nr 1_ZO 2A 2018', NULL, 'zalacznik-nr-1_zo-2a-2018-3880a4ce7946b37d104f4f8ac4401e66.pdf', 'on', NULL, '2020-07-28 14:09:10', '2020-07-28 14:09:10'),
(13, 'załącznik nr 2_ZO 2A 2018', NULL, 'zalacznik-nr-2_zo-2a-2018-82c36662b698733f97afae25aeff9510.pdf', 'on', NULL, '2020-07-28 14:09:42', '2020-07-28 14:09:42'),
(14, 'załącznik nr 3_ZO 2A 2018', NULL, 'zalacznik-nr-3_zo-2a-2018-073a1b5ed6d854d58fad51b1b71c78fc.pdf', 'on', NULL, '2020-07-28 14:09:55', '2020-07-28 14:09:55'),
(15, 'ZO 2B 2018', NULL, 'zo-2b-2018-de869ffcfb25b0360acfba015d10939c.pdf', 'on', NULL, '2020-07-28 14:13:23', '2020-07-28 14:13:23'),
(16, 'załącznik nr 1_ZO 2B 2018', NULL, 'zalacznik-nr-1_zo-2b-2018-c485c752bdb048aecc4e69dd2893aca4.pdf', 'on', NULL, '2020-07-28 14:13:41', '2020-07-28 14:13:41'),
(17, 'załącznik nr 2_ZO 2B 2018', NULL, 'zalacznik-nr-2_zo-2b-2018-f6e989ed2a12034a79f2a32e8d28cae9.pdf', 'on', NULL, '2020-07-28 14:13:55', '2020-07-28 14:13:55'),
(18, 'załącznik nr 3_ZO 2B 2018', NULL, 'zalacznik-nr-3_zo-2b-2018-ae95bbdddb254d4306ac2a4ffc55c08c.pdf', 'on', NULL, '2020-07-28 14:14:06', '2020-07-28 14:14:06'),
(19, 'RQ 2B 2018', NULL, 'zo-2b-2018_en-0b99a1e7a9e7e4fa671818bb30775572.pdf', 'on', NULL, '2020-07-28 14:16:24', '2020-07-28 14:16:24'),
(20, 'attachment no. 1_RQ 2B 2018', NULL, 'zalacznik-nr-1_zo-2b-2018_en-5730c565fa3e7b7c1c4e17a836756161.pdf', 'on', NULL, '2020-07-28 14:16:38', '2020-07-28 14:16:38'),
(21, 'attachment no. 2_RQ 2B 2018', NULL, 'zalacznik-nr-2_zo-2b-2018_en-dca2474223287f4f83551a52e338830c.pdf', 'on', NULL, '2020-07-28 14:16:52', '2020-07-28 14:16:52'),
(22, 'attachment no. 3_RQ 2B 2018', NULL, 'zalacznik-nr-3_zo-2b-2018_en-2e11e9ca5cb331f3cb6e28d9fa62403d.pdf', 'on', NULL, '2020-07-28 14:17:03', '2020-07-28 14:17:03'),
(23, 'ZO 3A 2018', NULL, 'zo-3a-2018-e7b97eb1f0f1f0533ac41f3772d32bfa.pdf', 'on', NULL, '2020-07-28 14:18:50', '2020-07-28 14:18:50'),
(24, 'załącznik nr 1_ZO 3A 2018', NULL, 'zalacznik-nr-1_zo-3a-2018-277e21dbade2ce7e37968ae68c3cc4e6.pdf', 'on', NULL, '2020-07-28 14:19:01', '2020-07-28 14:19:01'),
(25, 'załącznik nr 2_ZO 3A 2018', NULL, 'zalacznik-nr-2_zo-3a-2018-850270d4f2cc61a53d60a9e3f0f6001c.pdf', 'on', NULL, '2020-07-28 14:19:16', '2020-07-28 14:19:16'),
(26, 'załącznik nr 3_ZO 3A 2018', NULL, 'zalacznik-nr-3_zo-3a-2018-3aba97d3e31ed89635232bba52a95ccb.pdf', 'on', NULL, '2020-07-28 14:19:27', '2020-07-28 14:19:27'),
(27, 'RQ 3A 2018', NULL, 'zo-3a-2018_en-1081be1cef0768b5c3afbe65b156fa35.pdf', 'on', NULL, '2020-07-28 14:21:35', '2020-07-28 14:21:35'),
(28, 'attachment no 1_RQ 3A 2018', NULL, 'zalacznik-nr-1_zo-3a-2018_en-817ec1b0cb873b8f554bb295fa6a8cf4.pdf', 'on', NULL, '2020-07-28 14:21:48', '2020-07-28 14:21:48'),
(29, 'attachment no 2_RQ 3A 2018', NULL, 'zalacznik-nr-2_zo-3a-2018_en-63ae7b37ad9e51097c554d030656f967.pdf', 'on', NULL, '2020-07-28 14:22:02', '2020-07-28 14:22:02'),
(30, 'attachment no 3_RQ 3A 2018', '', 'zalacznik-nr-3_zo-3a-2018_en-9cd4f5b857cc2016bf32335a20641079.pdf', 'on', '', '2020-07-28 14:22:15', '2020-07-28 14:22:19'),
(31, 'ZO 3B 2018', NULL, 'zo-3b-2018-89f89829fcbc8ee6a5076c055609b2b8.pdf', 'on', NULL, '2020-07-28 14:23:37', '2020-07-28 14:23:37'),
(32, 'załącznik nr 1_ZO 3B 2018', NULL, 'zalacznik-nr-1_zo-3b-2018-c7933017fdc0385808ebb5a8a3e272eb.pdf', 'on', NULL, '2020-07-28 14:23:48', '2020-07-28 14:23:48'),
(33, 'załącznik nr 2_ZO 3B 2018', NULL, 'zalacznik-nr-2_zo-3b-2018-f24af97b68f4984021ee201a4d333810.pdf', 'on', NULL, '2020-07-28 14:24:00', '2020-07-28 14:24:00'),
(34, 'załącznik nr 3_ZO 3B 2018', NULL, 'zalacznik-nr-3_zo-3b-2018-fa87eb87f8802b35c41270754deea898.pdf', 'on', NULL, '2020-07-28 14:24:11', '2020-07-28 14:24:11'),
(35, 'ZO 4 2018', NULL, 'zo-4-2018-841eb5941528865bf1095b8f09789500.pdf', 'on', NULL, '2020-07-28 14:26:00', '2020-07-28 14:26:00'),
(36, 'załącznik nr 1_ZO 4 2018', NULL, 'zalacznik-nr-1_zo-4-2018-ca8229b3c66c43af24ad017c31ffcbc9.pdf', 'on', NULL, '2020-07-28 14:26:11', '2020-07-28 14:26:11'),
(37, 'załącznik nr 2_ZO 4 2018', NULL, 'zalacznik-nr-2_zo-4-2018-7e9423607edca5b40be81d0aa896a67b.pdf', 'on', NULL, '2020-07-28 14:26:23', '2020-07-28 14:26:23'),
(38, 'załącznik nr 3_ZO 4 2018', NULL, 'zalacznik-nr-3_zo-4-2018-3943b2627ce81eca614da4708dfb7f0f.pdf', 'on', NULL, '2020-07-28 14:26:35', '2020-07-28 14:26:35'),
(39, 'RQ 4 2018', NULL, 'zo-4-2018_en-d53318a1948411e6ad242ac2af576bf7.pdf', 'on', NULL, '2020-07-28 14:27:56', '2020-07-28 14:27:56'),
(40, 'attachment no. 1_RQ 4 2018', NULL, 'zalacznik-nr-1_zo-4-2018_en-ec80147899592785ce465895e47982a7.pdf', 'on', NULL, '2020-07-28 14:28:10', '2020-07-28 14:28:10'),
(41, 'attachment no. 2_RQ 4 2018', NULL, 'zalacznik-nr-2_zo-4-2018_en-d65803cd3bdfd9690b57b23787ddb61f.pdf', 'on', NULL, '2020-07-28 14:28:21', '2020-07-28 14:28:21'),
(42, 'attachment no. 3_RQ 4 2018', NULL, 'zalacznik-nr-3_zo-4-2018_en-e589ca2c310225a0ab39b3e137acb3f1.pdf', 'on', NULL, '2020-07-28 14:28:32', '2020-07-28 14:28:32'),
(43, 'ZO 5 2018', NULL, 'zo-5-2018-8a6dc4eaa6692c59cb07bd70ca05ea40.pdf', 'on', NULL, '2020-07-28 14:29:53', '2020-07-28 14:29:53'),
(44, 'załącznik nr 1_ZO 5 2018', NULL, 'zalacznik-nr-1_zo-5-2018-7302f3506717b223f2bf47b219cbb88d.pdf', 'on', NULL, '2020-07-28 14:30:04', '2020-07-28 14:30:04'),
(45, 'załącznik nr 2_ZO 5 2018', NULL, 'zalacznik-nr-2_zo-5-2018-be15b2dfe4dd6cccc2e8055a4d203138.pdf', 'on', NULL, '2020-07-28 14:30:17', '2020-07-28 14:30:17'),
(46, 'załącznik nr 3_ZO 5 2018', NULL, 'zalacznik-nr-3_zo-5-2018-73535f86c75e6f4099994552a7f8a169.pdf', 'on', NULL, '2020-07-28 14:30:31', '2020-07-28 14:30:31'),
(47, 'RQ 5 2018', NULL, 'rq-5-2018-0ec094de7d9ef07311f113dc2e05c7a7.pdf', 'on', NULL, '2020-07-28 14:33:53', '2020-07-28 14:33:53'),
(48, 'attachment no. 1_RQ 5 2018', NULL, 'attachment-no-4b66c0a69582467da4fb8a89075645d2.pdf', 'on', NULL, '2020-07-28 14:34:11', '2020-07-28 14:34:11'),
(49, 'attachment no. 2_RQ 5 2018', NULL, 'attachment-no-79bd3d4b12ce7ce0521654c5da76debd.pdf', 'on', NULL, '2020-07-28 14:34:24', '2020-07-28 14:34:24'),
(50, 'attachment no. 3_RQ 5 2018', NULL, 'attachment-no-92f654c636859fa1beb5e40a3f965e48.pdf', 'on', NULL, '2020-07-28 14:34:35', '2020-07-28 14:34:35'),
(51, 'ZO 6 2018', NULL, 'zo-6-2018-d5474849393b623ff876e305f056ecc9.pdf', 'on', NULL, '2020-07-28 14:35:58', '2020-07-28 14:35:58'),
(52, 'załącznik nr 1_ZO 6 2018', NULL, 'zalacznik-nr-1_zo-6-2018-a074584ac0b63091b1c60973731f7a36.pdf', 'on', NULL, '2020-07-28 14:36:09', '2020-07-28 14:36:09'),
(53, 'załącznik nr 2_ZO 6 2018', NULL, 'zalacznik-nr-2_zo-6-2018-e3f6c774ec73a8ad100a203dc79dae93.pdf', 'on', NULL, '2020-07-28 14:36:20', '2020-07-28 14:36:20'),
(54, 'załącznik nr 3_ZO 6 2018', NULL, 'zalacznik-nr-3_zo-6-2018-1641f7f9df6078dd55679751db5ced65.pdf', 'on', NULL, '2020-07-28 14:36:31', '2020-07-28 14:36:31'),
(55, 'RQ 6 2018', NULL, 'rq-6-2018-ae5b32dd717866669a8a017e41dd1cae.pdf', 'on', NULL, '2020-07-28 14:38:30', '2020-07-28 14:38:30'),
(56, 'attachment no. 1_RQ 6 2018', NULL, 'attachment-no-4df450691b8d8b33f3378924143bdab4.pdf', 'on', NULL, '2020-07-28 14:38:43', '2020-07-28 14:38:43'),
(57, 'attachment no. 2_RQ 6 2018', NULL, 'attachment-no-43103515b816fef79b2313bfce078041.pdf', 'on', NULL, '2020-07-28 14:38:56', '2020-07-28 14:38:56'),
(58, 'attachment no. 3_RQ 6 2018', NULL, 'attachment-no-29a7b72545f174dd5351d12569e7892d.pdf', 'on', NULL, '2020-07-28 14:39:10', '2020-07-28 14:39:10'),
(59, 'ZO 7 2018', NULL, 'zo-7-2018-365fda9076b5c08ff1aa28e27b7273e6.pdf', 'on', NULL, '2020-07-28 14:40:33', '2020-07-28 14:40:33'),
(60, 'załącznik nr 1_ZO 7 2018', NULL, 'zalacznik-nr-1_zo-7-2018-678992f68a3f63d8d1cc44dc9d007b5f.pdf', 'on', NULL, '2020-07-28 14:40:45', '2020-07-28 14:40:45'),
(61, 'załącznik nr 2_ZO 7 2018', NULL, 'zalacznik-nr-2_zo-7-2018-5f813d263dad85c92bdc05c160bfa812.pdf', 'on', NULL, '2020-07-28 14:40:56', '2020-07-28 14:40:56'),
(62, 'załącznik nr 3_ZO 7 2018', NULL, 'zalacznik-nr-3_zo-7-2018-8d9e4f15f39a27b53194536f359a29ba.pdf', 'on', NULL, '2020-07-28 14:41:07', '2020-07-28 14:41:07'),
(63, 'RQ 7 2018', NULL, 'rq-7-2018-a82b71af13c657a7786489e5b7d2917c.pdf', 'on', NULL, '2020-07-28 14:42:35', '2020-07-28 14:42:35'),
(64, 'attachment no. 1_RQ 7 2018', NULL, 'attachment-no-1_rq-7-2018-d82692bbd413d4d01c22db61bad38ae3.pdf', 'on', NULL, '2020-07-28 14:42:48', '2020-07-28 14:42:48'),
(65, 'attachment no. 2_RQ 7 2018', NULL, 'attachment-no-2_rq-7-2018-7475487f4211fa2d31e6271959f8bd31.pdf', 'on', NULL, '2020-07-28 14:42:58', '2020-07-28 14:42:58'),
(66, 'attachment no. 3_RQ 7 2018', NULL, 'attachment-no-3_rq-7-2018-3c1a1d3f06c67f729b3d4a76c7a21be9.pdf', 'on', NULL, '2020-07-28 14:43:10', '2020-07-28 14:43:10'),
(67, 'ZO 8 2018', NULL, 'zo-8-2018-f3e0d29743ea86c98f0f3bc0a035be6a.pdf', 'on', NULL, '2020-07-28 15:04:50', '2020-07-28 15:04:50'),
(68, 'załącznik nr 1_ZO 8 2018', NULL, 'zalacznik-nr-1_zo-8-2018-dde530bb5b87e94cac0bca89669f20b0.pdf', 'on', NULL, '2020-07-28 15:05:07', '2020-07-28 15:05:07'),
(69, 'załącznik nr 2_ZO 8 2018', NULL, 'zalacznik-nr-2_zo-8-2018-0d7f6c8044ddaa0b004c8ce6df0b1f1b.pdf', 'on', NULL, '2020-07-28 15:05:19', '2020-07-28 15:05:19'),
(70, 'załącznik nr 3_ZO 8 2018', NULL, 'zalacznik-nr-3_zo-8-2018-a94d3c1d75d028c1b9214095cd2a64d1.pdf', 'on', NULL, '2020-07-28 15:05:34', '2020-07-28 15:05:34'),
(71, 'załącznik nr 4_ZO 8 2018 Schemat tech. instalacji pary wodnej', NULL, 'zalacznik-nr-4_zo-8-2018_schemat-technologiczny-instalacji-pary-wodnej-550f30305b99e670374049d6a0e3926a.pdf', 'on', NULL, '2020-07-28 15:06:40', '2020-07-28 15:06:40'),
(72, 'załącznik nr 5_ZO 8 2018 Protokol analizy wody', NULL, 'zalacznik-nr-5_zo-8-2018_protokol-analizy-wody-68a796d35f9d316ec5b502ff55a651a1.pdf', 'on', NULL, '2020-07-28 15:06:58', '2020-07-28 15:06:58'),
(73, 'załącznik nr 6_ZO 8 2018 Lokalizacja instalacji pary wodnej', NULL, 'zalacznik-nr-6_zo-8-2018_lokalizacja-instalacji-pary-wodnej-eaed778f3a00bb63f93926fd8457a6d2.dxf', 'on', NULL, '2020-07-28 15:07:34', '2020-07-28 15:07:34'),
(74, 'załącznik nr 6_ZO 8 2018 Lokalizacja instalacji pary wodnej', NULL, 'zalacznik-nr-6_zo-8-2018_lokalizacja-instalacji-pary-wodnej-4cb0ad3bf2af47f07f528151ada19399.pdf', 'on', NULL, '2020-07-28 15:07:54', '2020-07-28 15:07:54'),
(75, 'Zdjęcie hali na zewnątrz', NULL, 'hala-na-zewnatrz-3a22e323b1f15522cb3970567dcf963a.jpg', 'on', NULL, '2020-07-28 15:08:16', '2020-07-28 15:08:16'),
(76, 'Zdjęcie hali wewnątrz', NULL, 'hala-wewnatrz-ae99e964ec154eee3a0ef9e62ac226f4.jpg', 'on', NULL, '2020-07-28 15:08:27', '2020-07-28 15:08:27'),
(77, 'Zdjęcie komina wzorcowego', NULL, 'komin-wzorcowy-a0dc3035a215b7a769d9b6261ee68ba1.jpg', 'on', NULL, '2020-07-28 15:08:42', '2020-07-28 15:08:42'),
(78, 'Pytania i odpowiedzi', NULL, 'zapytanie-8_2018-pytania-i-odpowiedzi-fbd06643ee440ea69e39546aff5a3785.pdf', 'on', NULL, '2020-07-28 15:09:13', '2020-07-28 15:09:13'),
(79, 'Pytania i odpowiedzi cz. 2', NULL, 'pytania-oferentow_cz3-4227e0f3a0d12ca31e3a3e854c3b7e1b.pdf', 'on', NULL, '2020-07-28 15:09:31', '2020-07-28 15:09:31'),
(80, 'Doprowadzenie gazu do instalacji pary', NULL, 'royalpack_doprowadzenie-gazu-do-instalacji-pary-ee5ae8e9a8a1202b98d03b4486df1230.pdf', 'on', NULL, '2020-07-28 15:09:47', '2020-07-28 15:09:47'),
(81, 'ZO 9 2019', NULL, 'zo-9-2019-42e3171a3418d4809303dfed0eefabfc.pdf', 'on', NULL, '2020-07-28 15:11:50', '2020-07-28 15:11:50'),
(82, 'załącznik nr 1_ZO 9 2019', NULL, 'zalacznik-nr-1_zo-9-2019-3bbabeaec0fa922d4f7b801e2090a54f.pdf', 'on', NULL, '2020-07-28 15:12:04', '2020-07-28 15:12:04'),
(83, 'załącznik nr 2_ZO 9 2019', NULL, 'zalacznik-nr-2_zo-9-2019-51d3d922810201b0164b75a72c8418ef.pdf', 'on', NULL, '2020-07-28 15:12:22', '2020-07-28 15:12:22'),
(84, 'załącznik nr 3_ZO 9 2019', NULL, 'zalacznik-nr-3_zo-9-2019-64f7e41a92ce9e85f68e9619452dae79.pdf', 'on', NULL, '2020-07-28 15:12:40', '2020-07-28 15:12:40'),
(85, 'Schemat instalacji odpadów', NULL, 'schemat-instalacji-odpadow_rp-9435aaff3c743ebb00d8c083fa47cadd.pdf', 'on', NULL, '2020-07-28 15:12:54', '2020-07-28 15:12:54');

--
-- Wyzwalacze `im_file`
--
DROP TRIGGER IF EXISTS `im_file_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_file_insert_date_create` BEFORE INSERT ON `im_file` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_file_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_file_insert_date_modify` BEFORE INSERT ON `im_file` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_file_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_file_update_date_modify` BEFORE UPDATE ON `im_file` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_form`
--

DROP TABLE IF EXISTS `im_form`;
CREATE TABLE IF NOT EXISTS `im_form` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `email_source` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `email_destination` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_form`
--

INSERT INTO `im_form` (`form_id`, `name`, `content`, `email_source`, `email_destination`, `description`, `date_create`) VALUES
(2, 'test', '<p>testowa wiadomość</p><p><a href=\"../system/default/public/file/obowiazek-informacyjny-kontrahenci-49b5fa50ce619234080bb2297be05ca2.pdf\" download=\"obowiazek-informacyjny-kontrahenci-49b5fa50ce619234080bb2297be05ca2.pdf\">obowiazek-informacyjny-kontrahenci-49b5fa50ce619234080bb2297be05ca2.pdf</a></p>', 'test', 'm@internet.media.pl', NULL, '2020-08-05 08:18:48');

--
-- Wyzwalacze `im_form`
--
DROP TRIGGER IF EXISTS `im_form_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_form_insert_date_create` BEFORE INSERT ON `im_form` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_image`
--

DROP TABLE IF EXISTS `im_image`;
CREATE TABLE IF NOT EXISTS `im_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `section` int(11) DEFAULT '0',
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_image`
--

INSERT INTO `im_image` (`image_id`, `section`, `name`, `content`, `url`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 'Logo', '', 'logo-b6f6827caed1e0e4cb483bfe19e0999c.png', 'on', '', '2020-06-10 11:03:32', '2020-06-16 10:48:16'),
(2, 0, 'Firma - biało-czarne', NULL, 'firma-50048d2218927674c307879508d7e07b.jpg', 'on', NULL, '2020-06-16 11:45:57', '2020-06-16 11:45:57'),
(3, 0, 'Produkt 1', '', 'produkt-1-43f62f220ff3aad0c0a9679ba47a5369.png', 'on', 'Do submenu', '2020-06-23 07:58:17', '2020-06-23 08:32:06'),
(4, 0, 'Produkt 2', '', 'produkt-2-98e71fa3aa8b2194e845fc89bb369686.png', 'on', 'Do submenu', '2020-06-23 08:09:04', '2020-06-23 08:09:18'),
(5, 1, 'Logo w stopce', '', 'logo-footer-0d7039911841f8e1b14ccb2d58391bfd.png', 'on', '', '2020-06-23 11:38:42', '2020-06-23 11:47:54'),
(6, 0, 'Paralaksa 1', NULL, 'paralaksa-czarny-rozmyte-b60e542d6cd30bc792f1f0f24a0c66f3.jpg', 'on', NULL, '2020-06-30 09:41:52', '2020-06-30 09:41:52'),
(7, 0, 'Paralaksa 2', NULL, 'paralaksa-kolor-c9af89a7caec44c7488fd0ea5bc88137.jpg', 'on', NULL, '2020-06-30 09:42:13', '2020-06-30 09:42:13'),
(8, 0, 'Paralaksa 3', NULL, 'paralaksa-kolor-rozmyte-ea71de509dc2fbe38b042027b8c16ae6.jpg', 'on', NULL, '2020-06-30 09:42:32', '2020-06-30 09:42:32'),
(9, 0, 'Paralaksa 4', NULL, 'paralaksa-kolor-rozmyte2-a0265eff45da0d3671b875bf7e6a34fc.jpg', 'on', NULL, '2020-06-30 09:42:50', '2020-06-30 09:42:50'),
(10, 0, 'Nowa siedziba firmy', '', '1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg', 'on', '', '2020-07-08 14:43:59', '2020-07-08 14:46:37'),
(11, 0, 'Rozbudowa hali produkcyjnej', '', '2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg', 'on', '', '2020-07-08 14:44:26', '2020-07-08 14:49:03'),
(12, 0, 'Brylant Polskiej Gospodarki i Gepard 2018', '', '1-5851a7ca506f8454fe20e48aaff427b5.jpg', 'on', 'Media o nas', '2020-07-14 19:27:55', '2020-07-14 19:31:00'),
(13, 0, 'Rzetelni dla Biznesu 2016', '', '2-8e801bd250f203e6077040f5b901bd76.jpg', 'on', 'Media o nas', '2020-07-14 19:28:52', '2020-07-14 19:31:06'),
(14, 0, 'Orły Wprost 2016', '', '3-274d124b454a26a9359055cafff22361.jpg', 'on', 'Media o nas', '2020-07-14 19:29:13', '2020-07-14 19:31:12'),
(15, 0, 'Brylant Polskiej Gospodarki i Gepard Biznesu 2019', '', '4-3297d9fcd06d7a81c375ef6fb3bcab5f.jpg', 'on', 'Media o nas', '2020-07-14 19:30:35', '2020-07-14 19:31:18'),
(16, 0, 'ROYALPACK w gronie najdynamiczniej rozwijających się firm', '', '5-be915b8b6c72a3ae812a52ab8b5fb6b4.jpg', 'on', 'Media o nas', '2020-07-14 19:47:55', '2020-07-14 19:48:04'),
(17, 0, 'Brylant Polskiej Gospodarki 2018', NULL, 'brylant-polskiej-gospodarki-2018-02032b48da3bcc1865d98eaca97cbf95.jpg', 'on', NULL, '2020-07-24 11:03:22', '2020-07-24 11:03:22'),
(18, 0, 'Efektywna firma 2018', '', 'efektywna-firma-2018-4e91cfefcaa09d5cddb3627badebff18.jpg', 'on', '', '2020-07-24 11:03:51', '2020-07-24 11:04:02'),
(19, 0, 'Gazele Biznesu 2016', NULL, 'gazele-biznesu-2016-3d421ff4f53fc7d653471914ca8ac488.jpg', 'on', NULL, '2020-07-24 11:06:25', '2020-07-24 11:06:25'),
(20, 0, 'Gazele Biznesu 2018', NULL, 'gazele-biznesu-2018-24d154155f46ec05b18f202b93f5764f.jpg', 'on', NULL, '2020-07-24 11:06:41', '2020-07-24 11:06:41'),
(21, 0, 'Gepard Biznesu 2016', NULL, 'gepard-biznesu-2016-e7d81e28204148967a76b361d95bbdbd.jpg', 'on', NULL, '2020-07-24 11:06:59', '2020-07-24 11:06:59'),
(22, 0, 'Gepard Biznesu 2018', NULL, 'gepard-biznesu-2018-416201a10d7227b4b3b46b43a063db6a.jpg', 'on', NULL, '2020-07-24 11:07:15', '2020-07-24 11:07:15'),
(23, 0, 'Mocna firma 2018', '', 'mocna-firma-godna-zaufania-0c064927749b7c771b557e14ccb045fc.jpg', 'on', '', '2020-07-24 11:07:29', '2020-07-24 11:07:49'),
(24, 0, 'Rzetelni dla Biznesu 2016', '', 'rzetelni-dla-biznesu-e36c200391e049f3b254c68646980540.jpg', 'on', '', '2020-07-24 11:08:09', '2020-07-24 11:08:20'),
(25, 0, 'Dotacja UE - paralaksa', '', 'paralaksa-ue-bdb913aa56351ac896d52d4231000430.jpg', 'on', '', '2020-07-28 09:38:09', '2020-07-28 10:06:15'),
(26, 29, 'Dotacja UE', '', 'flaga-ue-73f98fa18e2d4202d49e688a5f784ae5.png', 'on', '', '2020-07-28 09:53:11', '2020-07-28 11:59:32'),
(27, 0, 'Dotacja UE - paralaksa 2', NULL, 'paralaksa-ue2-535e7fdddea5d3f92dc3f20596dd789f.jpg', 'on', NULL, '2020-07-28 10:51:16', '2020-07-28 10:51:16'),
(28, 0, 'Flaga UE - paralaksa', '', 'paralaksa-ue1-79eb40927e6d8dde5d7d2ed97fa07374.jpg', 'on', '', '2020-07-28 11:56:46', '2020-07-28 11:58:11'),
(29, 0, 'Logo UE', NULL, 'zdjecie-ue-40e93a82f0a35d1d53325c85d6082fa8.jpg', 'on', NULL, '2020-07-28 12:17:49', '2020-07-28 12:17:49'),
(30, 0, 'Logo UE 2', NULL, 'zdjecie-ue2-970d6d2aed676d46d2e4246f7d16b5fa.jpg', 'on', NULL, '2020-07-28 12:28:08', '2020-07-28 12:28:08'),
(33, 0, 'Nowy zakład produkcyjny ROYALPACK – Słone koło Zielonej Góry', '', 'firma-dotacja-95b9b17af21977dc25d0baa95291c328.jpg', 'on', '', '2020-07-28 15:18:51', '2020-07-28 15:19:02');

--
-- Wyzwalacze `im_image`
--
DROP TRIGGER IF EXISTS `im_image_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_image_insert_date_create` BEFORE INSERT ON `im_image` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_image_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_image_insert_date_modify` BEFORE INSERT ON `im_image` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_image_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_image_update_date_modify` BEFORE UPDATE ON `im_image` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_label`
--

DROP TABLE IF EXISTS `im_label`;
CREATE TABLE IF NOT EXISTS `im_label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `style` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_label`
--

INSERT INTO `im_label` (`label_id`, `name`, `system_name`, `style`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Logo', 'logo', NULL, NULL, '2020-06-10 11:04:06', '2020-06-10 11:04:06'),
(2, 'Menu', 'menu', NULL, NULL, '2020-06-10 11:09:49', '2020-06-10 11:09:49'),
(3, 'Film', 'movie', NULL, NULL, '2020-06-11 13:09:32', '2020-06-11 13:09:32'),
(4, 'Tekst na filmie', 'movie-text', NULL, NULL, '2020-06-16 10:49:37', '2020-06-16 10:49:37'),
(5, 'Zdjęcie firmy w stopce', 'company-image', NULL, NULL, '2020-06-16 11:39:48', '2020-06-16 11:39:48'),
(6, 'Treść - sekcja', 'content', '', '', '2020-06-16 11:54:24', '2020-06-30 10:18:59'),
(7, 'Kontener', 'box', NULL, NULL, '2020-06-16 12:10:30', '2020-06-16 12:10:30'),
(8, 'Stopka', 'footer', NULL, NULL, '2020-06-16 12:43:26', '2020-06-16 12:43:26'),
(9, 'Ciasteczka', 'cookie', NULL, NULL, '2020-06-16 12:59:44', '2020-06-16 12:59:44'),
(10, 'Submenu', 'submenu', NULL, NULL, '2020-06-21 16:26:49', '2020-06-21 16:26:49'),
(12, 'Nawigacja okruszkowa', 'im-breadcrumb', NULL, NULL, '2020-06-23 10:26:58', '2020-06-23 10:26:58'),
(13, 'Logo w stopce', 'footer-logo', NULL, NULL, '2020-06-23 11:43:53', '2020-06-23 11:43:53'),
(14, 'Treść - wstęp', 'prolog', NULL, NULL, '2020-06-30 10:18:25', '2020-06-30 10:18:25'),
(15, 'Slider', 'slider', '', 'Tylko do ekranów mobilnych', '2020-07-08 13:36:45', '2020-07-08 13:37:04'),
(16, 'Mapa', 'map', NULL, NULL, '2020-07-13 20:02:20', '2020-07-13 20:02:20'),
(18, 'Języki', 'language', NULL, NULL, '2020-07-14 17:03:40', '2020-07-14 17:03:40'),
(19, 'Plik', 'file', NULL, NULL, '2020-07-14 17:35:45', '2020-07-14 17:35:45'),
(20, 'Flaga UE', 'eu', NULL, NULL, '2020-07-28 09:54:59', '2020-07-28 09:54:59'),
(21, 'Zdjęcie', 'image', NULL, NULL, '2020-07-28 15:22:18', '2020-07-28 15:22:18');

--
-- Wyzwalacze `im_label`
--
DROP TRIGGER IF EXISTS `im_label_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_label_insert_date_create` BEFORE INSERT ON `im_label` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_insert_date_modify` BEFORE INSERT ON `im_label` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_update_date_modify` BEFORE UPDATE ON `im_label` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_label_section`
--

DROP TABLE IF EXISTS `im_label_section`;
CREATE TABLE IF NOT EXISTS `im_label_section` (
  `label_section_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `class` varchar(256) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`label_section_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_label_section`
--

INSERT INTO `im_label_section` (`label_section_id`, `label_id`, `section`, `class`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 0, 'col-8 col-md-6 col-lg-5 col-xl-4 offset-2 offset-md-3 offset-lg-0', '', '2020-06-10 11:32:13', '2020-06-24 14:44:19'),
(2, 2, 0, 'col-12 col-lg-7 col-xl-8', '', '2020-06-10 11:32:28', '2020-06-24 14:35:14');

--
-- Wyzwalacze `im_label_section`
--
DROP TRIGGER IF EXISTS `im_label_section_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_label_section_insert_date_create` BEFORE INSERT ON `im_label_section` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_section_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_section_insert_date_modify` BEFORE INSERT ON `im_label_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_label_section_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_label_section_update_date_modify` BEFORE UPDATE ON `im_label_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_language`
--

DROP TABLE IF EXISTS `im_language`;
CREATE TABLE IF NOT EXISTS `im_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(4) COLLATE utf8_polish_ci DEFAULT '',
  `url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status_default` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_language`
--

INSERT INTO `im_language` (`language_id`, `name`, `system_name`, `url`, `position`, `status_default`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'PL', 'pl', 'pl.png', 1, 'on', 'on', '', '2020-06-09 16:25:22', '2020-06-16 09:25:11'),
(2, 'EN', 'en', 'en.png', 2, 'off', 'on', '', '2020-06-09 16:25:22', '2020-06-16 09:25:11'),
(3, 'DE', 'de', '', 3, 'off', 'on', NULL, '2020-06-16 09:24:46', '2020-06-16 09:25:11');

--
-- Wyzwalacze `im_language`
--
DROP TRIGGER IF EXISTS `im_language_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_language_insert_date_create` BEFORE INSERT ON `im_language` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_language_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_language_insert_date_modify` BEFORE INSERT ON `im_language` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_language_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_language_update_date_modify` BEFORE UPDATE ON `im_language` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_movie`
--

DROP TABLE IF EXISTS `im_movie`;
CREATE TABLE IF NOT EXISTS `im_movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `status_loop` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `status_controls` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `status_autoplay` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_movie`
--

INSERT INTO `im_movie` (`movie_id`, `name`, `content`, `url`, `status`, `status_loop`, `status_controls`, `status_autoplay`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Film - wstęp', NULL, 'video-560-b538090525025c83927cf7ebb830c737.mp4', 'on', 'on', 'off', 'on', NULL, '2020-06-11 13:12:15', '2020-06-11 13:13:16');

--
-- Wyzwalacze `im_movie`
--
DROP TRIGGER IF EXISTS `im_movie_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_movie_insert_date_create` BEFORE INSERT ON `im_movie` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_movie_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_movie_insert_date_modify` BEFORE INSERT ON `im_movie` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_movie_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_movie_update_date_modify` BEFORE UPDATE ON `im_movie` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object`
--

DROP TABLE IF EXISTS `im_object`;
CREATE TABLE IF NOT EXISTS `im_object` (
  `object_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `section` int(11) DEFAULT '0',
  `section_name` varchar(256) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `name` varchar(256) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `link` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `link_name` varchar(256) COLLATE utf8_polish_ci DEFAULT '',
  `email` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `form` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `attachment` varchar(256) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `icon` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `map` varchar(64) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `status_copy` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `description` text COLLATE utf8_polish_ci,
  `date` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`object_id`),
  KEY `type_id` (`type_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object`
--

INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `section_name`, `system_name`, `name`, `content`, `link`, `link_name`, `email`, `form`, `attachment`, `icon`, `map`, `position`, `status`, `status_copy`, `description`, `date`, `date_create`, `date_modify`) VALUES
(1, 1, 1, 0, '', 'Logo', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-10', '2020-06-10 11:06:20', '2020-06-30 08:49:50'),
(2, 2, 2, 0, '', 'Menu główne', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'on', 'W nagłówku', '2020-06-10', '2020-06-10 11:10:54', '2020-06-30 08:49:34'),
(3, 3, 3, 0, '', 'Film na stronę główną', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-11', '2020-06-11 13:10:27', '2020-06-11 13:12:43'),
(4, 4, 4, 0, '', 'Tekst na filmie', '', '<p><em><span style=\"font-size: 40pt;\">Jakiś przykładowy tekst...</span></em></p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 10:52:10', '2020-06-16 11:13:59'),
(5, 5, 5, 0, '', 'Firma - biało czarne', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'on', 'Przed stopką', '2020-06-16', '2020-06-16 11:44:48', '2020-07-08 13:42:30'),
(6, 6, 7, 1, 'Czytaj więcej...', 'Zaufanie', 'ZAUFANIE', '<p>ROYALPACK to firma rodzinna, kt&oacute;ra stawia na solidne fundamenty struktury swojego biznesu. W naszej rodzinie zaufanie to podstawa. Na takiej samej podstawie budujemy długotrwałe relacje z naszymi odbiorcami z całego świata. Dzięki pełnemu zaangażowaniu w tworzenie wartości oraz elastycznej i kompleksowej obsłudze jaką oferujemy...</p>\r\n<p class=\"im-hide show-rest-text-1\">Skutecznie zadbamy o <strong>płynny rozw&oacute;j Państwa biznesu</strong>.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-1\"></i></div>', '', '', '', '', '', 'fal fa-hands', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 11:57:53', '2020-07-24 09:41:10'),
(7, 6, 7, 1, 'Czytaj więcej...', 'Ekologia', 'EKOLOGIA', '<p>Troska o ekologię wynika z naszego elementarnego poczucia obowiązku wobec planety, na kt&oacute;rej żyjemy. Opakowania z tektury falistej, kt&oacute;re dla Państwa tworzymy, z powodzeniem wpisują się w założenia międzynarodowej strategii minimalizacji użycia opakowań z tworzyw sztucznych i zwiększenia stopnia recyclingu materiał&oacute;w opakowaniowych...</p>\r\n<p class=\"im-hide show-rest-text-2\">Wszystkie nasze produkty posiadają certyfikat FSC. Integralną część naszej ekologicznej filozofii stanowi zainstalowany nowoczesny park maszynowy i wdrożone w jego obrębie proekologiczne systemy, wykorzystywane w procesie produkcyjnym.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-2\"></i></div>', '', '', '', '', '', 'fal fa-leaf', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 12:03:38', '2020-07-24 09:40:33'),
(8, 6, 7, 1, 'Czytaj więcej...', 'Jakość', 'JAKOŚĆ', '<p>Najwyższa jakość, dbałość o szczeg&oacute;ły oraz nowatorskie rozwiązania w dziedzinie tworzenia opakowań to domeny naszych produkt&oacute;w. Badania zachowań konsumenckich jednoznacznie wskazują na istotny wpływ doznań wizualnych potencjalnego klienta w procesie podejmowania decyzji o zakupie produkt&oacute;w przy p&oacute;łce sklepowej...</p>\r\n<p class=\"im-hide show-rest-text-3\">Finalnie produkty umieszczone w przemyślanych i ciekawych opakowaniach cieszą się większym zainteresowaniem od pozostałych. Nasz zesp&oacute;ł oraz nowoczesny park maszynowy umożliwią Państwu wygenerowanie wielu ciekawych rozwiązań.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-3\"></i></div>', '', '', '', '', '', 'fal fa-medal', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 12:05:25', '2020-07-24 09:39:34'),
(9, 7, 8, 0, '', 'Stopka', '', '<div class=\"text-center\">Wszelkie prawa zastrzeżone &amp; 2020<br />Projekt i realizacja: <a href=\"https://internet.media.pl\" title=\"Strony internetowe, e-sklepy, serwisy WWW, projekty i wykonanie\" target=\"_blank\" rel=\"noopener\" class=\"text-warning\">www.internet.media.pl</a></div>', '', '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-16', '2020-06-16 12:47:29', '2020-07-21 16:29:32'),
(10, 7, 9, 0, '', 'Ciasteczka', '', '<div id=\"cookie\"><i class=\"fad fa-cookie float-left\"></i> Przeglądając serwis WWW, akceptujesz pliki cookies zgodnie z ustawieniami przeglądarki <button class=\"btn btn-dark\">OK</button></div>', '', '', '', '', '', '', '', 2, 'on', 'on', '', '2020-06-16', '2020-06-16 13:02:02', '2020-07-08 13:55:42'),
(12, 8, 10, 0, '', 'Submenu', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-23', '2020-06-23 07:49:33', '2020-06-23 08:30:51'),
(13, 9, 12, 0, '', 'Nawigacja okruszkowa', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-23', '2020-06-23 10:20:22', '2020-07-28 11:46:26'),
(14, 5, 13, 0, '', 'Logo - biało czarne', '', NULL, '', '', '', '', '', '', '', 2, 'on', 'on', 'W stopce', '2020-06-23', '2020-06-23 11:44:23', '2020-07-21 17:16:03'),
(15, 10, 6, 0, '', 'Profil działalności', 'Profil działalności', '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Misja</span></strong></p>\r\n<p>Naszą misją jest bycie najlepszym w tym co robimy. W trosce o budowanie trwałych relacji z naszymi klientami oferujemy bardzo elastyczną i kompleksową obsługę. Strategia ta umożliwia nam swobodne dopasowanie się do potrzeb nawet największych odbiorc&oacute;w, a to z kolei przekłada się na ich satysfakcję. Jest ona efektem odpowiedzialnej oraz zr&oacute;wnoważonej działalności firmy.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potencjał</span></strong></p>\r\n<p>Stale rosnący potencjał firmy to przede wszystkim zasługa naszych pracownik&oacute;w. Od początku działalności stawialiśmy na prężny rozw&oacute;j naszej pozycji na rynku. Dzięki wykwalifikowanej kadrze oraz nieustannie rosnącym możliwościom firmy poprzez nabycie nowoczesnego parku maszynowego udaje się nam realizować ten cel. Inwestując w rozw&oacute;j przedsiębiorstwa firma w 2019 r. rozbudowała zakład produkcyjny oraz nabyła nowoczesny park maszynowy, zwiększając swoje możliwości wytw&oacute;rcze do 50 mln m2. Poprzez rzetelność i profesjonalizm budujemy wizerunek naszej marki dzień po dniu.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', 1, 'on', 'off', '', '2020-06-30', '2020-06-30 09:28:31', '2020-07-07 22:44:45'),
(16, 11, 14, 0, '', 'Profil działalności', '<i class=\"fal fa-grip-lines\"></i> Profil działalności <i class=\"fal fa-grip-lines\"></i>', '<p><strong><span style=\"font-size: 14pt;\">Kim jesteśmy?</span></strong></p>\r\n<p>Jesteśmy producentem opakowań z tektury falistej, zadrukowanych techniką druku offsetowego i fleksograficznego. Produkujemy opakowania jednostkowe, zbiorcze, displaye, jak r&oacute;wnież projekty z grupy POS dla produkt&oacute;w z r&oacute;żnych sektor&oacute;w gospodarki rynkowej. Sp&oacute;łka jest obecna na rynku od 2009 roku, jednak jej historia to długi proces oparty na 20 letnim doświadczeniu w branży opakowań. Dlatego też w pełni zdajemy sobie sprawę jak ważna jest dbałość o klienta. Rozumiemy i dopasowujemy się do Państwa potrzeb.</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-30', '2020-06-30 10:21:56', '2020-06-30 11:02:43'),
(18, 12, 15, 0, '', 'Slider', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-08', '2020-07-08 13:47:03', '2020-07-08 13:50:25'),
(20, 11, 14, 0, '', 'Historia firmy', '<i class=\"fal fa-grip-lines\"></i> Historia firmy <i class=\"fal fa-grip-lines\"></i>', '<p>Ze skromnych początk&oacute;w powstało nowoczesne rodzinne przedsiębiorstwo. Szybki rozw&oacute;j od 2011 r. miał swoje korzenie już w 1996 r., kiedy to założyciel Royalpack, Andrzej Tatar, został jedynym przedstawicielem Stone Europa Carton GmbH na polskim rynku. Trzy lata p&oacute;źniej, w 1999 r., otwiera w Polsce oddział Europa Carton Sp. z o. o. i zostaje jego prezesem. W 2000 r. do zespołu obsługi logistycznej oddziału Europa Carton w Zielonej G&oacute;rze dołączyła przyszła wsp&oacute;łwłaścicielka Royalpack Anna Tatar. Do 2010 r. oddział Europa Carton Sp. z o. o. znajdował się w strukturach koncernu Smurfit Kappa.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2011</span></strong></p>\r\n<p>Założenie firmy ROYALPACK, Tatar Sp&oacute;łka jawna. Działalność przedsiębiorstwa skupia się na produkcji opakowań zbiorczych z tektury falistej zadrukowanych metodą druku offsetowego. W 2011 r. firma dysponowała parkiem maszynowym w postaci:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- maszyny drukującej offsetowej KBA 162 (format 1120 x 1620 mm),</li>\r\n<li class=\"list-group-item\">- maszyny kaszerującej,</li>\r\n<li class=\"list-group-item\">- maszyny sztancującej automatycznej BOBST 1575,</li>\r\n<li class=\"list-group-item\">- tygla sztancującego Viking i Crosland (format do 1700 mm),</li>\r\n<li class=\"list-group-item\">- składarko-sklejarki 3-punktowej.</li>\r\n</ul>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg\" title=\"Nowa siedziba firmy\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2013</span></strong></p>\r\n<p>Rok przełomowy w działalności przedsiębiorstwa - 31 lipca uzyskało Dotację Unijną w ramach Programu Operacyjnego Innowacyjna Gospodarka, Oś Priorytetowa 4 - Inwestycje w innowacyjne przedsięwzięcia. Pilotaż: &bdquo;Wsparcie na pierwsze wdrożenie wynalazku&rdquo;. Dzięki niej w listopadzie rozpoczęła się budowa nowoczesnego zakładu w Słonem.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2015</span></strong></p>\r\n<p>Zakończenie inwestycji i zmiana siedziby firmy.</p>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg\" title=\"Rozbudowa hali produkcyjnej\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2016</span></strong></p>\r\n<p>Rozbudowanie hali produkcyjnej o dodatkową powierzchnię magazynową &ndash; 2 680 m&sup2;.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2018</span></strong></p>\r\n<p>Kolejny przełom w działalności firmy &ndash; 15 stycznia 2018 r. uzyskała Dotację Unijną w ramach Programu Operacyjnego Inteligentny Rozw&oacute;j, 2014-2020. Projekt: &bdquo;Gama nowatorskich opakowań tekturowych wielokrotnego zastosowania, o innowacyjnych cechach i przełomowych parametrach użytkowych&rdquo;. Dzięki niej firma została wyposażona w nowoczesną linię produkcyjną do produkcji opakowań o bardzo wysokiej jakości nadruku offsetowego. Natomiast z własnych środk&oacute;w nabyła maszynę drukującą do druku fleksograficznego oraz rozbudowała zakład o ok. 6 000 m&sup2;.</p>', '', '', '', '', '', '', '', 2, 'on', 'off', 'Bez paralaksy do sekcji przypisujemy tylko obiekt \"treść - wstęp\"', '2020-07-08', '2020-07-08 14:15:31', '2020-07-24 09:46:29'),
(21, 13, 16, 0, '', 'Mapa w stopce', '', NULL, '', '', '', '', '', '', '51.921311,15.411415', 1, 'on', 'off', '', '2020-07-13', '2020-07-13 20:04:02', '2020-07-24 09:57:04'),
(22, 14, 14, 0, '', 'Sekcja kontakt', '<i class=\"fal fa-grip-lines\"></i> Kontakt <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-13', '2020-07-13 20:57:51', '2020-07-13 20:59:01'),
(23, 15, 6, 0, '', 'Sekcja kontakt', '', '<p><span style=\"font-size: 18pt;\">Royalpack, Tatar &nbsp;Sp. j.&nbsp;</span></p>\r\n<p><strong>Adres:</strong></p>\r\n<p>Aleja Brzozowa 2A, Słone</p>\r\n<p>66-008 Świdnica</p>\r\n<p><strong>Telefon:</strong> (+48) 534 747 400</p>\r\n<p><strong>E-mail:</strong> biuro@royalpack.com.pl</p>', '', '', '', 'damian.krawiec@gmail.com', '', '', '', 1, 'on', 'off', '', '2020-07-13', '2020-07-13 21:03:15', '2020-07-13 21:07:24'),
(25, 16, 18, 0, '', 'Języki', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', 'Element zawierający panel przełączania języków', '2020-07-14', '2020-07-14 17:05:17', '2020-08-05 15:19:13'),
(27, 15, 6, 0, '', 'Sekcja kariera', '', '<p><span style=\"font-size: 18pt;\">Royalpack, Tatar &nbsp;Sp. j.&nbsp;</span></p>\r\n<p><strong>Adres:</strong></p>\r\n<p>Aleja Brzozowa 2A, Słone</p>\r\n<p>66-008 Świdnica</p>\r\n<p><strong>Telefon:</strong> (+48) 534 747 400</p>\r\n<p><strong>E-mail:</strong> biuro@royalpack.com.pl</p>', '', '', '', 'm@internet.media.pl', 'Dodaj swoje CV (doc, docx, pdf): ', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 17:27:09', '2020-08-05 08:00:41'),
(28, 11, 14, 0, '', 'Kariera', '<i class=\"fal fa-grip-lines\"></i> Kariera <i class=\"fal fa-grip-lines\"></i>', '<p>Jeśli chcesz pracować w dynamicznie rozwijającej się firmie o wysokim potencjale i stale rosnących możliwościach zapraszamy do składania aplikacji poprzez wypełnienie formularza.</p>', '', '', '', '', '', '', '', 3, 'on', 'off', '', '2020-07-14', '2020-07-14 17:29:08', '2020-07-14 17:30:27'),
(29, 17, 19, 0, '', 'Obowiązek informacyjny - kontakt', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 17:37:17', '2020-07-24 08:11:13'),
(30, 11, 14, 0, '', 'Polityka rozwoju', '<i class=\"fal fa-grip-lines\"></i> Polityka zrównoważonego rozwoju <i class=\"fal fa-grip-lines\"></i>', '<p>Polityka zr&oacute;wnoważonego rozwoju gospodarczego to przede wszystkim prowadzenie działalności gospodarczej z troską o postęp społeczny oraz z poszanowaniem środowiska naturalnego.</p>\r\n<p>Royalpack to firma, kt&oacute;ra prowadzi swoją działalność w spos&oacute;b odpowiedzialny i zr&oacute;wnoważony. Zadowolenie klient&oacute;w, rozw&oacute;j osobisty pracownik&oacute;w oraz szacunek dla środowiska naturalnego i lokalnych społeczności są gł&oacute;wnymi wartościami, kt&oacute;re pielęgnujemy.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Społeczność</span></strong></p>\r\n<p>Royalpack dąży do tego aby w swojej branży być najbardziej rozpoznawalnym producentem opakowań kartonowych. Aby to osiągnąć będziemy działać na rzecz otoczenia i społeczności w kt&oacute;rych mamy zaszczyt pracować.</p>\r\n<p>Naszą największą inwestycją są nasi pracownicy. Staramy się dbać o rozw&oacute;j ich kompetencji, poczucia tożsamości z firmą, a także satysfakcjonujące możliwości kariery. Podstawą rozwoju osobistego naszych pracownik&oacute;w jest wspieranie ich działań, organizacja szkoleń, ich ambicje oraz pozytywna motywacja.</p>\r\n<p>Sprzeciwiamy się dyskryminacji ze względu na płeć, rasę, wiek, wyznanie, przekonania polityczne i inne cechy, mogące w jakikolwiek spos&oacute;b wywołać działania dyskryminacyjne.</p>\r\n<p>Wychodzimy r&oacute;wnież naprzeciw osobom niepełnosprawnym oraz wychowującym dzieci, poprzez dostosowanie odpowiedniej infrastruktury. Dzięki temu osoby niepełnosprawne nie czują się dyskryminowane i mogą w pełni funkcjonować w naszym zakładzie.</p>', '', '', '', '', '', '', '', 2, 'on', 'off', 'Bez paralaksy do sekcji przypisujemy tylko obiekt \"treść - wstęp\"', '2020-07-14', '2020-07-14 18:02:47', '2020-07-24 09:50:36'),
(31, 18, 6, 0, '', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2019', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2019', '<p>Royalpack, Tatar Sp. j. w Słonem została wyr&oacute;żniona przez Instytut Europejskiego Biznesu w XIV edycji Konkursu Gepardy Biznesu 2019, XII edycji Konkursu Brylanty Polskiej Gospodarki 2019, XII edycji Konkursu Efektywna Firma 2019 i VII edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2019.</p>', 'http://europejskafirma.pl/24591', 'Czytaj więcej...', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:32:12', '2020-07-14 20:10:14'),
(32, 18, 6, 0, '', 'ROYALPACK Laureatem Orły Wprost 2016', 'ROYALPACK Laureatem Orły Wprost 2016', '<p>Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść.&nbsp;</p>', 'http://europejskafirma.pl/24591', 'Czytaj więcej...', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:34:53', '2020-07-14 20:10:27'),
(33, 14, 14, 0, '', 'Sekcja media o nas', '<i class=\"fal fa-grip-lines\"></i> Media o nas <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:38:14', '2020-07-14 19:38:47'),
(34, 18, 6, 0, '', 'Royalpack otrzymał wyróżnienie Rzetelni dla Biznesu 2016', 'Royalpack otrzymał wyróżnienie Rzetelni dla Biznesu 2016', '<p>Została ona przyznana \"Za komercjalizację nowatorskich pomysł&oacute;w wprowadzonych na rynek branży opakowań tekturowych\"</p>', 'https://royalpack.com.pl/images/news/wielka-gala.pdf', 'Czytaj więcej...', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:40:55', '2020-07-14 20:10:33'),
(35, 18, 6, 0, '', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2018', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2018', '<p>Royalpack, Tatar S. J. w Świdnicy została wyr&oacute;żniona przez Instytut Europejskiego Biznesu w XIII edycji Konkursu Gepardy Biznesu 2018, XI edycji Konkursu Brylanty Polskiej Gospodarki 2018, XI edycji Konkursu Efektywna Firma 2018 oraz VI edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2018</p>', 'http://europejskafirma.pl/20414,royalpack-tatar-s-j-to-brylant-polskiej-gospodarki-i-gepard-biznesu-2018', 'Czytaj więcej...', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:42:38', '2020-07-14 20:10:38'),
(36, 18, 6, 0, '', 'ROYALPACK w gronie najdynamiczniej rozwijających się firm', 'ROYALPACK w gronie najdynamiczniej rozwijających się firm', '<p>W 2015 roku ROYALPACK został członkiem elitarnego klubu Gazel Biznesu. Jednocześnie stał się jednym z najbardziej dynamicznie rozwijających się przedsiębiorstw wśr&oacute;d małych i średnich firm.</p>', 'http://europejskafirma.pl/20414,royalpack-tatar-s-j-to-brylant-polskiej-gospodarki-i-gepard-biznesu-2018', 'Czytaj więcej...', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:46:22', '2020-07-14 20:10:43'),
(37, 11, 14, 0, '', 'Dział kontroli jakości', '<i class=\"fal fa-grip-lines\"></i> Dział kontroli jakości <i class=\"fal fa-grip-lines\"></i>', '<p>Wiemy, że jakość jest najważniejsza, dlatego nasze opakowania tworzone są z surowc&oacute;w najwyższego gatunku. Monitorujemy na bieżąco warunki panujące na hali produkcyjnej i części magazynowej. Wprowadzony system ISO 9001:2015 zapewnia nam koordynację wszystkich działań i poszczeg&oacute;lnych proces&oacute;w.</p>\r\n<div class=\"text-center pb-3\"><i class=\"fal fa-grip-lines\" style=\"font-size: 3em;\"></i></div>\r\n<p><strong>Każdego dnia nasz dział kontroli jakości z aptekarską precyzją wykonuje badania wytrzymałościowe naszych opakowań:</strong></p>', '', '', '', '', '', '', '', 5, 'on', 'off', '', '2020-07-21', '2020-07-21 17:10:19', '2020-07-24 10:08:27'),
(38, 19, 6, 0, '', 'Gramatura', '<i class=\"fal fa-weight\"></i><br>GRAMATURA', '<p>To gł&oacute;wna jednostka miary, gdzie wartością jest masa 1 m2 arkusza tektury falistej wyrażona w gramach (g/m2). Gramatura jest ważnym elementem podczas wyboru odpowiedniego rodzaju tektury, ponieważ im wyższa gramatura, tym grubsza i bardziej sztywna tektura.</p>', '', '', '', '', '', 'fal fa-weight', '', 1, 'on', 'off', '', '2020-07-21', '2020-07-21 17:18:29', '2020-07-22 21:13:14'),
(39, 19, 6, 0, '', 'Ect', '<i class=\"fal fa-border-style-alt\"></i><br>ECT', '<p>Wskaźnik odporności tektury falistej na zgniatanie krawędziowe - siły odniesionej do długości krawędzi pr&oacute;bki tektury, działającej r&oacute;wnolegle do kierunku fal i powodującej załamanie pr&oacute;bki. Siła ta ma kluczowe znaczenie podczas składowania pudeł w stosie. Rodzaj fali zasadniczo nie wpływa na ECT. Kluczowy wpływ na wartość ECT ma klasa papieru wykorzystana do produkcji.</p>', '', '', '', '', '', 'fal fa-border-style-alt', '', 1, 'on', 'off', '', '2020-07-21', '2020-07-21 17:21:34', '2020-07-22 21:33:33'),
(40, 19, 6, 0, '', 'Bct', '<i class=\"fal fa-weight-hanging\"></i><br>BCT', '<p>Wskaźnik odporności opakowania na ściskanie. Wyraża się poprzez wartość siły działającej bezpośrednio na opakowanie przy jego zgniataniu, jaka powoduje jego odkształcenie lub zniszczenie. Parametr ten jest uzależniony od wszystkich indywidualnych cech danego opakowania &ndash; jego wymiar&oacute;w, konstrukcji oraz rodzaju i wytrzymałości zastosowanej tektury. Wartość BCT zależy w bezpośredni spos&oacute;b od ECT.</p>', '', '', '', '', '', 'fal fa-weight-hanging', '', 1, 'on', 'off', '', '2020-07-21', '2020-07-21 17:25:43', '2020-07-22 21:37:20'),
(41, 19, 6, 0, '', 'Wilgotność', '<i class=\"fal fa-dewpoint\"></i><br>WILGOTNOŚĆ', '<p>Wskaźnik ukazujący stosunek masy wody zawartej w tekturze do masy całego wyrobu. Zależy ona nie tylko od wilgotności powietrza, ale r&oacute;wnież temperatury otoczenia i składu tektury.&nbsp;Aby zachować odpowiednie właściwości tektury, należy stworzyć optymalne warunki do jej przechowywania. Pomieszczenia muszą być suche i przewiewne, a ich temperatura nie może spaść poniżej 4 &deg;C &ndash; zaleca się utrzymywanie stałej temperatury na poziomie 18-22 &deg;C. Wilgotność powinna utrzymywać się na poziomie 60%, a jej minimalna wartość w pomieszczeniach ogrzewanych to 45%. Zbyt duża wilgotność tektury powoduje zmiany jej właściwości fizycznych: spadek sztywności, odkształcenia liniowe, większą ściśliwość, grubość oraz szorstkość. Z kolei zbyt niska wilgotność powoduje pękanie fal i w konsekwencji całych arkuszy tektury.</p>', '', '', '', '', '', 'fal fa-dewpoint', '', 1, 'on', 'off', '', '2020-07-21', '2020-07-21 17:29:49', '2020-07-22 21:38:12'),
(42, 19, 6, 0, '', 'Delta E', '<i class=\"fal fa-palette\"></i><br>DELTA E', '<p>Wskaźnik mierzony za pomocą spektrodensytometr Xrite, pokazujący stopień odchylenia koloru wydrukowanego od zadanego wzoru. Spektrodensytometr X-Rite eXact to nowoczesne urządzenie, kt&oacute;re uwzględnia nowe potrzeby klient&oacute;w związane z podnoszeniem jakości dostarczanych opakowań. X-Rite eXact umożliwia nam kontrolę i zarządzanie barwą zapewniając najwyższą dokładność pomiaru koloru. Jeśli więc przy wydruku planujemy otrzymać określony kolor, to im bliżej tego koloru jesteśmy na finalnym wydruku, tym dla wskaźnika delta E wartość będzie bliższa 0. Jeśli spektrofotometr podczas pomiaru pokaże r&oacute;wne 0 oznacza to, że uzyskaliśmy kolor idealnie zgodny ze wzorem. Przyjmuje się, że wydruk w tolerancji do delta &lt; 2,0 nie jest rozr&oacute;żniany dla ludzkiego oka większości os&oacute;b.</p>', '', '', '', '', '', 'fal fa-palette', '', 1, 'on', 'off', '', '2020-07-21', '2020-07-21 17:32:27', '2020-07-22 21:38:23'),
(43, 19, 6, 0, '', 'Stopień nasycenia bieli podłoża do druku', '<i class=\"fal fa-eye-dropper\"></i><br>STOPIEŃ NASYCENIA BIELI PODŁOŻA DO DRUKU', '<p>Badanie stopnia bieli podłoża jest czynnością kluczową w celu uzyskania wysokiej jakości wydruku. Już na etapie przygotowania projektu, musimy mieć absolutną pewność, że dany papier do druku spełnia jego założenia. Biel podłoża jest istotna szczeg&oacute;lnie przy jasnych (transparentnych) kolorach zastosowanych w projekcie graficznym, ponieważ ma bezpośredni wpływ na wydruk końcowy. Pomiar&oacute;w dokonujemy spektrofotometrem X-Rite eXact. Dzięki niemu weryfikujemy jakość użytego przez nas podłoża oraz opracowujemy odpowiednie receptury farb dla konkretnego projektu.</p>', '', '', '', '', '', 'fal fa-eye-dropper', '', 1, 'on', 'off', '', '2020-07-21', '2020-07-21 17:34:38', '2020-07-22 21:38:03'),
(45, 14, 14, 0, '', 'Ogólne warunki handlowe', '<i class=\"fal fa-grip-lines\"></i> Ogólne warunki handlowe <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', 3, 'on', 'off', '', '2020-07-21', '2020-07-21 18:22:59', '2020-07-21 18:23:09'),
(46, 17, 19, 0, '', 'Ogólne warunki handlowe', '', NULL, '', '', '', '', '', '', '', 2, 'on', 'off', '', '2020-07-21', '2020-07-21 18:24:02', '2020-07-21 18:29:55'),
(47, 17, 19, 0, '', 'Obowiązek informacyjny - kontakt', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 08:11:24', '2020-07-24 08:11:47'),
(48, 10, 6, 0, '', 'Historia firmy', 'Profil działalności', '<p><strong><span style=\"font-size: 14pt;\">Aktualnie...</span></strong></p>\r\n<p>Aktualnie ROYALPACK zatrudnia ponad 100 os&oacute;b, lecz ich liczba stale wzrasta. Przyczynia się do tego nowy park maszynowy nabyty w 2018 r., nowa inwestycja, a tym samym rosnące zainteresowanie firm z r&oacute;żnych branż oraz rynk&oacute;w. Royalpack prowadzi swoją działalność na rynku polskim, niemieckim, austriackim, brytyjskim, skandynawskim oraz w krajach Beneluksu z perspektywami na dalsze zdobywanie kolejnych rynk&oacute;w europejskich&hellip;</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 09:46:51', '2020-07-24 09:51:02'),
(49, 10, 6, 0, '', 'Polityka rozwoju', 'Profil działalności', '<p><strong><span style=\"font-size: 14pt;\">Środowisko</span></strong></p>\r\n<p>Budowa nowego zakładu produkcyjnego nie może oddziaływać negatywnie na środowisko naturalne. Będąc w pełni tego świadomym staramy się wdrażać technologie sprzyjające środowisku.</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Odnawialne źr&oacute;dła energii</strong>\r\n<div>Na terenie zakładu zamontowane są solary. Dzięki takiemu działaniu zmniejszamy zużycie energii. Energię słoneczną firma wykorzystuje do ogrzewania bieżącej wody w budynku biurowym, jak r&oacute;wnież na hali produkcyjnej.</div>\r\n</li>\r\n<li><strong>Zmniejszenie materiałochłonności produkcji</strong>\r\n<div>Nowoczesny park maszynowy umożliwia nam zmniejszenie ilości produkowanych odpad&oacute;w, powstających podczas procesu produkcyjnego. Wiąże się to bezpośrednio z nabyciem mniejszej ilości niezbędnych surowc&oacute;w.</div>\r\n</li>\r\n<li><strong>Zastosowanie płyt Sonora firmy KODAK</strong>\r\n<div>Dzięki nabyciu i wdrożeniu nowoczesnej technologii w procesie druku, jakim jest użycie płyt bezprocesowych Sonora, firma wprowadziła znaczące oszczędności związane z eliminacją środk&oacute;w chemicznych. Zmniejszyła ilość zużywanej wody i energii podczas procesu obr&oacute;bki płyt. Skr&oacute;ciła czas przygotowania projektu do druku oraz wyeliminowała odpady chemiczne, kłopotliwe w utylizacji (<a href=\"system/default/public/swiat-druku-924bf7ef033d814dc221bde1cc7b6b65.pdf\" target=\"_blank\" rel=\"noopener\">artykuł świat druku</a>).</div>\r\n</li>\r\n<li><strong>Podczyszczalnia ściek&oacute;w dedykowana maszynie do druku fleksograficznego</strong>\r\n<div>Drukarka fleksograficzna generuje ścieki o znacznym ładunku zanieczyszczeń. Wysoce zaawansowana technologicznie podczyszczalnia do obr&oacute;bki ściek&oacute;w przemysłowych gwarantuje nam oczyszczenie ściek&oacute;w farb flekso do wymaganych parametr&oacute;w zrzutu.</div>\r\n</li>\r\n<li><strong>Zaawansowany pneumatyczny system poboru ścinki</strong>\r\n<div>Podciśnieniowy system służy do skutecznego odzyskiwania ścinki ze wszystkich obszar&oacute;w zakładu. Zebrane materiały są pneumatycznie transportowane do centralnego zbiornika, z kt&oacute;rego następnie są utylizowane.</div>\r\n</li>\r\n</ul>\r\n<p>Kombinacja czynnik&oacute;w ekonomicznych i ekologicznych, tworzy pozytywny efekt w działalności przedsiębiorstwa, jak r&oacute;wnież w otaczającym go środowisku naturalnym.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 09:51:08', '2020-07-24 09:51:48'),
(51, 14, 14, 0, '', 'Sekcja wyróżnienia', '<i class=\"fal fa-grip-lines\"></i> Wyróżnienia <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 10:50:29', '2020-07-24 10:50:53'),
(52, 20, 6, 0, '', 'Brylanty Polskiej Gospodarki 2018', 'Brylanty Polskiej Gospodarki 2018', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w XI edycji Konkursu Brylanty Polskiej Gospodarki 2018</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 10:51:18', '2020-07-24 11:10:12'),
(53, 20, 6, 0, '', 'Gepardy Biznesu 2018', 'Gepardy Biznesu 2018', '<p>Royalpack otrzymał wyr&oacute;żnienie w XIII edycji Konkursu Gepardy Biznesu 2018 za dynamiczny rozw&oacute;j i wzrost wartości rynkowej przez Instytut Europejskiego Biznesu.</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 11:14:43', '2020-07-24 11:15:18'),
(54, 20, 6, 0, '', 'Efektywna Firma 2018', 'Efektywna Firma 2018', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w XI edycji Konkursu Efektywna Firma 2018</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 11:19:46', '2020-07-24 11:20:12'),
(55, 20, 6, 0, '', 'Mocna Firma Godna Zaufania 2018', 'Mocna Firma Godna Zaufania 2018', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w VI edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2018</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 11:21:17', '2020-07-24 11:21:52'),
(56, 20, 6, 0, '', 'Gazele Biznesu 2018', 'Gazele Biznesu 2018', '<p>ROYALPACK został członkiem elitarnego klubu Gazele Biznesu 2018</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 11:22:09', '2020-07-24 11:22:35'),
(57, 20, 6, 0, '', 'Rzetelni dla Biznesu 2016', 'Rzetelni dla Biznesu 2016', '<p>ROYALPACK otrzymał wyr&oacute;żnienie Rzetelni dla Biznesu 2016</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 11:23:05', '2020-07-24 11:23:28'),
(58, 20, 6, 0, '', 'Orły Wprost 2016', 'Orły Wprost 2016', '<p>ROYALPACK Laureatem Orły Wprost 2016</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 11:23:44', '2020-07-24 11:24:11'),
(59, 20, 6, 0, '', 'Gazele Biznesu 2015', 'Gazele Biznesu 2015', '<p>ROYALPACK został członkiem elitarnego klubu Gazele Biznesu 2015</p>', '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-24', '2020-07-24 11:24:39', '2020-07-24 11:25:53'),
(60, 21, 20, 0, '', 'Flaga UE', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 09:56:16', '2020-07-28 11:59:57'),
(61, 11, 14, 0, '', 'Dotacja UE', '<i class=\"fal fa-grip-lines\"></i> Dotacja UE <i class=\"fal fa-grip-lines\"></i>', '<p>Firma ROYALPACK, Tatar Sp. j. zrealizowała projekt nr POIR.03.02.01-08-0004/17-00 dofinansowanego z Funduszy Europejskich pod nazwą &bdquo;Gama nowatorskich opakowań tekturowych wielokrotnego zastosowania, o innowacyjnych cechach i przełomowych parametrach użytkowych&rdquo; w ramach:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">Programu Operacyjnego Inteligentny Rozw&oacute;j, 2014-2020</li>\r\n<li class=\"list-group-item\">Poddziałanie 3.2.1 Badania na rynek</li>\r\n<li class=\"list-group-item\">Umowa nr: POIR.03.02.01-08-0004/17-00 zawarta w dniu 07.03.2018 z Polską Agencją Rozwoju Przedsiębiorczości</li>\r\n<li class=\"list-group-item\">Wartość projektu: 53 703 276,00 PLN</li>\r\n<li class=\"list-group-item\">Wartość dofinansowania: 19 647 540,00 PLN</li>\r\n</ul>\r\n<div class=\"text-center\"><i class=\"p-4 fal fa-grip-lines\" style=\"font-size: 3em;\"></i></div>\r\n<p><strong><span style=\"font-size: 14pt;\">Kr&oacute;tki opis projektu</span></strong><br />Celem projektu jest wzrost konkurencyjności oraz innowacyjności przedsiębiorstwa ROYALPACK poprzez wdrożenie własnych wynik&oacute;w prac badawczo-rozwojowych, kt&oacute;re pozwolą na wprowadzenie do oferty przedsiębiorstwa nowej gamy opakowań tekturowych przeznaczonych do wielokrotnego zastosowania.<br />Niniejszy projekt polega na wprowadzeniu na rynek przez ROYALPACK, Tatar Sp. j. gamy opakowań tekturowych o wydłużonym cyklu życia. Opakowania opracowane w ramach prac B+R przeprowadzonych przez wnioskodawcę odznaczają się zwiększoną wytrzymałością na uszkodzenia mechaniczne. Zostaną one r&oacute;wnież wzbogacone w zgłoszony do ochrony patentowej system aplikacji dodatkowej warstwy informacyjno-ozdobnej. Badania walidacyjne nowych produkt&oacute;w przeprowadziła Politechnika Ł&oacute;dzka. Wprowadzenie wynik&oacute;w prac B+R do oferty Wnioskodawcy będzie wymagało podjęcia szeregu działań inwestycyjnych i wdrożeniowych. Uruchomienie produkcji nowej gamy wyrob&oacute;w wymaga zastosowania nowych urządzeń, dlatego w ramach projektu planowany jest zakup nowoczesnego ciągu technologicznego, umożliwiającego produkcję produkt&oacute;w o wspomnianych właściwościach. Projekt będzie miał pozytywny wpływ na polityki horyzontalne Unii Europejskiej, w tym na politykę zr&oacute;wnoważonego rozwoju oraz r&oacute;wnych szans.<br />Projekt zostanie zrealizowany w okresie 01.03.2018 &ndash; 30.06.2019.</p>\r\n<p class=\"img-center\"><img src=\"../system/default/public/zdjecie-ue2-970d6d2aed676d46d2e4246f7d16b5fa.jpg\" title=\"Logo UE 2\" style=\"max-width: 220px;\" class=\"content-img\" /></p>\r\n<p class=\"img-center\"><img src=\"../system/default/public/zdjecie-ue-40e93a82f0a35d1d53325c85d6082fa8.jpg\" title=\"Logo UE\" style=\"max-width: 220px;\" class=\"content-img\" /></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Zapytania ofertowe:</span></strong></p>', '', '', '', '', '', '', '', 6, 'on', 'off', '', '2020-07-28', '2020-07-28 12:01:31', '2020-07-28 13:31:00'),
(62, 22, 6, 0, '', 'Zapytanie ofertowe nr 1/2018 w sprawie zamówienia na zakup maszyny drukującej', 'Zapytanie ofertowe nr 1/2018 w sprawie zamówienia na zakup maszyny drukującej', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 13:03:47', '2020-07-28 13:29:23'),
(63, 22, 6, 0, '', 'Zapytanie ofertowe nr 2A/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej', 'Zapytanie ofertowe nr 2A/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej – sklejarka pojedyncza 2 sztuki', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:06:52', '2020-07-28 14:10:28'),
(64, 22, 6, 0, '', 'Zapytanie ofertowe nr 2B/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej', 'Zapytanie ofertowe nr 2B/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej – maszyna kaszerująca', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:14:18', '2020-07-28 14:14:43'),
(65, 22, 6, 0, '', 'Request for quotation no. 2B/2018 on order for purchase line for production and lamination corrugated board', 'Request for quotation no. 2B/2018 on order for purchase line for production and lamination corrugated board - laminating machine', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:17:13', '2020-07-28 14:18:38'),
(66, 22, 6, 0, '', 'Zapytanie ofertowe nr 3A/2018 w sprawie zamówienia na zakup przekrawacza do tektury falistej', 'Zapytanie ofertowe nr 3A/2018 w sprawie zamówienia na zakup przekrawacza do tektury falistej', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:19:36', '2020-07-28 14:19:58'),
(67, 22, 6, 0, '', 'Request for quotation no. 3A/2018 on order for purchase single face sheeter', 'Request for quotation no. 3A/2018 on order for purchase single face sheeter', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:22:26', '2020-07-28 14:22:42'),
(68, 22, 6, 0, '', 'Zapytanie ofertowe nr 3B/2018 w sprawie zamówienia na zakup odwijaka do tektury falistej', 'Zapytanie ofertowe nr 3B/2018 w sprawie zamówienia na zakup odwijaka do tektury falistej', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:24:22', '2020-07-28 14:24:41'),
(69, 22, 6, 0, '', 'Zapytanie ofertowe nr 4/2018 w sprawie zamówienia na zakup nawijaka automatycznego do tektury falistej', 'Zapytanie ofertowe nr 4/2018 w sprawie zamówienia na zakup nawijaka automatycznego do tektury falistej', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:26:45', '2020-07-28 14:27:03'),
(70, 22, 6, 0, '', 'Request for quotation no. 4/2018 on order for purchase automatic rewinder for corrugated board', 'Request for quotation no. 4/2018 on order for purchase automatic rewinder for corrugated board', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:28:40', '2020-07-28 14:28:56'),
(71, 22, 6, 0, '', 'Zapytanie ofertowe nr 5/2018 w sprawie zamówienia na zakup przekrawacza papieru do druku', 'Zapytanie ofertowe nr 5/2018 w sprawie zamówienia na zakup przekrawacza papieru do druku', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:30:58', '2020-07-28 14:31:15'),
(72, 22, 6, 0, '', 'Request for quotation no. 5/2018 on order for purchase paper sheeter', 'Request for quotation no. 5/2018 on order for purchase paper sheeter', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:34:46', '2020-07-28 14:35:03'),
(73, 22, 6, 0, '', 'Zapytanie ofertowe nr 6/2018 w sprawie zamówienia na zakup automatycznej sztancy płaskiej', 'Zapytanie ofertowe nr 6/2018 w sprawie zamówienia na zakup automatycznej sztancy płaskiej', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:36:46', '2020-07-28 14:37:00'),
(74, 22, 6, 0, '', 'Request for quotation no. 6/2018 on order for purchase automatic die cutting machine', 'Request for quotation no. 6/2018 on order for purchase automatic die cutting machine', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:39:16', '2020-07-28 14:39:34'),
(75, 22, 6, 0, '', 'Zapytanie ofertowe nr 7/2018 w sprawie zamówienia na zakup instalacji podawania kleju na bazie skrobi', 'Zapytanie ofertowe nr 7/2018 w sprawie zamówienia na zakup instalacji podawania kleju na bazie skrobi', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:41:20', '2020-07-28 14:41:35'),
(76, 22, 6, 0, '', 'Request for quotation no. 7/2018 on order for purchase starch-based glue feed installation', 'Request for quotation no. 7/2018 on order for purchase starch-based glue feed installation', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 14:43:21', '2020-07-28 14:47:04'),
(77, 22, 6, 0, '', 'Zapytanie ofertowe nr 8/2018 w sprawie zamówienia na zakup instalacji pary wodnej', 'Zapytanie ofertowe nr 8/2018 w sprawie zamówienia na zakup instalacji pary wodnej', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 15:10:00', '2020-07-28 15:10:46'),
(78, 22, 6, 0, '', 'Zapytanie ofertowe nr 9/2019 w sprawie zamówienia na zakup instalacji pneumatycznej odbioru i transportu odpadów', 'Zapytanie ofertowe nr 9/2019 w sprawie zamówienia na zakup instalacji pneumatycznej odbioru i transportu odpadów', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 15:13:07', '2020-07-28 15:13:25'),
(79, 10, 6, 0, '', 'Dotacja UE', '', '<p>Wdrożenie innowacyjnego, energooszczędnego systemu wytwarzania opakowań o podwyższonej wytrzymałości</p>\r\n<p>ROYALPACK, Tatar Sp. j. w lipcu 2013 r. otrzymał dotację unijną w ramach Programu Operacyjnego Innowacyjna Gospodarka, Oś Priorytetowa 4 - Inwestycje w innowacyjne przedsięwzięcia. Pilotaż: <em>\"Wsparcie na pierwsze wdrożenie wynalazku\"</em>.</p>\r\n<p>Dzięki dofinansowaniu wybudowaliśmy nasz nowy zakład produkcyjny w miejscowości Słone koło Zielonej G&oacute;ry. W zakresie projektu został r&oacute;wnież nabyty oraz zainstalowany nowoczesny park maszynowy.</p>\r\n<p>Budowa zakładu została rozpoczęta w listopadzie 2013 r. Zakończenie prac nastąpiło w lutym 2015 r.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', 4, 'on', 'off', '', '2020-07-28', '2020-07-28 15:14:34', '2020-07-28 15:20:33'),
(80, 23, 21, 0, '', 'Nowy zakład produkcyjny ROYALPACK – Słone koło Zielonej Góry', '', NULL, '', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-28', '2020-07-28 15:23:20', '2020-07-28 15:23:29');

--
-- Wyzwalacze `im_object`
--
DROP TRIGGER IF EXISTS `im_object_insert_date`;
DELIMITER $$
CREATE TRIGGER `im_object_insert_date` BEFORE INSERT ON `im_object` FOR EACH ROW set new.date = current_date()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_object_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_object_insert_date_create` BEFORE INSERT ON `im_object` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_object_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_object_insert_date_modify` BEFORE INSERT ON `im_object` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_object_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_object_update_date_modify` BEFORE UPDATE ON `im_object` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_category`
--

DROP TABLE IF EXISTS `im_object_category`;
CREATE TABLE IF NOT EXISTS `im_object_category` (
  `object_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`object_category_id`),
  KEY `object_id` (`object_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_file`
--

DROP TABLE IF EXISTS `im_object_file`;
CREATE TABLE IF NOT EXISTS `im_object_file` (
  `object_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`object_file_id`),
  KEY `object_id` (`object_id`),
  KEY `file_id` (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_file`
--

INSERT INTO `im_object_file` (`object_file_id`, `object_id`, `file_id`, `position`) VALUES
(5, 46, 3, 1),
(6, 46, 4, 2),
(7, 46, 5, 3),
(9, 29, 1, 1),
(10, 47, 6, 1),
(17, 62, 10, 1),
(18, 62, 7, 2),
(19, 62, 8, 3),
(20, 62, 9, 4),
(21, 63, 11, 1),
(22, 63, 12, 2),
(23, 63, 13, 3),
(24, 63, 14, 4),
(25, 64, 15, 1),
(26, 64, 16, 2),
(27, 64, 17, 3),
(28, 64, 18, 4),
(33, 65, 19, 1),
(34, 65, 20, 2),
(35, 65, 21, 3),
(36, 65, 22, 4),
(37, 66, 23, 1),
(38, 66, 24, 2),
(39, 66, 25, 3),
(40, 66, 26, 4),
(41, 67, 27, 1),
(42, 67, 28, 2),
(43, 67, 29, 3),
(44, 67, 30, 4),
(45, 68, 31, 1),
(46, 68, 32, 2),
(47, 68, 33, 3),
(48, 68, 34, 4),
(49, 69, 35, 1),
(50, 69, 36, 2),
(51, 69, 37, 3),
(52, 69, 38, 4),
(53, 70, 39, 1),
(54, 70, 40, 2),
(55, 70, 41, 3),
(56, 70, 42, 4),
(61, 71, 43, 1),
(62, 71, 44, 2),
(63, 71, 45, 3),
(64, 71, 46, 4),
(65, 72, 47, 1),
(66, 72, 48, 2),
(67, 72, 49, 3),
(68, 72, 50, 4),
(69, 73, 51, 1),
(70, 73, 52, 2),
(71, 73, 53, 3),
(72, 73, 54, 4),
(73, 74, 55, 1),
(74, 74, 56, 2),
(75, 74, 57, 3),
(76, 74, 58, 4),
(77, 75, 59, 1),
(78, 75, 60, 2),
(79, 75, 61, 3),
(80, 75, 62, 4),
(85, 76, 63, 1),
(86, 76, 64, 2),
(87, 76, 65, 3),
(88, 76, 66, 4),
(89, 77, 67, 1),
(90, 77, 68, 2),
(91, 77, 69, 3),
(92, 77, 70, 4),
(93, 77, 71, 5),
(94, 77, 72, 6),
(95, 77, 73, 7),
(96, 77, 74, 8),
(97, 77, 75, 9),
(98, 77, 76, 10),
(99, 77, 77, 11),
(100, 77, 78, 12),
(101, 77, 79, 13),
(102, 77, 80, 14),
(103, 78, 81, 1),
(104, 78, 82, 2),
(105, 78, 83, 3),
(106, 78, 84, 4),
(107, 78, 85, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_image`
--

DROP TABLE IF EXISTS `im_object_image`;
CREATE TABLE IF NOT EXISTS `im_object_image` (
  `object_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`object_image_id`),
  KEY `object_id` (`object_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_image`
--

INSERT INTO `im_object_image` (`object_image_id`, `object_id`, `image_id`, `position`) VALUES
(8, 12, 4, 1),
(9, 12, 3, 2),
(12, 1, 1, 1),
(13, 5, 2, 1),
(18, 18, 8, 1),
(19, 18, 6, 2),
(20, 18, 9, 3),
(39, 31, 15, 1),
(40, 32, 14, 1),
(41, 34, 13, 1),
(42, 35, 12, 1),
(43, 36, 16, 1),
(44, 14, 5, 1),
(46, 52, 17, 1),
(47, 53, 22, 1),
(48, 54, 18, 1),
(49, 55, 23, 1),
(50, 56, 20, 1),
(51, 57, 24, 1),
(52, 58, 14, 1),
(53, 59, 16, 1),
(55, 60, 26, 1),
(56, 80, 33, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_movie`
--

DROP TABLE IF EXISTS `im_object_movie`;
CREATE TABLE IF NOT EXISTS `im_object_movie` (
  `object_movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`object_movie_id`),
  KEY `object_id` (`object_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_movie`
--

INSERT INTO `im_object_movie` (`object_movie_id`, `object_id`, `movie_id`, `position`) VALUES
(1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_object_source`
--

DROP TABLE IF EXISTS `im_object_source`;
CREATE TABLE IF NOT EXISTS `im_object_source` (
  `object_source_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `source_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`object_source_id`),
  KEY `object_id` (`object_id`),
  KEY `source_id` (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_property`
--

DROP TABLE IF EXISTS `im_property`;
CREATE TABLE IF NOT EXISTS `im_property` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_property`
--

INSERT INTO `im_property` (`property_id`, `name`, `system_name`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Nazwa', 'name', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(2, 'Tekst', 'content', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(3, 'Data', 'date', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(4, 'Zdjęcie', 'image', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(5, 'Link wewnętrzny', 'section', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(6, 'Plik', 'file', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(7, 'Menu', 'menu', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(8, 'Link zewnętrzny', 'link', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(9, 'E-mail', 'email', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(10, 'Formularz kontaktowy', 'form', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(11, 'Źródło', 'source', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(12, 'Ikona', 'icon', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(13, 'Języki', 'language', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(14, 'Nawigacja okruszkowa', 'breadcrumb', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(15, 'Film', 'movie', '', '2020-06-11 13:03:30', '2020-06-11 13:03:42'),
(16, 'Mapa', 'map', '', '2020-06-17 14:24:55', '2020-06-17 14:24:55');

--
-- Wyzwalacze `im_property`
--
DROP TRIGGER IF EXISTS `im_property_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_property_insert_date_create` BEFORE INSERT ON `im_property` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_property_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_property_insert_date_modify` BEFORE INSERT ON `im_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_property_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_property_update_date_modify` BEFORE UPDATE ON `im_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_section`
--

DROP TABLE IF EXISTS `im_section`;
CREATE TABLE IF NOT EXISTS `im_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `name_second` varchar(128) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `name_url` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `meta` text COLLATE utf8_polish_ci,
  `icon` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `class` varchar(128) COLLATE utf8_polish_ci DEFAULT 'container',
  `popup` text COLLATE utf8_polish_ci,
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `status_copy` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `status_popup` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `status_parallax` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section`
--

INSERT INTO `im_section` (`section_id`, `parent`, `name`, `name_second`, `name_url`, `meta`, `icon`, `class`, `popup`, `position`, `status`, `status_copy`, `status_popup`, `status_parallax`, `description`, `date_create`, `date_modify`) VALUES
(1, 0, 'Strona główna', '', 'strona-glowna', 'Opis strony głownej', '', '', '', 1, 'off', 'on', 'off', 'off', '', '2020-06-09 16:25:42', '2020-06-23 10:49:17'),
(2, 0, 'O NAS', '', 'o-nas', '', '', 'container', '', 2, 'on', 'off', 'off', 'off', '', '2020-06-16 08:09:19', '2020-07-22 20:23:27'),
(3, 0, 'OFERTA', '', 'oferta', '', '', 'container', '', 3, 'on', 'off', 'off', 'off', '', '2020-06-16 08:10:11', '2020-07-22 20:23:27'),
(4, 0, 'TECHNOLOGIA', '', 'technologia', '', '', 'container', '', 4, 'on', 'off', 'off', 'off', '', '2020-06-16 08:10:47', '2020-07-22 20:23:29'),
(5, 0, 'KARIERA', '', 'kariera', '', '', 'container', '', 5, 'on', 'on', 'off', 'off', '', '2020-06-16 08:10:59', '2020-06-24 13:57:15'),
(6, 0, 'KONTAKT', '', 'kontakt', '', '', 'container', '', 6, 'on', 'on', 'off', 'off', '', '2020-06-16 08:11:10', '2020-07-22 20:41:05'),
(7, 2, 'Profil działalności', '', 'profil-dzialalnosci', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'on', '', '2020-06-21 15:45:04', '2020-06-30 09:43:14'),
(8, 3, 'OPAKOWANIA', '', 'opakowania', '', '', 'container', '', 1, 'on', 'off', 'off', 'off', '', '2020-06-21 15:49:55', '2020-06-30 11:32:13'),
(9, 3, 'POS Displays', '', 'pos-displays', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'off', 'off', 'off', '', '2020-06-21 15:50:11', '2020-06-30 11:32:26'),
(10, 8, 'Standard FEFCO', '', 'standard-fefco', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'off', '', '2020-06-21 15:51:50', '2020-06-23 11:12:02'),
(11, 8, 'SRP Displays', '', 'srp-displays', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'on', 'off', 'off', '', '2020-06-21 15:52:06', '2020-06-23 11:12:09'),
(12, 8, 'Ekspozytory ladowe', '', 'ekspozytory-ladowe', '', 'fal fa-angle-right', 'container', '', 3, 'on', 'on', 'off', 'off', '', '2020-06-21 15:53:42', '2020-06-23 11:12:13'),
(13, 8, 'E-commerce boxes', '', 'e-commerce-boxes', '', 'fal fa-angle-right', 'container', '', 4, 'on', 'on', 'off', 'off', '', '2020-06-21 15:54:06', '2020-06-23 11:12:19'),
(14, 8, 'Sila Liner', '', 'sila-liner', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'off', '', '2020-06-21 15:54:22', '2020-06-23 11:12:25'),
(15, 8, 'Projekty indywidualne', '', 'projekty-indywidualne', '', 'fal fa-angle-right', 'container', '', 6, 'on', 'on', 'off', 'off', '', '2020-06-21 15:54:40', '2020-06-23 11:12:31'),
(16, 8, 'Projekty innowacyjne', '', 'projekty-innowacyjne', '', 'fal fa-angle-right', 'container', '', 7, 'on', 'on', 'off', 'off', '', '2020-06-21 15:54:58', '2020-06-23 11:12:36'),
(17, 2, 'Historia firmy', '', 'historia-firmy', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'on', 'off', 'off', '', '2020-06-21 16:42:46', '2020-06-23 11:15:39'),
(18, 2, 'Polityka rozwoju', '', 'polityka-rozwoju', '', 'fal fa-angle-right', 'container', '', 3, 'on', 'on', 'off', 'off', '', '2020-06-21 16:43:04', '2020-06-23 11:15:45'),
(19, 2, 'Obsługa klienta', '', 'obsluga-klienta', '', 'fal fa-angle-right', 'container', '', 4, 'on', 'on', 'off', 'off', '', '2020-06-21 16:43:28', '2020-06-23 11:15:51'),
(20, 2, 'Ogólne warunki handlowe', '', 'ogolne-warunki-handlowe', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'off', '', '2020-06-21 16:43:47', '2020-06-23 11:15:56'),
(21, 2, 'Wyróżnienia', '', 'wyroznienia', '', 'fal fa-angle-right', 'container', '', 6, 'on', 'on', 'off', 'off', '', '2020-06-21 16:44:00', '2020-06-23 11:16:01'),
(22, 2, 'Media o nas', '', 'media-o-nas', '', 'fal fa-angle-right', 'container', '', 7, 'on', 'on', 'off', 'off', '', '2020-06-21 16:45:01', '2020-06-23 11:16:06'),
(23, 4, 'Offset', '', 'offset', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'off', '', '2020-06-21 17:06:29', '2020-07-21 16:52:11'),
(24, 4, 'Flexo', '', 'flexo', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'on', 'off', 'off', '', '2020-06-21 17:06:43', '2020-07-21 16:52:11'),
(25, 4, 'Park maszynowy', '', 'park-maszynowy', '', 'fal fa-angle-right', 'container', '', 3, 'on', 'on', 'off', 'off', '', '2020-06-21 17:06:56', '2020-07-21 16:52:11'),
(26, 4, 'R&D', '', 'rd', '', 'fal fa-angle-right', 'container', '', 4, 'on', 'on', 'off', 'off', '', '2020-06-21 17:07:12', '2020-07-21 16:52:11'),
(27, 4, 'Innowacje', '', 'innowacje', '', 'fal fa-angle-right', 'container', '', 6, 'on', 'on', 'off', 'off', '', '2020-06-21 17:07:27', '2020-07-21 16:52:11'),
(28, 4, 'Dział kontroli jakości', '', 'dzial-kontroli-jakosci', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'on', '', '2020-07-21 16:51:31', '2020-07-22 21:09:34'),
(29, 0, 'DOTACJA UE', '', 'dotacja-ue', '', '', 'container', '', 7, 'off', 'on', 'off', 'on', '', '2020-07-28 09:34:12', '2020-07-28 12:26:23');

--
-- Wyzwalacze `im_section`
--
DROP TRIGGER IF EXISTS `im_section_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_section_insert_date_create` BEFORE INSERT ON `im_section` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_section_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_section_insert_date_modify` BEFORE INSERT ON `im_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_section_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_section_update_date_modify` BEFORE UPDATE ON `im_section` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_section_image`
--

DROP TABLE IF EXISTS `im_section_image`;
CREATE TABLE IF NOT EXISTS `im_section_image` (
  `section_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`section_image_id`),
  KEY `section_id` (`section_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section_image`
--

INSERT INTO `im_section_image` (`section_image_id`, `section_id`, `image_id`, `position`) VALUES
(1, 7, 9, 1),
(5, 28, 8, 1),
(15, 29, 28, 1),
(16, 29, 27, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_section_object`
--

DROP TABLE IF EXISTS `im_section_object`;
CREATE TABLE IF NOT EXISTS `im_section_object` (
  `section_object_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  PRIMARY KEY (`section_object_id`),
  KEY `section_id` (`section_id`),
  KEY `object_id` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1759 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section_object`
--

INSERT INTO `im_section_object` (`section_object_id`, `section_id`, `object_id`) VALUES
(4, 1, 3),
(19, 1, 4),
(344, 1, 12),
(345, 2, 12),
(346, 3, 12),
(347, 4, 12),
(348, 5, 12),
(349, 6, 12),
(350, 7, 12),
(351, 8, 12),
(352, 9, 12),
(353, 10, 12),
(354, 11, 12),
(355, 12, 12),
(356, 13, 12),
(357, 14, 12),
(358, 15, 12),
(359, 16, 12),
(360, 17, 12),
(361, 18, 12),
(362, 19, 12),
(363, 20, 12),
(364, 21, 12),
(365, 22, 12),
(366, 23, 12),
(367, 24, 12),
(368, 25, 12),
(369, 26, 12),
(370, 27, 12),
(587, 1, 2),
(588, 2, 2),
(589, 3, 2),
(590, 4, 2),
(591, 5, 2),
(592, 6, 2),
(593, 7, 2),
(594, 8, 2),
(595, 9, 2),
(596, 10, 2),
(597, 11, 2),
(598, 12, 2),
(599, 13, 2),
(600, 14, 2),
(601, 15, 2),
(602, 16, 2),
(603, 17, 2),
(604, 18, 2),
(605, 19, 2),
(606, 20, 2),
(607, 21, 2),
(608, 22, 2),
(609, 23, 2),
(610, 24, 2),
(611, 25, 2),
(612, 26, 2),
(613, 27, 2),
(614, 1, 1),
(615, 2, 1),
(616, 3, 1),
(617, 4, 1),
(618, 5, 1),
(619, 6, 1),
(620, 7, 1),
(621, 8, 1),
(622, 9, 1),
(623, 10, 1),
(624, 11, 1),
(625, 12, 1),
(626, 13, 1),
(627, 14, 1),
(628, 15, 1),
(629, 16, 1),
(630, 17, 1),
(631, 18, 1),
(632, 19, 1),
(633, 20, 1),
(634, 21, 1),
(635, 22, 1),
(636, 23, 1),
(637, 24, 1),
(638, 25, 1),
(639, 26, 1),
(640, 27, 1),
(671, 7, 16),
(674, 7, 15),
(675, 1, 5),
(676, 2, 5),
(677, 3, 5),
(678, 4, 5),
(679, 5, 5),
(680, 6, 5),
(681, 7, 5),
(682, 8, 5),
(683, 9, 5),
(684, 10, 5),
(685, 11, 5),
(686, 12, 5),
(687, 13, 5),
(688, 14, 5),
(689, 15, 5),
(690, 16, 5),
(691, 17, 5),
(692, 18, 5),
(693, 19, 5),
(694, 20, 5),
(695, 21, 5),
(696, 22, 5),
(697, 23, 5),
(698, 24, 5),
(699, 25, 5),
(700, 26, 5),
(701, 27, 5),
(751, 1, 18),
(758, 1, 10),
(759, 2, 10),
(760, 3, 10),
(761, 4, 10),
(762, 5, 10),
(763, 6, 10),
(799, 6, 22),
(801, 6, 23),
(1067, 5, 28),
(1101, 22, 33),
(1118, 22, 31),
(1119, 22, 32),
(1120, 22, 34),
(1121, 22, 35),
(1122, 22, 36),
(1178, 1, 9),
(1179, 2, 9),
(1180, 3, 9),
(1181, 4, 9),
(1182, 5, 9),
(1183, 6, 9),
(1184, 7, 9),
(1185, 8, 9),
(1186, 9, 9),
(1187, 10, 9),
(1188, 11, 9),
(1189, 12, 9),
(1190, 13, 9),
(1191, 14, 9),
(1192, 15, 9),
(1193, 16, 9),
(1194, 17, 9),
(1195, 18, 9),
(1196, 19, 9),
(1197, 20, 9),
(1198, 21, 9),
(1199, 22, 9),
(1200, 23, 9),
(1201, 24, 9),
(1202, 25, 9),
(1203, 26, 9),
(1204, 27, 9),
(1205, 28, 1),
(1206, 28, 2),
(1207, 28, 5),
(1208, 28, 9),
(1209, 28, 10),
(1210, 28, 12),
(1215, 1, 14),
(1216, 5, 14),
(1217, 6, 14),
(1218, 7, 14),
(1219, 9, 14),
(1220, 10, 14),
(1221, 11, 14),
(1222, 12, 14),
(1223, 13, 14),
(1224, 14, 14),
(1225, 15, 14),
(1226, 16, 14),
(1227, 17, 14),
(1228, 18, 14),
(1229, 19, 14),
(1230, 20, 14),
(1231, 21, 14),
(1232, 22, 14),
(1233, 23, 14),
(1234, 24, 14),
(1235, 25, 14),
(1236, 26, 14),
(1237, 27, 14),
(1238, 28, 14),
(1261, 20, 45),
(1263, 20, 46),
(1400, 28, 38),
(1401, 28, 39),
(1402, 28, 40),
(1405, 28, 43),
(1406, 28, 41),
(1407, 28, 42),
(1432, 6, 29),
(1433, 5, 47),
(1502, 1, 8),
(1503, 7, 8),
(1504, 1, 7),
(1505, 7, 7),
(1506, 1, 6),
(1507, 7, 6),
(1508, 17, 20),
(1514, 18, 30),
(1515, 17, 48),
(1516, 18, 49),
(1520, 1, 21),
(1521, 6, 21),
(1522, 20, 21),
(1533, 28, 37),
(1534, 21, 51),
(1539, 21, 52),
(1542, 21, 53),
(1544, 21, 54),
(1547, 21, 55),
(1549, 21, 56),
(1551, 21, 57),
(1553, 21, 58),
(1555, 21, 59),
(1556, 29, 1),
(1557, 29, 2),
(1558, 29, 5),
(1559, 29, 9),
(1560, 29, 10),
(1561, 29, 12),
(1562, 29, 14),
(1611, 2, 13),
(1612, 3, 13),
(1613, 4, 13),
(1614, 5, 13),
(1615, 6, 13),
(1616, 7, 13),
(1617, 8, 13),
(1618, 9, 13),
(1619, 10, 13),
(1620, 11, 13),
(1621, 12, 13),
(1622, 13, 13),
(1623, 14, 13),
(1624, 15, 13),
(1625, 16, 13),
(1626, 17, 13),
(1627, 18, 13),
(1628, 19, 13),
(1629, 20, 13),
(1630, 21, 13),
(1631, 22, 13),
(1632, 23, 13),
(1633, 24, 13),
(1634, 25, 13),
(1635, 26, 13),
(1636, 27, 13),
(1637, 28, 13),
(1638, 29, 13),
(1639, 1, 60),
(1640, 5, 60),
(1641, 6, 60),
(1642, 7, 60),
(1643, 10, 60),
(1644, 11, 60),
(1645, 12, 60),
(1646, 13, 60),
(1647, 14, 60),
(1648, 15, 60),
(1649, 16, 60),
(1650, 17, 60),
(1651, 18, 60),
(1652, 19, 60),
(1653, 20, 60),
(1654, 21, 60),
(1655, 22, 60),
(1656, 23, 60),
(1657, 24, 60),
(1658, 25, 60),
(1659, 26, 60),
(1660, 27, 60),
(1661, 28, 60),
(1686, 29, 62),
(1687, 29, 61),
(1690, 29, 63),
(1693, 29, 64),
(1696, 29, 65),
(1698, 29, 66),
(1700, 29, 67),
(1702, 29, 68),
(1704, 29, 69),
(1706, 29, 70),
(1709, 29, 71),
(1711, 29, 72),
(1713, 29, 73),
(1715, 29, 74),
(1717, 29, 75),
(1720, 29, 76),
(1722, 29, 77),
(1724, 29, 78),
(1727, 29, 79),
(1728, 29, 80),
(1732, 5, 27),
(1733, 1, 25),
(1734, 5, 25),
(1735, 6, 25),
(1736, 7, 25),
(1737, 8, 25),
(1738, 9, 25),
(1739, 10, 25),
(1740, 11, 25),
(1741, 12, 25),
(1742, 13, 25),
(1743, 14, 25),
(1744, 15, 25),
(1745, 16, 25),
(1746, 17, 25),
(1747, 18, 25),
(1748, 19, 25),
(1749, 20, 25),
(1750, 21, 25),
(1751, 22, 25),
(1752, 23, 25),
(1753, 24, 25),
(1754, 25, 25),
(1755, 26, 25),
(1756, 27, 25),
(1757, 28, 25),
(1758, 29, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_setting`
--

DROP TABLE IF EXISTS `im_setting`;
CREATE TABLE IF NOT EXISTS `im_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_setting`
--

INSERT INTO `im_setting` (`setting_id`, `name`, `system_name`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 'System name', 'name', 'royalpack.com.pl', '', '2020-06-09 16:25:42', '2020-06-09 16:25:42'),
(2, 'Favicon', 'favicon', 'favicon.png', '', '2020-06-09 16:25:42', '2020-06-09 16:25:42'),
(3, 'Font', 'font', 'Roboto', '', '2020-06-09 16:25:42', '2020-06-24 14:01:24'),
(4, 'Font size', 'font-size', '15px', '', '2020-06-17 14:13:35', '2020-06-17 14:13:35'),
(5, 'Google API', 'google-api', 'AIzaSyBsx3mEXTFuu70t5rvDr7EgZGUDFfzx0DQ', '', '2020-06-17 14:13:36', '2020-07-13 20:27:56'),
(6, 'Style map', 'map-style', '[\r\n    {\r\n        \"featureType\": \"administrative\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": \"-100\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"administrative.province\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"visibility\": \"off\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"landscape\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": -100\r\n            },\r\n            {\r\n                \"lightness\": 65\r\n            },\r\n            {\r\n                \"visibility\": \"on\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"poi\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": -100\r\n            },\r\n            {\r\n                \"lightness\": \"50\"\r\n            },\r\n            {\r\n                \"visibility\": \"simplified\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": \"-100\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road.highway\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"visibility\": \"simplified\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road.arterial\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"lightness\": \"30\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road.local\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"lightness\": \"40\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"transit\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": -100\r\n            },\r\n            {\r\n                \"visibility\": \"simplified\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"water\",\r\n        \"elementType\": \"geometry\",\r\n        \"stylers\": [\r\n            {\r\n                \"hue\": \"#ffff00\"\r\n            },\r\n            {\r\n                \"lightness\": -25\r\n            },\r\n            {\r\n                \"saturation\": -97\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"water\",\r\n        \"elementType\": \"labels\",\r\n        \"stylers\": [\r\n            {\r\n                \"lightness\": -25\r\n            },\r\n            {\r\n                \"saturation\": -100\r\n            }\r\n        ]\r\n    }\r\n]', '', '2020-06-17 14:13:36', '2020-07-13 20:47:09');

--
-- Wyzwalacze `im_setting`
--
DROP TRIGGER IF EXISTS `im_setting_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_setting_insert_date_create` BEFORE INSERT ON `im_setting` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_setting_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_setting_insert_date_modify` BEFORE INSERT ON `im_setting` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_setting_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_setting_update_date_modify` BEFORE UPDATE ON `im_setting` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_source`
--

DROP TABLE IF EXISTS `im_source`;
CREATE TABLE IF NOT EXISTS `im_source` (
  `source_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `link` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Wyzwalacze `im_source`
--
DROP TRIGGER IF EXISTS `im_source_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_source_insert_date_create` BEFORE INSERT ON `im_source` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_source_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_source_insert_date_modify` BEFORE INSERT ON `im_source` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_source_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_source_update_date_modify` BEFORE UPDATE ON `im_source` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_translation`
--

DROP TABLE IF EXISTS `im_translation`;
CREATE TABLE IF NOT EXISTS `im_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `target_table` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `target_column` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `target_record` int(11) NOT NULL,
  `content` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_translation`
--

INSERT INTO `im_translation` (`translation_id`, `language_id`, `name`, `target_table`, `target_column`, `target_record`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 2, 'Profil działalności', 'im_object', 'name', 16, '<i class=\"fal fa-grip-lines\"></i> Profile <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-05 08:48:25', '2020-08-05 08:48:25'),
(2, 3, 'Profil działalności', 'im_object', 'name', 16, '<i class=\"fal fa-grip-lines\"></i> Profil der Tätigkeit <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-05 08:49:05', '2020-08-05 08:49:05'),
(3, 3, 'Kim jesteśmy', 'im_object', 'content', 16, '<p><strong><span style=\"font-size: 14pt;\">Wer wir sind?</span></strong></p>\r\n<p>Wir sind der Hersteller von Verpackungen aus Wellpappe mit der Technologie des Offsetdrucks und Flexodrucks bedruckt werden. Wir produzieren Kollektiv- und Einzelverpackungen, display, sowie Projekte aus der POS Gruppe f&uuml;r Produkte aus verschiedenen Sektoren der Marktwirtschaft. Die Gesellschaft ist seit 2009 auf dem Markt t&auml;tig, ihre Geschichte ist jedoch ein langer Prozess, der auf &uuml;ber 20 Jahren Erfahrung in der Verpackungsbranche basiert. Deswegen sind wir uns dessen v&ouml;llig bewusst, wie wichtig die Sorge um den Kunden und dessen Zufriedenheit ist. Wir verstehen Ihre Bed&uuml;rfnisse und passen uns an sie an.</p>', '', '2020-08-05 08:58:06', '2020-08-05 08:59:51'),
(4, 2, 'Kim jesteśmy', 'im_object', 'content', 16, '<p><strong><span style=\"font-size: 14pt;\">Who we are?</span></strong></p>\r\n<p>We are a manufacturer of corrugated cardboard packaging, printed with offset and flexo printing technique. We produce individual and collective packaging, displays, as well as projects from the POS group for products from different sectors of the market. The company is present on the market since 2009, but its history is a long process based on over 20 years of experience in the packaging industry. Therefore, we are fully aware of how important it is to care about the customer. We understand you and we adjust to your needs.</p>', NULL, '2020-08-05 09:01:22', '2020-08-05 09:01:22'),
(5, 3, 'Zaufanie', 'im_object', 'name', 6, 'VERTRAUEN', NULL, '2020-08-05 09:03:18', '2020-08-05 09:03:18'),
(6, 2, 'Zaufanie', 'im_object', 'name', 6, 'TRUST', NULL, '2020-08-05 09:03:53', '2020-08-05 09:03:53'),
(7, 2, 'Ekologia', 'im_object', 'name', 7, 'ECOLOGY', NULL, '2020-08-05 09:07:39', '2020-08-05 09:07:39'),
(8, 3, 'Ekologia', 'im_object', 'name', 7, 'ÖKOLOGIE', NULL, '2020-08-05 09:08:12', '2020-08-05 09:08:12'),
(9, 3, 'Jakość', 'im_object', 'name', 8, 'QUALITÄT', NULL, '2020-08-05 09:09:38', '2020-08-05 09:09:38'),
(10, 2, 'Jakość', 'im_object', 'name', 8, 'QUALITY', '', '2020-08-05 09:09:57', '2020-08-05 09:10:05'),
(11, 3, 'Profil działalności', 'im_object', 'content', 15, '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Mission</span></strong></p>\r\n<p>Unser Ziel ist, die besten in der Branche zu sein. Mit der Sorge um den Aufbau dauerhafter Beziehungen zu unseren Kunden bieten wir sehr elastische und umfassende Bedienung an. Diese Strategie erm&ouml;glichte uns die nat&uuml;rliche Anpassung an die Bed&uuml;rfnisse sogar der gr&ouml;&szlig;ten Abnehmer, was folglich zu deren Zufriedenheit beitr&auml;gt. Sie ist das Ergebnis der zuverl&auml;ssigen und nachhaltigen T&auml;tigkeit der Firma.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potenzial</span></strong></p>\r\n<p>St&auml;ndig wachsendes Potenzial der Firma ist vor allem das Verdienst unserer Arbeiter. Von Anfang unserer T&auml;tigkeit haben wir auf dynamische Entwicklung unserer Position auf dem Markt gesetzt. Dank dem qualifizierten Personal und st&auml;ndig wachsenden M&ouml;glichkeiten der Firma durch den Erwerb des modernen Maschinenparks gelingt es uns, dieses Ziel zu verwirklichen. Im Rahmen der Investitionen in die Entwicklung des Unternehmens hat die Firma im Jahre 2019 den neuen Produktionsstandort errichtet und einen modernen Maschinenpark erworben, wodurch die Produktionskapazit&auml;t erh&ouml;hte sich auf 50 Millionen m2. Von Tag zu Tag bauen wir das Image unserer Marke durch Zuverl&auml;ssigkeit und Professionalismus auf.</p>', NULL, '2020-08-05 09:12:20', '2020-08-05 09:12:20'),
(12, 2, 'Profil działalności', 'im_object', 'content', 15, '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Mission</span></strong></p>\r\n<p>Our goal is to be the best in what we do. For the sake of building long-lasting relationships with our customers, we offer a very flexible and comprehensive service. It guarantees the adjustment to the needs of even biggest customers and this, on its part, translates into their satisfaction. It is the result of responsible and sustainable business.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potential</span></strong></p>\r\n<p>We owe our constantly growing potential mainly to our employees. From the very beginning of our existence, we invested in the fast development of our position on the market. With qualified staff and continuously increasing capacities, and through the purchase of modern machinery, we manage to achieve this goal. By investing in the development of the company, in 2019 we built a new manufacturing plant and purchased modern machinery, increasing its production capacity to 50 million square metres. Through our thoroughness and professional approach, we build our brand day by day.</p>', NULL, '2020-08-05 09:14:09', '2020-08-05 09:14:09'),
(13, 2, 'O nas', 'im_section', 'name', 2, 'ABOUT US', NULL, '2020-08-05 09:15:43', '2020-08-05 09:15:43'),
(14, 3, 'O nas', 'im_section', 'name', 2, 'ÜBER UNS', NULL, '2020-08-05 09:16:12', '2020-08-05 09:16:12'),
(15, 3, 'Oferta', 'im_section', 'name', 3, 'ANGEBOT', NULL, '2020-08-05 09:17:36', '2020-08-05 09:17:36'),
(16, 2, 'Oferta', 'im_section', 'name', 3, 'OUR PRODUCTS', '', '2020-08-05 09:18:02', '2020-08-05 09:20:52'),
(17, 2, 'Technologia', 'im_section', 'name', 4, 'TECHNOLOGY', '', '2020-08-05 09:19:38', '2020-08-05 09:19:57'),
(18, 3, 'Technologia', 'im_section', 'name', 4, 'TECHNOLOGIE', NULL, '2020-08-05 09:20:27', '2020-08-05 09:20:27'),
(19, 3, 'Kariera', 'im_section', 'name', 5, 'KARRIERE', NULL, '2020-08-05 09:21:35', '2020-08-05 09:21:35'),
(20, 2, 'Kariera', 'im_section', 'name', 5, 'CAREER', NULL, '2020-08-05 09:21:55', '2020-08-05 09:21:55'),
(21, 2, 'Kontakt', 'im_section', 'name', 6, 'CONTACT', NULL, '2020-08-05 09:22:29', '2020-08-05 09:22:29'),
(22, 3, 'Kontakt', 'im_section', 'name', 6, 'KONTAKT', NULL, '2020-08-05 09:22:52', '2020-08-05 09:22:52'),
(23, 3, 'Strona główna', 'im_section', 'name', 1, 'HAUPTSEITE', '', '2020-08-05 10:09:27', '2020-08-05 10:11:16'),
(24, 2, 'Strona główna', 'im_section', 'name', 1, 'HOMEPAGE', '', '2020-08-05 10:09:41', '2020-08-05 10:10:54');

--
-- Wyzwalacze `im_translation`
--
DROP TRIGGER IF EXISTS `im_translation_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_translation_insert_date_create` BEFORE INSERT ON `im_translation` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_insert_date_modify` BEFORE INSERT ON `im_translation` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_update_date_modify` BEFORE UPDATE ON `im_translation` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_translation_system`
--

DROP TABLE IF EXISTS `im_translation_system`;
CREATE TABLE IF NOT EXISTS `im_translation_system` (
  `translation_system_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `system_name` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `content` text COLLATE utf8_polish_ci,
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`translation_system_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_translation_system`
--

INSERT INTO `im_translation_system` (`translation_system_id`, `language_id`, `name`, `system_name`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 'All', 'show-all', 'Pokaż wszystko', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(2, 2, 'All', 'show-all', 'Show all', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(3, 1, 'No data', 'no-data', 'Brak danych', '', '2020-06-09 16:25:22', '2020-06-09 16:25:22'),
(4, 2, 'No data', 'no-data', 'No data', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(5, 1, 'Przycisk wyślij', 'send', 'Wyślij', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(6, 1, 'Nazwa', 'name', 'Nazwa', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(7, 1, 'Nadawca', 'source', 'Nadawca', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(8, 2, 'Send button', 'send', 'Send now', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(9, 2, 'Name', 'name', 'name', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(10, 2, 'From', 'source', 'from', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(11, 1, 'Formularz błąd', 'form-error', 'Błąd wysyłania wiadomości', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(12, 1, 'Formularz poprawny', 'form-ok', 'Wiadomość wysłana', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(13, 2, 'Form error', 'form-error', 'Error sending form', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(14, 2, 'Form ok', 'form-ok', 'Form send', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(15, 1, 'Błąd captcha', 'captcha-error', 'Błąd obrazka', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(16, 2, 'Captcha error', 'captcha-error', 'Captcha error', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(17, 1, 'Captcha', 'captcha-text', 'Wpisz znaki', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(18, 2, 'Captcha', 'captcha-text', 'Insert captcha', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23');

--
-- Wyzwalacze `im_translation_system`
--
DROP TRIGGER IF EXISTS `im_translation_system_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_translation_system_insert_date_create` BEFORE INSERT ON `im_translation_system` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_system_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_system_insert_date_modify` BEFORE INSERT ON `im_translation_system` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_translation_system_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_translation_system_update_date_modify` BEFORE UPDATE ON `im_translation_system` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_type`
--

DROP TABLE IF EXISTS `im_type`;
CREATE TABLE IF NOT EXISTS `im_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `class` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type`
--

INSERT INTO `im_type` (`type_id`, `name`, `class`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Logo', 'col-12', 'on', '', '2020-06-10 11:04:32', '2020-06-10 11:32:52'),
(2, 'Menu', 'col-12', 'on', '', '2020-06-10 11:10:03', '2020-06-16 08:15:59'),
(3, 'Film', 'col-12 d-none d-lg-block', 'on', '', '2020-06-11 13:09:43', '2020-07-08 13:39:41'),
(4, 'Tekst na filmie', 'col-12 d-none d-xl-block', 'on', '', '2020-06-16 10:50:10', '2020-07-08 13:40:23'),
(5, 'Zdjęcia w stopce', 'col-12', 'on', '', '2020-06-16 11:43:29', '2020-07-08 13:46:04'),
(6, 'Kontener', 'col-12 col-lg-4 text-center', 'on', '', '2020-06-16 11:54:36', '2020-06-16 13:04:49'),
(7, 'Treść', 'col-12', 'on', 'W różnych częściach serwisu treść html', '2020-06-16 12:46:41', '2020-07-14 17:02:41'),
(8, 'Submenu', 'col-12', 'on', '', '2020-06-23 07:45:48', '2020-06-23 07:45:54'),
(9, 'Nawigacja okruszkowa', 'col-12 animated fadeIn', 'on', '', '2020-06-23 10:19:21', '2020-07-22 20:38:14'),
(10, 'Treść - sekcja', 'col-12', 'on', 'bez galerii zdjęć, dlatego sugerowana sekcja z paralaksą', '2020-06-30 09:12:54', '2020-06-30 10:19:59'),
(11, 'Treść - wstęp', 'col-12', 'on', '', '2020-06-30 10:20:13', '2020-06-30 10:20:19'),
(12, 'Slider', 'col-12 d-lg-none', 'on', '', '2020-07-08 13:46:13', '2020-07-08 13:49:40'),
(13, 'Mapa', 'col-12', 'on', '', '2020-07-13 20:02:31', '2020-07-13 20:02:38'),
(14, 'Nazwa', 'col-12', 'on', 'Tylko nazwa', '2020-07-13 20:57:08', '2020-07-14 16:55:33'),
(15, 'Treść z formularzem', 'col-12', 'on', 'W jednym wierszu treść html i formularz', '2020-07-13 21:00:33', '2020-07-14 16:56:04'),
(16, 'Języki', 'col-12', 'on', '', '2020-07-14 17:03:57', '2020-07-14 17:04:03'),
(17, 'Plik', 'col-12', 'on', '', '2020-07-14 17:36:10', '2020-07-14 17:36:16'),
(18, 'Media o nas', 'col-12 col-md-6 col-xl-4 im-box', 'on', '', '2020-07-14 19:16:25', '2020-07-24 10:30:33'),
(19, 'Dział kontroli jakości', 'col-12 im-box-list', 'on', '', '2020-07-21 17:02:32', '2020-07-24 10:31:19'),
(20, 'Wyróżnienia', 'col-12 col-md-6 col-xl-4 im-box', 'on', '', '2020-07-24 10:31:48', '2020-07-24 10:32:56'),
(21, 'Flaga UE', 'col-12', 'on', '', '2020-07-28 09:55:34', '2020-07-28 09:57:00'),
(22, 'Zapytanie ofertowe', 'col-12', 'on', 'Sekcja dotacje UE', '2020-07-28 12:59:01', '2020-07-28 13:16:41'),
(23, 'Zdjęcie', '', 'on', NULL, '2020-07-28 15:22:39', '2020-07-28 15:22:39');

--
-- Wyzwalacze `im_type`
--
DROP TRIGGER IF EXISTS `im_type_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_type_insert_date_create` BEFORE INSERT ON `im_type` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_insert_date_modify` BEFORE INSERT ON `im_type` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_update_date_modify` BEFORE UPDATE ON `im_type` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `im_type_property`
--

DROP TABLE IF EXISTS `im_type_property`;
CREATE TABLE IF NOT EXISTS `im_type_property` (
  `type_property_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `class` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `class_field` varchar(128) COLLATE utf8_polish_ci DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`type_property_id`),
  KEY `type_id` (`type_id`),
  KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type_property`
--

INSERT INTO `im_type_property` (`type_property_id`, `type_id`, `property_id`, `class`, `class_field`, `position`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 4, 'col-12', 'animated zoomIn', 1, 'on', '', '2020-06-10 11:05:51', '2020-06-16 09:18:08'),
(2, 2, 7, 'col-12', 'navbar navbar-expand-lg animated fadeInLeftBig', 1, 'on', '', '2020-06-10 11:10:25', '2020-07-22 20:15:05'),
(3, 3, 15, 'col-12', '', 1, 'on', '', '2020-06-11 13:09:58', '2020-07-08 13:39:19'),
(4, 4, 2, 'col-12 text-center', 'animated swing', 1, 'on', '', '2020-06-16 10:50:26', '2020-07-08 13:40:57'),
(5, 5, 4, 'col-12', '', 1, 'on', '', '2020-06-16 11:43:49', '2020-06-16 11:44:04'),
(6, 6, 12, 'col-12', 'icon', 1, 'on', '', '2020-06-16 11:55:21', '2020-06-16 12:14:44'),
(7, 6, 1, 'col-12', 'title', 2, 'on', '', '2020-06-16 11:56:25', '2020-06-16 12:14:07'),
(8, 6, 2, 'col-12', 'text text-justify', 3, 'on', '', '2020-06-16 11:56:41', '2020-06-16 12:41:42'),
(9, 6, 5, 'col-12', 'btn link', 4, 'off', '', '2020-06-16 11:56:57', '2020-07-24 08:24:58'),
(10, 7, 2, 'col-12', '', 1, 'on', '', '2020-06-16 12:47:49', '2020-06-16 12:50:47'),
(11, 8, 7, 'col-12 col-lg-6', 'animated fadeInLeft', 1, 'on', '', '2020-06-23 07:46:31', '2020-06-24 14:48:38'),
(12, 8, 4, 'd-none d-lg-block col-lg-6 text-center submenu-img', '', 2, 'on', '', '2020-06-23 07:47:18', '2020-06-24 14:48:21'),
(13, 9, 14, 'col-12', '', 1, 'on', '', '2020-06-23 10:19:41', '2020-06-23 10:19:52'),
(15, 10, 2, 'col-12', 'text-justify', 2, 'on', '', '2020-06-30 09:26:00', '2020-06-30 10:09:11'),
(16, 10, 12, 'col-12 text-center', 'p-4', 1, 'on', '', '2020-06-30 09:55:28', '2020-06-30 11:06:17'),
(17, 11, 1, 'col-12 text-center text-md-right', 'h5 pt-3 pb-3', 1, 'on', '', '2020-06-30 10:20:41', '2020-06-30 10:40:29'),
(18, 11, 2, 'col-12 text-justify', '', 2, 'on', '', '2020-06-30 10:21:09', '2020-07-08 15:09:52'),
(19, 12, 4, 'col-12', '', 1, 'on', '', '2020-07-08 13:46:34', '2020-07-08 13:46:39'),
(20, 13, 16, 'col-12', '', 1, 'on', '', '2020-07-13 20:02:57', '2020-07-13 20:03:12'),
(21, 14, 1, 'col-12 text-center text-md-right', 'h5 pt-3 pb-5', 1, 'on', '', '2020-07-13 20:57:30', '2020-07-24 11:20:48'),
(22, 15, 2, 'col-12 col-md-6 col-xl-3', '', 1, 'on', '', '2020-07-13 21:00:47', '2020-07-13 21:08:16'),
(23, 15, 10, 'col-12 col-md-6 col-xl-9', 'im-form', 2, 'on', '', '2020-07-13 21:02:15', '2020-07-13 21:12:26'),
(24, 16, 13, 'col-12', '', 1, 'on', '', '2020-07-14 17:04:09', '2020-07-14 17:04:15'),
(25, 17, 6, 'col-12', '', 1, 'on', '', '2020-07-14 17:37:29', '2020-07-14 17:40:34'),
(26, 18, 1, 'col-12 text-center pt-4', 'font-weight-bold', 2, 'on', '', '2020-07-14 19:16:40', '2020-07-14 20:04:55'),
(27, 18, 4, 'col-12', '', 1, 'on', '', '2020-07-14 19:17:00', '2020-07-14 19:19:35'),
(28, 18, 2, 'col-12', 'text-justify pt-3 pb-3', 3, 'on', '', '2020-07-14 19:17:30', '2020-07-14 19:55:10'),
(29, 18, 8, 'col-12 text-center pb-5', 'btn link', 4, 'on', '', '2020-07-14 19:18:46', '2020-07-14 20:09:07'),
(30, 19, 12, 'col-12 col-md-4 text-center pt-3 pb-3', '', 1, 'off', 'Pole ikony wyłączone od 22-07-2020', '2020-07-21 17:04:43', '2020-07-22 21:22:13'),
(31, 19, 1, 'col-12 col-xl-3 text-center left-list', 'h5', 2, 'on', '', '2020-07-21 17:05:26', '2020-07-22 22:15:38'),
(32, 19, 2, 'col-12 col-xl-9 text-justify', '', 3, 'on', '', '2020-07-21 17:06:24', '2020-07-22 22:11:49'),
(33, 20, 4, 'col-12', '', 1, 'on', '', '2020-07-24 10:33:57', '2020-07-24 11:09:59'),
(34, 20, 2, 'col-12', 'text-justify pt-3 pb-3', 3, 'on', '', '2020-07-24 10:34:34', '2020-07-24 11:11:10'),
(35, 20, 1, 'col-12 text-center pt-4', 'font-weight-bold', 2, 'on', '', '2020-07-24 11:09:47', '2020-07-24 11:14:00'),
(36, 21, 4, 'col-12', '', 1, 'on', '', '2020-07-28 09:55:42', '2020-07-28 09:55:49'),
(37, 22, 1, 'col-12', '', 1, 'on', '', '2020-07-28 13:01:00', '2020-07-28 13:01:07'),
(38, 22, 6, 'col-12', '', 2, 'on', '', '2020-07-28 13:02:24', '2020-07-28 13:18:53'),
(39, 23, 4, 'col-12', '', 1, 'on', '', '2020-07-28 15:22:45', '2020-07-28 15:22:51');

--
-- Wyzwalacze `im_type_property`
--
DROP TRIGGER IF EXISTS `im_type_property_insert_date_create`;
DELIMITER $$
CREATE TRIGGER `im_type_property_insert_date_create` BEFORE INSERT ON `im_type_property` FOR EACH ROW set new.date_create = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_property_insert_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_property_insert_date_modify` BEFORE INSERT ON `im_type_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `im_type_property_update_date_modify`;
DELIMITER $$
CREATE TRIGGER `im_type_property_update_date_modify` BEFORE UPDATE ON `im_type_property` FOR EACH ROW set new.date_modify = now()
$$
DELIMITER ;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `im_category`
--
ALTER TABLE `im_category`
  ADD CONSTRAINT `im_category_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `im_label` (`label_id`);

--
-- Ograniczenia dla tabeli `im_label_section`
--
ALTER TABLE `im_label_section`
  ADD CONSTRAINT `im_label_section_ibfk_1` FOREIGN KEY (`label_id`) REFERENCES `im_label` (`label_id`);

--
-- Ograniczenia dla tabeli `im_object`
--
ALTER TABLE `im_object`
  ADD CONSTRAINT `im_object_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `im_type` (`type_id`),
  ADD CONSTRAINT `im_object_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `im_label` (`label_id`);

--
-- Ograniczenia dla tabeli `im_object_category`
--
ALTER TABLE `im_object_category`
  ADD CONSTRAINT `im_object_category_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `im_category` (`category_id`);

--
-- Ograniczenia dla tabeli `im_object_file`
--
ALTER TABLE `im_object_file`
  ADD CONSTRAINT `im_object_file_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_file_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `im_file` (`file_id`);

--
-- Ograniczenia dla tabeli `im_object_image`
--
ALTER TABLE `im_object_image`
  ADD CONSTRAINT `im_object_image_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_image_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `im_image` (`image_id`);

--
-- Ograniczenia dla tabeli `im_object_movie`
--
ALTER TABLE `im_object_movie`
  ADD CONSTRAINT `im_object_movie_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `im_movie` (`movie_id`);

--
-- Ograniczenia dla tabeli `im_object_source`
--
ALTER TABLE `im_object_source`
  ADD CONSTRAINT `im_object_source_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`),
  ADD CONSTRAINT `im_object_source_ibfk_2` FOREIGN KEY (`source_id`) REFERENCES `im_source` (`source_id`);

--
-- Ograniczenia dla tabeli `im_section_image`
--
ALTER TABLE `im_section_image`
  ADD CONSTRAINT `im_section_image_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `im_section` (`section_id`),
  ADD CONSTRAINT `im_section_image_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `im_image` (`image_id`);

--
-- Ograniczenia dla tabeli `im_section_object`
--
ALTER TABLE `im_section_object`
  ADD CONSTRAINT `im_section_object_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `im_section` (`section_id`),
  ADD CONSTRAINT `im_section_object_ibfk_2` FOREIGN KEY (`object_id`) REFERENCES `im_object` (`object_id`);

--
-- Ograniczenia dla tabeli `im_translation`
--
ALTER TABLE `im_translation`
  ADD CONSTRAINT `im_translation_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `im_language` (`language_id`);

--
-- Ograniczenia dla tabeli `im_translation_system`
--
ALTER TABLE `im_translation_system`
  ADD CONSTRAINT `im_translation_system_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `im_language` (`language_id`);

--
-- Ograniczenia dla tabeli `im_type_property`
--
ALTER TABLE `im_type_property`
  ADD CONSTRAINT `im_type_property_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `im_type` (`type_id`),
  ADD CONSTRAINT `im_type_property_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `im_property` (`property_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;