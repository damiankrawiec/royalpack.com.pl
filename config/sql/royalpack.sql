-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 23 Gru 2020, 10:06
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
(4, 'Allgemeine geschäftsbedingungen', '<p><span style=\"font-size: 10pt;\">(dokument in deutscher Sprache)</span></p>', 'allgemeine-geschaftsbedingungen-7959bea2346f5de43e3f126e9771bda7.pdf', 'on', 'Dokument w języku niemieckim', '2020-07-21 18:09:35', '2020-12-02 14:26:50'),
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
  `link` varchar(128) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_image`
--

INSERT INTO `im_image` (`image_id`, `section`, `name`, `content`, `url`, `link`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 'Logo', '', 'logo-b6f6827caed1e0e4cb483bfe19e0999c.png', '', 'on', '', '2020-06-10 11:03:32', '2020-06-16 10:48:16'),
(2, 0, 'Firma - biało-czarne', '', 'firma-50048d2218927674c307879508d7e07b.jpg', '', 'on', '', '2020-06-16 11:45:57', '2020-10-18 17:40:13'),
(3, 0, 'Produkt 1', '', 'produkt-1-43f62f220ff3aad0c0a9679ba47a5369.png', '', 'on', 'Do submenu', '2020-06-23 07:58:17', '2020-06-23 08:32:06'),
(4, 0, 'Produkt 2', '', 'produkt-2-98e71fa3aa8b2194e845fc89bb369686.png', '', 'on', 'Do submenu', '2020-06-23 08:09:04', '2020-06-23 08:09:18'),
(5, 1, 'Logo w stopce', '', 'logo-footer-0d7039911841f8e1b14ccb2d58391bfd.png', '', 'on', '', '2020-06-23 11:38:42', '2020-06-23 11:47:54'),
(6, 0, 'Paralaksa 1', NULL, 'paralaksa-czarny-rozmyte-b60e542d6cd30bc792f1f0f24a0c66f3.jpg', '', 'on', NULL, '2020-06-30 09:41:52', '2020-06-30 09:41:52'),
(7, 0, 'Oferta opakowania paralaksa', '', 'paralaksa-kolor-c9af89a7caec44c7488fd0ea5bc88137.jpg', '', 'on', '', '2020-06-30 09:42:13', '2020-10-18 18:12:05'),
(8, 0, 'Paralaksa 3', '', 'paralaksa-kolor-rozmyte-ea71de509dc2fbe38b042027b8c16ae6.jpg', '', 'on', '', '2020-06-30 09:42:32', '2020-10-18 18:13:06'),
(9, 0, 'Oferta paralaksa', '', 'paralaksa-kolor-rozmyte2-a0265eff45da0d3671b875bf7e6a34fc.jpg', '', 'on', '', '2020-06-30 09:42:50', '2020-10-18 18:10:45'),
(10, 0, 'Nowa siedziba firmy', '', '1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg', '', 'on', '', '2020-07-08 14:43:59', '2020-07-08 14:46:37'),
(11, 0, 'Rozbudowa hali produkcyjnej', '', '2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg', '', 'on', '', '2020-07-08 14:44:26', '2020-07-08 14:49:03'),
(12, 0, 'Brylant Polskiej Gospodarki i Gepard 2018', '', '1-5851a7ca506f8454fe20e48aaff427b5.jpg', '', 'on', 'Media o nas', '2020-07-14 19:27:55', '2020-07-14 19:31:00'),
(13, 0, 'Rzetelni dla Biznesu 2016', '', '2-8e801bd250f203e6077040f5b901bd76.jpg', '', 'on', 'Media o nas', '2020-07-14 19:28:52', '2020-07-14 19:31:06'),
(14, 0, 'Orły Wprost 2016', '', '3-274d124b454a26a9359055cafff22361.jpg', '', 'on', 'Media o nas', '2020-07-14 19:29:13', '2020-07-14 19:31:12'),
(15, 0, 'Brylant Polskiej Gospodarki i Gepard Biznesu 2019', '', '4-3297d9fcd06d7a81c375ef6fb3bcab5f.jpg', '', 'on', 'Media o nas', '2020-07-14 19:30:35', '2020-07-14 19:31:18'),
(16, 0, 'ROYALPACK w gronie najdynamiczniej rozwijających się firm', '', '5-be915b8b6c72a3ae812a52ab8b5fb6b4.jpg', '', 'on', 'Media o nas', '2020-07-14 19:47:55', '2020-07-14 19:48:04'),
(17, 0, 'Brylant Polskiej Gospodarki 2018', NULL, 'brylant-polskiej-gospodarki-2018-02032b48da3bcc1865d98eaca97cbf95.jpg', '', 'on', NULL, '2020-07-24 11:03:22', '2020-07-24 11:03:22'),
(18, 0, 'Efektywna firma 2018', '', 'efektywna-firma-2018-4e91cfefcaa09d5cddb3627badebff18.jpg', '', 'on', '', '2020-07-24 11:03:51', '2020-07-24 11:04:02'),
(19, 0, 'Gazele Biznesu 2016', NULL, 'gazele-biznesu-2016-3d421ff4f53fc7d653471914ca8ac488.jpg', '', 'on', NULL, '2020-07-24 11:06:25', '2020-07-24 11:06:25'),
(20, 0, 'Gazele Biznesu 2018', NULL, 'gazele-biznesu-2018-24d154155f46ec05b18f202b93f5764f.jpg', '', 'on', NULL, '2020-07-24 11:06:41', '2020-07-24 11:06:41'),
(21, 0, 'Gepard Biznesu 2016', NULL, 'gepard-biznesu-2016-e7d81e28204148967a76b361d95bbdbd.jpg', '', 'on', NULL, '2020-07-24 11:06:59', '2020-07-24 11:06:59'),
(22, 0, 'Gepard Biznesu 2018', NULL, 'gepard-biznesu-2018-416201a10d7227b4b3b46b43a063db6a.jpg', '', 'on', NULL, '2020-07-24 11:07:15', '2020-07-24 11:07:15'),
(23, 0, 'Mocna firma 2018', '', 'mocna-firma-godna-zaufania-0c064927749b7c771b557e14ccb045fc.jpg', '', 'on', '', '2020-07-24 11:07:29', '2020-07-24 11:07:49'),
(24, 0, 'Rzetelni dla Biznesu 2016', '', 'rzetelni-dla-biznesu-e36c200391e049f3b254c68646980540.jpg', '', 'on', '', '2020-07-24 11:08:09', '2020-07-24 11:08:20'),
(25, 0, 'Dotacja UE - paralaksa', '', 'paralaksa-ue-bdb913aa56351ac896d52d4231000430.jpg', '', 'on', '', '2020-07-28 09:38:09', '2020-07-28 10:06:15'),
(26, 29, 'Dotacja UE', '', 'flaga-ue-73f98fa18e2d4202d49e688a5f784ae5.png', '', 'on', '', '2020-07-28 09:53:11', '2020-07-28 11:59:32'),
(27, 0, 'Dotacja UE - paralaksa 2', NULL, 'paralaksa-ue2-535e7fdddea5d3f92dc3f20596dd789f.jpg', '', 'on', NULL, '2020-07-28 10:51:16', '2020-07-28 10:51:16'),
(28, 0, 'Flaga UE - paralaksa', '', 'paralaksa-ue1-79eb40927e6d8dde5d7d2ed97fa07374.jpg', '', 'on', '', '2020-07-28 11:56:46', '2020-07-28 11:58:11'),
(29, 0, 'Logo UE', NULL, 'zdjecie-ue-40e93a82f0a35d1d53325c85d6082fa8.jpg', '', 'on', NULL, '2020-07-28 12:17:49', '2020-07-28 12:17:49'),
(30, 0, 'Logo UE 2', NULL, 'zdjecie-ue2-970d6d2aed676d46d2e4246f7d16b5fa.jpg', '', 'on', NULL, '2020-07-28 12:28:08', '2020-07-28 12:28:08'),
(33, 0, 'Nowy zakład produkcyjny ROYALPACK – Słone koło Zielonej Góry', '', 'firma-dotacja-95b9b17af21977dc25d0baa95291c328.jpg', '', 'on', '', '2020-07-28 15:18:51', '2020-07-28 15:19:02'),
(34, 0, 'Siedziba firmy - dron', '', 'dron-siedziba-firmy-fbb53411a96a10ed429c85f0cda1c6c7.jpg', '', 'on', '', '2020-08-18 16:35:24', '2020-08-18 16:43:34'),
(35, 0, 'Flexo', '', 'flexo-25d7125c5afdc577ed7d4af13d0a7ed2.png', '', 'on', '', '2020-09-15 12:04:00', '2020-09-20 19:30:25'),
(36, 0, 'Offset', '', 'offset-674b57fa73a9b0f7e82586782b0ba71a.png', '', 'on', '', '2020-09-15 12:39:51', '2020-09-20 19:43:22'),
(37, 0, 'Brylant Polskiej Gospodarki 2019', NULL, 'brylant-polskiej-gospodarki-2019-42827695fb8dafc91d421109a63e41d2.jpg', '', 'on', NULL, '2020-09-16 09:17:28', '2020-09-16 09:17:28'),
(38, 0, 'Efektywna firma 2019', NULL, 'efektywna-firma-2019-25f97d8ed4b9aa15bee2fcd27d73d65b.jpg', '', 'on', NULL, '2020-09-16 09:17:54', '2020-09-16 09:17:54'),
(39, 0, 'Gepard Biznesu 2019', NULL, 'gepard-biznesu-2019-e028949f567491c3d6ff1a0a12ebd75a.jpg', '', 'on', NULL, '2020-09-16 09:18:19', '2020-09-16 09:18:19'),
(40, 0, 'Mocna Firma - Godna Zaufania 2019', NULL, 'mocna-firma-godna-zaufania-2019-61b6e0aaa3e3faa5e96bc2583b3bb2cd.jpg', '', 'on', NULL, '2020-09-16 09:18:41', '2020-09-16 09:18:41'),
(41, 0, 'Standard FEFCO', NULL, '141015h07_net_ikona-aa2aab329e828dc30951c76522a08a52.jpg', '', 'on', NULL, '2020-09-16 13:17:35', '2020-09-16 13:17:35'),
(42, 0, 'Standard FEFCO', NULL, '180122b05_net_ikona-526e34161bfd0573d000a10711bac28f.jpg', '', 'on', NULL, '2020-09-16 13:17:53', '2020-09-16 13:17:53'),
(43, 0, 'Standard FEFCO', NULL, '190722e04_net_ikona-ff2eae64f242bcf14c64a2eb86f38336.jpg', '', 'on', NULL, '2020-09-16 13:18:02', '2020-09-16 13:18:02'),
(44, 0, 'Standard FEFCO', NULL, '191123d02_net_ikona-21495ef9491a5d7b81aa9b0e6160a32c.jpg', '', 'on', NULL, '2020-09-16 13:18:11', '2020-09-16 13:18:11'),
(45, 0, 'Standard FEFCO', NULL, '1500947zwp_tacka_net_ikona-eb99815b4896cd77804162278ce85d34.jpg', '', 'on', NULL, '2020-09-16 13:18:23', '2020-09-16 13:18:23'),
(46, 0, 'Standard FEFCO', NULL, 'po1805496v2_net_ikona-7e58b7cd7753f78892fe78b59c3d1293.jpg', '', 'on', NULL, '2020-09-16 13:18:32', '2020-09-16 13:18:32'),
(47, 0, 'Standard FEFCO', NULL, 'po1901222v2_taca__net_ikona-6f2faf484d381cf179e6e94e2bc15e37.jpg', '', 'on', NULL, '2020-09-16 13:18:43', '2020-09-16 13:18:43'),
(48, 0, 'Standard FEFCO', NULL, 'roya150112_net_ikona-e4e8518f2245ca822ead2db092ed3fe8.jpg', '', 'on', NULL, '2020-09-16 13:18:52', '2020-09-16 13:18:52'),
(49, 0, 'POS-Displays', NULL, '150706d03-stand-kung250_net_ikona-b5f7cb2b16bc3e60e1841f86a7e588ab.jpg', '', 'on', NULL, '2020-09-22 11:07:34', '2020-09-22 11:07:34'),
(50, 0, 'POS-Displays', NULL, '170524c09_net_ikona-3d7b7faf4af63c80193e37d613dde1fc.jpg', '', 'on', NULL, '2020-09-22 11:07:45', '2020-09-22 11:07:45'),
(51, 0, 'POS-Displays', NULL, 'jb07112018_a02_stand_3d_net_ikona-be6b9a597d4673f2ab9f3b0108b51482.jpg', '', 'on', NULL, '2020-09-22 11:07:55', '2020-09-22 11:07:55'),
(52, 0, 'POS-Displays', NULL, 'kopernik_kosz-zasypowy_net_ikona-f988bad17d05c84fcc1b984c247d1b77.jpg', '', 'on', NULL, '2020-09-22 11:08:04', '2020-09-22 11:08:04'),
(53, 0, 'POS-Displays', NULL, 'kopernik_stand-pos_net_ikona-7d06f347b3d0c9c411055907c6c86732.jpg', '', 'on', NULL, '2020-09-22 11:08:12', '2020-09-22 11:08:12'),
(54, 0, 'POS-Displays', NULL, 'po1912072v2_display-apetina_mp_3d_net_ikona-fe5c7b5a97734002f31e681ab22e2a85.jpg', '', 'on', NULL, '2020-09-22 11:08:21', '2020-09-22 11:08:21'),
(55, 0, 'POS-Displays', NULL, 'urlaubs-dusche_waltz7-pos_net_ikona-1632aead9c81744cb8760fb08a5ab2a1.jpg', '', 'on', NULL, '2020-09-22 11:08:28', '2020-09-22 11:08:28'),
(56, 0, 'SRP-Displays', NULL, '160624d02_pataks-curry_net_ikona-e869b92897a3ade9a736b2b47a380384.jpg', '', 'on', NULL, '2020-09-22 11:21:37', '2020-09-22 11:21:37'),
(57, 0, 'SRP-Displays', NULL, '170104c03_net_ikona-eccad45cfab82bd0e7e08fc63cff6bbb.jpg', '', 'on', NULL, '2020-09-22 11:21:46', '2020-09-22 11:21:46'),
(58, 0, 'SRP-Displays', NULL, '190725d02-serek-wiejski_net_ikona-1567a6f5fdbcdb2e109dc400cfc1ade7.jpg', '', 'on', NULL, '2020-09-22 11:21:54', '2020-09-22 11:21:54'),
(59, 0, 'SRP-Displays', NULL, 'ch1605917zwp_worki_net_ikona-79d06ff579b0806c7ab37dd04ba5f59b.jpg', '', 'on', NULL, '2020-09-22 11:22:01', '2020-09-22 11:22:01'),
(60, 0, 'SRP-Displays', NULL, 'ch1613407zwp_circuss_net_ikona-0ca89f7a6668fe889b2d0d872c784a88.jpg', '', 'on', NULL, '2020-09-22 11:22:08', '2020-09-22 11:22:08'),
(61, 0, 'SILA LINER', NULL, 'eco-cleox_net_ikona_grafika-klienta-95b9b932d3ede94cab656df39f36d489.jpg', '', 'on', NULL, '2020-09-22 11:48:17', '2020-09-22 11:48:17'),
(62, 0, 'SILA LINER', NULL, 'po1905437v2_dusch-jelly_waltz_net_ikona_grafika-klienta-wl-3a6619ca9c8165637372586cd2b2f078.jpg', '', 'on', NULL, '2020-09-22 11:48:24', '2020-09-22 11:48:24'),
(63, 0, 'SILA LINER', NULL, 'po2000841v2_crowner-schutte-eco-shave_wl_net_ikona_grafika-klienta-wl-d00da2ec6f89e17737067aeedf5b4ccd.jpg', '', 'on', NULL, '2020-09-22 11:48:32', '2020-09-22 11:48:32'),
(64, 0, 'Ekspozytory ladowe', NULL, '160412h15_net_ikona-106a0b6e6bb3a54f1f447712a7288e26.jpg', '', 'on', NULL, '2020-09-22 11:51:56', '2020-09-22 11:51:56'),
(65, 0, 'Ekspozytory ladowe', NULL, '161024c03_net_ikona-b234215db415956d98849974e5230b81.jpg', '', 'on', NULL, '2020-09-22 11:52:05', '2020-09-22 11:52:05'),
(66, 0, 'Ekspozytory ladowe', NULL, '180720c11_net_ikona-8fc070a6ddedb91903bfcd03339998d1.jpg', '', 'on', NULL, '2020-09-22 11:52:12', '2020-09-22 11:52:12'),
(67, 0, 'Ekspozytory ladowe', NULL, 'po2006673_jj11022020_a05_display_3-fejsy_net_ikona-51a0ce5ea7232707f68e6b832ed8d312.jpg', '', 'on', NULL, '2020-09-22 11:52:20', '2020-09-22 11:52:20'),
(68, 0, 'Opakowania e-commerce', NULL, '12823_net_ikona-a204ef26d1d8a0cc6bc3e3debc0e201b.jpg', '', 'on', NULL, '2020-09-22 12:02:29', '2020-09-22 12:02:29'),
(69, 0, 'Opakowania e-commerce', NULL, '151022h03_01_net_ikona-b6217104143671b85b18d9cd0e7630d7.jpg', '', 'on', NULL, '2020-09-22 12:02:40', '2020-09-22 12:02:40'),
(70, 0, 'Projekty indywidualne', NULL, '3-a48214c27af431737397733242c558b8.jpg', '', 'on', NULL, '2020-09-22 12:13:49', '2020-09-22 12:13:49'),
(71, 0, 'Projekty indywidualne', NULL, '4-5642951cd650cd0115931d2a8620c93e.jpg', '', 'on', NULL, '2020-09-22 12:13:57', '2020-09-22 12:13:57'),
(72, 0, 'Projekty indywidualne', NULL, '161116c16_net_ikona-12976f2bdad227d8d89e9dca7317d62d.jpg', '', 'on', NULL, '2020-09-22 12:14:06', '2020-09-22 12:14:06'),
(73, 0, 'Projekty indywidualne', NULL, '181004i02_ver1_net_ikona-31c99c727d33b7a3ee6c4e21df30b013.jpg', '', 'on', NULL, '2020-09-22 12:14:14', '2020-09-22 12:14:14'),
(74, 0, 'Projekty indywidualne', NULL, 'ch1606969zwp---sery-500g_net_ikona-b4f4b1a2bd2464360edd05c702c9e89d.jpg', '', 'on', NULL, '2020-09-22 12:14:25', '2020-09-22 12:14:25'),
(75, 0, 'Projekty indywidualne', NULL, 'ch1613626zw_piwo_net_ikona-a15e570985626fbc9961076fb1fa6edf.jpg', '', 'on', NULL, '2020-09-22 12:14:34', '2020-09-22 12:14:34'),
(76, 0, 'Projekty indywidualne', NULL, 'po1902997_box-prezentowy-po-korekcie_net_ikona-531f84e890557ffb8552da481c6d70b5.jpg', '', 'on', NULL, '2020-09-22 12:14:45', '2020-09-22 12:14:45'),
(77, 0, 'Projekty indywidualne', NULL, 'po1912747v2_roli034_ilawa_mieszanka-sportowa_net_ikona-5eb02ff26d4935211fa59cbb51316837.jpg', '', 'on', NULL, '2020-09-22 12:14:52', '2020-09-22 12:14:52'),
(78, 0, 'Projekty innowacyjne', NULL, 'krzeselko_net_ikona-b1574fbe8a2a6ee79ed864d9e0f469e5.jpg', '', 'on', NULL, '2020-09-22 12:15:15', '2020-09-22 12:15:15'),
(79, 0, 'Projekty innowacyjne', NULL, 'po2002993_karton-nr--46015-00_net_ikona-15f757df26b27565bf20676546d5ea94.jpg', '', 'on', NULL, '2020-09-22 12:15:24', '2020-09-22 12:15:24'),
(80, 0, 'R&D', NULL, 'adobe-010ef90dc46bc2a4af2b854b7abc67e6.png', '', 'on', NULL, '2020-09-22 15:53:01', '2020-09-22 15:53:01'),
(81, 0, 'R&D', NULL, 'cape-702e619167a79ab7d93ef07f707d7499.jpg', '', 'on', NULL, '2020-09-22 15:53:12', '2020-09-22 15:53:12'),
(82, 0, 'R&D', NULL, 'artios-d60004c3c44794f93da802c1c23befb6.jpg', '', 'on', NULL, '2020-09-22 15:54:10', '2020-09-22 15:54:10'),
(83, 0, 'R&D', NULL, 'kodak-67c51a0a8ec58b2c29aed5a751e89b48.png', '', 'on', NULL, '2020-09-22 15:54:25', '2020-09-22 15:54:25'),
(84, 0, 'Drukarka do proofów cyfrowych', '', 'drukarkaproof-dba70fd0fa03f1c9629b02a413450982.jpg', '', 'on', '', '2020-09-22 15:54:50', '2020-10-18 16:47:49'),
(85, 0, 'Naświetlarka KODAK do bezprocesowych płyt offsetowych SONORA', '', 'naswietlarka-33199de87eb5c2163aaf56df55b2fffc.jpg', '', 'on', '', '2020-09-22 15:55:04', '2020-10-18 16:55:55'),
(86, 0, 'Ploter firmy Kongsberg do wycinania prototypów opakowań', '', 'ploter-9432966ec534d5f4a359026d838fc3ce.jpg', '', 'on', '', '2020-09-22 15:55:17', '2020-10-18 16:49:49'),
(87, 0, 'R&D', NULL, 'studio-2bbf69833fbc6d8c08eaee2b4b423e2a.png', '', 'on', NULL, '2020-09-22 15:55:30', '2020-09-22 15:55:30'),
(88, 0, 'Bobst - park maszyn', NULL, 'bobst-372d027081b0df1b01561b76a49c6fa8.jpg', '', 'on', NULL, '2020-09-22 19:06:17', '2020-09-22 19:06:17'),
(89, 0, 'Drukarka - park maszyn', NULL, 'drukarka-ff836e39d231bb53f8f87ed9156e4402.jpg', '', 'on', NULL, '2020-09-22 19:06:30', '2020-09-22 19:06:30'),
(90, 0, 'Kaszerka - park maszyn', NULL, 'kaszerka-e4f4b5cc61a216c72a873ce1035f8543.jpg', '', 'on', NULL, '2020-09-22 19:06:49', '2020-09-22 19:06:49'),
(91, 0, 'Przekrawacz - park maszyn', NULL, 'przekrawacz-ff3f59d3c8b22bfa45ae8efd4c858f3c.jpg', '', 'on', NULL, '2020-09-22 19:07:08', '2020-09-22 19:07:08'),
(92, 0, 'Sklejarka - park maszyn', NULL, 'sklejarka-3ac89d3c952f958f4e75be3cfccc536b.jpg', '', 'on', NULL, '2020-09-22 19:07:34', '2020-09-22 19:07:34'),
(93, 0, 'Tekturnica - park maszyn', NULL, 'tekturnica-7f67b5543abd16d4b43b8747b86a704b.jpg', '', 'on', NULL, '2020-09-22 19:07:53', '2020-09-22 19:07:53'),
(94, 0, 'Wiązarka - park maszyn', NULL, 'wiazarka-66cae27d16ab10fd709bd92c5bc760c7.jpg', '', 'on', NULL, '2020-09-22 19:08:20', '2020-09-22 19:08:20'),
(95, 0, 'Sila Liner - innowacje', NULL, 'silaliner_2-3b234450924a4c1b3b3bbc1eb3583e32.png', '', 'on', NULL, '2020-09-22 20:20:01', '2020-09-22 20:20:01'),
(96, 0, 'Opakowania kartonowe wielokrotnego użytku - innowacje', NULL, 'op-wielokrot1-2200cfe97eafc2934a80e0eb61b1cdcb.png', '', 'on', NULL, '2020-09-22 20:20:56', '2020-09-22 20:20:56'),
(97, 0, 'Opakowania kartonowe wielokrotnego użytku - UE', NULL, 'op-wielok-ue-9ebfb6e4466707c52ee1423cd4523025.png', '', 'on', NULL, '2020-09-22 20:21:28', '2020-09-22 20:21:28'),
(98, 0, 'Opakowania o podwyższonej wytrzymałości', NULL, 'wytrz-0e129f6e7936ce48cb0c0dc1ff63b761.png', '', 'on', NULL, '2020-09-22 20:21:45', '2020-09-22 20:21:45'),
(99, 0, 'Opakowania kartonowe wielokrotnego użytku - innowacje', NULL, '_warstwa-odlepna_180905d03_stand-jungle-7e3f61cffa6b0b7e9a1124c6ee0549b1.jpg', '', 'on', NULL, '2020-09-23 10:58:32', '2020-09-23 10:58:32'),
(100, 0, 'Diamenty Miesięcznika Forbesa 2020', NULL, 'forbes-2020-04c8f927356147213ac699fa2427c5aa.jpg', '', 'on', NULL, '2020-10-08 18:15:29', '2020-10-08 18:15:29'),
(101, 0, 'Naświetlarka KODAK do bezprocesowych płyt offsetowych SONORA', '', 'naswietlarka-13dc4d68e1f7489bd4d18e7c1bdcd504.jpg', '', 'on', '', '2020-10-18 16:39:59', '2020-10-18 16:42:51'),
(102, 0, 'Ploter firmy Kongsberg do wycinania prototypów opakowań', '', 'ploter-5ed40ae1d52703a02f6b907314d0aa60.jpg', '', 'on', '', '2020-10-18 16:39:59', '2020-10-18 16:43:10'),
(103, 0, 'Drukarka do proofów cyfrowych', '', 'proofiarka-cc1acb4b4fca930d3b4a76228786f763.jpg', '', 'on', '', '2020-10-18 16:39:59', '2020-10-18 16:41:49'),
(104, 0, 'Historia 2019', NULL, 'historia_2019-5d3173ac426f9321081811e8737149f7.jpg', '', 'on', NULL, '2020-10-18 17:06:12', '2020-10-18 17:06:12'),
(105, 0, 'Historia 2019', '', 'historia_2019-i-technologia_przekrawacz-778b20a3738add44244e045c4db416b4.jpg', '', 'on', '', '2020-10-18 17:06:12', '2020-10-18 17:17:41'),
(106, 0, 'Parka maszynowy paralaksa', NULL, 'technologia_park-maszynowy_skladarka-e4a33c4410d16b7b41d33be2a6b1a3ca.jpg', '', 'on', NULL, '2020-10-18 18:14:57', '2020-10-18 18:14:57'),
(107, 0, 'Parka maszynowy paralaksa', NULL, 'technologia_park-masz_linia-pakujaca-8983a84a78599cade94e57a94c9572fc.jpg', '', 'on', NULL, '2020-10-18 18:16:16', '2020-10-18 18:16:16'),
(108, 0, 'ROYALPACK', '', 'dol-strony-3840-4ff09e474c45ddd576153622914f89b4.jpg', '', 'on', '', '2020-10-20 11:18:01', '2020-10-20 11:19:57'),
(109, 0, 'Profil działalności', NULL, 'profil-dzialalnosci-paralaksa-7684838bc688df82bc356acd188dae21.jpg', '', 'on', NULL, '2020-10-20 11:24:06', '2020-10-20 11:24:06'),
(110, 0, 'Park maszynowy', '', 'park-maszynowy-paralaksa-4714ac1950762d35c4e2fd33e191febd.jpg', '', 'on', '', '2020-10-20 11:27:14', '2020-10-20 11:28:08'),
(111, 0, 'R&D', NULL, 'rd-paralaksa2-5cee1facfea9624dc22057e9e8dd97cb.jpg', '', 'on', NULL, '2020-10-20 11:30:09', '2020-10-20 11:30:09'),
(112, 0, 'Dział kontroli jakości', NULL, 'kontrola-jakosci-paralaksa2-a9bdffc095e612c5cd922a7189886948.jpg', '', 'on', NULL, '2020-10-20 11:32:39', '2020-10-20 11:32:39'),
(113, 0, 'Linia pakująca', '', 'linia-pakujaca-7d3e9c263a6618eb2b23c5d3dde7e614.jpg', '', 'on', '', '2020-10-20 11:38:56', '2020-10-20 11:50:03'),
(114, 0, 'Składarka', '', 'skladarka-e59e3549173a95feb56aa7d7995909ab.jpg', '', 'on', '', '2020-10-20 11:39:05', '2020-10-20 11:45:40'),
(115, 0, 'Paralaksa kariera', '', 'paralaksa-kariera-050203fe44363c0f9ef826436a913fa3.jpg', '', 'on', '', '2020-10-25 16:16:21', '2020-10-25 16:20:16'),
(116, 0, 'Paralaksa kontakt', '', 'paralaksa-kontakt-5002ae97f1a6b970ab378457e7660b46.jpg', '', 'on', '', '2020-10-25 16:16:21', '2020-10-25 16:18:42'),
(117, 1, 'Logo SVG', NULL, 'logo-d34b09304cf93e9d9eb195c30b1bcb26.svg', '', 'on', NULL, '2020-10-25 16:26:41', '2020-10-25 16:26:41'),
(118, 0, 'Paralaksa oferta białe', '', 'oferta-paralaksa-b25188504bcdce0e7ca7fa8af1096bfd.jpg', '', 'on', '', '2020-11-05 16:51:26', '2020-11-08 11:02:18'),
(119, 0, 'Paralaksa oferta szare', '', 'oferta-paralaksa-szary-67e160e2f721c7014946219ddfb3e300.jpg', '', 'on', '', '2020-11-08 11:02:39', '2020-11-08 11:06:35'),
(120, 0, 'CWB 2013', '', 'cwb-2013-58e9a82b4460dd155920a70027cf6014.jpg', '', 'on', '', '2020-11-21 12:29:06', '2020-11-21 12:30:19'),
(121, 0, 'Dynamiczna firma 2013', '', 'dynamiczna-firma-2013-87e356a22b9f151d42c1cefbad715d6a.jpg', '', 'on', '', '2020-11-21 12:29:06', '2020-11-21 12:30:37'),
(122, 0, 'Tektura falista oraz lita w rolkach i arkuszach', NULL, 'tektura-falista-b43fb3dec062973f6b3b5def0842ac0f.jpg', '', 'on', NULL, '2020-12-20 17:54:56', '2020-12-20 17:54:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(21, 'Zdjęcie', 'image', NULL, NULL, '2020-07-28 15:22:18', '2020-07-28 15:22:18'),
(22, 'Menu w stopce', 'footer-menu', NULL, NULL, '2020-09-09 13:34:22', '2020-09-09 13:34:22'),
(23, 'Szczegóły sekcji', 'section-content', NULL, NULL, '2020-09-16 13:28:06', '2020-09-16 13:28:06');

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
  `class_row` varchar(256) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `class_row_second` varchar(256) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`label_section_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_label_section`
--

INSERT INTO `im_label_section` (`label_section_id`, `label_id`, `section`, `class`, `class_row`, `class_row_second`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 0, 'col-8 col-md-6 col-lg-5 col-xl-4 offset-2 offset-md-3 offset-lg-0', '', '', '', '2020-06-10 11:32:13', '2020-06-24 14:44:19'),
(2, 2, 0, 'col-12 col-lg-7 col-xl-8', '', '', '', '2020-06-10 11:32:28', '2020-06-24 14:35:14');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_language`
--

INSERT INTO `im_language` (`language_id`, `name`, `system_name`, `url`, `position`, `status_default`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'PL', 'pl', 'pl.png', 1, 'on', 'on', '', '2020-06-09 16:25:22', '2020-12-08 11:53:44'),
(2, 'EN', 'en', 'en.png', 2, 'off', 'on', '', '2020-06-09 16:25:22', '2020-12-08 11:53:44'),
(3, 'DE', 'de', '', 3, 'off', 'on', NULL, '2020-06-16 09:24:46', '2020-12-08 11:53:44'),
(4, 'FR', 'fr', '', 4, 'off', 'on', NULL, '2020-12-08 11:53:16', '2020-12-08 11:53:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_movie`
--

INSERT INTO `im_movie` (`movie_id`, `name`, `content`, `url`, `status`, `status_loop`, `status_controls`, `status_autoplay`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Film - wstęp', NULL, 'video-560-b538090525025c83927cf7ebb830c737.mp4', 'off', 'on', 'off', 'on', NULL, '2020-06-11 13:12:15', '2020-09-09 12:21:27'),
(2, 'Film powitalny', NULL, 'film-b84bcd5298ff952e0b4681679102c96b.mp4', 'off', 'on', 'off', 'on', NULL, '2020-08-25 09:31:31', '2020-09-09 12:21:25'),
(3, 'Film powitalny 2', '', 'royalpackshort_5mini1-5d7ae202d03b8ce4096f3ecf9c776f34.mp4', 'on', 'on', 'off', 'on', '', '2020-09-09 12:19:45', '2020-09-09 12:21:32');

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
  `class` varchar(256) COLLATE utf8_polish_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '0',
  `status` varchar(3) COLLATE utf8_polish_ci DEFAULT 'on',
  `status_copy` varchar(3) COLLATE utf8_polish_ci DEFAULT 'off',
  `status_free` varchar(3) COLLATE utf8_polish_ci NOT NULL DEFAULT 'off',
  `description` text COLLATE utf8_polish_ci,
  `date` varchar(32) COLLATE utf8_polish_ci DEFAULT '',
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`object_id`),
  KEY `type_id` (`type_id`),
  KEY `label_id` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object`
--

INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `section_name`, `system_name`, `name`, `content`, `link`, `link_name`, `email`, `form`, `attachment`, `icon`, `map`, `class`, `position`, `status`, `status_copy`, `status_free`, `description`, `date`, `date_create`, `date_modify`) VALUES
(1, 1, 1, 0, '', 'Logo', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'on', 'off', '', '2020-06-10', '2020-06-10 11:06:20', '2020-10-25 16:27:11'),
(2, 2, 2, 0, '', 'Menu główne', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'on', 'off', 'W nagłówku', '2020-06-10', '2020-06-10 11:10:54', '2020-06-30 08:49:34'),
(3, 3, 3, 0, '', 'Film na stronę główną', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-06-11', '2020-06-11 13:10:27', '2020-09-09 12:21:47'),
(4, 4, 4, 0, '', 'Tekst na filmie', '', '<p><span style=\"font-size: 36pt;\">Producent tektury falistej i opakowań</span></p>', '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-06-16', '2020-06-16 10:52:10', '2020-10-06 14:07:13'),
(5, 5, 5, 0, '', 'Firma - biało czarne', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'on', 'off', 'Przed stopką', '2020-06-16', '2020-06-16 11:44:48', '2020-10-20 11:18:34'),
(6, 6, 7, 1, 'Czytaj więcej...', 'Zaufanie', 'ZAUFANIE', '<p>ROYALPACK to firma rodzinna, kt&oacute;ra stawia na solidne fundamenty struktury swojego biznesu. W naszej rodzinie zaufanie to podstawa. Na takiej samej podstawie budujemy długotrwałe relacje z naszymi odbiorcami z całego świata. Dzięki pełnemu zaangażowaniu w tworzenie wartości oraz elastycznej i kompleksowej obsłudze jaką oferujemy...</p>\r\n<p class=\"im-hide show-rest-text-1\">Skutecznie zadbamy o <strong>płynny rozw&oacute;j Państwa biznesu</strong>.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-1\"></i></div>', '', '', '', '', '', 'fal fa-hands', '', '', 1, 'on', 'off', 'off', '', '2020-06-16', '2020-06-16 11:57:53', '2020-11-17 17:37:22'),
(7, 6, 7, 1, 'Czytaj więcej...', 'Ekologia', 'EKOLOGIA', '<p>Troska o ekologię wynika z naszego elementarnego poczucia obowiązku wobec planety, na kt&oacute;rej żyjemy. Opakowania z tektury falistej, kt&oacute;re dla Państwa tworzymy, z powodzeniem wpisują się w założenia międzynarodowej strategii minimalizacji użycia opakowań z tworzyw sztucznych i zwiększenia stopnia recyclingu materiał&oacute;w opakowaniowych...</p>\r\n<p class=\"im-hide show-rest-text-2\">Wszystkie nasze produkty posiadają certyfikat FSC. Integralną część naszej ekologicznej filozofii stanowi zainstalowany nowoczesny park maszynowy i wdrożone w jego obrębie proekologiczne systemy, wykorzystywane w procesie produkcyjnym.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-2\"></i></div>', '', '', '', '', '', 'fal fa-leaf', '', '', 1, 'on', 'off', 'off', '', '2020-06-16', '2020-06-16 12:03:38', '2020-07-24 09:40:33'),
(8, 6, 7, 1, 'Czytaj więcej...', 'Jakość', 'JAKOŚĆ', '<p>Najwyższa jakość, dbałość o szczeg&oacute;ły oraz nowatorskie rozwiązania w dziedzinie tworzenia opakowań to domeny naszych produkt&oacute;w. Badania zachowań konsumenckich jednoznacznie wskazują na istotny wpływ doznań wizualnych potencjalnego klienta w procesie podejmowania decyzji o zakupie produkt&oacute;w przy p&oacute;łce sklepowej...</p>\r\n<p class=\"im-hide show-rest-text-3\">Finalnie produkty umieszczone w przemyślanych i ciekawych opakowaniach cieszą się większym zainteresowaniem od pozostałych. Nasz zesp&oacute;ł oraz nowoczesny park maszynowy umożliwią Państwu wygenerowanie wielu ciekawych rozwiązań.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-3\"></i></div>', '', '', '', '', '', 'fal fa-medal', '', '', 1, 'on', 'off', 'off', '', '2020-06-16', '2020-06-16 12:05:25', '2020-07-24 09:39:34'),
(9, 7, 8, 0, '', 'Stopka', '', '<div class=\"text-center\">Wszelkie prawa zastrzeżone &amp; 2020<br />Projekt i realizacja: <a href=\"https://internet.media.pl\" title=\"Strony internetowe, e-sklepy, serwisy WWW, projekty i wykonanie, portale web\" target=\"_blank\" rel=\"noopener\" class=\"text-warning\">www.internet.media.pl</a></div>', '', '', '', '', '', '', '', '', 1, 'on', 'on', 'off', '', '2020-06-16', '2020-06-16 12:47:29', '2020-08-21 11:04:06'),
(10, 7, 9, 0, '', 'Ciasteczka', '', '<div id=\"cookie\"><i class=\"fad fa-cookie float-left\"></i> Przeglądając serwis WWW, akceptujesz pliki cookies <button class=\"btn btn-dark\">OK</button></div>', '', '', '', '', '', '', '', '', 2, 'on', 'on', 'off', '', '2020-06-16', '2020-06-16 13:02:02', '2020-08-21 11:08:35'),
(12, 8, 10, 0, '', 'Submenu', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'on', 'off', '', '2020-06-23', '2020-06-23 07:49:33', '2020-06-23 08:30:51'),
(13, 9, 12, 0, '', 'Nawigacja okruszkowa', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'on', 'off', '', '2020-06-23', '2020-06-23 10:20:22', '2020-07-28 11:46:26'),
(14, 5, 13, 0, '', 'Logo - biało czarne', '', NULL, '', '', '', '', '', '', '', '', 2, 'on', 'on', 'off', 'W stopce', '2020-06-23', '2020-06-23 11:44:23', '2020-07-21 17:16:03'),
(15, 10, 6, 0, '', 'Profil działalności', 'Profil działalności', '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Misja</span></strong></p>\r\n<p>Naszą misją jest bycie najlepszym w tym co robimy. W trosce o budowanie trwałych relacji z naszymi klientami oferujemy bardzo elastyczną i kompleksową obsługę. Strategia ta umożliwia nam swobodne dopasowanie się do potrzeb nawet największych odbiorc&oacute;w, a to z kolei przekłada się na ich satysfakcję. Jest ona efektem odpowiedzialnej oraz zr&oacute;wnoważonej działalności firmy.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potencjał</span></strong></p>\r\n<p>Stale rosnący potencjał firmy to przede wszystkim zasługa naszych pracownik&oacute;w. Od początku działalności stawialiśmy na prężny rozw&oacute;j naszej pozycji na rynku. Dzięki wykwalifikowanej kadrze oraz nieustannie rosnącym możliwościom firmy poprzez nabycie nowoczesnego parku maszynowego udaje się nam realizować ten cel. Inwestując w rozw&oacute;j przedsiębiorstwa firma w 2019 r. rozbudowała zakład produkcyjny oraz nabyła nowoczesny park maszynowy, zwiększając swoje możliwości wytw&oacute;rcze do 50 mln m2. Poprzez rzetelność i profesjonalizm budujemy wizerunek naszej marki dzień po dniu.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-06-30', '2020-06-30 09:28:31', '2020-07-07 22:44:45'),
(16, 11, 14, 0, '', 'Profil działalności', '<i class=\"fal fa-grip-lines\"></i> Profil działalności <i class=\"fal fa-grip-lines\"></i>', '<p><strong><span style=\"font-size: 14pt;\">Kim jesteśmy?</span></strong></p>\r\n<p>Jesteśmy producentem tektury falistej oraz opakowań, zadrukowanych techniką druku offsetowego i fleksograficznego. Produkujemy opakowania jednostkowe, zbiorcze, displaye, jak r&oacute;wnież projekty z grupy POS dla produkt&oacute;w z r&oacute;żnych sektor&oacute;w gospodarki rynkowej. Sp&oacute;łka jest obecna na rynku od 2009 roku, jednak jej historia to długi proces oparty na ponad 20 letnim doświadczeniu w branży opakowań. Dlatego też w pełni zdajemy sobie sprawę jak ważna jest dbałość o klienta. Rozumiemy i dopasowujemy się do Państwa potrzeb.</p>', '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-06-30', '2020-06-30 10:21:56', '2020-11-17 17:38:34'),
(18, 12, 15, 0, '', 'Slider', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-08', '2020-07-08 13:47:03', '2020-07-08 13:50:25'),
(20, 11, 14, 0, '', 'Historia firmy', '<i class=\"fal fa-grip-lines\"></i> Historia firmy <i class=\"fal fa-grip-lines\"></i>', '<p>Ze skromnych początk&oacute;w powstało nowoczesne rodzinne przedsiębiorstwo. Szybki rozw&oacute;j od 2011 r. miał swoje korzenie już w 1996 r., kiedy to założyciel Royalpack, Andrzej Tatar, został jedynym przedstawicielem Stone Europa Carton GmbH na polskim rynku. Trzy lata p&oacute;źniej, w 1999 r., otwiera w Polsce oddział Europa Carton Sp. z o. o. i zostaje jego prezesem. W 2000 r. do zespołu obsługi logistycznej oddziału Europa Carton w Zielonej G&oacute;rze dołączyła przyszła wsp&oacute;łwłaścicielka Royalpack Anna Tatar. Do 2010 r. oddział Europa Carton Sp. z o. o. znajdował się w strukturach koncernu Smurfit Kappa.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2011</span></strong></p>\r\n<p>Założenie firmy ROYALPACK, Tatar Sp&oacute;łka jawna. Działalność przedsiębiorstwa skupia się na produkcji opakowań zbiorczych z tektury falistej zadrukowanych metodą druku offsetowego. W 2011 r. firma dysponowała parkiem maszynowym w postaci:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- maszyny drukującej offsetowej KBA 162 (format 1120 x 1620 mm),</li>\r\n<li class=\"list-group-item\">- maszyny kaszerującej,</li>\r\n<li class=\"list-group-item\">- maszyny sztancującej automatycznej BOBST 1575,</li>\r\n<li class=\"list-group-item\">- tygla sztancującego Viking i Crosland (format do 1700 mm),</li>\r\n<li class=\"list-group-item\">- składarko-sklejarki 3-punktowej.</li>\r\n</ul>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg\" title=\"Nowa siedziba firmy\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2013</span></strong></p>\r\n<p>Rok przełomowy w działalności przedsiębiorstwa - 31 lipca uzyskało Dotację Unijną w ramach Programu Operacyjnego Innowacyjna Gospodarka, Oś Priorytetowa 4 - Inwestycje w innowacyjne przedsięwzięcia. Pilotaż: &bdquo;Wsparcie na pierwsze wdrożenie wynalazku&rdquo;. Dzięki niej w listopadzie rozpoczęła się budowa nowoczesnego zakładu w Słonem.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2015</span></strong></p>\r\n<p>Zakończenie inwestycji i zmiana siedziby firmy.</p>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg\" title=\"Rozbudowa hali produkcyjnej\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2016</span></strong></p>\r\n<p>Rozbudowanie hali produkcyjnej o dodatkową powierzchnię magazynową &ndash; 2 680 m&sup2;.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2018</span></strong></p>\r\n<p>Kolejny przełom w działalności firmy &ndash; 15 stycznia 2018 r. uzyskała Dotację Unijną w ramach Programu Operacyjnego Inteligentny Rozw&oacute;j, 2014-2020. Projekt: &bdquo;Gama nowatorskich opakowań tekturowych wielokrotnego zastosowania, o innowacyjnych cechach i przełomowych parametrach użytkowych&rdquo;. Dzięki niej firma została wyposażona w nowoczesną linię produkcyjną do produkcji opakowań o bardzo wysokiej jakości nadruku offsetowego. Natomiast z własnych środk&oacute;w nabyła maszynę drukującą do druku fleksograficznego oraz rozbudowała zakład o ok. 6 000 m&sup2;.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2020</span></strong></p>\r\n<p>Zakończenie inwestycji, w ramach kt&oacute;rej Royalpack zainstalował:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- Unikatową w skali światowej linię do produkcji tektury falistej i jednoczesnego jej laminowania. Dostawcami linii są firmy BHS, PIVAB i STOCK.</li>\r\n<li class=\"list-group-item\">- 6-kolorową maszynę VLF K&B Rapida 164A do druku offsetowego.</li>\r\n<li class=\"list-group-item\">- 5-kolorową maszynę BOBST do druku fleksograficznego.</li>\r\n<li class=\"list-group-item\">- Automatyczną sztancę płaską BOBST 1600 z Systemem Power Register.</li>\r\n<li class=\"list-group-item\">- Przekrawacze do tektury falistej STOCK oraz papieru BW Papersystems.</li>\r\n</ul>\r\n<p>Ponadto zwiększono powierzchnię zakładu o dodatkowe 6&nbsp;000 m&sup2;.</p>\r\n<p class=\"img-right float-left\"><img src=\"../system/default/public/historia_2019-5d3173ac426f9321081811e8737149f7.jpg\" title=\"\" style=\"max-width: 220px;\" class=\"content-img\" /></p>\r\n<p class=\"img-right float-left\"><img src=\"../system/default/public/historia_2019-i-technologia_przekrawacz-778b20a3738add44244e045c4db416b4.jpg\" title=\"\" style=\"max-width: 220px;\" class=\"content-img\" /></p>\r\n<div class=\"clearfix\"></div>', '', '', '', '', '', '', '', '', 2, 'on', 'off', 'off', 'Bez paralaksy do sekcji przypisujemy tylko obiekt \"treść - wstęp\"', '2020-07-08', '2020-07-08 14:15:31', '2020-11-17 17:39:37'),
(21, 13, 16, 0, '', 'Mapa w stopce', '', NULL, '', '', '', '', '', '', '51.921311,15.411415', '', 1, 'on', 'off', 'off', '', '2020-07-13', '2020-07-13 20:04:02', '2020-07-24 09:57:04'),
(22, 14, 14, 0, '', 'Sekcja kontakt', '<i class=\"fal fa-grip-lines\"></i> Kontakt <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-13', '2020-07-13 20:57:51', '2020-07-13 20:59:01'),
(23, 15, 6, 0, '', 'Sekcja kontakt', '', '<p><span style=\"font-size: 14pt;\">ROYALPACK, Tatar Sp. j.&nbsp;</span></p>\r\n<p><i class=\"fal fa-map-marked-alt text-warning\"></i> Aleja Brzozowa 2A, Słone</p>\r\n<p>66-008 Świdnica</p>\r\n<p><i class=\"fal fa-mobile text-warning\"></i> (+48) 534 747 400</p>\r\n<p><i class=\"fal fa-mailbox text-warning\"></i> biuro@royalpack.com.pl</p>', '', '', '', 'damian.krawiec@gmail.com', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-13', '2020-07-13 21:03:15', '2020-08-19 19:05:38'),
(25, 16, 18, 0, '', 'Języki', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', 'Element zawierający panel przełączania języków', '2020-07-14', '2020-07-14 17:05:17', '2020-09-01 20:36:26'),
(27, 15, 6, 0, '', 'Sekcja kariera', '', '<p><span style=\"font-size: 14pt;\">ROYALPACK, Tatar Sp. j.&nbsp;</span></p>\r\n<p><i class=\"fal fa-map-marked-alt text-warning\"></i> Aleja Brzozowa 2A, Słone</p>\r\n<p>66-008 Świdnica</p>\r\n<p><i class=\"fal fa-mobile text-warning\"></i> (+48) 534 747 400</p>\r\n<p><i class=\"fal fa-mailbox text-warning\"></i> biuro@royalpack.com.pl</p>', '', '', '', 'm@internet.media.pl', 'Dodaj swoje CV (doc, docx, pdf): ', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 17:27:09', '2020-08-19 19:05:12'),
(28, 11, 14, 0, '', 'Kariera', '<i class=\"fal fa-grip-lines\"></i> Kariera <i class=\"fal fa-grip-lines\"></i>', '<p>Jeśli chcesz pracować w dynamicznie rozwijającej się firmie o wysokim potencjale i stale rosnących możliwościach zapraszamy do składania aplikacji poprzez wypełnienie formularza.</p>', '', '', '', '', '', '', '', '', 3, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 17:29:08', '2020-07-14 17:30:27'),
(29, 17, 19, 0, '', 'Obowiązek informacyjny - kontakt', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 17:37:17', '2020-07-24 08:11:13'),
(30, 11, 14, 0, '', 'Polityka rozwoju', '<i class=\"fal fa-grip-lines\"></i> Polityka zrównoważonego rozwoju <i class=\"fal fa-grip-lines\"></i>', '<p>Polityka zr&oacute;wnoważonego rozwoju gospodarczego to przede wszystkim prowadzenie działalności gospodarczej z troską o postęp społeczny oraz z poszanowaniem środowiska naturalnego.</p>\r\n<p>Royalpack to firma, kt&oacute;ra prowadzi swoją działalność w spos&oacute;b odpowiedzialny i zr&oacute;wnoważony. Zadowolenie klient&oacute;w, rozw&oacute;j osobisty pracownik&oacute;w oraz szacunek dla środowiska naturalnego i lokalnych społeczności są gł&oacute;wnymi wartościami, kt&oacute;re pielęgnujemy.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Społeczność</span></strong></p>\r\n<p>Royalpack dąży do tego aby w swojej branży być najbardziej rozpoznawalnym producentem opakowań kartonowych. Aby to osiągnąć będziemy działać na rzecz otoczenia i społeczności w kt&oacute;rych mamy zaszczyt pracować.</p>\r\n<p>Naszą największą inwestycją są nasi pracownicy. Staramy się dbać o rozw&oacute;j ich kompetencji, poczucia tożsamości z firmą, a także satysfakcjonujące możliwości kariery. Podstawą rozwoju osobistego naszych pracownik&oacute;w jest wspieranie ich działań, organizacja szkoleń, ich ambicje oraz pozytywna motywacja.</p>\r\n<p>Sprzeciwiamy się dyskryminacji ze względu na płeć, rasę, wiek, wyznanie, przekonania polityczne i inne cechy, mogące w jakikolwiek spos&oacute;b wywołać działania dyskryminacyjne.</p>\r\n<p>Wychodzimy r&oacute;wnież naprzeciw osobom niepełnosprawnym oraz wychowującym dzieci, poprzez dostosowanie odpowiedniej infrastruktury. Dzięki temu osoby niepełnosprawne nie czują się dyskryminowane i mogą w pełni funkcjonować w naszym zakładzie.</p>', '', '', '', '', '', '', '', '', 2, 'on', 'off', 'off', 'Bez paralaksy do sekcji przypisujemy tylko obiekt \"treść - wstęp\"', '2020-07-14', '2020-07-14 18:02:47', '2020-07-24 09:50:36'),
(31, 18, 6, 0, '', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2019', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2019', '<p>ROYALPACK, Tatar Sp. j. w Słonem została wyr&oacute;żniona przez Instytut Europejskiego Biznesu w XIV edycji Konkursu Gepardy Biznesu 2019, XII edycji Konkursu Brylanty Polskiej Gospodarki 2019, XII edycji Konkursu Efektywna Firma 2019 i VII edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2019.</p>', 'http://europejskafirma.pl/24591', 'Czytaj więcej...', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 19:32:12', '2020-09-16 09:02:47'),
(32, 18, 6, 0, '', 'ROYALPACK Laureatem Orły Wprost 2016', 'ROYALPACK Laureatem Orły Wprost 2016', '', 'http://europejskafirma.pl/24591', 'Czytaj więcej...', '', '', '', '', '', '', 4, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 19:34:53', '2020-09-16 09:08:33'),
(33, 14, 14, 0, '', 'Sekcja media o nas', '<i class=\"fal fa-grip-lines\"></i> Media o nas <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 19:38:14', '2020-07-14 19:38:47'),
(34, 18, 6, 0, '', 'Royalpack otrzymał wyróżnienie Rzetelni dla Biznesu 2016', 'ROYALPACK otrzymał wyróżnienie Rzetelni dla Biznesu 2016', '<p>Została ona przyznana \"Za komercjalizację nowatorskich pomysł&oacute;w wprowadzonych na rynek branży opakowań tekturowych\"</p>', 'https://royalpack.com.pl/images/news/wielka-gala.pdf', 'Czytaj więcej...', '', '', '', '', '', '', 5, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 19:40:55', '2020-09-16 09:02:47'),
(35, 18, 6, 0, '', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2018', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2018', '<p>ROYALPACK, Tatar S. J. w Świdnicy została wyr&oacute;żniona przez Instytut Europejskiego Biznesu w XIII edycji Konkursu Gepardy Biznesu 2018, XI edycji Konkursu Brylanty Polskiej Gospodarki 2018, XI edycji Konkursu Efektywna Firma 2018 oraz VI edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2018</p>', 'http://europejskafirma.pl/20414,royalpack-tatar-s-j-to-brylant-polskiej-gospodarki-i-gepard-biznesu-2018', 'Czytaj więcej...', '', '', '', '', '', '', 2, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 19:42:38', '2020-09-16 09:02:47'),
(36, 18, 6, 0, '', 'ROYALPACK w gronie najdynamiczniej rozwijających się firm - rok 2018', 'ROYALPACK w gronie najdynamiczniej rozwijających się firm - rok 2018', '<p>W 2018 roku ROYALPACK został członkiem elitarnego klubu Gazel Biznesu. Jednocześnie stał się jednym z najbardziej dynamicznie rozwijających się przedsiębiorstw wśr&oacute;d małych i średnich firm.</p>', 'http://europejskafirma.pl/20414,royalpack-tatar-s-j-to-brylant-polskiej-gospodarki-i-gepard-biznesu-2018', 'Czytaj więcej...', '', '', '', '', '', '', 3, 'on', 'off', 'off', '', '2020-07-14', '2020-07-14 19:46:22', '2020-09-16 09:02:47'),
(37, 11, 14, 0, '', 'Dział kontroli jakości', '<i class=\"fal fa-grip-lines\"></i> Dział kontroli jakości <i class=\"fal fa-grip-lines\"></i>', '<p>Wiemy, że jakość jest najważniejsza, dlatego nasze opakowania tworzone są z surowc&oacute;w najwyższego gatunku. Monitorujemy na bieżąco warunki panujące na hali produkcyjnej i części magazynowej. Wprowadzony system ISO 9001:2015 zapewnia nam koordynację wszystkich działań i poszczeg&oacute;lnych proces&oacute;w.</p>\r\n<p><strong>Każdego dnia nasz dział kontroli jakości z aptekarską precyzją wykonuje badania wytrzymałościowe naszych opakowań:</strong></p>', '', '', '', '', '', '', '', '', 5, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 17:10:19', '2020-09-22 12:58:52'),
(38, 19, 6, 0, '', 'Gramatura', '<i class=\"fal fa-weight\"></i><br>GRAMATURA', '<p>To główny parametr, gdzie wartością jest masa 1 m2 arkusza tektury falistej wyrażona w gramach (g/m2). Gramatura jest ważnym elementem podczas wyboru odpowiedniego rodzaju tektury, ponieważ im wyższa gramatura, tym grubsza i bardziej sztywna tektura.</p>', '', '', '', '', '', 'fal fa-weight', '', '', 1, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 17:18:29', '2020-11-17 17:40:51'),
(39, 19, 6, 0, '', 'Ect', '<i class=\"fal fa-border-style-alt\"></i><br>ECT', '<p>Wskaźnik odporności tektury falistej na zgniatanie krawędziowe - siły odniesionej do długości krawędzi pr&oacute;bki tektury, działającej r&oacute;wnolegle do kierunku fal i powodującej załamanie pr&oacute;bki. Siła ta ma kluczowe znaczenie podczas składowania pudeł w stosie. Rodzaj fali zasadniczo nie wpływa na ECT. Kluczowy wpływ na wartość ECT ma klasa papieru wykorzystana do produkcji.</p>', '', '', '', '', '', 'fal fa-border-style-alt', '', '', 1, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 17:21:34', '2020-07-22 21:33:33'),
(40, 19, 6, 0, '', 'Bct', '<i class=\"fal fa-weight-hanging\"></i><br>BCT', '<p>Wskaźnik odporności opakowania na ściskanie. Wyraża się poprzez wartość siły działającej bezpośrednio na opakowanie przy jego zgniataniu, jaka powoduje jego odkształcenie lub zniszczenie. Parametr ten jest uzależniony od wszystkich indywidualnych cech danego opakowania &ndash; jego wymiar&oacute;w, konstrukcji oraz rodzaju i wytrzymałości zastosowanej tektury. Wartość BCT zależy w bezpośredni spos&oacute;b od ECT.</p>', '', '', '', '', '', 'fal fa-weight-hanging', '', '', 1, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 17:25:43', '2020-07-22 21:37:20'),
(41, 19, 6, 0, '', 'Wilgotność', '<i class=\"fal fa-dewpoint\"></i><br>WILGOTNOŚĆ', '<p>Wskaźnik ukazujący stosunek masy wody zawartej w tekturze do masy całego wyrobu. Zależy ona nie tylko od wilgotności powietrza, ale r&oacute;wnież temperatury otoczenia i składu tektury.&nbsp;Aby zachować odpowiednie właściwości tektury, należy stworzyć optymalne warunki do jej przechowywania. Pomieszczenia muszą być suche i przewiewne, a ich temperatura nie może spaść poniżej 4 &deg;C &ndash; zaleca się utrzymywanie stałej temperatury na poziomie 18-22 &deg;C. Wilgotność powinna utrzymywać się na poziomie 60%, a jej minimalna wartość w pomieszczeniach ogrzewanych to 45%. Zbyt duża wilgotność tektury powoduje zmiany jej właściwości fizycznych: spadek sztywności, odkształcenia liniowe, większą ściśliwość, grubość oraz szorstkość. Z kolei zbyt niska wilgotność powoduje pękanie fal i w konsekwencji całych arkuszy tektury.</p>', '', '', '', '', '', 'fal fa-dewpoint', '', '', 1, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 17:29:49', '2020-07-22 21:38:12'),
(42, 19, 6, 0, '', 'Delta E', '<i class=\"fal fa-palette\"></i><br>DELTA E', '<p>Wskaźnik mierzony za pomocą spektrodensytometr Xrite, pokazujący stopień odchylenia koloru wydrukowanego od zadanego wzoru. Spektrodensytometr X-Rite eXact to nowoczesne urządzenie, kt&oacute;re uwzględnia nowe potrzeby klient&oacute;w związane z podnoszeniem jakości dostarczanych opakowań. X-Rite eXact umożliwia nam kontrolę i zarządzanie barwą zapewniając najwyższą dokładność pomiaru koloru. Jeśli więc przy wydruku planujemy otrzymać określony kolor, to im bliżej tego koloru jesteśmy na finalnym wydruku, tym dla wskaźnika delta E wartość będzie bliższa 0. Jeśli spektrofotometr podczas pomiaru pokaże r&oacute;wne 0 oznacza to, że uzyskaliśmy kolor idealnie zgodny ze wzorem. Przyjmuje się, że wydruk w tolerancji do delta &lt; 2,0 nie jest rozr&oacute;żniany dla ludzkiego oka większości os&oacute;b.</p>', '', '', '', '', '', 'fal fa-palette', '', '', 1, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 17:32:27', '2020-07-22 21:38:23'),
(43, 19, 6, 0, '', 'Stopień nasycenia bieli podłoża do druku', '<i class=\"fal fa-eye-dropper\"></i><br>STOPIEŃ NASYCENIA BIELI PODŁOŻA DO DRUKU', '<p>Badanie stopnia bieli podłoża jest czynnością kluczową w celu uzyskania wysokiej jakości wydruku. Już na etapie przygotowania projektu, musimy mieć absolutną pewność, że dany papier do druku spełnia jego założenia. Biel podłoża jest istotna szczeg&oacute;lnie przy jasnych (transparentnych) kolorach zastosowanych w projekcie graficznym, ponieważ ma bezpośredni wpływ na wydruk końcowy. Pomiar&oacute;w dokonujemy spektrofotometrem X-Rite eXact. Dzięki niemu weryfikujemy jakość użytego przez nas podłoża oraz opracowujemy odpowiednie receptury farb dla konkretnego projektu.</p>', '', '', '', '', '', 'fal fa-eye-dropper', '', '', 1, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 17:34:38', '2020-07-22 21:38:03'),
(45, 14, 14, 0, '', 'Ogólne warunki handlowe', '<i class=\"fal fa-grip-lines\"></i> Ogólne warunki handlowe <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 3, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 18:22:59', '2020-07-21 18:23:09'),
(46, 17, 19, 0, '', 'Ogólne warunki handlowe', '', NULL, '', '', '', '', '', '', '', '', 2, 'on', 'off', 'off', '', '2020-07-21', '2020-07-21 18:24:02', '2020-07-21 18:29:55'),
(47, 17, 19, 0, '', 'Obowiązek informacyjny - kontakt', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 08:11:24', '2020-07-24 08:11:47'),
(48, 10, 6, 0, '', 'Historia firmy', 'Profil działalności', '<p><strong><span style=\"font-size: 14pt;\">Aktualnie...</span></strong></p>\r\n<p>Aktualnie ROYALPACK zatrudnia ponad 100 os&oacute;b, lecz ich liczba stale wzrasta. Przyczynia się do tego nowy park maszynowy nabyty w 2018 r., nowa inwestycja, a tym samym rosnące zainteresowanie firm z r&oacute;żnych branż oraz rynk&oacute;w. Royalpack prowadzi swoją działalność na rynku polskim, niemieckim, austriackim, brytyjskim, skandynawskim oraz w krajach Beneluksu z perspektywami na dalsze zdobywanie kolejnych rynk&oacute;w europejskich&hellip;</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 09:46:51', '2020-07-24 09:51:02'),
(49, 10, 6, 0, '', 'Polityka rozwoju', 'Profil działalności', '<p><strong><span style=\"font-size: 14pt;\">Środowisko</span></strong></p>\r\n<p>Budowa nowego zakładu produkcyjnego nie może oddziaływać negatywnie na środowisko naturalne. Będąc w pełni tego świadomym staramy się wdrażać technologie sprzyjające środowisku.</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Odnawialne źr&oacute;dła energii</strong>\r\n<div>Na terenie zakładu zamontowane są solary. Dzięki takiemu działaniu zmniejszamy zużycie energii. Energię słoneczną firma wykorzystuje do ogrzewania bieżącej wody w budynku biurowym, jak r&oacute;wnież na hali produkcyjnej.</div>\r\n</li>\r\n<li><strong>Zmniejszenie materiałochłonności produkcji</strong>\r\n<div>Nowoczesny park maszynowy umożliwia nam zmniejszenie ilości produkowanych odpad&oacute;w, powstających podczas procesu produkcyjnego. Wiąże się to bezpośrednio z nabyciem mniejszej ilości niezbędnych surowc&oacute;w.</div>\r\n</li>\r\n<li><strong>Zastosowanie płyt Sonora firmy KODAK</strong>\r\n<div>Dzięki nabyciu i wdrożeniu nowoczesnej technologii w procesie druku, jakim jest użycie płyt bezprocesowych Sonora, firma wprowadziła znaczące oszczędności związane z eliminacją środk&oacute;w chemicznych. Zmniejszyła ilość zużywanej wody i energii podczas procesu obr&oacute;bki płyt. Skr&oacute;ciła czas przygotowania projektu do druku oraz wyeliminowała odpady chemiczne, kłopotliwe w utylizacji (<a href=\"system/default/public/swiat-druku-924bf7ef033d814dc221bde1cc7b6b65.pdf\" target=\"_blank\" rel=\"noopener\">artykuł ŚWIAT DRUKU</a>).</div>\r\n</li>\r\n<li><strong>Podczyszczalnia ściek&oacute;w dedykowana maszynie do druku fleksograficznego</strong>\r\n<div>Drukarka fleksograficzna generuje ścieki o znacznym ładunku zanieczyszczeń. Wysoce zaawansowana technologicznie podczyszczalnia do obr&oacute;bki ściek&oacute;w przemysłowych gwarantuje nam oczyszczenie ściek&oacute;w farb flekso do wymaganych parametr&oacute;w zrzutu.</div>\r\n</li>\r\n<li><strong>Zaawansowany pneumatyczny system poboru ścinki</strong>\r\n<div>Podciśnieniowy system służy do skutecznego odzyskiwania ścinki ze wszystkich obszar&oacute;w zakładu. Zebrana ścinka jest pneumatycznie transportowana do centralnego separatora a następnie do belownicy. Po jej uformowaniu w bele o wadze ok. 350 kg, jest ona odbierana przez producentów papieru do ponownego jej przetworzenia.</div>\r\n</li>\r\n</ul>\r\n<p>Kombinacja czynnik&oacute;w ekonomicznych i ekologicznych, tworzy pozytywny efekt w działalności przedsiębiorstwa, jak r&oacute;wnież w otaczającym go środowisku naturalnym.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 09:51:08', '2020-11-17 17:42:40'),
(51, 14, 14, 0, '', 'Sekcja wyróżnienia', '<i class=\"fal fa-grip-lines\"></i> Wyróżnienia <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 10:50:29', '2020-07-24 10:50:53'),
(52, 20, 6, 0, '', 'Brylanty Polskiej Gospodarki 2018', 'Brylanty Polskiej Gospodarki 2018', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w XI edycji Konkursu Brylanty Polskiej Gospodarki 2018</p>', '', '', '', '', '', '', '', '', 6, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 10:51:18', '2020-11-21 12:31:37'),
(53, 20, 6, 0, '', 'Gepardy Biznesu 2018', 'Gepardy Biznesu 2018', '<p>ROYALPACK otrzymał wyr&oacute;żnienie w XIII edycji Konkursu Gepardy Biznesu 2018 za dynamiczny rozw&oacute;j i wzrost wartości rynkowej przez Instytut Europejskiego Biznesu.</p>', '', '', '', '', '', '', '', '', 7, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 11:14:43', '2020-11-21 12:31:37'),
(54, 20, 6, 0, '', 'Efektywna Firma 2018', 'Efektywna Firma 2018', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w XI edycji Konkursu Efektywna Firma 2018</p>', '', '', '', '', '', '', '', '', 8, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 11:19:46', '2020-11-21 12:31:37'),
(55, 20, 6, 0, '', 'Mocna Firma Godna Zaufania 2018', 'Mocna Firma Godna Zaufania 2018', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w VI edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2018</p>', '', '', '', '', '', '', '', '', 9, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 11:21:17', '2020-11-21 12:31:37'),
(56, 20, 6, 0, '', 'Gazele Biznesu 2018', 'Gazele Biznesu 2018', '<p>ROYALPACK został członkiem elitarnego klubu Gazele Biznesu 2018</p>', '', '', '', '', '', '', '', '', 10, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 11:22:09', '2020-11-21 12:31:37'),
(57, 20, 6, 0, '', 'Rzetelni dla Biznesu 2016', 'Rzetelni dla Biznesu 2016', '<p>ROYALPACK otrzymał wyr&oacute;żnienie Rzetelni dla Biznesu 2016</p>', '', '', '', '', '', '', '', '', 11, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 11:23:05', '2020-11-21 12:31:37'),
(58, 20, 6, 0, '', 'Orły Wprost 2016', 'Orły Wprost 2016', '<p>ROYALPACK Laureatem Orły Wprost 2016</p>', '', '', '', '', '', '', '', '', 12, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 11:23:44', '2020-11-21 12:31:37'),
(59, 20, 6, 0, '', 'Gazele Biznesu 2015', 'Gazele Biznesu 2015', '<p>ROYALPACK został członkiem elitarnego klubu Gazele Biznesu 2015</p>', '', '', '', '', '', '', '', '', 13, 'on', 'off', 'off', '', '2020-07-24', '2020-07-24 11:24:39', '2020-11-21 12:31:37'),
(60, 21, 20, 0, '', 'Flaga UE', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 09:56:16', '2020-09-01 21:19:50'),
(61, 11, 14, 0, '', 'Dotacja UE', '<i class=\"fal fa-grip-lines\"></i> Dotacja UE <i class=\"fal fa-grip-lines\"></i>', '<p>Firma ROYALPACK, Tatar Sp. j. zrealizowała projekt nr POIR.03.02.01-08-0004/17-00 dofinansowanego z Funduszy Europejskich pod nazwą &bdquo;Gama nowatorskich opakowań tekturowych wielokrotnego zastosowania, o innowacyjnych cechach i przełomowych parametrach użytkowych&rdquo; w ramach:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">Programu Operacyjnego Inteligentny Rozw&oacute;j, 2014-2020</li>\r\n<li class=\"list-group-item\">Poddziałanie 3.2.1 Badania na rynek</li>\r\n<li class=\"list-group-item\">Umowa nr: POIR.03.02.01-08-0004/17-00 zawarta w dniu 07.03.2018 z Polską Agencją Rozwoju Przedsiębiorczości</li>\r\n<li class=\"list-group-item\">Wartość projektu: 53 703 276,00 PLN</li>\r\n<li class=\"list-group-item\">Wartość dofinansowania: 19 647 540,00 PLN</li>\r\n</ul>\r\n<div class=\"text-center\"><i class=\"p-4 fal fa-grip-lines\" style=\"font-size: 3em;\"></i></div>\r\n<p><strong><span style=\"font-size: 14pt;\">Kr&oacute;tki opis projektu</span></strong><br />Celem projektu jest wzrost konkurencyjności oraz innowacyjności przedsiębiorstwa ROYALPACK poprzez wdrożenie własnych wynik&oacute;w prac badawczo-rozwojowych, kt&oacute;re pozwolą na wprowadzenie do oferty przedsiębiorstwa nowej gamy opakowań tekturowych przeznaczonych do wielokrotnego zastosowania.<br />Niniejszy projekt polega na wprowadzeniu na rynek przez ROYALPACK, Tatar Sp. j. gamy opakowań tekturowych o wydłużonym cyklu życia. Opakowania opracowane w ramach prac B+R przeprowadzonych przez wnioskodawcę odznaczają się zwiększoną wytrzymałością na uszkodzenia mechaniczne. Zostaną one r&oacute;wnież wzbogacone w zgłoszony do ochrony patentowej system aplikacji dodatkowej warstwy informacyjno-ozdobnej. Badania walidacyjne nowych produkt&oacute;w przeprowadziła Politechnika Ł&oacute;dzka. Wprowadzenie wynik&oacute;w prac B+R do oferty Wnioskodawcy będzie wymagało podjęcia szeregu działań inwestycyjnych i wdrożeniowych. Uruchomienie produkcji nowej gamy wyrob&oacute;w wymaga zastosowania nowych urządzeń, dlatego w ramach projektu planowany jest zakup nowoczesnego ciągu technologicznego, umożliwiającego produkcję produkt&oacute;w o wspomnianych właściwościach. Projekt będzie miał pozytywny wpływ na polityki horyzontalne Unii Europejskiej, w tym na politykę zr&oacute;wnoważonego rozwoju oraz r&oacute;wnych szans.<br />Projekt zostanie zrealizowany w okresie 01.03.2018 &ndash; 30.06.2019.</p>\r\n<p class=\"img-center\"><img src=\"../system/default/public/zdjecie-ue2-970d6d2aed676d46d2e4246f7d16b5fa.jpg\" title=\"Logo UE 2\" style=\"max-width: 220px;\" class=\"content-img\" /></p>\r\n<p class=\"img-center\"><img src=\"../system/default/public/zdjecie-ue-40e93a82f0a35d1d53325c85d6082fa8.jpg\" title=\"Logo UE\" style=\"max-width: 220px;\" class=\"content-img\" /></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Zapytania ofertowe:</span></strong></p>', '', '', '', '', '', '', '', '', 6, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 12:01:31', '2020-07-28 13:31:00'),
(62, 22, 6, 0, '', 'Zapytanie ofertowe nr 1/2018 w sprawie zamówienia na zakup maszyny drukującej', 'Zapytanie ofertowe nr 1/2018 w sprawie zamówienia na zakup maszyny drukującej', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 13:03:47', '2020-07-28 13:29:23'),
(63, 22, 6, 0, '', 'Zapytanie ofertowe nr 2A/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej', 'Zapytanie ofertowe nr 2A/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej – sklejarka pojedyncza 2 sztuki', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:06:52', '2020-07-28 14:10:28'),
(64, 22, 6, 0, '', 'Zapytanie ofertowe nr 2B/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej', 'Zapytanie ofertowe nr 2B/2018 w sprawie zamówienia na zakup linii do produkcji i laminowania tektury falistej – maszyna kaszerująca', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:14:18', '2020-07-28 14:14:43'),
(65, 22, 6, 0, '', 'Request for quotation no. 2B/2018 on order for purchase line for production and lamination corrugated board', 'Request for quotation no. 2B/2018 on order for purchase line for production and lamination corrugated board - laminating machine', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:17:13', '2020-07-28 14:18:38'),
(66, 22, 6, 0, '', 'Zapytanie ofertowe nr 3A/2018 w sprawie zamówienia na zakup przekrawacza do tektury falistej', 'Zapytanie ofertowe nr 3A/2018 w sprawie zamówienia na zakup przekrawacza do tektury falistej', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:19:36', '2020-07-28 14:19:58'),
(67, 22, 6, 0, '', 'Request for quotation no. 3A/2018 on order for purchase single face sheeter', 'Request for quotation no. 3A/2018 on order for purchase single face sheeter', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:22:26', '2020-07-28 14:22:42'),
(68, 22, 6, 0, '', 'Zapytanie ofertowe nr 3B/2018 w sprawie zamówienia na zakup odwijaka do tektury falistej', 'Zapytanie ofertowe nr 3B/2018 w sprawie zamówienia na zakup odwijaka do tektury falistej', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:24:22', '2020-07-28 14:24:41'),
(69, 22, 6, 0, '', 'Zapytanie ofertowe nr 4/2018 w sprawie zamówienia na zakup nawijaka automatycznego do tektury falistej', 'Zapytanie ofertowe nr 4/2018 w sprawie zamówienia na zakup nawijaka automatycznego do tektury falistej', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:26:45', '2020-07-28 14:27:03'),
(70, 22, 6, 0, '', 'Request for quotation no. 4/2018 on order for purchase automatic rewinder for corrugated board', 'Request for quotation no. 4/2018 on order for purchase automatic rewinder for corrugated board', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:28:40', '2020-07-28 14:28:56'),
(71, 22, 6, 0, '', 'Zapytanie ofertowe nr 5/2018 w sprawie zamówienia na zakup przekrawacza papieru do druku', 'Zapytanie ofertowe nr 5/2018 w sprawie zamówienia na zakup przekrawacza papieru do druku', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:30:58', '2020-07-28 14:31:15'),
(72, 22, 6, 0, '', 'Request for quotation no. 5/2018 on order for purchase paper sheeter', 'Request for quotation no. 5/2018 on order for purchase paper sheeter', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:34:46', '2020-07-28 14:35:03'),
(73, 22, 6, 0, '', 'Zapytanie ofertowe nr 6/2018 w sprawie zamówienia na zakup automatycznej sztancy płaskiej', 'Zapytanie ofertowe nr 6/2018 w sprawie zamówienia na zakup automatycznej sztancy płaskiej', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:36:46', '2020-07-28 14:37:00'),
(74, 22, 6, 0, '', 'Request for quotation no. 6/2018 on order for purchase automatic die cutting machine', 'Request for quotation no. 6/2018 on order for purchase automatic die cutting machine', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:39:16', '2020-07-28 14:39:34'),
(75, 22, 6, 0, '', 'Zapytanie ofertowe nr 7/2018 w sprawie zamówienia na zakup instalacji podawania kleju na bazie skrobi', 'Zapytanie ofertowe nr 7/2018 w sprawie zamówienia na zakup instalacji podawania kleju na bazie skrobi', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:41:20', '2020-07-28 14:41:35'),
(76, 22, 6, 0, '', 'Request for quotation no. 7/2018 on order for purchase starch-based glue feed installation', 'Request for quotation no. 7/2018 on order for purchase starch-based glue feed installation', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 14:43:21', '2020-07-28 14:47:04'),
(77, 22, 6, 0, '', 'Zapytanie ofertowe nr 8/2018 w sprawie zamówienia na zakup instalacji pary wodnej', 'Zapytanie ofertowe nr 8/2018 w sprawie zamówienia na zakup instalacji pary wodnej', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 15:10:00', '2020-07-28 15:10:46'),
(78, 22, 6, 0, '', 'Zapytanie ofertowe nr 9/2019 w sprawie zamówienia na zakup instalacji pneumatycznej odbioru i transportu odpadów', 'Zapytanie ofertowe nr 9/2019 w sprawie zamówienia na zakup instalacji pneumatycznej odbioru i transportu odpadów', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 15:13:07', '2020-07-28 15:13:25'),
(79, 10, 6, 0, '', 'Dotacja UE', '', '<p>Wdrożenie innowacyjnego, energooszczędnego systemu wytwarzania opakowań o podwyższonej wytrzymałości</p>\r\n<p>ROYALPACK, Tatar Sp. j. w lipcu 2013 r. otrzymał dotację unijną w ramach Programu Operacyjnego Innowacyjna Gospodarka, Oś Priorytetowa 4 - Inwestycje w innowacyjne przedsięwzięcia. Pilotaż: <em>\"Wsparcie na pierwsze wdrożenie wynalazku\"</em>.</p>\r\n<p>Dzięki dofinansowaniu wybudowaliśmy nasz nowy zakład produkcyjny w miejscowości Słone koło Zielonej G&oacute;ry. W zakresie projektu został r&oacute;wnież nabyty oraz zainstalowany nowoczesny park maszynowy.</p>\r\n<p>Budowa zakładu została rozpoczęta w listopadzie 2013 r. Zakończenie prac nastąpiło w lutym 2015 r.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 4, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 15:14:34', '2020-07-28 15:20:33'),
(80, 23, 21, 0, '', 'Nowy zakład produkcyjny ROYALPACK – Słone koło Zielonej Góry', '', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-07-28', '2020-07-28 15:23:20', '2020-07-28 15:23:29'),
(81, 24, 6, 7, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Profil działalności', 'PROFIL DZIAŁALNOŚCI', NULL, '', '', '', '', '', 'fal fa-box-open', '', '', 1, 'on', 'off', 'off', '', '2020-09-01', '2020-09-01 19:52:51', '2020-09-09 10:44:40'),
(82, 14, 14, 0, '', 'Sekcja o nas', '<i class=\"fal fa-grip-lines\"></i> O nas <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 5, 'on', 'off', 'off', '', '2020-09-01', '2020-09-01 20:32:04', '2020-09-01 20:32:49'),
(83, 24, 6, 17, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Historia firmy', 'HISTORIA FIRMY', NULL, '', '', '', '', '', 'fal fa-history', '', '', 2, 'on', 'off', 'off', '', '2020-09-01', '2020-09-01 20:52:24', '2020-09-09 10:44:40'),
(84, 24, 6, 18, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Polityka rozwoju', 'POLITYKA ROZWOJU', NULL, '', '', '', '', '', 'fal fa-chart-line', '', '', 3, 'on', 'off', 'off', '', '2020-09-01', '2020-09-01 20:54:49', '2020-09-09 10:44:40'),
(85, 24, 6, 19, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Obsługa klienta', 'OBSŁUGA KLIENTA', NULL, '', '', '', '', '', 'fal fa-handshake', '', '', 4, 'off', 'off', 'off', '', '2020-09-01', '2020-09-01 20:57:22', '2020-10-04 18:09:55'),
(86, 24, 6, 20, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Ogólne warunki handlowe', 'OGÓLNE WARUNKI HANDLOWE', NULL, '', '', '', '', '', 'fal fa-list-ul', '', '', 5, 'on', 'off', 'off', '', '2020-09-01', '2020-09-01 21:04:04', '2020-09-09 10:44:40'),
(87, 24, 6, 21, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Wyróżnienia', 'WYRÓŻNIENIA', NULL, '', '', '', '', '', 'fal fa-trophy', '', '', 6, 'on', 'off', 'off', '', '2020-09-01', '2020-09-01 21:07:28', '2020-09-09 10:44:40'),
(88, 24, 6, 22, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Media o nas', 'MEDIA O NAS', NULL, '', '', '', '', '', 'fal fa-photo-video', '', '', 7, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 08:35:29', '2020-09-09 10:44:40'),
(89, 11, 14, 0, '', 'Sekcja oferta', '<i class=\"fal fa-grip-lines\"></i> Oferta <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 5, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 09:34:58', '2020-09-15 09:30:48'),
(90, 14, 14, 0, '', 'Sekcja technologia', '<i class=\"fal fa-grip-lines\"></i> Technologia <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 5, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 09:35:28', '2020-09-09 09:35:50'),
(91, 24, 6, 8, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Opakowania', 'OPAKOWANIA', NULL, '', '', '', '', '', 'fal fa-box', '', '', 8, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 09:38:50', '2020-09-09 10:44:40'),
(92, 24, 6, 9, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'POS Displays', 'POS DISPLAYS', NULL, '', '', '', '', '', 'fal fa-boxes', '', '', 9, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 09:43:04', '2020-09-09 10:44:40'),
(93, 24, 6, 10, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Standard FEFCO', 'STANDARD FEFCO', NULL, '', '', '', '', '', 'fal fa-box-check', '', '', 10, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 09:51:45', '2020-09-09 10:44:40'),
(94, 24, 6, 11, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'SRP Displays', 'SRP DISPLAYS', NULL, '', '', '', '', '', 'fal fa-inbox', '', '', 11, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 09:54:19', '2020-09-16 10:23:52'),
(95, 24, 6, 12, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Ekspozytory ladowe', 'EKSPOZYTORY LADOWE', NULL, '', '', '', '', '', 'fal fa-inventory', '', '', 12, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 09:57:14', '2020-09-09 10:44:40'),
(96, 24, 6, 14, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Sila liner', 'SILA LINER', NULL, '', '', '', '', '', 'fal fa-pallet-alt', '', '', 14, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:01:59', '2020-09-09 10:44:40'),
(97, 24, 6, 13, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'E-commerce boxes', 'E-COMMERCE BOXES', NULL, '', '', '', '', '', 'fal fa-boxes-alt', '', '', 13, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:13:25', '2020-09-16 10:23:59'),
(98, 24, 6, 15, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Projekty indywidualne', 'PROJEKTY INDYWIDUALNE', NULL, '', '', '', '', '', 'fal fa-person-carry', '', '', 15, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:16:29', '2020-09-09 10:44:40'),
(99, 24, 6, 16, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Projekty innowacyjne', 'PROJEKTY INNOWACYJNE', NULL, '', '', '', '', '', 'fal fa-user-chart', '', '', 16, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:17:59', '2020-09-09 10:44:40'),
(100, 26, 6, 23, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Offset', 'OFFSET', NULL, '', '', '', '', '', 'fal fa-fill-drip', '', '', 17, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:24:34', '2020-10-14 18:19:59'),
(101, 26, 6, 24, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Flexo', 'FLEXO', NULL, '', '', '', '', '', 'fal fa-fill', '', '', 18, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:31:36', '2020-09-20 17:10:57'),
(102, 24, 6, 25, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Park maszynowy', 'PARK MASZYNOWY', NULL, '', '', '', '', '', 'fal fa-tools', '', '', 19, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:35:20', '2020-09-09 10:44:40'),
(103, 24, 6, 26, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'R&D', 'R&D', NULL, '', '', '', '', '', 'fal fa-chart-line', '', '', 20, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:36:04', '2020-09-09 10:44:40'),
(104, 24, 6, 27, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Innowacje', 'INNOWACJE', NULL, '', '', '', '', '', 'fal fa-microchip', '', '', 22, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:39:07', '2020-09-09 10:44:41'),
(105, 24, 6, 28, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Dział kontroli jakości', 'DZIAŁ KONTROLI JAKOŚCI', NULL, '', '', '', '', '', 'fal fa-hand-sparkles', '', '', 21, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 10:40:48', '2020-09-09 10:44:40'),
(106, 14, 14, 0, '', 'Sekcja opakowania', '<i class=\"fal fa-grip-lines\"></i> Opakowania <i class=\"fal fa-grip-lines\"></i>', '<p>Dzięki kreatywności naszych konstruktor&oacute;w, grafik&oacute;w oraz nowoczesnym maszynom do produkcji opakowań zbiorczych i jednostkowych z tektury falistej, w naszej ofercie znajdą Państwo wiele unikalnych rozwiązań w zakresie opakowań z nadrukiem offsetowym oraz fleksograficznym. Realizujemy wszelkie konstrukcje oparte o katalog FEFCO i jego pochodne, oraz indywidualne projekty dopasowane do potrzeb pakowanego produktu. O ich estetykę i funkcjonalność dba wysoce zmotywowany dział R&amp;D.</p>', '', '', '', '', '', '', '', '', 5, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 13:13:24', '2020-09-15 09:45:13');
INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `section_name`, `system_name`, `name`, `content`, `link`, `link_name`, `email`, `form`, `attachment`, `icon`, `map`, `class`, `position`, `status`, `status_copy`, `status_free`, `description`, `date`, `date_create`, `date_modify`) VALUES
(107, 10, 6, 0, '', 'Obsługa klienta', '<i class=\"fal fa-grip-lines\"></i> Obsługa klienta <i class=\"fal fa-grip-lines\"></i>', '<p>Każde przedsiębiorstwo posiada r&oacute;żne potrzeby, dlatego w Royalpack każdy klient jest traktowany indywidualnie. Dedykowana osoba z zespołu Obsługi Klienta zawsze przedstawi pełny wachlarz możliwości związanych z realizacją projekt&oacute;w. Wiemy, że w dzisiejszych czasach informacja jest najważniejsza, dlatego mocno dbamy o to, aby nasi klienci byli jak najlepiej poinformowani o wszelkich kwestiach związanych ze wsp&oacute;łpracą. Gwarantujemy punktualne dostawy, szybką decyzyjność i gotowość rozwiązania nawet najtrudniejszych kwestii produkcyjno-logistycznych.</p>\r\n<p>Tak profesjonalnie, kompleksowo i elastycznie prowadzona obsługa pozwala na budowanie trwałych relacji z naszymi klientami.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 13:21:08', '2020-09-15 09:29:16'),
(108, 2, 22, 0, '', 'Menu w stopce', '', NULL, '', '', '', '', '', '', '', '', 2, 'on', 'on', 'off', '', '2020-09-09', '2020-09-09 13:33:46', '2020-09-09 13:34:49'),
(109, 14, 14, 0, '', 'Obsługa klienta', '<i class=\"fal fa-grip-lines\"></i> Obsługa klienta <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', '', '', 9, 'on', 'off', 'off', '', '2020-09-09', '2020-09-09 15:09:42', '2020-09-09 15:10:02'),
(110, 10, 6, 0, '', 'Sekcja opakowania', '', '<p>Każde przedsiębiorstwo posiada r&oacute;żne potrzeby, dlatego w Royalpack każdy klient jest traktowany indywidualnie. Dedykowana osoba z zespołu Obsługi Klienta zawsze przedstawi pełny wachlarz możliwości związanych z realizacją projekt&oacute;w. Wiemy, że w dzisiejszych czasach informacja jest najważniejsza, dlatego mocno dbamy o to, aby nasi klienci byli jak najlepiej poinformowani o wszelkich kwestiach związanych ze wsp&oacute;łpracą. Gwarantujemy punktualne dostawy, szybką decyzyjność i gotowość rozwiązania nawet najtrudniejszych kwestii produkcyjno-logistycznych. Tak profesjonalnie, kompleksowo i elastycznie prowadzona obsługa pozwala na budowanie trwałych relacji z naszymi klientami.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 6, 'on', 'off', 'off', '', '2020-09-15', '2020-09-15 09:47:34', '2020-10-04 18:09:36'),
(111, 10, 6, 0, '', 'Sekcja technologia', '', '<p>Dobre rozwiązania opakowaniowe, to takie kt&oacute;re łączą cechy wysokiej funkcjonalności użytkowej oraz nienagannej estetyki. Wysoce wykwalifikowany dział rozwoju produktu jak i zautomatyzowany, nowoczesny park maszynowy, kt&oacute;ry umożliwia połączenie obu tych cech produktowych to jedne z wielu atut&oacute;w przedsiębiorstwa. ROYALPACK to jedyna firma w Europie, kt&oacute;ra posiada unikatową w skali światowej linię do produkcji tektury falistej i jednoczesnego jej laminowania z wieloma innowacyjnymi rozwiązaniami technologicznymi. Zainstalowane nowe maszyny gwarantują najwyższą jakość opakowań z tektur falistych, począwszy od fali F poprzez E, B, C, EE, EB, BB oraz BC, a nowej generacji wielkoformatowe maszyny drukujące tworzą na nich niezwykle estetyczny zadruk offsetowy lub fleksograficzny o wysokiej rozdzielczości. Finalnie opakowania realizowane przez ROYALPACK są skutecznym narzędziem marketingowym dla naszych zadowolonych klient&oacute;w.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 6, 'on', 'off', 'off', '', '2020-09-15', '2020-09-15 09:58:44', '2020-09-15 10:06:01'),
(112, 25, 23, 0, '', 'Sekcja POS-Displays', '<i class=\"fal fa-grip-lines\"></i> POS-Displays <i class=\"fal fa-grip-lines\"></i>', '<p>Są powszechnie stosowane w wielu sieciach sklepowych. Stand, inaczej POS (Point of Sales) to forma ekspozycji produkt&oacute;w, umożliwiająca ich bardzo efektowną prezentację i jednocześnie promocję. Konstrukcje wystawiennicze są niezwykle pomocne zwłaszcza w fazie promocji i wdrażania nowych produkt&oacute;w.</p>\r\n<p>Poprzez swoją formę oraz grafikę znacznie bardziej przyciągają uwagę klienta od zwykłych p&oacute;łek sklepowych. Standy pozwalają na większe oddziaływanie, czy też kreowanie marki w punkcie zakupu.</p>\r\n<p>Nasza oferta obejmuje ich r&oacute;żne konstrukcje: monolityczne, modułowe, czy też wyspy produktowe.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 2, 'on', 'off', 'off', '', '2020-09-15', '2020-09-15 10:25:06', '2020-12-20 17:41:47'),
(115, 25, 23, 0, '', 'Sekcja Standard FEFCO', '<i class=\"fal fa-grip-lines\"></i> Standard FEFCO <i class=\"fal fa-grip-lines\"></i>', '<p>Katalog FEFCO to zbi&oacute;r projekt&oacute;w najczęściej wykorzystywanych w celu określenia konstrukcji opakowań. Realizujemy wszystkie konstrukcje w nim zawarte jak i szereg innych.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-15', '2020-09-15 10:49:57', '2020-09-16 13:28:37'),
(116, 20, 6, 0, '', 'Brylanty Polskiej Gospodarki 2019', 'Brylanty Polskiej Gospodarki 2019', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w XII edycji Konkursu Brylanty Polskiej Gospodarki 2019</p>', '', '', '', '', '', '', '', '', 2, 'on', 'off', 'off', '', '2020-09-16', '2020-09-16 09:41:24', '2020-11-21 12:31:37'),
(117, 20, 6, 0, '', 'Gepardy Biznesu 2019', 'Gepardy Biznesu 2019', '<p>ROYALPACK otrzymał wyr&oacute;żnienie w XIV edycji Konkursu Gepardy Biznesu 2019 za dynamiczny rozw&oacute;j i wzrost wartości rynkowej przez Instytut Europejskiego Biznesu.</p>', '', '', '', '', '', '', '', '', 3, 'on', 'off', 'off', '', '2020-09-16', '2020-09-16 09:45:23', '2020-11-21 12:31:37'),
(118, 20, 6, 0, '', 'Efektywna Firma 2019', 'Efektywna Firma 2019', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w XII edycji Konkursu Efektywna Firma 2019</p>', '', '', '', '', '', '', '', '', 4, 'on', 'off', 'off', '', '2020-09-16', '2020-09-16 10:13:23', '2020-11-21 12:31:37'),
(119, 20, 6, 0, '', 'Mocna Firma Godna Zaufania 2019', 'Mocna Firma Godna Zaufania 2019', '<p>ROYALPACK został wyr&oacute;żniony przez Instytut Europejskiego Biznesu w VII edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2019</p>', '', '', '', '', '', '', '', '', 5, 'on', 'off', 'off', '', '2020-09-16', '2020-09-16 10:16:11', '2020-11-21 12:31:37'),
(120, 25, 23, 0, '', 'Sekcja SRP-Displays', '<i class=\"fal fa-grip-lines\"></i> SRP-Displays <i class=\"fal fa-grip-lines\"></i>', '<p>Klienci najczęściej dokonują zakupu poprzez ocenę wizualną produktu. Dlatego też opakowania tego typu są bardzo popularną formą ekspozycji towaru. Poprzez wysoką estetykę promują swoją zawartość. Dzięki praktyczności zastosowania oraz łatwości układania są bardzo chętnie wykorzystywane do wystawiania produkt&oacute;w w sieciach sklepowych.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 11:22:39', '2020-09-22 11:31:21'),
(121, 25, 23, 0, '', 'Sekcja Ekspozytory ladowe', '<i class=\"fal fa-grip-lines\"></i> Ekspozytory ladowe <i class=\"fal fa-grip-lines\"></i>', '<p>Ekspozytory ladowe, tak jak m&oacute;wi sama nazwa, są ustawiane na ladzie sklepowej. Zazwyczaj służą do prezentacji produkt&oacute;w o małych gabarytach np. produkty spożywcze, kosmetyczne, czy też biurowe. Royalpack realizuje szereg rozwiązań konstrukcyjnych, zadrukowanych offsetowo lub fleksograficznie, kt&oacute;re w najlepszy spos&oacute;b zaprezentują produkt i przyciągną uwagę klienta.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 11:32:27', '2020-09-22 12:13:21'),
(122, 25, 6, 0, '', 'SILA LINER', '<i class=\"fal fa-grip-lines\"></i> SILA LINER <i class=\"fal fa-grip-lines\"></i>', '<p>Drogi kliencie druk offsetowy nie musi być już wykonywany jedynie na białym papierze.</p>\r\n<p>Wychodząc naprzeciw oczekiwaniom rynkowym uruchomiliśmy naszą nową linię produktową. Są to opakowania zadrukowane w wysokiej rozdzielczości druku offsetowego na ciemno - brązowym kraftlinerowym podłożu &ndash; dostępne są pod marką własną Sila Liner.</p>\r\n<p>Technika druku offsetowego sprawia, iż czcionki 6 pkt są nadal doskonale czytelne, a pozostałe nawet najmniejsze motywy graficzne są ekstremalnie ostre. Oferowana przez nas nowa linia produktowa, nie tylko wyr&oacute;żnia się wysoką jakością, ale co jest bardzo istotne, decydując się na tę technologię wykonania druku, obniżasz swoje koszty związane z zakupem narzędzi pod przygotowanie wydruku względem technologii flexo.</p>\r\n<p><strong class=\"text-danger\">W miejscu sprzedaży, aż 70% klient&oacute;w potrafi zmienić swoją decyzję zakupową pod wpływem emocji i impulsu.</strong></p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 11:43:18', '2020-11-17 17:43:23'),
(123, 25, 23, 0, '', 'Sekcja Opakowania e-commerce', '<i class=\"fal fa-grip-lines\"></i> Opakowania e-commerce <i class=\"fal fa-grip-lines\"></i>', '<p>Opakowania e-commerce dedykowane są sklepom internetowym. Dzięki zakrytemu taśmą paskowi kleju oraz zastosowaniu perfo-zrywki, mogą być wykorzystane kilkukrotnie np. przy odsyłaniu produktu z powrotem do nadawcy. Takie rozwiązanie pozwala na estetyczne zamknięcie opakowania, jak r&oacute;wnież jego otwarcie. W przypadku tego typu opakowań efekt wizualny jest niezwykle ważny, gdyż są one najważniejszym narzędziem marketingowym &ndash; same muszą zaprezentować produkt. Tworzymy je w technologii offsetowej, flexo oraz w mixie czyli. np. flexo na zewnątrz, a offset wewnątrz dla wzbudzenia efektu wow u odbiorcy.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 11:55:14', '2020-09-22 12:03:15'),
(124, 25, 23, 0, '', 'Projekty indywidualne', '<i class=\"fal fa-grip-lines\"></i> Projekty indywidualne <i class=\"fal fa-grip-lines\"></i>', '<p>Każdy projekt jest dla nas szczeg&oacute;lny. Dlatego najczęściej stawiamy na indywidualne rozwiązania opakowaniowe poparte wcześniejszą optymalizacją. O realizację indywidualnych potrzeb klienta dba nasz wysoce kreatywny zesp&oacute;ł konstruktor&oacute;w, kt&oacute;ry tworzy oryginalne rozwiązania opakowań fasonowych.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 12:16:04', '2020-09-22 12:18:57'),
(125, 25, 23, 0, '', 'Projekty innowacyjne', '<i class=\"fal fa-grip-lines\"></i> Projekty innowacyjne <i class=\"fal fa-grip-lines\"></i>', '<p>Opakowanie to nie tylko spos&oacute;b zabezpieczenia towaru, ale przede wszystkim kreowanie marki produktu. Dlatego proponujemy specjalne konstrukcje z efektownym nadrukiem offsetowym, kt&oacute;re możemy dodatkowo uszlachetnić np. poprzez tłoczenia, hotstamping, laminowanie folią itd..</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 12:19:07', '2020-09-22 12:22:38'),
(126, 10, 23, 0, '', 'SILA LINER', '', '<p>Nasza nowa marka Sila Liner to idealne rozwiązanie dla Ciebie, jeśli myślisz o ekologicznym wizerunku swoich produkt&oacute;w, chcesz dbać o środowisko naturalne, a przy tym zachować najwyższą jakość druku. Połączenie powyższych czynnik&oacute;w sprawi, że Twoje produkty będą wyr&oacute;żniać się na p&oacute;łce sklepowej, co klienci z pewnością docenią.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Specjalny papier dla opakowań offsetowych</span></strong></p>\r\n<p>Marka Sila Liner oparta jest o specjalny rodzaj niepowlekanego papieru, pozwalającego stworzyć najpiękniejsze, wyr&oacute;żniające się opakowania z tektury falistej z nadrukiem offsetowym. Wykonany przez nas druk offsetowy na Sila Liner tworzy niesamowicie wyraźny obraz na ciemno-brązowym naturalnym matowym podłożu.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Znacznie mocniejszy niż papier GD2</span></strong></p>\r\n<p>Jest to papier z rodziny Kraftliner, z długimi wł&oacute;knami celulozowymi, dzięki czemu wyr&oacute;żnia się znacznie większą odpornością na rozerwanie, wszelkie pęknięcia oraz wysoką odpornością na wilgoć w por&oacute;wnaniu do standardowych papier&oacute;w makulaturowych GD2.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">W kolorze brązowym lub białym</span></strong></p>\r\n<p>Sila Liner ze swoimi wysokimi właściwościami wytrzymałościowymi jest także dostępny w kolorze białym. Niesamowicie ostry obraz z wysoką rozdzielczością druku offsetowego uzyskujemy zar&oacute;wno na białym jak i ciemno-brązowym podłożu.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Wygląd przyjazny środowisku</span></strong></p>\r\n<p>Dzięki naszym opakowaniom z serii Sila Liner, Twoi klienci będą mogli doznać naturalnych wrażeń przy p&oacute;łce sklepowej, wobec kt&oacute;rych nie będą mogli przejść obojętnie. Co jest kluczowe w kontekście ekologicznych rozwiązań opakowaniowych, nasz papier produkowany jest w certyfikacji FSC.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Doskonały dla wszystkich projekt&oacute;w</span></strong></p>\r\n<p>Sila Liner może być podstawą do wszelkich projekt&oacute;w, począwszy od opakowań jednostkowych, poprzez opakowania zbiorcze, projekty indywidualne jak i displaye.</p>', '', '', '', '', '', 'fal fa-inbox', '', '', 8, 'on', 'off', 'off', 'Ikona jest wyłączona', '2020-09-22', '2020-09-22 14:36:55', '2020-11-17 17:44:32'),
(127, 11, 23, 0, '', 'Sekcja OFFSET', '<i class=\"fal fa-grip-lines\"></i> OFFSET <i class=\"fal fa-grip-lines\"></i>', '<p><strong><span style=\"font-size: 14pt;\">STANDARD OFFSET</span></strong></p>\r\n<p>Dla najbardziej wymagających projekt&oacute;w graficznych idealnym rozwiązaniem jest druk offsetowy, kt&oacute;ry opr&oacute;cz wysokiej jakości zadruku daje najwięcej możliwości w obszarze uszlachetnienia. ROYALPACK posiada wielkoformatową maszynę do druku offsetowego najnowszej generacji, za pomocą kt&oacute;rej zrealizuje takie wykończenia jak:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- standardowe, przy użyciu farb CMYK, Pantone i lakieru dyspersyjnego</li>\r\n<li class=\"list-group-item\">- farby do żywności</li>\r\n<li class=\"list-group-item\">- farby fluorescencyjne</li>\r\n<li class=\"list-group-item\">- farby metaliczne</li>\r\n<li class=\"list-group-item\">- zadruk na warstwie PE+PET</li>\r\n<li class=\"list-group-item\">- lakiery do żywności</li>\r\n<li class=\"list-group-item\">- lakiery soft-touch</li>\r\n<li class=\"list-group-item\">- lakiery anty-poślizgowe</li>\r\n<li class=\"list-group-item\">- lakiery UV</li>\r\n<li class=\"list-group-item\">- lakiery wybi&oacute;rcze np. matowy + UV</li>\r\n<li class=\"list-group-item\">- lakiery primer i wiele innych</li>\r\n</ul>\r\n<p><strong><span style=\"font-size: 14pt;\">SILA LINER OFFSET</span></strong></p>\r\n<p>ROYALPACK w obrębie druku stworzył unikalną markę Sila Liner, kt&oacute;ra zapewnia możliwość precyzyjnego zadruku papier&oacute;w niepowlekanych brązowych, dając tym samym swoim klientom prawdziwą szansę na bycie EKO. Od dziś zadruk na szarym podłożu nie r&oacute;żni się od jakości druku na papierach bielonych w technice druku offsetowego. Możemy wsp&oacute;lnie iść w kierunku proekologiczności i przy tym kreować najbardziej unikatowe rozwiązania opakowaniowe, kt&oacute;re skutecznie wyr&oacute;żnią produkty na sklepowych p&oacute;łkach. Więcej na: <a href=\"http://www.silaliner.eu\" target=\"_blank\" rel=\"noopener\">www.silaliner.eu</a></p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 15:05:45', '2020-09-22 15:27:12'),
(128, 11, 23, 0, '', 'Sekcja FLEXO', '<i class=\"fal fa-grip-lines\"></i> FLEXO <i class=\"fal fa-grip-lines\"></i>', '<p><strong><span style=\"font-size: 14pt;\">STANDARD FLEXO</span></strong></p>\r\n<p>Druk fleksograficzny w ostatnich latach umocnił swoją pozycję wśr&oacute;d technik drukarskich. Niewątpliwie dzięki postępowi technologicznemu jakość tego druku jest już na bardzo wysokim poziomie. Jego zaletą jest możliwość druku bezpośrednio na arkuszu tektury, co przekłada się na:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- możliwość redukcji gramatury poszczeg&oacute;lnych warstw tektury falistej</li>\r\n<li class=\"list-group-item\">- skr&oacute;cenie czasu realizacji zleceń poprzez wyeliminowanie procesu laminowania</li>\r\n<li class=\"list-group-item\">- optymalizację cenową opakowań</li>\r\n</ul>\r\n<p>Dzięki supernowoczesnej, wielkoformatowej maszynie fleksograficznej oraz produkowanej samodzielnie tekturze, ROYALPACK ma realny wpływ na wysoką jakość wytwarzanych opakowań.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">HIGH QUALITY FLEXO</span></strong></p>\r\n<p>Ciągła wsp&oacute;łpraca z zespołem drukarzy oraz uznanymi na całym świecie dostawcami surowc&oacute;w jak papier, farby oraz polimery gwarantuje możliwość realizacji najbardziej wymagających projekt&oacute;w w ROYALPACK.</p>\r\n<p>W technice druku High Quality Flexo nasi doświadczeni drukarze realizują projekty oparte na papierze białym powlekanym, gdzie motywy graficzne są przygotowane najczęściej w wysokiej rozdzielczości. Wymaga to użycia wysokich liniatur rastra i komponent&oacute;w najwyższej klasy. Finalny wydruk zrealizowany zgodnie z założeniami projektu zostaje pokryty lakierem.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 15:30:50', '2020-09-22 15:33:36'),
(129, 11, 23, 0, '', 'Sekcja R&D', '<i class=\"fal fa-grip-lines\"></i> R&D <i class=\"fal fa-grip-lines\"></i>', '<p><strong><span style=\"font-size: 14pt;\">Dział rozwoju produktu</span></strong></p>\r\n<p>Konstruktorzy działu R&amp;D to młody, ambitny i kreatywny zesp&oacute;ł. Ich zadaniem jest wdrażanie nowych opakowań do produkcji, jak r&oacute;wnież kreatywna wsp&oacute;łpraca z klientem celem stworzenia najlepszego opakowania dla ich produktu. Aby mogli realizować powyższe cele zostali wyposażeni w oprogramowanie umożliwiające:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Projektowanie konstrukcji (Artios Cad, Cape Pack)</strong></li>\r\n<li><img src=\"../system/default/public/artios-d60004c3c44794f93da802c1c23befb6.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Projektowanie grafiki (Adobe Creative Cloud)</strong></li>\r\n<li><img src=\"../system/default/public/cape-702e619167a79ab7d93ef07f707d7499.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Projektowanie i wizualizacja opakowań w 3D (Studio Designer)</strong></li>\r\n<li><img src=\"../system/default/public/kodak-67c51a0a8ec58b2c29aed5a751e89b48.png\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>i urządzenia:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Drukarka do proof&oacute;w cyfrowych</strong></li>\r\n<li><img src=\"../system/default/public/drukarkaproof-dba70fd0fa03f1c9629b02a413450982.jpg\" title=\"Drukarka do proof&oacute;w cyfrowych\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Ploter firmy Kongsberg do wycinania prototyp&oacute;w opakowań</strong></li>\r\n<li><img src=\"../system/default/public/ploter-5ed40ae1d52703a02f6b907314d0aa60.jpg\" title=\"Ploter firmy Kongsberg do wycinania prototyp&oacute;w opakowań\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Naświetlarka KODAK do przygotowania bezprocesowych płyt offsetowych SONORA</strong></li>\r\n<li><img src=\"../system/default/public/naswietlarka-33199de87eb5c2163aaf56df55b2fffc.jpg\" title=\"Naświetlarka KODAK do przygotowania bezprocesowych płyt offsetowych SONORA\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>Powiązanie kreatywności zespołu i możliwości technologicznych powyższych urządzeń umożliwia nam:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">Niezależność w procesie wdrożenia nowego produktu</li>\r\n<li class=\"list-group-item\">Większą elastyczność w procesie tworzenia opakowania</li>\r\n<li class=\"list-group-item\">Skr&oacute;cony do minimum czas dostawy gotowego produktu</li>\r\n<li class=\"list-group-item\">Zastosowanie przyjaznej środowisku technologii we wsp&oacute;łpracy z firmą KODAK &ndash; Jesteśmy EKO !</li>\r\n</ul>\r\n<p>A tym samym osiągnięcie pełnej satysfakcji klienta.</p>\r\n<p>ROYALPACK pokazuje znaczący rozw&oacute;j biznesu stosując Bezprocesowe Płyty Offsetowe KODAK SONORA</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/qxKPV_xpkFw\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 15:50:37', '2020-10-18 16:59:31'),
(130, 11, 23, 0, '', 'Sekcja Park maszynowy', '<i class=\"fal fa-grip-lines\"></i> Park maszynowy <i class=\"fal fa-grip-lines\"></i>', '<p>Aby zapewnić naszym klientom opakowania najwyższej jakości, ROYALPACK zawsze preferował zakup najnowocześniejszych maszyn do ich produkcji. W chwili obecnej dysponuje maszynami firm wiodących w branży takich jak: KBA, Kodak, BOBST, STOCK &ndash; kt&oacute;re to pozwalają na wykonanie najwyższej jakości procesu począwszy od projektu do gotowego opakowania. Poniżej przedstawiamy niekt&oacute;re z posiadanych maszyn:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Tekturnica</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/tekturnica-7f67b5543abd16d4b43b8747b86a704b.jpg\" title=\"Tekturnica - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>2 sklejarki pojedyncze (2 x Single Facer BHS) do produkcji tektury 2, 3, 4 i 5-warstwowej, pracujące w linii z maszyną laminującą i nawijakiem automatycznym</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Maszyny drukujące</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/drukarka-ff836e39d231bb53f8f87ed9156e4402.jpg\" title=\"Drukarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>VLF KBA Rapida 164A</li>\r\n<li>FLEXO - BOBST</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Maszyny kaszerujące</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/kaszerka-e4f4b5cc61a216c72a873ce1035f8543.jpg\" title=\"Kaszerka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>in line</li>\r\n<li>off line &ndash; arkuszowa</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Maszyny wycinające płaskie</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/bobst-372d027081b0df1b01561b76a49c6fa8.jpg\" title=\"Bobst - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>BOBST Power Register 1600</li>\r\n<li>BOBST 1600</li>\r\n<li>BOBST 1575</li>\r\n<li>VIKING 1650</li>\r\n<li>CROSLAND 1750</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Składarko-klejarki</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/sklejarka-3ac89d3c952f958f4e75be3cfccc536b.jpg\" title=\"Sklejarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /><img src=\"../system/default/public/skladarka-e59e3549173a95feb56aa7d7995909ab.jpg\" title=\"Składarka\" style=\"max-width: 220px;\" class=\"content-img ml-3\" /></li>\r\n<li>5-punktowa</li>\r\n<li>4-punktowa</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Przekrawacze</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/przekrawacz-ff3f59d3c8b22bfa45ae8efd4c858f3c.jpg\" title=\"Przekrawacz - park maszyn\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></li>\r\n<li>do tektury falistej</li>\r\n<li>do papieru</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Linia pakująca</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/wiazarka-66cae27d16ab10fd709bd92c5bc760c7.jpg\" title=\"Wiązarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /><img src=\"../system/default/public/linia-pakujaca-7d3e9c263a6618eb2b23c5d3dde7e614.jpg\" title=\"Linia pakująca\" style=\"max-width: 220px;\" class=\"content-img ml-3\" /></li>\r\n<li>zautomatyzowana wiązarka taśmowa</li>\r\n</ul>\r\n</div>\r\n</li>\r\n</ul>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 18:52:14', '2020-10-20 11:52:09'),
(131, 11, 23, 0, '', 'Sekcja Innowacje', '<i class=\"fal fa-grip-lines\"></i> Innowacje <i class=\"fal fa-grip-lines\"></i>', '<div style=\"font-size: 14pt;\" class=\"text-danger\">Sila Liner</div>\r\n<p><img src=\"../system/default/public/silaliner_2-3b234450924a4c1b3b3bbc1eb3583e32.png\" title=\"Sila Liner - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Stworzyliśmy nowy brand opakowań dedykowanych produktom ekologicznym. Nazwaliśmy go: Sila Liner. Wykonany przez nas zadruk na Sila Liner tworzy niesamowicie ostry obraz na ciemno-brązowym naturalnym podłożu. Jest to papier z rodziny Kraftliner, dzięki czemu wyr&oacute;żnia się znacznie większą odpornością na rozerwanie, wszelkie pęknięcia oraz wysoką odpornością na wilgoć w por&oacute;wnaniu do papier&oacute;w makulaturowych GD2. Co jest kluczowe w kontekście ekologicznych rozwiązań opakowaniowych, nasz papier jest certyfikowany przez FSC. Sila Liner może być podstawą do wszelkich projekt&oacute;w, począwszy od opakowań jednostkowych, poprzez opakowania zbiorcze, projekty indywidualne jak i displaye.</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Opakowania kartonowe wielokrotnego użytku</div>\r\n<p><img src=\"../system/default/public/_warstwa-odlepna_180905d03_stand-jungle-7e3f61cffa6b0b7e9a1124c6ee0549b1.jpg\" title=\"Opakowania kartonowe wielokrotnego użytku - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Nasz nowy innowacyjny produkt jest wynikiem projektu &bdquo;Gama nowatorskich opakowań tekturowych wielokrotnego zastosowania, o innowacyjnych cechach i przełomowych parametrach użytkowych&rdquo;. Są to konstrukcje opakowaniowe z możliwością zmiany grafiki, poprzez zastosowanie dodatkowej informacyjno-ozdobnej warstwy odlepnej. Technologia produkcji opakowań jest objęta ochroną patentową nr 233993 pt.: Produkt z tektury falistej z warstwą odlepną. Produkt ten jest przeznaczony dla klient&oacute;w ceniących sobie ekologię, oszczędność i jednocześnie wysoką estetykę, przez co posiada szerokie zastosowanie. Dzięki warstwie odlepnej konstrukcja może być wykorzystana do kilku ekspozycji, jak r&oacute;wnież do r&oacute;żnych promocji organizowanych w sieciach dystrybucji. W ten spos&oacute;b odbiorca optymalizuje koszty kolejnych promocji oraz obniża ilość generowanych odpad&oacute;w.</p>\r\n<p><strong>Innowacyjność produktu:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>możliwość zmiany grafik wykonanych w najwyższej jakości nadruku offsetowego (warstwy odlepne)</li>\r\n<li>opakowanie o wydłużonym cyklu życia &ndash; wielokrotność użytkowania</li>\r\n<li>podwyższona wytrzymałość konstrukcji</li>\r\n<li>zmniejszenie ilości generowanych odpad&oacute;w &ndash; ekologia</li>\r\n<li>optymalizacja koszt&oacute;w</li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p>W ramach powyższego projektu stworzyliśmy r&oacute;wnież opakowania z tektury falistej o podwyższonych parametrach wytrzymałościowych wybranych ścian konstrukcyjnych poprzez zastosowanie wklejanych maszynowo poprzecznych wzmocnień. Takie wzmocnienia mają swoje praktyczne zastosowanie w szczeg&oacute;lności w opakowaniach typu Bag in Box. Powyższe opakowania są dostępne w ofercie sprzedażowej firmy od kwietnia 2020 roku. Produkt powstał dzięki dofinansowaniu z Funduszy Europejskich w ramach Programu Operacyjnego Inteligentny Rozw&oacute;j 2014-2020. Poddziałanie 3.2.1 Badania na rynek</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Opakowania o podwyższonej wytrzymałości</div>\r\n<p><img src=\"../system/default/public/wytrz-0e129f6e7936ce48cb0c0dc1ff63b761.png\" title=\"Opakowania o podwyższonej wytrzymałości\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Przedmiotem wynalazku jest innowacyjny, energooszczędny system wytwarzania opakowań o podwyższonej wytrzymałości. Technologia produkcji opakowań została zgłoszona do ochrony w Urzędzie Patentowym RP jako wynalazek nr P.398521 pt. &bdquo;Spos&oacute;b wytwarzania pudeł tekturowych i pudło tekturowe&rdquo; a także w Europejskim Urzędzie Patentowym jako wynalazek nr EP12183020.2 pt. &bdquo;A method for manufacturing of cardboard boxes and a cardboard box&rdquo;. Nowy produkt przeznaczony jest dla odbiorc&oacute;w nowatorskich opakowań, kt&oacute;rzy stawiają na nadawanie produktom nowych cech funkcjonalno-użytkowych. Wyroby te cechuje wysoka wytrzymałość, estetyka wizualna, ekologiczność (3R &ndash; Reduce, Reuse, Recycle ).</p>\r\n<div class=\"clearfix\"></div>\r\n<p><strong>Istotne cechy:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Średnia siła zrywania spoiny: 211 N/m</li>\r\n<li>Maksymalna siła zrywania spoiny: 336 N/m</li>\r\n<li>Praca zrywania spoiny: 495 J/m&sup2;</li>\r\n<li>Odporność spoiny na działanie naprężeń tnących: 1032 N/m</li>\r\n<li>Odkształcenie zgniatanego pudła: 9,01 mm</li>\r\n<li>Odporność pudła na nacisk statyczny (BCT): 2781 N</li>\r\n</ul>\r\n<p><strong>Innowacyjność produktu:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Dodatkowa funkcja ochronna</li>\r\n<li>Opakowanie do pakowania dynamicznego</li>\r\n<li>Dodatkowa funkcja transportowa &ndash; opakowania wielkogabarytowe</li>\r\n<li>Dodatkowa funkcja transportowa &ndash; transport w ekstremalnych warunkach klimatycznych</li>\r\n<li>Dodatkowa funkcja marketingowa &ndash; najwyższej jakości nadruk offsetowy</li>\r\n</ul>\r\n<p><strong>OPAKOWANIA O PODWYŻSZONEJ WYTRZYMAŁOŚCI DOSTĘPNE SĄ W OFERCIE SPRZEDAŻOWEJ FIRMY OD MARCA 2015.</strong></p>\r\n<p><strong>Produkt powstał dzięki dofinansowaniu z Europejskiego Funduszu Rozwoju Regionalnego w ramach P.O.I.G 4.6.</strong></p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 1, 'on', 'off', 'off', '', '2020-09-22', '2020-09-22 20:04:13', '2020-09-23 11:00:10'),
(132, 20, 6, 0, '', 'Diamenty Miesięcznika Forbesa 2020', 'Diamenty Miesięcznika Forbesa 2020', '<p>ROYALPACK laureatem Diamenty&nbsp;Miesięcznika Forbesa 2020</p>', '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-10-08', '2020-10-08 18:16:18', '2020-12-02 14:23:24'),
(133, 20, 6, 0, '', 'Dynamiczna Firma 2013', 'Dynamiczna Firma 2013', '<p>ROYALPACK otrzymał Certyfikat Dynamiczna Firma&nbsp;przyznany przez Bisnode Polska za osiągniętą dynamikę wzrostu w latach 2010, 2011, 2012</p>', '', '', '', '', '', '', '', '', 14, 'on', 'off', 'off', '', '2020-11-21', '2020-11-21 12:28:22', '2020-12-23 10:07:11'),
(134, 20, 6, 0, '', 'Certyfikat Wiarygodności Biznesowej', 'Certyfikat Wiarygodności Biznesowej', '<p>W 2013 roku firma otrzymała Certyfikat Wiarygodności Biznesowej nadany przez D&amp;B Poland za wysoką ocenę stabilności firmy.</p>', '', '', '', '', '', '', '', '', 14, 'on', 'off', 'off', '', '2020-11-21', '2020-11-21 12:31:48', '2020-12-23 10:14:32'),
(135, 24, 6, 30, '<span>Więcej</span><i class=\"fal fa-arrow-to-right\"></i>', 'Tektura falista oraz lita', 'TEKTURA FALISTA ORAZ LITA', NULL, '', '', '', '', '', 'fal fa-water', '', '', 9, 'on', 'off', 'off', '', '2020-12-20', '2020-12-20 17:30:12', '2020-12-20 17:58:14'),
(136, 25, 23, 0, '', 'Sekcja tektura falista', '<i class=\"fal fa-grip-lines\"></i> Tektura falista oraz lita w rolkach i arkuszach <i class=\"fal fa-grip-lines\"></i>', '<p>Mamy r&oacute;wnież w swojej ofercie produkcję tektury 2-warstwowej w rolkach. Tektura taka może być z nadrukiem pre-print lub bez. Produkujemy rolki od szerokości 80 mm do 1600 mm, w tym tzw. bobiny.</p>\r\n<p>Nasza szeroka oferta obejmuje r&oacute;wnież tekturę falistą i litą w arkuszach.</p>', '', '', '', '', '', 'fal fa-grip-lines fa-3x', '', '', 2, 'on', 'off', 'off', '', '2020-12-20', '2020-12-20 17:42:20', '2020-12-20 17:55:23'),
(137, 27, 14, 0, '', 'ROYALPACK zainteresowały się media krajowe', 'ROYALPACK zainteresowały się media krajowe. Przedsiębiorstwo zostało głównym bohaterem odcinka programu \"DOBRE BO POLSKIE\"', NULL, '', '', '', '', '', '', '', '', 1, 'on', 'off', 'off', '', '2020-12-23', '2020-12-23 10:21:17', '2020-12-23 10:23:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_image`
--

INSERT INTO `im_object_image` (`object_image_id`, `object_id`, `image_id`, `position`) VALUES
(8, 12, 4, 1),
(9, 12, 3, 2),
(18, 18, 8, 1),
(19, 18, 6, 2),
(20, 18, 9, 3),
(44, 14, 5, 1),
(46, 52, 17, 1),
(48, 54, 18, 1),
(49, 55, 23, 1),
(50, 56, 20, 1),
(51, 57, 24, 1),
(52, 58, 14, 1),
(53, 59, 16, 1),
(56, 80, 33, 1),
(60, 34, 13, 1),
(61, 53, 22, 1),
(62, 31, 15, 1),
(63, 35, 12, 1),
(64, 60, 26, 1),
(66, 36, 16, 1),
(69, 32, 14, 1),
(70, 116, 37, 1),
(72, 117, 39, 1),
(75, 118, 38, 1),
(78, 119, 40, 1),
(87, 115, 41, 1),
(88, 115, 42, 2),
(89, 115, 43, 3),
(90, 115, 44, 4),
(91, 115, 45, 5),
(92, 115, 46, 6),
(93, 115, 47, 7),
(94, 115, 48, 8),
(126, 120, 56, 1),
(127, 120, 57, 2),
(128, 120, 58, 3),
(129, 120, 59, 4),
(130, 120, 60, 5),
(150, 123, 68, 1),
(151, 123, 69, 2),
(156, 121, 64, 1),
(157, 121, 65, 2),
(158, 121, 66, 3),
(159, 121, 67, 4),
(184, 124, 70, 1),
(185, 124, 71, 2),
(186, 124, 72, 3),
(187, 124, 73, 4),
(188, 124, 74, 5),
(189, 124, 75, 6),
(190, 124, 76, 7),
(191, 124, 77, 8),
(196, 125, 78, 1),
(197, 125, 79, 2),
(219, 122, 62, 1),
(220, 122, 61, 2),
(221, 122, 63, 3),
(225, 5, 108, 1),
(226, 1, 117, 1),
(229, 132, 100, 1),
(230, 112, 49, 1),
(231, 112, 50, 2),
(232, 112, 51, 3),
(233, 112, 52, 4),
(234, 112, 53, 5),
(235, 112, 54, 6),
(236, 112, 55, 7),
(237, 136, 122, 1),
(238, 133, 121, 1),
(241, 134, 120, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_movie`
--

INSERT INTO `im_object_movie` (`object_movie_id`, `object_id`, `movie_id`, `position`) VALUES
(5, 3, 3, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_source`
--

INSERT INTO `im_object_source` (`object_source_id`, `object_id`, `source_id`, `position`) VALUES
(1, 137, 1, 1);

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
  `status_link` varchar(3) COLLATE utf8_polish_ci NOT NULL DEFAULT 'on',
  `description` text COLLATE utf8_polish_ci,
  `date_create` datetime DEFAULT NULL,
  `date_modify` datetime DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section`
--

INSERT INTO `im_section` (`section_id`, `parent`, `name`, `name_second`, `name_url`, `meta`, `icon`, `class`, `popup`, `position`, `status`, `status_copy`, `status_popup`, `status_parallax`, `status_link`, `description`, `date_create`, `date_modify`) VALUES
(1, 0, 'Strona główna', '', 'strona-glowna', 'Opis strony głownej', '', '', '', 1, 'off', 'on', 'off', 'off', 'on', '', '2020-06-09 16:25:42', '2020-12-02 14:22:25'),
(2, 0, 'O NAS', '', 'o-nas', '', '', 'container', '', 2, 'on', 'off', 'off', 'on', 'on', '', '2020-06-16 08:09:19', '2020-09-09 13:34:59'),
(3, 0, 'OFERTA', '', 'oferta', '', '', 'container', '', 3, 'on', 'off', 'off', 'on', 'on', '', '2020-06-16 08:10:11', '2020-11-08 11:03:08'),
(4, 0, 'TECHNOLOGIA', '', 'technologia', '', '', 'container', '', 4, 'on', 'off', 'off', 'on', 'on', '', '2020-06-16 08:10:47', '2020-09-09 13:34:58'),
(5, 0, 'KARIERA', '', 'kariera', '', '', 'container', '', 5, 'on', 'on', 'off', 'on', 'on', '', '2020-06-16 08:10:59', '2020-10-25 16:21:04'),
(6, 0, 'KONTAKT', '', 'kontakt', '', '', 'container', '', 6, 'on', 'on', 'off', 'on', 'on', '', '2020-06-16 08:11:10', '2020-10-25 16:21:15'),
(7, 2, 'Profil działalności', '', 'profil-dzialalnosci', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'on', 'on', '', '2020-06-21 15:45:04', '2020-10-20 11:24:29'),
(8, 3, 'OPAKOWANIA', '', 'opakowania', '', '', 'container', '', 1, 'on', 'off', 'off', 'on', 'on', '', '2020-06-21 15:49:55', '2020-09-09 11:53:57'),
(9, 3, 'POS Displays', '', 'pos-displays', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'off', 'off', 'off', 'on', '', '2020-06-21 15:50:11', '2020-06-30 11:32:26'),
(10, 8, 'Standard FEFCO', '', 'standard-fefco', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 15:51:50', '2020-06-23 11:12:02'),
(11, 8, 'SRP Displays', '', 'srp-displays', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 15:52:06', '2020-06-23 11:12:09'),
(12, 8, 'Ekspozytory ladowe', '', 'ekspozytory-ladowe', '', 'fal fa-angle-right', 'container', '', 3, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 15:53:42', '2020-06-23 11:12:13'),
(13, 8, 'E-commerce boxes', '', 'e-commerce-boxes', '', 'fal fa-angle-right', 'container', '', 4, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 15:54:06', '2020-06-23 11:12:19'),
(14, 8, 'Sila Liner', '', 'sila-liner', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 15:54:22', '2020-06-23 11:12:25'),
(15, 8, 'Projekty indywidualne', '', 'projekty-indywidualne', '', 'fal fa-angle-right', 'container', '', 6, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 15:54:40', '2020-06-23 11:12:31'),
(16, 8, 'Projekty innowacyjne', '', 'projekty-innowacyjne', '', 'fal fa-angle-right', 'container', '', 7, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 15:54:58', '2020-06-23 11:12:36'),
(17, 2, 'Historia firmy', '', 'historia-firmy', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 16:42:46', '2020-06-23 11:15:39'),
(18, 2, 'Polityka rozwoju', '', 'polityka-rozwoju', '', 'fal fa-angle-right', 'container', '', 3, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 16:43:04', '2020-06-23 11:15:45'),
(19, 2, 'Obsługa klienta', '', 'obsluga-klienta', '', 'fal fa-angle-right', 'container', '', 4, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 16:43:28', '2020-10-04 18:07:16'),
(20, 2, 'Ogólne warunki handlowe', '', 'ogolne-warunki-handlowe', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 16:43:47', '2020-06-23 11:15:56'),
(21, 2, 'Wyróżnienia', '', 'wyroznienia', '', 'fal fa-angle-right', 'container', '', 6, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 16:44:00', '2020-06-23 11:16:01'),
(22, 2, 'Media o nas', '', 'media-o-nas', '', 'fal fa-angle-right', 'container', '', 7, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 16:45:01', '2020-06-23 11:16:06'),
(23, 4, 'Offset', '', 'offset', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 17:06:29', '2020-07-21 16:52:11'),
(24, 4, 'Flexo', '', 'flexo', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 17:06:43', '2020-07-21 16:52:11'),
(25, 4, 'Park maszynowy', '', 'park-maszynowy', '', 'fal fa-angle-right', 'container', '', 3, 'on', 'on', 'off', 'on', 'on', '', '2020-06-21 17:06:56', '2020-10-20 11:28:21'),
(26, 4, 'R&D', '', 'rd', '', 'fal fa-angle-right', 'container', '', 4, 'on', 'on', 'off', 'on', 'on', '', '2020-06-21 17:07:12', '2020-10-20 11:30:30'),
(27, 4, 'Innowacje', '', 'innowacje', '', 'fal fa-angle-right', 'container', '', 6, 'on', 'on', 'off', 'off', 'on', '', '2020-06-21 17:07:27', '2020-09-22 20:01:10'),
(28, 4, 'Dział kontroli jakości', '', 'dzial-kontroli-jakosci', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'on', 'on', '', '2020-07-21 16:51:31', '2020-10-20 11:32:59'),
(29, 0, 'DOTACJA UE', '', 'dotacja-ue', '', '', 'container', '', 7, 'off', 'on', 'off', 'on', 'on', '', '2020-07-28 09:34:12', '2020-07-28 12:26:23'),
(30, 3, 'Tektura falista oraz lita', '', 'tektura-falista-oraz-lita', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'off', 'off', 'off', 'on', '', '2020-12-20 17:38:41', '2020-12-20 17:57:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section_image`
--

INSERT INTO `im_section_image` (`section_image_id`, `section_id`, `image_id`, `position`) VALUES
(15, 29, 28, 1),
(16, 29, 27, 2),
(18, 2, 34, 1),
(20, 4, 8, 1),
(21, 8, 7, 1),
(26, 7, 109, 1),
(27, 25, 110, 1),
(28, 26, 111, 1),
(29, 28, 112, 1),
(30, 5, 115, 1),
(31, 6, 116, 1),
(33, 3, 119, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2329 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section_object`
--

INSERT INTO `im_section_object` (`section_object_id`, `section_id`, `object_id`) VALUES
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
(674, 7, 15),
(751, 1, 18),
(799, 6, 22),
(1067, 5, 28),
(1101, 22, 33),
(1206, 28, 2),
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
(1514, 18, 30),
(1515, 17, 48),
(1520, 1, 21),
(1521, 6, 21),
(1522, 20, 21),
(1534, 21, 51),
(1539, 21, 52),
(1544, 21, 54),
(1547, 21, 55),
(1549, 21, 56),
(1551, 21, 57),
(1553, 21, 58),
(1555, 21, 59),
(1557, 29, 2),
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
(1759, 18, 49),
(1776, 22, 34),
(1777, 21, 53),
(1778, 22, 31),
(1779, 5, 27),
(1780, 6, 23),
(1781, 22, 35),
(1782, 1, 9),
(1783, 2, 9),
(1784, 3, 9),
(1785, 4, 9),
(1786, 5, 9),
(1787, 6, 9),
(1788, 7, 9),
(1789, 8, 9),
(1790, 9, 9),
(1791, 10, 9),
(1792, 11, 9),
(1793, 12, 9),
(1794, 13, 9),
(1795, 14, 9),
(1796, 15, 9),
(1797, 16, 9),
(1798, 17, 9),
(1799, 18, 9),
(1800, 19, 9),
(1801, 20, 9),
(1802, 21, 9),
(1803, 22, 9),
(1804, 23, 9),
(1805, 24, 9),
(1806, 25, 9),
(1807, 26, 9),
(1808, 27, 9),
(1809, 28, 9),
(1810, 29, 9),
(1811, 1, 10),
(1812, 2, 10),
(1813, 3, 10),
(1814, 4, 10),
(1815, 5, 10),
(1816, 6, 10),
(1817, 28, 10),
(1818, 29, 10),
(1831, 2, 82),
(1832, 1, 25),
(1833, 2, 25),
(1834, 3, 25),
(1835, 4, 25),
(1836, 5, 25),
(1837, 6, 25),
(1838, 7, 25),
(1839, 8, 25),
(1840, 9, 25),
(1841, 10, 25),
(1842, 11, 25),
(1843, 12, 25),
(1844, 13, 25),
(1845, 14, 25),
(1846, 15, 25),
(1847, 16, 25),
(1848, 17, 25),
(1849, 18, 25),
(1850, 19, 25),
(1851, 20, 25),
(1852, 21, 25),
(1853, 22, 25),
(1854, 23, 25),
(1855, 24, 25),
(1856, 25, 25),
(1857, 26, 25),
(1858, 27, 25),
(1859, 28, 25),
(1860, 29, 25),
(1862, 2, 83),
(1864, 2, 84),
(1866, 2, 85),
(1870, 2, 87),
(1871, 1, 60),
(1872, 2, 60),
(1873, 3, 60),
(1874, 4, 60),
(1875, 5, 60),
(1876, 6, 60),
(1877, 7, 60),
(1878, 10, 60),
(1879, 11, 60),
(1880, 12, 60),
(1881, 13, 60),
(1882, 14, 60),
(1883, 15, 60),
(1884, 16, 60),
(1885, 17, 60),
(1886, 18, 60),
(1887, 19, 60),
(1888, 20, 60),
(1889, 21, 60),
(1890, 22, 60),
(1891, 23, 60),
(1892, 24, 60),
(1893, 25, 60),
(1894, 26, 60),
(1895, 27, 60),
(1896, 28, 60),
(1897, 2, 81),
(1899, 2, 86),
(1903, 2, 88),
(1905, 3, 89),
(1907, 4, 90),
(1914, 3, 91),
(1915, 8, 93),
(1919, 8, 95),
(1920, 3, 92),
(1927, 8, 96),
(1929, 8, 98),
(1933, 8, 99),
(1937, 4, 101),
(1941, 4, 103),
(1943, 4, 102),
(1945, 4, 105),
(1946, 4, 104),
(1948, 1, 3),
(2005, 1, 108),
(2006, 2, 108),
(2007, 3, 108),
(2008, 4, 108),
(2009, 5, 108),
(2010, 6, 108),
(2011, 7, 108),
(2012, 8, 108),
(2013, 9, 108),
(2014, 10, 108),
(2015, 11, 108),
(2016, 12, 108),
(2017, 13, 108),
(2018, 14, 108),
(2019, 15, 108),
(2020, 16, 108),
(2021, 17, 108),
(2022, 18, 108),
(2023, 19, 108),
(2024, 20, 108),
(2025, 21, 108),
(2026, 22, 108),
(2027, 23, 108),
(2028, 24, 108),
(2029, 25, 108),
(2030, 26, 108),
(2031, 27, 108),
(2032, 28, 108),
(2033, 29, 108),
(2035, 19, 109),
(2037, 19, 107),
(2038, 8, 106),
(2043, 4, 111),
(2061, 7, 16),
(2063, 22, 36),
(2066, 22, 32),
(2071, 21, 116),
(2074, 21, 117),
(2078, 21, 118),
(2082, 21, 119),
(2083, 8, 94),
(2084, 8, 97),
(2087, 10, 115),
(2093, 11, 120),
(2097, 13, 123),
(2099, 12, 121),
(2101, 15, 124),
(2104, 16, 125),
(2105, 28, 37),
(2115, 14, 126),
(2119, 14, 122),
(2128, 23, 127),
(2130, 24, 128),
(2191, 27, 131),
(2193, 3, 110),
(2215, 1, 4),
(2222, 4, 100),
(2225, 26, 129),
(2235, 17, 20),
(2236, 1, 5),
(2237, 2, 5),
(2238, 3, 5),
(2239, 4, 5),
(2240, 5, 5),
(2241, 6, 5),
(2242, 7, 5),
(2243, 8, 5),
(2244, 9, 5),
(2245, 10, 5),
(2246, 11, 5),
(2247, 12, 5),
(2248, 13, 5),
(2249, 14, 5),
(2250, 15, 5),
(2251, 16, 5),
(2252, 17, 5),
(2253, 18, 5),
(2254, 19, 5),
(2255, 20, 5),
(2256, 21, 5),
(2257, 22, 5),
(2258, 23, 5),
(2259, 24, 5),
(2260, 25, 5),
(2261, 26, 5),
(2262, 27, 5),
(2263, 28, 5),
(2264, 29, 5),
(2271, 25, 130),
(2272, 1, 1),
(2273, 2, 1),
(2274, 3, 1),
(2275, 4, 1),
(2276, 5, 1),
(2277, 6, 1),
(2278, 7, 1),
(2279, 8, 1),
(2280, 9, 1),
(2281, 10, 1),
(2282, 11, 1),
(2283, 12, 1),
(2284, 13, 1),
(2285, 14, 1),
(2286, 15, 1),
(2287, 16, 1),
(2288, 17, 1),
(2289, 18, 1),
(2290, 19, 1),
(2291, 20, 1),
(2292, 21, 1),
(2293, 22, 1),
(2294, 23, 1),
(2295, 24, 1),
(2296, 25, 1),
(2297, 26, 1),
(2298, 27, 1),
(2299, 28, 1),
(2300, 29, 1),
(2305, 21, 132),
(2308, 30, 12),
(2309, 30, 2),
(2310, 30, 14),
(2311, 30, 13),
(2312, 30, 9),
(2313, 30, 25),
(2314, 30, 108),
(2316, 30, 5),
(2317, 30, 1),
(2319, 9, 112),
(2321, 30, 136),
(2322, 3, 135),
(2323, 21, 133),
(2326, 21, 134),
(2328, 22, 137);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_setting`
--

INSERT INTO `im_setting` (`setting_id`, `name`, `system_name`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 'System name', 'name', 'royalpack.com.pl', '', '2020-06-09 16:25:42', '2020-06-09 16:25:42'),
(2, 'Favicon', 'favicon', 'favicon.png', '', '2020-06-09 16:25:42', '2020-06-09 16:25:42'),
(3, 'Font', 'font', 'Roboto', '', '2020-06-09 16:25:42', '2020-06-24 14:01:24'),
(4, 'Font size', 'font-size', '15px', '', '2020-06-17 14:13:35', '2020-06-17 14:13:35'),
(5, 'Google API', 'google-api', 'AIzaSyBsx3mEXTFuu70t5rvDr7EgZGUDFfzx0DQ', '', '2020-06-17 14:13:36', '2020-07-13 20:27:56'),
(6, 'Style map', 'map-style', '[\r\n    {\r\n        \"featureType\": \"administrative\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": \"-100\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"administrative.province\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"visibility\": \"off\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"landscape\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": -100\r\n            },\r\n            {\r\n                \"lightness\": 65\r\n            },\r\n            {\r\n                \"visibility\": \"on\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"poi\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": -100\r\n            },\r\n            {\r\n                \"lightness\": \"50\"\r\n            },\r\n            {\r\n                \"visibility\": \"simplified\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": \"-100\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road.highway\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"visibility\": \"simplified\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road.arterial\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"lightness\": \"30\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"road.local\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"lightness\": \"40\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"transit\",\r\n        \"elementType\": \"all\",\r\n        \"stylers\": [\r\n            {\r\n                \"saturation\": -100\r\n            },\r\n            {\r\n                \"visibility\": \"simplified\"\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"water\",\r\n        \"elementType\": \"geometry\",\r\n        \"stylers\": [\r\n            {\r\n                \"hue\": \"#ffff00\"\r\n            },\r\n            {\r\n                \"lightness\": -25\r\n            },\r\n            {\r\n                \"saturation\": -97\r\n            }\r\n        ]\r\n    },\r\n    {\r\n        \"featureType\": \"water\",\r\n        \"elementType\": \"labels\",\r\n        \"stylers\": [\r\n            {\r\n                \"lightness\": -25\r\n            },\r\n            {\r\n                \"saturation\": -100\r\n            }\r\n        ]\r\n    }\r\n]', '', '2020-06-17 14:13:36', '2020-12-22 21:06:02'),
(7, 'Content class', 'class-content', 'class-content', '', '2020-09-15 08:47:13', '2020-10-08 16:46:18'),
(8, 'Loading page', 'loading-page', 'background: #fff;|top:30%;|color:#e0c469;font-size: 150px;|fad fa-spinner-third fa-spin|fadeOutUp|900', 'Background style, icon box style, icon style, icon class, animation, visible time', '2020-10-07 12:02:35', '2020-10-20 14:56:02'),
(9, 'Debug', 'debug', 'disable', 'enable/disable (status)', '2020-12-14 18:20:24', '2020-12-14 18:20:24'),
(10, 'Map zoom', 'zoom-map', '16', '15, 16, 17 - probably will be ok', '2020-12-22 17:58:49', '2020-12-22 17:58:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_source`
--

INSERT INTO `im_source` (`source_id`, `name`, `content`, `link`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Jak powstają papierowe opakowania - ROYALPACK', '<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/tDgzOihKcIo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', 'on', '', '2020-12-23 10:22:56', '2020-12-23 10:46:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_translation`
--

INSERT INTO `im_translation` (`translation_id`, `language_id`, `name`, `target_table`, `target_column`, `target_record`, `content`, `description`, `date_create`, `date_modify`) VALUES
(1, 2, 'Profil działalności', 'im_object', 'name', 16, '<i class=\"fal fa-grip-lines\"></i> Profile <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-05 08:48:25', '2020-08-05 08:48:25'),
(2, 3, 'Profil działalności', 'im_object', 'name', 16, '<i class=\"fal fa-grip-lines\"></i> Profil der Tätigkeit <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-05 08:49:05', '2020-08-05 08:49:05'),
(3, 3, 'Kim jesteśmy', 'im_object', 'content', 16, '<p><strong><span style=\"font-size: 14pt;\">Wer wir sind?</span></strong></p>\r\n<p>Wir sind Hersteller von Wellpappe und Verpackung, mit der Technologie des Offsetdrucks und Flexodrucks bedruckt werden. Wir produzieren Kollektiv- und Einzelverpackungen, display, sowie Projekte aus der POS Gruppe f&uuml;r Produkte aus verschiedenen Sektoren der Marktwirtschaft. Die Gesellschaft ist seit 2009 auf dem Markt t&auml;tig, ihre Geschichte ist jedoch ein langer Prozess, der auf &uuml;ber 20 Jahren Erfahrung in der Verpackungsbranche basiert. Deswegen sind wir uns dessen v&ouml;llig bewusst, wie wichtig die Sorge um den Kunden und dessen Zufriedenheit ist. Wir verstehen Ihre Bed&uuml;rfnisse und passen uns an sie an.</p>', '', '2020-08-05 08:58:06', '2020-09-15 12:12:37'),
(4, 2, 'Kim jesteśmy', 'im_object', 'content', 16, '<p><strong><span style=\"font-size: 14pt;\">Who are we?</span></strong></p>\r\n<p>We are a manufacturer of corrugated cardboard and packaging, printed with offset and flexo printing techniques. We produce individual and collective packaging, displays, as well as projects from the POS group of products from different sectors of the market. The company has been present in the market since 2009, but its history is a long process based on over 20 years of experience in the packaging industry. Therefore, we are fully aware of how important it is to care for our customers. We understand you and we adjust to your needs.</p>', '', '2020-08-05 09:01:22', '2020-11-10 15:08:16'),
(5, 3, 'Zaufanie', 'im_object', 'name', 6, 'VERTRAUEN', NULL, '2020-08-05 09:03:18', '2020-08-05 09:03:18'),
(6, 2, 'Zaufanie', 'im_object', 'name', 6, 'TRUST', NULL, '2020-08-05 09:03:53', '2020-08-05 09:03:53'),
(7, 2, 'Ekologia', 'im_object', 'name', 7, 'ECOLOGY', NULL, '2020-08-05 09:07:39', '2020-08-05 09:07:39'),
(8, 3, 'Ekologia', 'im_object', 'name', 7, 'ÖKOLOGIE', NULL, '2020-08-05 09:08:12', '2020-08-05 09:08:12'),
(9, 3, 'Jakość', 'im_object', 'name', 8, 'QUALITÄT', NULL, '2020-08-05 09:09:38', '2020-08-05 09:09:38'),
(10, 2, 'Jakość', 'im_object', 'name', 8, 'QUALITY', '', '2020-08-05 09:09:57', '2020-08-05 09:10:05'),
(11, 3, 'Profil działalności', 'im_object', 'content', 15, '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Mission</span></strong></p>\r\n<p>Unser Ziel ist, die besten in der Branche zu sein. Wir streben den Aufbau dauerhafter Kundenbeziehungen an, in dem wir einen sehr flexiblen und umfassenden Kundenservice anbieten. Mit dieser Strategie können wir sogar auf die Wünsche der anspruchsvollsten Kunden eingehen, und damit Zufriedenheit garantieren. Das versprechen wir als verantwortungsvolles und nachhaltiges Unternehmen.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potenzial</span></strong></p>\r\n<p>Unser ständiges Firmenwachstum verdanken wir vor allem unseren Arbeitnehmern. Seit Beginn unserer Firmengeschichte haben wir auf eine schnelle Entwicklung unserer Position am Markt gesetzt. Dank unserem qualifizierten Personal, ständig wachsenden Kapazitäten und dem Erwerb eines modernen Maschinenparks, gelang es uns, dieses Ziel zu verwirklichen. Im Rahmen der Investitionen in die Entwicklung des Unternehmens hat die Firma im Jahre 2019 den neuen Produktionsstandort errichtet und einen modernen Maschinenpark erworben, wodurch sich die Produktionskapazitäten auf 50 Millionen m2 erhöhten. Das Image unserer Marke überzeugt jeden Tag durch Zuverlässigkeit und Professionalität.</p>', NULL, '2020-08-05 09:12:20', '2020-12-23 08:46:12'),
(12, 2, 'Profil działalności', 'im_object', 'content', 15, '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Mission</span></strong></p>\r\n<p>Our goal is to be the best in what we do. For the sake of building long-lasting relationships with our customers, we offer a very flexible and comprehensive service. It guarantees flexibility for the needs of even the biggest customers which translates into their satisfaction. It is the result of responsible and sustainable business.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potential</span></strong></p>\r\n<p>We owe our constantly growing potential mainly to our employees. From the very beginning of our existence, we invested in the fast development of our position on the market. With qualified staff and continuously increasing capacities, and through the purchase of modern machinery, we achieve this goal. We invest in the development of the company, in 2019 we built a new manufacturing plant and purchased modern machinery, increasing its production capacity to 50 million square metres. Through our thoroughness and professional approach, we build our brand every day.</p>', NULL, '2020-08-05 09:14:09', '2020-11-10 15:12:09'),
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
(24, 2, 'Strona główna', 'im_section', 'name', 1, 'HOMEPAGE', '', '2020-08-05 10:09:41', '2020-08-05 10:10:54'),
(25, 3, 'Profil działalności', 'im_section', 'name', 7, 'Profil der Tätigkeit', NULL, '2020-08-18 12:34:19', '2020-08-18 12:34:19'),
(26, 2, 'Profil działalności', 'im_section', 'name', 7, 'Profile', NULL, '2020-08-18 12:34:45', '2020-08-18 12:34:45'),
(27, 2, 'Historia firmy', 'im_section', 'name', 17, 'History of the company', NULL, '2020-08-18 12:38:21', '2020-08-18 12:38:21'),
(28, 3, 'Historia firmy', 'im_section', 'name', 17, 'Geschichte der Firma', NULL, '2020-08-18 12:38:42', '2020-08-18 12:38:42'),
(29, 3, 'Historia firmy', 'im_object', 'name', 20, '<i class=\"fal fa-grip-lines\"></i> Geschichte der Firma <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-18 12:55:04', '2020-08-18 12:55:04'),
(30, 2, 'Historia firmy', 'im_object', 'name', 20, '<i class=\"fal fa-grip-lines\"></i> History of the company <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-18 12:55:34', '2020-08-18 12:55:40'),
(31, 3, 'Historia firmy', 'im_object', 'content', 20, '<p>Aus bescheidenen Anfängen hat sich ein modernes Familienunternehmen entwickelt. Die schnelle Entwicklung im Jahr 2011, nahm ihren Ursprung bereits viel früher; denn 1996 wurde der Gründer von Royalpack, Andrzej Tatar, zum einzigen Vertreter von der Stone Europa Carton GmbH auf dem polnischen Markt. Drei Jahre später, 1999, eröffnete er in Polen die Niederlassung Europa Carton Sp. z o. o. und zum Geschäftsführer ernannt. Ein Jahr später stieg Anna Tatar als zukünftige Miteigentümerin von Royalpack in das Unternehmen ein, um die Logistikabteilung in der Niederlassung Europa Carton in Zielona G&oacute;ra zu leiten. Bis 2010 befand sich die Niederlassung Europa Carton Sp. z o. o. in den Händen des Konzerns Smurfit Kappa.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">2011</span></strong></p>\r\n<p>Gründung der Firma ROYALPACK, Tatar Spółka jawna. Das Unternehmen konzentrierte sich auf der Produktion von Verpackungen aus Wellpappe, die mit der Methode des Offsetdrucks bedruckt wurden.  2011 verzeichnete die Firma folgenden Maschinenpark:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- Offsetdruckmaschine KBA 162 (Format 1120 x 1620 mm),</li>\r\n<li class=\"list-group-item\">- Kaschierungsmaschine,</li>\r\n<li class=\"list-group-item\">- Automatische Stanzmaschine BOBST 1575,</li>\r\n<li class=\"list-group-item\">- Stanztiegel Viking und Crosland (Format bis zu 1700 mm),</li>\r\n<li class=\"list-group-item\">- 3-Punkten Faltschachtel-Klebemaschine.</li>\r\n</ul>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg\" title=\"Neu Hauptsitz\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">2013</span></strong></p>\r\n<p>Durchbruch des Unternehmens - am 31. Juli erhielt das Unternehmen die Unionsbeihilfe im Rahmen des Operationellen Programms Innovative Wirtschaft (Priority Axis 4 – Investitionen für Innovation).  Pilotprojekt: &ldquo; Unterstützung für die erste Umsetzung der Erfindung &rdquo;. Dadurch konnte im November der Bau des modernen Betriebes in Słone beginnen.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">2015</span></strong></p>\r\n<p>Vervollständigung der Investitionen und Wechsel des Firmensitzes..</p>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg\" title=\"Erweiterung der Produktionshalle\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">2016</span></strong></p>\r\n<p>Erweiterung der Produktionshalle mit zusätzlicher Lagerfläche um weitere 2680 Quadratmeter.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">2018</span></strong></p>\r\n<p>Ein weiterer Meilenstein in der Firmengeschichte des Unternehmens - am 15. Januar 2018 erhielt Royalpack den EU-Zuschuss im Rahmen des Operationellen Programms für intelligente Entwicklung (2014-2020). Projekt: \"Eine Palette neuartiger, wiederverwendbarer Kartonverpackungen mit innovativen Eigenschaften und Betriebsparametern\". Das ermöglichte es uns, das Unternehmen mit einer modernen Produktionslinie für die Herstellung von Verpackungen mit einem sehr hochwertigen Offsetdruck auszustatten.  Darüber hinaus erwarb das Unternehmen eine Flexodruckmaschine aus eigenen Mitteln und erweiterte das Werk um rund 6.000 Quadratmeter.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">2020</span></strong></p>\r\n<p>Abschluss der Investitionen, in deren Rahmen Royalpack die folgenden Maschinen installierte:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- Eine weltweit einzigartige Linie zur Herstellung von Wellpappe und deren gleichzeitiger Laminierung installierte. Die Linie wurde von BHS, PIVAB und STOCK geliefert.</li>\r\n<li class=\"list-group-item\">- 6-farbige VLF KBA Rapida 164A Maschine f&uuml;r den Offsetdruck.</li>\r\n<li class=\"list-group-item\">- 5-farbige BOBST Maschine f&uuml;r den Flexodruck.</li>\r\n<li class=\"list-group-item\">- BOBST 1600 Stanzmaschine mit Power Register System.</li>\r\n<li class=\"list-group-item\">- Querschneider f&uuml;r Wellpappe STOCK und Papier BW Papersystems.</li>\r\n</ul>\r\n<p>Zusätzlich wurde die Produktionshalle um weitere 6.000 Quadratmeter erweitert.</p>', '', '2020-08-18 13:02:34', '2020-12-23 08:52:24'),
(32, 3, 'Historia firmy - aktualnie', 'im_object', 'content', 48, '<p><strong><span style=\"font-size: 14pt;\">Derzeit...</span></strong></p>\r\n<p>Unser Unternehmen beschäftigt inzwischen über 100 Angestellte, und die Anzahl wächst stetig. Dazu tragen sowohl unsere neue Maschinen, die wir im Jahr 2018 erworben haben, als auch das wachsende Interesse von Unternehmen aus unterschiedlichen industriellen Bereichen und Märkten, bei. Royalpack ist auf dem polnischen, deutschen, österreichischen, englischen, skandinavischen und dem Markt der Beneluxstaaten vertreten. Auch in Zukunft erwarten wir eine weitere Zusammenarbeit mit anderen Ländern Europas.</p>', NULL, '2020-08-18 13:07:08', '2020-12-23 09:06:42'),
(33, 2, 'Historia firmy - aktualnie', 'im_object', 'content', 48, '<p><strong><span style=\"font-size: 14pt;\">Currently...</span></strong></p>\r\n<p>Currently, the company employs over 100 people, but their number is constantly growing. What contributes to it is the new machinery purchased in 2018, new investment, and thus the growing interest of companies from different industry sectors and markets. Royalpack operates in the Polish, German, Austrian, British, Scandinavian and Benelux markets with prospects for further development with other European markets...</p>', '', '2020-08-18 13:07:55', '2020-11-10 15:13:37'),
(34, 2, 'Historia firmy', 'im_object', 'content', 20, '<p>Despite the humble beginnings, a modern family business was created. A rapid development in 2011 had its roots in 1996 when the founder of Royalpack, Andrzej Tatar, became the sole representative of Stone Europa Carton GmbH in the Polish market. Three years later, in 1999, he opened in Poland a branch of Europa Carton Sp. z o. o. and became its CEO. In the year 2000, Anna Tatar, a future co-owner of Royalpack, joined the logistics team of Europa Carton branch in Zielona G&oacute;ra. By 2010, the branch of Europe Carton Sp. z o. o. was within the structures of Smurfit Kappa Group.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Year 2011</span></strong></p>\r\n<p>Creation of ROYALPACK, Tatar Sp&oacute;łka jawna. The company&rsquo;s bussiness is focused on the production of corrugated cardboard packaging made of with offset printing technology. In 2011, the company was equipped with the following machinery:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- offset printing machine KBA 162 (format: 1120 x 1620 mm),</li>\r\n<li class=\"list-group-item\">- laminator,</li>\r\n<li class=\"list-group-item\">- automatic die cutter BOBST 1575,</li>\r\n<li class=\"list-group-item\">- stamping crucible Viking and Crosland (format up to 1700 mm),</li>\r\n<li class=\"list-group-item\">- 3-point folder-gluer.</li>\r\n</ul>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg\" title=\"New office of the company\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Year 2013</span></strong></p>\r\n<p>A breakthrough for the company. On 31 July, ROYALPACK, Tatar Sp. j. received an EU grant under the Innovative Economy Operational Programme, Priority Axis 4 - Investments in innovative undertakings. Pilotage: &ldquo;Support for the first implementation of the invention.&rdquo; Thanks to it, in November, we began the construction of a modern plant in Słone.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Year 2015</span></strong></p>\r\n<p>Completion of the investment and change of the registered office of the company.</p>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg\" title=\"The extension of Production Park\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Year 2016</span></strong></p>\r\n<p>The extension of Production Park for an extra 2 680 square metre</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Year 2018</span></strong></p>\r\n<p>The next breakthrough for the company. &ndash; on 15th January ROYALPACK received an EU grant under the Intelligent Development Operational Programme, 2014-2020. Project: &ldquo;Range of innovative reusable cardboard packaging with innovative features and landmark performance parameters&rdquo;. Thanks to the grant, the company is equipped with a modern production line for the production of packaging with very high quality offset printing. In addition, the company purchased the flexographic printing machine from its own funds and expanded the plant by approx. 6 000 square metres.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Year 2020</span></strong></p>\r\n<p>Completion of the investment, as part of which Royalpack has installed:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- A worldwide unique line for the corrugated board production and its simultaneous lamination. The line was supplied by BHS, PIVAB and STOCK.</li>\r\n<li class=\"list-group-item\">- 6-colors VLF KBA Rapida 164A machine for offset printing.</li>\r\n<li class=\"list-group-item\">- 5-colors BOBST machine for flexographic printing.</li>\r\n<li class=\"list-group-item\">- BOBST 1600 flat die-cutting machine with Power Register System.</li>\r\n<li class=\"list-group-item\">- Sheeters for corrugated board STOCK and paper BW Papersystems.</li>\r\n</ul>\r\n<p>Furthermore, the production facility was extended by additional 6,000 square metres.</p>', '', '2020-08-18 13:17:53', '2020-11-10 15:32:41'),
(35, 3, 'Polityka rozwoju', 'im_object', 'name', 30, '<i class=\"fal fa-grip-lines\"></i> Politik der nachhaltigen Entwicklung <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-18 16:46:45', '2020-08-18 16:46:45'),
(36, 2, 'Polityka rozwoju', 'im_object', 'name', 30, '<i class=\"fal fa-grip-lines\"></i> Sustainable development policy <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-18 16:47:18', '2020-08-18 16:47:18'),
(37, 2, 'Polityka rozwoju', 'im_section', 'name', 18, 'Sustainable development policy', NULL, '2020-08-18 16:48:03', '2020-08-18 16:48:03'),
(38, 3, 'Polityka rozwoju', 'im_section', 'name', 18, 'Politik der nachhaltigen Entwicklung', NULL, '2020-08-18 16:48:24', '2020-08-18 16:48:24'),
(39, 2, 'Polityka rozwoju', 'im_object', 'content', 30, '<p>The policy of sustainable economic development is primarily a business activity with concern for social progress and respect for the environment.</p>\r\n<p>Royalpack is a company that conducts its business in a responsible and sustainable way. The satisfaction of our customers, personal development of our employees and the respect for the environment and local communities are the main values that we cherish.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Community</span></strong></p>\r\n<p>Royalpack strives to be the most recognizable manufacturer of cardboard packaging on the market. To achieve this, we will act for the benefit of the environment and local communities among which we have the privilege to work.</p>\r\n<p>Our employees are our greatest investment. We try to take care of the development of their competence, a sense of identity with the company, and rewarding career opportunities. The basis for the personal development of our employees is to support their activities, to organize trainings, to boost their ambition and positive motivation.</p>\r\n<p>We say &ldquo;no&rdquo; to the discrimination on the grounds of sex, race, age, religion, political views or other features that could in any way cause discrimination.</p>\r\n<p>We promote the interests of people with disabilities and people bringing up children by adapting the infrastructure. As a result, people with disabilities do not feel discriminated against and can fully function in our plant.</p>', NULL, '2020-08-18 16:50:59', '2020-08-18 16:50:59'),
(40, 3, 'Polityka rozwoju', 'im_object', 'content', 30, '<p><strong><span style=\"font-size: 14pt;\">Politik der nachhaltigen Entwicklung</span></strong></p>\r\n<p>Die Politik einer nachhaltigen wirtschaftlichen Entwicklung bedeutet für uns vor allem, unsere unternehmerischen Aktivitäten auf den gesellschaftlichen Fortschritt und den Respekt gegenüber der Umwelt zu konzentrieren.</p>\r\n<p>Royalpack ist eine Firma, die verantwortungsbewusst und nachhaltig geführt wird. Die Zufriedenheit unserer Kunden, die persönliche Weiterentwicklung unserer Arbeitnehmer und der Respekt gegenüber der Umwelt und den lokalen Gemeinden sind die wichtigsten Werte, die wir pflegen.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Gemeinschaft</span></strong></p>\r\n<p>Royalpack strebt danach, der am herausragendste Hersteller von Verpackungen aus Karton in der Branche zu werden. Um dieses Ziel zu erreichen, werden wir zugunsten der Umwelt und der lokalen Gemeinden handeln.</p>\r\n<p>Der Focus unserer Investitionen liegt auf unseren Angestellten. Zur Entwicklung von Kompetenzen fördern wir ihre Identität mit der Firma und sorgen für zufriedenstellende Karrieremöglichkeiten. Die Grundlage für die persönliche Entwicklung unserer Arbeitnehmer ist die Unterstützung ihrer Handlungen und Ambitionen, Organisation von Schulungen und positive Motivation.</p>\r\n<p>Wir widersprechen der Diskriminierung des Geschlechts, der Rasse, des Alters, der Konfession, der politischen Überzeugung und anderer Eigenschaften, die auf jegliche Art diskriminierende Handlungen verursachen könnten.</p>\r\n<p>Wir fördern die Einstellung behinderter Personen und ermöglichen die Vereinbarkeit von Familie und Beruf. Dafür schaffen wir individuelle Strukturen oder nehmen Anpassungen vor. Unsere Mitarbeiter sollen sich in unserem Unternehmen wohl fühlen!</p>', NULL, '2020-08-18 16:52:52', '2020-12-23 08:57:40'),
(41, 3, 'Polityka rozwoju', 'im_object', 'content', 49, '<p><strong><span style=\"font-size: 14pt;\">Umwelt</span></strong></p>\r\n<p>Der Bau des neuen Produktionsstandortes darf die Umwelt nicht beeinträchtigen. Wir sind uns dessen völlig bewusst und  bemühen uns daher, neue und umweltfreundliche Technologien umzusetzen.</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Erneuerbare Energiequellen</strong>\r\n<div>Auf dem Betriebsgelände wurden Solaranlagen montiert, um den Energieverbrauch zu reduzieren. Die Firma verwendet Sonnenenergie für die Erwärmung des Leitungswassers im Bürokomplex und in der Produktionshalle.</div>\r\n</li>\r\n<li><strong>Reduktion des Materialaufwands in der Produktion</strong>\r\n<div>Der moderne Maschinenpark ermöglicht es uns, die Menge der produzierten Abfälle zu reduzieren, die während des Produktionsprozesses entstehen. Das bedingt natürlich auch einen geringen Erwerb erforderlicher Rohstoffe.</div>\r\n</li>\r\n<li><strong>Anwendung der Sonora-Druckplatten der Firma KODAK</strong>\r\n<div>Dank dem Erwerb und der Umsetzung einer modernen Technologie im Druckprozess, insbesondere die Verwendung der prozessfreien Sonora-Druckplatten, konnte die Firma bedeutsame Ersparnisse in Verbindung mit der Elimination chemischer Stoffe einfahren. Die während des Prozesses der Plattenbearbeitung verbrauchten Wasser- und Energiemengen wurden reduziert. Die Zeit der Vorbereitung zum Druck wurde verkürzt und chemische Abfälle, die eine umständliche Entsorgung bedingen, wurden eliminiert (<a href=\"system/default/public/swiat-druku-924bf7ef033d814dc221bde1cc7b6b65.pdf\" target=\"_blank\" rel=\"noopener\">mehr dazu im Artikel DRUCKWELT</a>).</div>\r\n</li>\r\n<li><strong>Abwasservorbehandlungsanlage f&uuml;r die Flexodruckmaschine</strong>\r\n<div>Die Flexodruckmaschine erzeugt Abwasser mit einer erheblichen Schadstoffbelastung. Die hochtechnologisch fortschrittliche Vorbehandlungsanlage für die industrielle Abwasserbehandlung garantiert die Aufbereitung des Flexolackabwassers auf die erforderlichen Abflussparameter.</div>\r\n</li>\r\n<li><strong>Fortschrittliches pneumatisches System zum Sammeln von Clipping</strong>\r\n<div>Das Vakuumsystem wird verwendet, um Schnittgut aus allen Bereichen der Anlage effektiv zu gewinnen. Die gesammelten Materialien werden pneumatisch zu einem zentralen Tank transportiert, aus dem sie dann entsorgt werden.</div>\r\n</li>\r\n</ul>\r\n<p>Die Verbindung der ökonomischen und ökologischen Faktoren schafft ein positives Ergebnis in der Wirtschaftlichkeit des Unternehmens und in der umgebenden Umwelt.</p>', '', '2020-08-18 16:57:09', '2020-12-23 09:10:02'),
(42, 2, 'Polityka rozwoju', 'im_object', 'content', 49, '<p><strong><span style=\"font-size: 14pt;\">Environment</span></strong></p>\r\n<p>The construction of a new manufacturing plant cannot negatively affect the environment. Being fully aware of it, we try to implement environmentally friendly technologies.</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Renewable energy sources</strong>\r\n<div>On our premises, we have mounted solar panels. Thanks to this, we reduce energy consumption. Our company uses solar energy for heating the tap water in an office building, as well as on the production hall.</div>\r\n</li>\r\n<li><strong>Reducing the production material consumption rate</strong>\r\n<div>Modern machinery enables us to reduce the amount of waste generated during the manufacturing process. This is linked directly to a reduction in needed resources.</div>\r\n</li>\r\n<li><strong>The use of KODAK Sonora panels</strong>\r\n<div>Through the acquisition and implementation of modern technologies in the printing process, which is for example the use of CTP Sonora plates, the company introduced significant cost savings associated with the elimination of chemicals. We reduced the amount of water and energy consumed during the plate treatment process. We shortened the time needed to prepare the project for printing, and we eliminated chemical waste that is difficult to dispose of to dispose (<a href=\"system/default/public/swiat-druku-924bf7ef033d814dc221bde1cc7b6b65.pdf\" target=\"_blank\" rel=\"noopener\">read an article PRINTING WORLD</a>).</div>\r\n</li>\r\n<li><strong>Wastewater pre-treatment plant dedicated to the flexographic printing machine</strong>\r\n<div>The flexographic printing machine generates wastewater with a significant pollutant load. The highly technologically advanced pre-treatment plant for industrial wastewater treatment guarantees the treatment of flexo printing wastewater as required.</div>\r\n</li>\r\n<li><strong>Advanced pneumatic system for collecting waste trim</strong>\r\n<div>The vacuum system is used to effectively recover waste trim from all areas of the plant. The collected materials are pneumatically transported to a central tank, from which they are then disposed of.</div>\r\n</li>\r\n</ul>\r\n<p>The combination of economic and ecological factors creates a positive effect on the company\'s bussiness, as well as on the surrounding environment.</p>', '', '2020-08-18 16:59:08', '2020-11-10 15:37:42'),
(43, 2, 'Gepard Biznesu 2019', 'im_object', 'name', 31, 'ROYALPACK is the Diamond of the Polish Economy and the Business Cheetah 2019 ', '', '2020-08-19 15:23:25', '2020-08-19 15:41:43'),
(44, 3, 'Gepard Biznesu 2019', 'im_object', 'name', 31, 'ROYALPACK ist der Diamant der polnischen Wirtschaft und des Business Cheetah 2019', NULL, '2020-08-19 15:42:06', '2020-08-19 15:42:06'),
(45, 3, 'Gepard Biznesu 2019', 'im_object', 'content', 31, '<p>ROYALPACK ist der Diamant der polnischen Wirtschaft und des Business Cheetah 2019 ROYALPACK, Tatar S. J. in Słone wurde vom Institute of European Business bei der 14. Ausgabe des Business Cheetahs Competition 2019, der 12. Ausgabe des Brillant Polnische Wirtschaft 2019 Competition, der 12. Ausgabe des Effective Company 2019 Competition und der 7. Auflage des Strong Trustworthy 2019 Program Promotion ausgezeichnet.</p>', '', '2020-08-19 15:42:44', '2020-12-23 08:59:07'),
(46, 2, 'Gepard Biznesu 2019', 'im_object', 'content', 31, '<p>ROYALPACK, Tatar S. J. in Słone was awarded by the Institute of European Business in the 14th edition of the Business Cheetahs 2018 Competition, 12th edition of the Diamond of the Polish Economy 2019 Competition, the 12th edition of the Effective Company 2019 Competition and the 7th edition of the Strong Trustworthy 2019 Program Promotion.</p>', '', '2020-08-19 15:42:53', '2020-08-19 19:04:44'),
(47, 3, 'Czytaj więcej', 'im_object', 'link_name', 31, 'Sprich mehr...', '', '2020-08-19 15:48:22', '2020-08-19 16:13:33'),
(48, 2, 'Czytaj więcej', 'im_object', 'link_name', 31, 'Read more...', '', '2020-08-19 15:48:37', '2020-08-19 15:48:41'),
(49, 2, 'Orły Wprost 2016', 'im_object', 'name', 32, 'ROYALPACK as a Laureate of Orły Wprost 2016', NULL, '2020-08-19 16:17:03', '2020-08-19 16:17:03'),
(50, 3, 'Orły Wprost 2016', 'im_object', 'name', 32, 'ROYALPACK Gewinner der Orły Wprost 2016', NULL, '2020-08-19 16:17:34', '2020-08-19 16:17:34'),
(51, 2, 'Orły Wprost 2016', 'im_object', 'content', 32, '', '', '2020-08-19 16:18:48', '2020-09-16 09:08:40'),
(52, 3, 'Orły Wprost 2016', 'im_object', 'content', 32, '<p>ROYALPACK wurde vom Institute of European Business in der 11. Ausgabe des Diamonds of the Polish Economy-Wettbewerbs 2018 ausgezeichnet</p>', '', '2020-08-19 16:19:00', '2020-12-23 09:15:08'),
(53, 3, 'Czytaj więcej', 'im_object', 'link_name', 32, 'Sprich mehr...', NULL, '2020-08-19 16:20:24', '2020-08-19 16:20:24'),
(54, 2, 'Czytaj więcej', 'im_object', 'link_name', 32, 'Read more...', NULL, '2020-08-19 16:20:36', '2020-08-19 16:20:36'),
(55, 2, 'Rzetelni dla Biznesu', 'im_object', 'name', 34, 'ROYALPACK received the regional award \"Reliable for Business 2016\"', NULL, '2020-08-19 16:21:42', '2020-08-19 16:21:42'),
(56, 3, 'Rzetelni dla Biznesu', 'im_object', 'name', 34, 'ROYALPACK erhielt die regionale Auszeichnung \"Ehrlich für Business 2016\"', '', '2020-08-19 16:22:17', '2020-08-19 19:01:40'),
(57, 2, 'Czytaj więcej', 'im_object', 'link_name', 34, 'Read more...', NULL, '2020-08-19 16:22:41', '2020-08-19 16:22:41'),
(58, 3, 'Czytaj więcej', 'im_object', 'link_name', 34, 'Sprich mehr...', NULL, '2020-08-19 16:22:50', '2020-08-19 16:22:50'),
(59, 3, 'Rzetelni dla Biznesu', 'im_object', 'content', 34, '<p>Royalpack wurde für die Vermarktung von Innovativen Ideen auf dem Markt der Kartonverpackung anerkannt</p>', '', '2020-08-19 16:23:37', '2020-12-23 08:59:33'),
(60, 2, 'Rzetelni dla Biznesu', 'im_object', 'content', 34, '<p>ROYALPACK has been awarded \"for the commercialization of innovative ideas introduced to the cardboard packaging market\"</p>', NULL, '2020-08-19 16:24:25', '2020-08-19 16:24:25'),
(61, 2, 'Brylant', 'im_object', 'name', 35, 'ROYALPACK is the Diamond of the Polish Economy and the Business Cheetah 2018', '', '2020-08-19 16:26:25', '2020-08-19 16:26:44'),
(62, 3, 'Brylant', 'im_object', 'name', 35, 'ROYALPACK ist der Diamant der polnischen Wirtschaft und des Business Cheetah 2018', NULL, '2020-08-19 16:27:05', '2020-08-19 16:27:05'),
(63, 3, 'Czytaj więcej', 'im_object', 'link_name', 35, 'Sprich mehr...', NULL, '2020-08-19 16:27:20', '2020-08-19 16:27:20'),
(64, 2, 'Czytaj więcej', 'im_object', 'link_name', 35, 'Read more...', NULL, '2020-08-19 16:27:31', '2020-08-19 16:27:31'),
(65, 3, 'Brylant', 'im_object', 'content', 35, '<p>ROYALPACK, Tatar S. J. in Świdnica wurde vom Institute of European Business bei der 13. Ausgabe des Business Cheetahs Competition 2018, der 11. Ausgabe des Brillant Polnische Wirtschaft 2018 Competition, der 11. Ausgabe des Effective Company 2018 Competition und der 6. Auflage des Strong Trustworthy 2018 Program Promotion ausgezeichnet</p>', '', '2020-08-19 16:28:02', '2020-08-19 19:06:43'),
(66, 2, 'Brylant', 'im_object', 'content', 35, '<p>ROYALPACK, Tatar S. J. in Świdnica was awarded by the Institute of European Business in the 13th edition of the Business Cheetahs 2018 Competition, 11th edition of the Diamond of the Polish Economy 2018 Competition, the 11th edition of the Effective Company 2018 Competition and the 6th edition of the Strong Trustworthy 2018 Program Promotion</p>', '', '2020-08-19 16:28:30', '2020-08-19 19:06:54'),
(67, 3, 'Czytaj więcej', 'im_object', 'link_name', 36, 'Sprich mehr...', NULL, '2020-08-19 16:35:36', '2020-08-19 16:35:36'),
(68, 2, 'Czytaj więcej', 'im_object', 'link_name', 36, 'Read more...', NULL, '2020-08-19 16:35:46', '2020-08-19 16:35:46'),
(69, 3, 'Rozwój firmy', 'im_object', 'name', 36, 'ROYALPACK unter den am dynamischsten entwickelnden Unternehmen', NULL, '2020-08-19 16:36:51', '2020-08-19 16:36:51'),
(70, 2, 'Rozwój firmy', 'im_object', 'name', 36, 'ROYALPACK among the most dynamically developing companies', NULL, '2020-08-19 16:37:32', '2020-08-19 16:37:32'),
(71, 2, 'Rozwój firmy', 'im_object', 'content', 36, '<p>In 2015 ROYALPACK has become a member of the elite club &ndash; Gazele Biznesu. It has become one of the most dynamically developing small and medium-sized companies.</p>', NULL, '2020-08-19 16:38:04', '2020-11-10 15:38:33'),
(72, 3, 'Rozwój firmy', 'im_object', 'content', 36, '<p>ROYALPACK gehört zu den am dynamischsten entwickelnden Unternehmen Im Jahr 2018 war ROYALPACK ein Mitglied der Elite-Club &ndash; Gazele Biznesu. Unser Unternehmen ist eines der dynamischsten unter den kleinen und mittelständischen Unternehmen in Bezug auf die Wachstumrate.</p>', NULL, '2020-08-19 16:38:36', '2020-12-23 09:00:17'),
(73, 2, 'Ogólne warunki handlowe', 'im_section', 'name', 20, 'General terms and conditions of deliveries', NULL, '2020-08-19 16:49:19', '2020-08-19 16:49:19'),
(74, 3, 'Ogólne warunki handlowe', 'im_section', 'name', 20, 'Allgemeine geschäftsbedingungen', NULL, '2020-08-19 16:49:54', '2020-08-19 16:49:54'),
(75, 3, 'Ogólne warunki handlowe', 'im_object', 'name', 45, '<i class=\"fal fa-grip-lines\"></i>  Allgemeine geschäftsbedingungen <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-19 16:50:48', '2020-08-19 16:50:48'),
(76, 2, 'Ogólne warunki handlowe', 'im_object', 'name', 45, '<i class=\"fal fa-grip-lines\"></i> General terms and conditions of deliveries <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-19 16:51:17', '2020-08-19 16:51:20'),
(77, 2, 'Wyróżnienia', 'im_section', 'name', 21, 'Awards', '', '2020-08-19 16:52:44', '2020-08-19 16:53:01'),
(78, 3, 'Wyróżnienia', 'im_section', 'name', 21, 'Auszeichnungen', NULL, '2020-08-19 16:53:34', '2020-08-19 16:53:34'),
(79, 3, 'Media o nas', 'im_section', 'name', 22, 'Medien über uns', NULL, '2020-08-19 16:54:31', '2020-08-19 16:54:31'),
(80, 2, 'Media o nas', 'im_section', 'name', 22, 'Media about us', NULL, '2020-08-19 16:54:52', '2020-08-19 16:54:52'),
(81, 2, 'Media o nas', 'im_object', 'name', 33, '<i class=\"fal fa-grip-lines\"></i> Media about us <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-19 16:56:11', '2020-08-19 16:56:11'),
(82, 3, 'Media o nas', 'im_object', 'name', 33, '<i class=\"fal fa-grip-lines\"></i> Medien über uns <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-19 16:56:54', '2020-08-19 16:56:54'),
(83, 2, 'Wyróżnienia', 'im_object', 'name', 51, '<i class=\"fal fa-grip-lines\"></i> Awards <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-19 16:58:03', '2020-08-19 16:58:34'),
(84, 3, 'Wyróżnienia', 'im_object', 'name', 51, '<i class=\"fal fa-grip-lines\"></i> Auszeichnungen <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-19 16:58:27', '2020-08-19 16:58:27'),
(85, 3, 'Dotacja EU', 'im_object', 'name', 61, '<i class=\"fal fa-grip-lines\"></i> EU - Beihilfe <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-19 17:03:32', '2020-08-19 17:17:26'),
(86, 2, 'Dotacja EU', 'im_object', 'name', 61, '<i class=\"fal fa-grip-lines\"></i> EU Grant <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-19 17:04:14', '2020-08-19 17:17:34'),
(87, 3, 'Dotacja EU', 'im_object', 'content', 61, '', NULL, '2020-08-19 17:04:45', '2020-08-19 17:04:45'),
(88, 2, 'Dotacja EU', 'im_object', 'content', 61, '', NULL, '2020-08-19 17:04:59', '2020-08-19 17:04:59'),
(89, 3, 'Dotacja EU', 'im_object', 'content', 79, '<p>Die Umsetzung eines innovativen, energiesparenden Systems zur Herstellung von Verpackungen mit erhöhter Festigkeit erbrachte Royalpack, Tatar Sp. J., im Juli 2013 die Unionsbeihilfe im Rahmen des Operationellen Programms Innovative Wirtschaft ( Priority Axis 4 - Investitionen im innovativen Bereich ). Pilotprojekt:<em>\"Unterstützung für die erste Umsetzung der Erfindung\"</em>.</p>\r\n<p>Dank dieser Finanzierung konnten wir unseren neuen Produktionsstandort in Słone an Zielona G&oacute;ra errichten. Im Rahmen dieses Projekts haben wir auch einen modernen Maschinenpark erworben und installiert.</p>\r\n<p>Die Bauarbeiten an dem neuen Standort begannen im November 2013. Im Februar 2015 wurden die Arbeiten abgeschlossen.</p>', '', '2020-08-19 17:11:30', '2020-12-23 09:17:10'),
(90, 2, 'Dotacja EU', 'im_object', 'content', 79, '<p>Implementation of an innovative, energy-efficient system of manufacturing packaging with increased durability</p>\r\n<p>In July 2013, ROYALPACK, Tatar Sp. j. received an EU grant under the Innovative Economy Operational Programme, Priority Axis 4 - Investments in innovative undertakings. Pilotage: <em>\"Support for the first implementation of the invention\"</em>.</p>\r\n<p>Thanks to the grant, we built our new manufacturing plant in Słone near Zielona G&oacute;ra. Within the scope of the project, we have also purchased and installed modern machinery.</p>\r\n<p>The construction works started in November 2013. The plant was completed in February 2015.</p>', '', '2020-08-19 17:11:45', '2020-08-19 17:13:25'),
(91, 3, 'Nowy zakład produkcyjny', 'im_image', 'name', 33, 'Der neue Produktionsstandort ROYALPACK – Słone an Zielona Góra', NULL, '2020-08-19 17:16:05', '2020-08-19 17:16:05'),
(92, 2, 'Nowy zakład produkcyjny', 'im_image', 'name', 33, 'New ROYALPACK manufacturing plant in Słone near Zielona Góra', NULL, '2020-08-19 17:16:36', '2020-08-19 17:16:36'),
(93, 2, 'Tekst na filmie', 'im_object', 'content', 4, '<p><span style=\"font-size: 36pt;\">Manufacturer of corrugated cardboard and packaging</span></p>', '', '2020-08-19 18:07:01', '2020-10-06 14:06:22'),
(94, 3, 'Tekst na filmie', 'im_object', 'content', 4, '<p><span style=\"font-size: 36pt;\">Produzent der Wellpappe und Verpackungen</span></p>', '', '2020-08-19 18:07:20', '2020-10-06 14:07:40'),
(95, 3, 'Obsługa klienta', 'im_section', 'name', 19, 'Kundenberatung', NULL, '2020-08-19 18:08:36', '2020-08-19 18:08:36'),
(96, 2, 'Obsługa klienta', 'im_section', 'name', 19, 'Customer service', NULL, '2020-08-19 18:09:21', '2020-08-19 18:09:21'),
(97, 3, 'Kariera', 'im_object', 'name', 28, '<i class=\"fal fa-grip-lines\"></i> Karriere <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-19 18:12:41', '2020-08-19 18:13:47'),
(98, 2, 'Kariera', 'im_object', 'name', 28, '<i class=\"fal fa-grip-lines\"></i> Career <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-19 18:13:02', '2020-08-19 18:14:17'),
(99, 3, 'Kontakt', 'im_object', 'name', 22, '<i class=\"fal fa-grip-lines\"></i> Kontakt <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-08-19 18:14:58', '2020-08-19 18:14:58'),
(100, 2, 'Kontakt', 'im_object', 'name', 22, '<i class=\"fal fa-grip-lines\"></i> Contact <i class=\"fal fa-grip-lines\"></i>', '', '2020-08-19 18:15:18', '2020-08-19 18:15:41'),
(101, 2, 'Kariera', 'im_object', 'content', 28, '<p>If you want to work in a dynamically developing company with a high potential and constantly growing capabilities, apply to us by filling in a form.</p>', NULL, '2020-08-19 18:17:26', '2020-12-08 10:47:30'),
(102, 3, 'Kariera', 'im_object', 'content', 28, '<p>Wenn Sie an einer Karriere in einer sich dynamisch entwickelnden Firma mit hohem Potenzial und ständig wachsenden Möglichkeiten interessiert sind, laden wir Sie herzlich ein, sich bei uns mittels des Kontaktformulars zu bewerben.</p>', NULL, '2020-08-19 18:17:47', '2020-12-23 08:54:08'),
(103, 3, 'CV', 'im_object', 'attachment', 27, 'Lebenslauf', NULL, '2020-08-19 18:30:21', '2020-08-19 18:30:21'),
(104, 2, 'CV', 'im_object', 'attachment', 27, 'Your CV', NULL, '2020-08-19 18:31:46', '2020-08-19 18:31:46'),
(105, 3, 'Dotacja EU', 'im_section', 'name', 29, 'EU - Beihilfe', '', '2020-08-19 18:51:55', '2020-08-19 18:52:07'),
(106, 2, 'Dotacja EU', 'im_section', 'name', 29, 'EU Grant', '', '2020-08-19 18:52:32', '2020-08-19 18:52:35'),
(107, 3, 'Prawa', 'im_object', 'content', 9, '<div class=\"text-center\">Alle Rechte vorbehalten &amp; 2020<br />Design und Implementierung: <a href=\"https://internet.media.pl\" title=\"Strony internetowe, e-sklepy, serwisy WWW, projekty i wykonanie, portale web\" target=\"_blank\" class=\"text-warning\" rel=\"noopener\">www.internet.media.pl</a></div>', '', '2020-08-21 11:03:41', '2020-08-21 11:06:38'),
(108, 2, 'Prawa', 'im_object', 'content', 9, '<div class=\"text-center\">All rights reserved &amp; 2020<br />Design and implementation: <a href=\"https://internet.media.pl\" title=\"Strony internetowe, e-sklepy, serwisy WWW, projekty i wykonanie, portale web\" target=\"_blank\" class=\"text-warning\" rel=\"noopener\">www.internet.media.pl</a></div>', NULL, '2020-08-21 11:06:21', '2020-08-21 11:06:21'),
(109, 3, 'Cookies', 'im_object', 'content', 10, '<div id=\"cookie\"><i class=\"fad fa-cookie float-left\"></i> Unsere Webseite verwendet Cookies <button class=\"btn btn-dark\">OK</button></div>', '', '2020-08-21 11:08:55', '2020-08-21 11:16:53'),
(110, 2, 'Cookies', 'im_object', 'content', 10, '<div id=\"cookie\"><i class=\"fad fa-cookie float-left\"></i> On this website, we are using cookies files <button class=\"btn btn-dark\">OK</button></div>', '', '2020-08-21 11:09:14', '2020-08-21 11:12:38'),
(111, 3, 'Profil działalności', 'im_object', 'section_name', 81, '<span>Sprich mehr</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:35:22', '2020-09-01 20:35:22'),
(112, 2, 'Profil działalności', 'im_object', 'section_name', 81, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:35:54', '2020-09-01 20:35:54'),
(113, 3, 'Profil działalności', 'im_object', 'section_name', 83, '<span>Sprich mehr</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:52:24', '2020-09-01 20:52:24'),
(114, 2, 'Profil działalności', 'im_object', 'section_name', 83, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:52:24', '2020-09-01 20:52:24'),
(115, 3, 'Profil działalności', 'im_object', 'section_name', 84, '<span>Sprich mehr</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:54:49', '2020-09-01 20:54:49'),
(116, 2, 'Profil działalności', 'im_object', 'section_name', 84, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:54:49', '2020-09-01 20:54:49'),
(117, 3, 'Profil działalności', 'im_object', 'section_name', 85, '<span>Sprich mehr</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:57:22', '2020-09-01 20:57:22'),
(118, 2, 'Profil działalności', 'im_object', 'section_name', 85, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 20:57:22', '2020-09-01 20:57:22'),
(119, 3, 'Profil działalności', 'im_object', 'section_name', 86, '<span>Sprich mehr</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 21:04:04', '2020-09-01 21:04:04'),
(120, 2, 'Profil działalności', 'im_object', 'section_name', 86, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 21:04:04', '2020-09-01 21:04:04'),
(121, 3, 'Profil działalności', 'im_object', 'section_name', 87, '<span>Sprich mehr</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 21:07:28', '2020-09-01 21:07:28'),
(122, 2, 'Profil działalności', 'im_object', 'section_name', 87, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-01 21:07:28', '2020-09-01 21:07:28'),
(123, 3, 'Profil der Tätigkeit', 'im_object', 'name', 81, 'PROFIL DER TÄTIGKEIT', '', '2020-09-09 08:19:07', '2020-09-09 08:20:44'),
(124, 2, 'Profile', 'im_object', 'name', 81, 'PROFILE', NULL, '2020-09-09 08:19:55', '2020-09-09 08:19:55'),
(125, 2, 'History of the company', 'im_object', 'name', 83, 'HISTORY OF THE COMPANY', NULL, '2020-09-09 08:23:31', '2020-09-09 08:23:31'),
(126, 3, 'Geschichte der Firma', 'im_object', 'name', 83, 'GESCHICHTE DER FIRMA', NULL, '2020-09-09 08:24:19', '2020-09-09 08:24:19'),
(127, 2, 'Sustainable development policy', 'im_object', 'name', 84, 'SUSTAINABLE DEVELOPMENT POLICY', NULL, '2020-09-09 08:26:18', '2020-12-08 10:48:02'),
(128, 3, 'Politik der nachhaltigen Entwicklung', 'im_object', 'name', 84, 'POLITIK DER NACHHALTIGEN ENTWICKLUNG', NULL, '2020-09-09 08:27:16', '2020-09-09 08:27:16'),
(129, 3, 'Kundenberatung', 'im_object', 'name', 85, 'KUNDENBERATUNG', NULL, '2020-09-09 08:30:18', '2020-09-09 08:30:18'),
(130, 2, 'Customer service', 'im_object', 'name', 85, 'CUSTOMER SERVICE', NULL, '2020-09-09 08:30:51', '2020-09-09 08:30:51'),
(131, 2, 'General terms and conditions of deliveries', 'im_object', 'name', 86, 'GENERAL TERMS AND CONDITIONS OF DELIVERY', NULL, '2020-09-09 08:32:12', '2020-12-08 10:48:31'),
(132, 3, 'Allgemeine geschäftsbedingungen', 'im_object', 'name', 86, 'ALLGEMEINE GESCHÄFTSBEDINGUNGEN', '', '2020-09-09 08:33:33', '2020-09-09 08:33:36'),
(133, 2, 'Awards', 'im_object', 'name', 87, 'AWARDS', NULL, '2020-09-09 08:34:21', '2020-09-09 08:34:21'),
(134, 3, 'Auszeichnungen', 'im_object', 'name', 87, 'AUSZEICHNUNGEN', NULL, '2020-09-09 08:34:55', '2020-09-09 08:34:55'),
(135, 3, 'Profil działalności', 'im_object', 'section_name', 88, '<span>Sprich mehr</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-09 08:35:29', '2020-09-09 08:35:29'),
(136, 2, 'Profil działalności', 'im_object', 'section_name', 88, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-09-09 08:35:29', '2020-09-09 08:35:29'),
(137, 3, 'Medien über uns', 'im_object', 'name', 88, 'MEDIEN ÜBER UNS', '', '2020-09-09 08:35:29', '2020-09-09 08:37:00'),
(138, 2, 'Media about us', 'im_object', 'name', 88, 'MEDIA ABOUT US', '', '2020-09-09 08:35:29', '2020-09-09 08:37:27'),
(139, 2, 'O nas', 'im_object', 'name', 82, '<i class=\"fal fa-grip-lines\"></i> About us <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-09 08:40:36', '2020-09-09 08:40:36'),
(140, 3, 'O nas', 'im_object', 'name', 82, '<i class=\"fal fa-grip-lines\"></i> Über Uns <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 08:41:36', '2020-09-09 08:42:20'),
(141, 2, 'Oferta', 'im_object', 'name', 89, '<i class=\"fal fa-grip-lines\"></i> Our Products <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 09:34:59', '2020-09-09 13:11:19'),
(142, 3, 'Oferta', 'im_object', 'name', 89, '<i class=\"fal fa-grip-lines\"></i> Angebot <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 09:34:59', '2020-09-09 13:11:42'),
(143, 3, 'Technologie', 'im_object', 'name', 90, '<i class=\"fal fa-grip-lines\"></i> Technologie <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 09:35:28', '2020-09-09 13:09:39'),
(144, 2, 'Technologie', 'im_object', 'name', 90, '<i class=\"fal fa-grip-lines\"></i> Technology <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 09:35:28', '2020-09-09 13:10:02'),
(145, 2, 'Opakowania', 'im_object', 'name', 91, 'PACKAGING', NULL, '2020-09-09 09:41:49', '2020-09-09 09:41:49'),
(146, 3, 'Opakowania', 'im_object', 'name', 91, 'PRODUKTS', NULL, '2020-09-09 09:42:24', '2020-09-09 09:42:24'),
(149, 3, 'Zaufanie', 'im_object', 'content', 6, '<p>ROYALPACK ist ein Familienunternehmen, das auf solide Grundlagen ihrer Geschäftsstruktur setzt. Unser Motto ist VERTRAUEN. Auf dieser Grundlage bauen wir langfristige Beziehungen zu unseren Kunden aus aller Welt auf. Wir arbeiten mit vollem Engagement, um Wertschöpfung und flexiblen und umfassenden Service anbieten zu können...</p>\r\n<p class=\"im-hide show-rest-text-1\">Wir sorgen erfolgreich für die reibungslose <strong>Entwicklung Ihres Unternehmens.</strong>.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-1\"></i></div>', '', '2020-09-09 12:05:38', '2020-12-23 08:36:58'),
(150, 2, 'Zaufanie', 'im_object', 'content', 6, '<p>ROYALPACK is a family company where we rely on the solid foundations of our business structure. The pillar of our family is trust. On the same basis, we build long-term relationships with our customers from all over the world. By full commitment to the creation of the value and the flexible and comprehensive service we offer...</p>\r\n<p class=\"im-hide show-rest-text-1\">we will effectively take care of the <strong>smooth development of your business</strong>.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-1\"></i></div>', NULL, '2020-09-09 12:24:28', '2020-09-09 12:24:28'),
(151, 2, 'Ekologia', 'im_object', 'content', 7, '<p>Our care for the natural environment results from our elementary sense of responsibility for the planet on which we live. The corrugated cardboard packaging that we create for you are in line with the premise of the international strategy that aims for using less plastic packaging and more recycling of packaging materials.</p>\r\n<p class=\"im-hide show-rest-text-2\">All our products are FSC certified. An integral part of our environmentally sound philosophy is our modern machinery and the pro-ecological systems implemented within the production process.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-2\"></i></div>', NULL, '2020-09-09 12:26:12', '2020-11-10 15:42:27');
INSERT INTO `im_translation` (`translation_id`, `language_id`, `name`, `target_table`, `target_column`, `target_record`, `content`, `description`, `date_create`, `date_modify`) VALUES
(152, 3, 'Ekologia', 'im_object', 'content', 7, '<p>Unser Pflichtbewusstsein gegenüber der Umwelt ergibt sich durch unsere grundlegende Verantwortung der Erde gegenüber. Die Wellpappenverpackung, die wir für Sie erstellen, steht im Einklang mit der internationalen Strategie der Reduzierung der Verwendung von Kunststoffverpackungen und der Erhöhung der Recyclingquote von...</p>\r\n<p class=\"im-hide show-rest-text-2\">Verpackungsmaterialien. Alle unsere Produkte sind FSC-zertifiziert. Ein wesentlicher Bestandteil unserer umweltfreundlichen Philosophie ist der installierte moderne Maschinenpark und die darin eingegliederten pro-ökologischen Systeme, die im Produktionsprozess verwendet werden.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-2\"></i></div>', '', '2020-09-09 12:27:06', '2020-12-23 08:39:35'),
(153, 3, 'Jakość', 'im_object', 'content', 8, '<p>Höchste Qualitätsansprüche, Liebe zum Detail und innovative Lösungen im Bereich der Verpackungsherstellung sind Fachgebiete unserer Produkte. Forschungen zum Verbraucherverhalten zeigen deutlich, dass die visuelle Erfahrung eines potenziellen Kunden einen signifikanten Einfluss auf den Entscheidungsprozess zum Kauf von Produkten im Verkaufsregal hat...</p>\r\n<p class=\"im-hide show-rest-text-3\">Letztendlich sind Produkte in durchdachten und interessanten Verpackungen beliebter als andere. Unser Team und der moderne Maschinenpark ermöglichen es Ihnen, viele interessante Lösungsvarianten zu generieren.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-3\"></i></div>', '', '2020-09-09 12:28:38', '2020-12-23 08:41:08'),
(154, 2, 'Jakość', 'im_object', 'content', 8, '<p>The highest quality, attention to detail and innovative solutions in the field of packaging production - these are the assets of our products. Research into consumer behaviour clearly indicates that the visual experience of a potential customer has a significant impact on the process of making decisions...</p>\r\n<p class=\"im-hide show-rest-text-3\">about purchasing a given product from the store shelf. Ultimately, the products that are placed in carefully designed and interesting packaging are more interesting to a customer than other products. Our team and our modern machinery will enable you to generate many interesting solutions.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-3\"></i></div>', '', '2020-09-09 12:28:59', '2020-11-10 15:44:31'),
(155, 2, 'Dział kontroli jakości', 'im_object', 'name', 105, 'QA DEPARTAMENT', NULL, '2020-09-09 12:38:16', '2020-09-09 12:38:16'),
(156, 3, 'Dział kontroli jakości', 'im_object', 'name', 105, 'ABTEILUNG FÜR QUALITÄTSKONTROLLE', NULL, '2020-09-09 12:39:48', '2020-09-09 12:39:48'),
(157, 2, 'Dział kontroli jakości', 'im_object', 'content', 37, '<p>We know that quality is what matters most, that is why our packages are made of the highest quality raw materials. We carefully monitor the conditions in the production hall and the warehouse. The ISO 9001:2015 system that we introduced enables us to coordinate all activities and individual processes.</p>\r\n<div class=\"text-center pb-3\"><i class=\"fal fa-grip-lines\" style=\"font-size: 3em;\"></i></div>\r\n<p><strong>Every day, our quality control department performs precise strength tests of our packages:</strong></p>', NULL, '2020-09-09 12:41:23', '2020-09-09 12:41:23'),
(158, 3, 'Dział kontroli jakości', 'im_object', 'content', 37, '<p>Wir wissen, dass Qualität das ist, was am meisten zählt. Deshalb bestehen unsere Produkte aus Rohstoffen mit den höchsten Qualitätsanforderungen. Wir überwachen laufend die Bedingungen in der Produktionshalle und in der Lagerhalle. Das umgesetzte System ISO 9001:2015 sichert uns die Koordinierung aller Handlungen und einzelner Prozesse.</p>\r\n<div class=\"text-center pb-3\"><i class=\"fal fa-grip-lines\" style=\"font-size: 3em;\"></i></div>\r\n<p><strong>Unsere Qualitätssicherungsabteilung führt jeden Tag präzise Festigkeitsuntersuchungen unserer Verpackungen durch:</strong></p>', NULL, '2020-09-09 12:42:22', '2020-12-23 09:01:14'),
(159, 3, 'Gramatura', 'im_object', 'name', 38, '<i class=\"fal fa-weight\"></i><br>GRAMMATUR', NULL, '2020-09-09 12:43:09', '2020-09-09 12:43:09'),
(160, 2, 'Gramatura', 'im_object', 'name', 38, '<i class=\"fal fa-weight\"></i><br>GRAMMAGE', '', '2020-09-09 12:43:37', '2020-09-09 12:43:57'),
(161, 2, 'Gramatura', 'im_object', 'content', 38, '<p>This is the main measurement unit, where the value is the weight of 1 m2 of a corrugated cardboard sheet expressed in grams (g/m2). The grammage is an important element when choosing the right type of cardboard, because the higher the grammage, the thicker and more rigid the cardboard.</p>', NULL, '2020-09-09 12:45:51', '2020-09-09 12:45:51'),
(162, 3, 'Gramatura', 'im_object', 'content', 38, '<p>Das ist die Hauptmaßeinheit, bei der der Wert das Gewicht von 1 m2 der Wellpappe in Gramm ausgedrückt wird (g/m2). Die Grammatur spielt bei der Auswahl der richtigen Art von Pappe eine wichtige Rolle, denn je höher die Grammatur, desto dicker und steifer der Karton.</p>', NULL, '2020-09-09 12:46:20', '2020-12-23 09:01:33'),
(163, 3, 'ECT', 'im_object', 'content', 39, '<p>Messwert der Widerstandsfähigkeit zur Kompression  einer Wellpappe – das ist die Kraft, mit der die Wellenprobe bei einer definierten Kraft parallel zur Richtung der Welle beansprucht wird und das Brechen der Probe verursacht. Diese Kraft ist entscheidend beim Stapeln von Kartons. Die Wellenform hat im Wesentlichen keinen Einfluss auf die ECT. Einen entscheidenden Einfluss auf den ECT-Wert hat die bei der Produktion verwendete Papiersorte.</p>', NULL, '2020-09-09 12:47:17', '2020-12-23 09:01:55'),
(164, 2, 'ECT', 'im_object', 'content', 39, '<p>edge crush test indicator - force related to the length of the edge of the cardboard sample, acting parallel to the direction of the waves and causing the sample to break. This force is critical when boxes are stacked. The type of waves has essentially no effect on ECT. What has the biggest impact on the ECT value is the grade of paper used in the production.</p>', NULL, '2020-09-09 12:47:40', '2020-09-09 12:47:40'),
(165, 2, 'BCT', 'im_object', 'content', 40, '<p>Indicator of packaging resistance to compression. It is expressed as the value of the force acting directly on the packaging during its crushing, which causes its deformation or destruction. This parameter depends on all the individual characteristics of a given packaging - its dimensions, construction, and the type and strength of the cardboard used. The value of the BCT depends directly on the ECT.</p>', NULL, '2020-09-09 12:48:17', '2020-09-09 12:48:17'),
(166, 3, 'BCT', 'im_object', 'content', 40, '<p>Der Messwert der Kompressionsbeständigkeit der Verpackung anzeigt. Er wird durch die Kraft ausgedrückt, die direkt auf die Verpackung wirkt und deren Verformung oder Zerstörung verursacht. Dieser Wert ist abhängig von individuellen Eigenschaften der Verpackung: ihrer Größe und ihrem Aufbau, sowie der Art und Festigkeit der verwendeten Wellpappe. Der BCT-Wert ist direkt von dem ECT-Wert abhängig.</p>', NULL, '2020-09-09 12:48:39', '2020-12-23 09:02:12'),
(167, 3, 'Wilgotność', 'im_object', 'name', 41, '<i class=\"fal fa-dewpoint\"></i><br>FEUCHTIGKEIT', NULL, '2020-09-09 12:49:18', '2020-09-09 12:49:18'),
(168, 2, 'Wilgotność', 'im_object', 'name', 41, '<i class=\"fal fa-dewpoint\"></i><br>MOISTURE', NULL, '2020-09-09 12:49:42', '2020-09-09 12:49:42'),
(169, 2, 'Wilgotność', 'im_object', 'content', 41, '<p>This indicator shows the ratio of the weight of water contained in the cardboard to the weight of the whole product. It depends not only on air humidity, but also on the ambient temperature and the composition of the cardboard.&nbsp;To maintain the proper properties of cardboard, it is necessary to create optimal conditions for its storage. The rooms must be dry and airy, and temperature inside must not fall below 4&deg;C &ndash; it is recommended to maintain a temperature at 18-22&deg;C. Humidity should be maintained at the level of 60%, with the minimum value of 45% in heated rooms. Excessive moisture content in the cardboard causes changes in its physical properties: a decrease in stiffness, linear deformation, greater compressibility, thickness and roughness. On the other hand, not enough moisture causes cardboard\'s flutes and, consequently, whole cardboard sheets to break.&nbsp;</p>', NULL, '2020-09-09 12:50:14', '2020-09-09 12:50:14'),
(170, 3, 'Wilgotność', 'im_object', 'content', 41, '<p>Der Messwert, der das Verhältnis der Wassermasse in der Wellpappe zur Masse des gesamten Produkts anzeigt. Dieser hängt  nicht nur von der Luftfeuchtigkeit ab, sondern auch von der Umgebungstemperatur und Pappenzusammensetzung. Um die richtigen Eigenschaften der Wellpappe zu erhalten, ist es notwendig, optimale Bedingungen für die Lagerung zu schaffen. Die Räume müssen trocken und luftig sein und ihre Temperatur darf nicht unter 4 Grad Celsius fallen. Es wird empfohlen, eine konstante Temperatur auf dem Niveau von 18-22 Grad Celsius zu halten. Die Luftfeuchtigkeit sollte auf dem Niveau von 60 % bleiben und in beheizten Räumen auf dem Minimalwert von 45 % bleiben. Eine zu hohe Feuchtigkeit der Wellpappe verändert ihre materiellen Eigenschaften: Abnahme der Steifheit, lineare Verformung, größere Komprimierung, Dicke und Rauheit. Andererseits führt eine zu niedrige Luftfeuchtigkeit dazu, dass Wellen und in der Folge ganze Wellpappenbögen brechen.</p>', NULL, '2020-09-09 12:50:42', '2020-12-23 09:02:29'),
(171, 2, 'Delta E', 'im_object', 'content', 42, '<p>An indicator measured with an X-Rite spectrodensitometer, which shows the degree of deviation of a printed colour from a given pattern. The X-Rite eXact spectrodensitometer is a modern device that takes into account the new needs of customers who demand better and better quality of delivered packaging. X-Rite eXact enables us to control and manage the colour, to ensure the highest accuracy of the colour measurement. Therefore, if we want to print a specific colour, the closer we are to this colour on the final printout, the closer to 0 the delta E indicator will be. If the spectrophotometer shows 0 during the measurement, it means that we have obtained a colour perfectly consistent with the pattern. It is assumed that a printout with a delta tolerance &lt;2.0 is not distinguishable by the human eye by most people.</p>', '', '2020-09-09 12:51:20', '2020-11-10 15:46:18'),
(172, 3, 'Delta E', 'im_object', 'content', 42, '<p>Der Messwert, der mit einem Xrite-Spektrodensitometer gemessen wird, ist der Grad, der die gedruckte Farbabweichung von einem bestimmten Muster anzeigt. Das X-Rite eXact-Spektrodensitometer ist ein modernes Gerät, das die neuen Kundenbedürfnisse in Bezug auf die Verbesserung der Qualität der gelieferten Verpackungen berücksichtigt. Mit X-Rite eXact können wir die Farbe steuern und damit die höchste Genauigkeit der Farbmessung gewährleisten. Wenn wir also vorhaben, beim Drucken eine bestimmte Farbe zu erhalten, dann wird diese Farbe auf dem endgültigen Ausdruck umso natürlicher, desto näher der Wert bei 0 des Delta-E-Messwertes liegt. Wenn das Spektrophotometer während der Messung 0 anzeigt, bedeutet dies, dass wir eine Farbe voll und ganz im Einklang mit dem Muster erhalten haben. Es wird angenommen, dass ein Ausdruck mit einer Toleranz gegenüber Delta &lt; 2,0 vom menschlichen Auge meistens nicht unterscheidbar ist.</p>', '', '2020-09-09 12:51:47', '2020-12-23 09:02:47'),
(173, 2, 'Stopień nasycenia bieli podłoża druku', 'im_object', 'name', 43, '<i class=\"fal fa-eye-dropper\"></i><br>THE WHITENESS OF THE SUBSTRATE FOR PRINTING', NULL, '2020-09-09 12:54:50', '2020-09-09 12:54:50'),
(174, 3, 'Stopień nasycenia bieli podłoża druku', 'im_object', 'name', 43, '<i class=\"fal fa-eye-dropper\"></i><br>DER WEIßGRAD DES SUBSTRATS ZUM DRUCKEN', '', '2020-09-09 12:55:07', '2020-09-09 12:56:08'),
(175, 3, 'Stopień nasycenia bieli podłoża do druku', 'im_object', 'content', 43, '<p>Perfektionierung des Weißgrades des Substrats ist eine Schlüsselfunktion, um einen qualitativ hochwertigen Ausdruck zu erhalten. Bereits in der Projektvorbereitungsphase müssen wir absolut sicher sein, dass ein bestimmtes Druckpapier seine notwendige Voraussetzungen erfüllt. Die Helligkeit des Substrats ist besonders wichtig bei scheinenden (transparenten) Farben, die beim Grafikdesign verwendet werden, da dies einen direkten Einfluss auf den endgültigen Ausdruck hat. Wir messen mit dem X-Rite eXact Spektrophotometer. Damit können wir die Qualität des von uns verwendeten Substrats überprüfen und entsprechende Farbrezepte für ein bestimmtes Projekt entwickeln.</p>', '', '2020-09-09 12:56:33', '2020-12-23 09:03:06'),
(176, 2, 'Stopień nasycenia bieli podłoża do druku', 'im_object', 'content', 43, '<p>Testing the degree of whiteness of the substrate is a key activity in order to obtain a high quality printout. Already at the stage of project preparation, we must be absolutely sure that the given paper for printing meets the requirements. The whiteness of the substrate is especially important if bright (transparent) colours are used in the graphic design because it has a direct impact on the final printout. The measurements are taken with the X-Rite eXact spectrophotometer. This way we can verify the quality of the substrate and develop appropriate paint recipes for a specific project.</p>', '', '2020-09-09 12:56:53', '2020-11-10 15:47:09'),
(177, 2, 'Dział kontroli jakości', 'im_object', 'name', 37, '<i class=\"fal fa-grip-lines\"></i> QA DEPARTAMENT <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-09 12:58:59', '2020-09-09 12:58:59'),
(178, 3, 'Dział kontroli jakości', 'im_object', 'name', 37, '<i class=\"fal fa-grip-lines\"></i> ABTEILUNG FÜR QUALITÄTSKONTROLLE <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 12:59:30', '2020-09-09 13:01:40'),
(179, 3, 'Dział kontroli jakości', 'im_section', 'name', 28, 'Abteilung für Qualitätskontrolle', '', '2020-09-09 13:03:20', '2020-09-09 13:03:22'),
(180, 2, 'Dział kontroli jakości', 'im_section', 'name', 28, 'QA Departament', NULL, '2020-09-09 13:03:54', '2020-09-09 13:03:54'),
(181, 2, 'Innowacje', 'im_object', 'name', 104, 'INNOVATION', NULL, '2020-09-09 13:05:19', '2020-09-09 13:05:19'),
(182, 3, 'Innowacje', 'im_object', 'name', 104, 'INNOVATIONEN', NULL, '2020-09-09 13:05:50', '2020-09-09 13:05:50'),
(183, 3, 'Park maszynowy', 'im_object', 'name', 102, 'MASCHINENPARK', NULL, '2020-09-09 13:06:55', '2020-09-09 13:06:55'),
(184, 2, 'Park maszynowy', 'im_object', 'name', 102, 'MACHINERY', NULL, '2020-09-09 13:07:26', '2020-09-09 13:07:26'),
(185, 3, 'Opakowania', 'im_object', 'name', 106, '<i class=\"fal fa-grip-lines\"></i> Produkts <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-09 13:14:12', '2020-09-09 13:14:12'),
(186, 2, 'Opakowania', 'im_object', 'name', 106, '<i class=\"fal fa-grip-lines\"></i> Packaging <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-09 13:14:42', '2020-09-09 13:14:42'),
(187, 2, 'Opakowania', 'im_section', 'name', 8, 'Packaging', NULL, '2020-09-09 13:18:42', '2020-09-09 13:18:42'),
(188, 3, 'Opakowania', 'im_section', 'name', 8, 'Produkts', '', '2020-09-09 13:19:05', '2020-09-09 13:19:39'),
(189, 3, 'Obsługa klienta', 'im_object', 'content', 107, '<p>Jedes Unternehmen hat unterschiedliche Bedürfnisse, weshalb bei Royalpack jeder Kunde individuell behandelt wird. Spezielle Kundenberater aus unserem Customer Service Team sind in der Lage, eine ganze Reihe von Möglichkeiten zu präsentieren, um Projekte erfolgreich umzusetzen. Wir garantieren einen kontinuierlichen Informationsfluss, damit unsere Kunden stets informiert sind, und mit allen Belangen ein professionellen Zusammenarbeit auf uns zukommen können. Außerdem garantieren wir zeitnahe Lieferungen, schnelle Entscheidungen und die Bereitschaft, auch die schwierigsten Probleme der Produktion und Logistik zu lösen.</p>\r\n<p>Ein solch professioneller, umfassender und flexibler Service ermöglicht es uns, dauerhafte Beziehungen zu unseren Kunden aufzubauen.</p>', '', '2020-09-09 13:23:44', '2020-12-23 09:21:29'),
(190, 2, 'Obsługa klient', 'im_object', 'content', 107, '<p>Each company has different needs, and that is why at Royalpack, each customer is treated individually. A dedicated person from the Customer Service team will always present a full range of possibilities related to the implementation of a given project. We know that in our times information is the most important item; therefore, we ensure that our customers are well informed about all matters related to the cooperation. We guarantee timely deliveries, quick decision-making and readiness to solve even the most difficult production and logistics problems.</p>\r\n<p>Services provided in such a professional, comprehensive and flexible way allows us to build long-lasting relationships with our customers.</p>', '', '2020-09-09 13:24:19', '2020-11-10 15:49:34'),
(191, 3, 'Obsługa klienta', 'im_object', 'name', 107, '<i class=\"fal fa-grip-lines\"></i> Kundendienst <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-09 13:25:15', '2020-09-09 13:25:15'),
(192, 2, 'Obsługa klienta', 'im_object', 'name', 107, '<i class=\"fal fa-grip-lines\"></i> Customer service <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-09 13:25:56', '2020-09-09 13:25:56'),
(193, 3, 'Obsługa klienta', 'im_object', 'name', 109, '<i class=\"fal fa-grip-lines\"></i> Kundendienst <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 15:10:16', '2020-09-09 15:11:07'),
(194, 2, 'Obsługa klienta', 'im_object', 'name', 109, '<i class=\"fal fa-grip-lines\"></i> Customer service <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-09 15:10:31', '2020-09-09 15:10:46'),
(195, 3, 'Opakowania', 'im_object', 'content', 110, '<p>Dank der Kreativität unserer Konstrukteure, Grafikdesigner und modernen Maschinen für die Herstellung von Kollektiv- und Einzelverpackungen aus Wellpappe, finden Sie in unserem Angebot viele einzigartige Lösungsmöglichkeiten im Bereich der Verpackung mit Offset- und Flexodruck. Wir implementieren alle Konstruktionen basierend auf dem FEFCO-Katalog und seinen Derivaten, sowie individuelle Projekte, die auf die Bedürfnisse des verpackten Produktes zugeschnitten sind. Unsere hochmotivierte R&amp;D. Abteilung kümmert sich um die ästhetischen und funktionalen Bereiche des Verpackens.</p>', NULL, '2020-09-15 09:56:26', '2020-12-23 09:19:14'),
(196, 2, 'Opakowania', 'im_object', 'content', 110, '<p>Thanks to the creativity of our constructors and graphic designers and the fact that we are using modern machinery for the production of corrugated board collective and unit packages, you can find in our offer many unique packaging solutions with offset and flexographic printing. We implement all structures based on the FEFCO catalogue and its derivatives, as well as individual projects tailored to the needs of the product to be packed. Highly motivated R&amp;D department takes care of the aesthetic and functionality aspect of the packaging.</p>', NULL, '2020-09-15 09:56:57', '2020-11-10 15:50:47'),
(197, 3, 'Opakowania', 'im_object', 'content', 111, '<p>Gute Verpackungslösungen kombinieren Merkmale hoher Funktionalität mit einwandfreier Ästhetik. Eine hochqualifizierte Produktentwicklungsabteilung sowie der automatisierte moderne Maschinenpark, ermöglichen es, diese beiden Produktmerkmale zu kombinieren. Dies sind nur einige der vielen Stärken des Unternehmens. ROYALPACK ist das einzige Unternehmen in Europa, das eine Linie für die Herstellung von Wellpappe und die gleichzeitige Laminierung mit vielen innovativen technologischen Lösungen hat, die weltweit einzigartig sind. Die neu installierten Maschinen garantieren die höchste Qualität von Wellpappenverpackungen, angefangen von der F-Welle bis zu E, B, C, EE, EB, BB und BC. Die Großflächenformatdruckmaschinen der neuen Generation erzeugen einen außerordentlichen ästhetischen und hochauflösenden Offset- oder Flexodruck. Letztendlich sind die Verpackungen von ROYALPACK ein effektives Marketinginstrument für unsere zufriedenen Kunden.</p>', '', '2020-09-15 09:58:44', '2020-12-23 09:21:50'),
(198, 2, 'Opakowania', 'im_object', 'content', 111, '<p>A good packaging solution is one that combines the features of high functionality and impeccable aesthetics. The biggest assets of our company are highly qualified product development department and automated, modern machinery that ensures both above mentioned characteristics of our products. ROYALPACK is the only company in Europe with a line for the production of corrugated cardboard and its simultaneous lamination with many innovative technological solutions, which is a world first. The new machines installed in our facility guarantee the highest quality of corrugated cardboard packaging, starting from the F flute, through E, B, C, EE, EB, BB and BC flute, while the new generation large-format printing machines create an extremely aesthetic offset or flexographic printing with high resolution. Ultimately, packages made by ROYALPACK are an effective marketing tool for our satisfied customers.</p>', '', '2020-09-15 09:58:44', '2020-11-10 15:51:58'),
(201, 3, 'POS-Displays', 'im_object', 'content', 112, '<p>Sie werden h&auml;ufig in vielen Shopketten verwendet. Ein Stand oder POS (Point of Sales) ist eine Form der Produktpr&auml;sentation, die eine sehr effektive Pr&auml;sentation und gleichzeitige Werbung erm&ouml;glicht. Ausstellungskonstruktionen sind besonders hilfreich, insbesondere in der Werbe- und Implementierungsphase neuer Produkte.</p>\r\n<p>Dank ihrer Form und Grafiken, ziehen sie die Aufmerksamkeit des Kunden viel mehr als gew&ouml;hnliche Ladenregale an. Die Stands erm&ouml;glichen eine gr&ouml;&szlig;ere Wirkung oder Branding am Kaufort.</p>\r\n<p>Unser Angebot umfasst ihre verschiedenen Konstruktionen: monolithische, modulare oder Produktinseln.</p>', '', '2020-09-15 10:25:06', '2020-09-22 11:10:31'),
(202, 2, 'POS-Displays', 'im_object', 'content', 112, '<p>They are commonly used in many store chains. A stand, or POS (Point of Sales), is a form of a display that allows for effective presentation of a product, and its promotion at the same time. Display structures are extremely helpful, especially in the promotion and implementation phase of new products.</p>\r\n<p>Thanks to their form and graphics, they attract the customer\'s attention much more effectively than ordinary store shelves. Stands allow for greater impact or creation of a brand at the point of purchase.</p>\r\n<p>Our offer includes various structures of stands: monolithic, modular or product islands.</p>', '', '2020-09-15 10:25:06', '2020-09-22 11:10:39'),
(205, 3, 'Ekspozytory ladowe', 'im_object', 'name', 95, 'LADENGESTELL', NULL, '2020-09-15 10:33:05', '2020-09-15 10:33:05'),
(206, 2, 'Ekspozytory ladowe', 'im_object', 'name', 95, 'COUNTER DISPLAYS', NULL, '2020-09-15 10:33:44', '2020-09-15 10:33:44'),
(207, 2, 'Standard FEFCO', 'im_object', 'name', 93, 'FEFCO STANDARD', NULL, '2020-09-15 10:34:35', '2020-09-15 10:34:35'),
(208, 3, 'Standard FEFCO', 'im_object', 'name', 93, 'DER FEFCO-STANDARD', NULL, '2020-09-15 10:35:33', '2020-09-15 10:35:33'),
(211, 2, 'Projekty indywidualne', 'im_object', 'name', 98, 'INDIVIDUAL PROJECT', NULL, '2020-09-15 10:38:26', '2020-09-15 10:38:26'),
(212, 3, 'Projekty indywidualne', 'im_object', 'name', 98, 'EINZELNE PROJEKTE', NULL, '2020-09-15 10:38:58', '2020-09-15 10:38:58'),
(213, 3, 'Projekty innowacyjne', 'im_object', 'name', 99, 'INNOVATIVE PROJEKTE', NULL, '2020-09-15 10:39:48', '2020-09-15 10:39:48'),
(214, 2, 'Projekty innowacyjne', 'im_object', 'name', 99, 'INNOVATIVE PROJECTS', NULL, '2020-09-15 10:40:19', '2020-09-15 10:40:19'),
(215, 2, 'Standard FEFCO', 'im_section', 'name', 10, 'FEFCO standard', '', '2020-09-15 10:45:52', '2020-09-15 10:46:09'),
(216, 3, 'Standard FEFCO', 'im_section', 'name', 10, 'Der FEFCO-Standard', '', '2020-09-15 10:46:40', '2020-09-15 10:46:51'),
(219, 3, 'Standard FEFCO', 'im_object', 'content', 115, '<p>Der FEFCO-Katalog ist eine Sammlung von Projekten, die am meisten zur Konstruktion der Verpackungen verwendet werden. Wir realisieren alle darin enthaltenen Konstruktionen sowie eine Reihe anderer.</p>', '', '2020-09-15 10:49:57', '2020-12-23 09:22:11'),
(220, 2, 'Standard FEFCO', 'im_object', 'content', 115, '<p>The FEFCO catalog is a collection of projects most commonly used to determine the package construction. We implement all structures included in it, as well as a number of others.</p>', '', '2020-09-15 10:49:57', '2020-09-15 10:51:07'),
(221, 2, 'Diamonds of the Polish Economy 2018', 'im_object', 'name', 52, 'Diamonds of the Polish Economy 2018', NULL, '2020-09-16 09:20:54', '2020-09-16 09:20:54'),
(222, 3, 'Diamanten der polnischen Wirtschaft 2018', 'im_object', 'name', 52, 'Diamanten der polnischen Wirtschaft 2018', NULL, '2020-09-16 09:21:08', '2020-09-16 09:21:08'),
(223, 2, 'Diamonds of the Polish Economy 2018', 'im_object', 'content', 52, '<p>ROYALPACK was awarded by the Institute of European Business in the 11th edition of the 2018 Diamonds of the Polish Economy Competition</p>', NULL, '2020-09-16 09:22:23', '2020-09-16 09:22:23'),
(224, 3, 'Diamanten der polnischen Wirtschaft 2018', 'im_object', 'content', 52, '<p>ROYALPACK wurde vom Institute of European Business in der 11. Ausgabe des Diamonds of the Polish Economy-Wettbewerbs 2018 ausgezeichnet</p>', NULL, '2020-09-16 09:23:19', '2020-09-16 09:23:19'),
(225, 2, 'Business Cheetahs 2018', 'im_object', 'name', 53, 'Business Cheetahs 2018', NULL, '2020-09-16 09:24:05', '2020-09-16 09:24:05'),
(226, 3, 'Business Cheetahs 2018', 'im_object', 'name', 53, 'Business Cheetahs 2018', NULL, '2020-09-16 09:24:18', '2020-09-16 09:24:18'),
(227, 3, 'Business Cheetahs 2018', 'im_object', 'content', 53, '<p>ROYALPACK erhielt eine Auszeichnung in der 13. Ausgabe des Business Cheetahs 2018-Wettbewerbs für dynamische Entwicklung und Steigerung des Marktwerts durch das Institute of European Business.</p>', NULL, '2020-09-16 09:25:07', '2020-12-23 09:10:51'),
(228, 2, 'Business Cheetahs 2018', 'im_object', 'content', 53, '<p>ROYALPACK received a distinction in the 13th edition of the Business Cheetahs 2018 Competition for dynamic development and increase in market value by the Institute of European Business.</p>', NULL, '2020-09-16 09:25:29', '2020-09-16 09:25:29'),
(229, 2, 'Effective company 2018', 'im_object', 'name', 54, 'Effective company 2018', NULL, '2020-09-16 09:27:28', '2020-09-16 09:27:28'),
(230, 3, 'Effektives Unternehmen 2018', 'im_object', 'name', 54, 'Effektives Unternehmen 2018', NULL, '2020-09-16 09:27:42', '2020-09-16 09:27:42'),
(231, 3, 'Effektives Unternehmen 2018', 'im_object', 'content', 54, '<p>ROYALPACK wurde vom Institute of European Business in der 11. Ausgabe des Wettbewerbs Effective Company 2018 ausgezeichnet</p>', NULL, '2020-09-16 09:28:00', '2020-09-16 09:28:00'),
(232, 2, 'Effective company 2018', 'im_object', 'content', 54, '<p>ROYALPACK was awarded by the Institute of European Business in the 11th edition of the Effective Company 2018 competition</p>', NULL, '2020-09-16 09:28:24', '2020-09-16 09:28:24'),
(233, 2, 'Strong Trustworthy Company 2018', 'im_object', 'name', 55, 'Strong Trustworthy Company 2018', NULL, '2020-09-16 09:29:02', '2020-09-16 09:29:02'),
(234, 2, 'Strong Trustworthy Company 2018', 'im_object', 'content', 55, '<p>ROYALPACK was awarded by the Institute of European Business in the 6th edition of the Strong Trustworthy Company Promotional Program 2018</p>', '', '2020-09-16 09:29:13', '2020-09-16 09:30:17'),
(235, 3, 'Starkes vertrauenswürdiges Unternehmen 2018', 'im_object', 'content', 55, '<p>ROYALPACK wurde vom Institute of European Business in der 6. Ausgabe des Strong Trustworthy Company Promotional Program 2018 ausgezeichnet Starkes vertrauenswürdiges Unternehmen 2018</p>', '', '2020-09-16 09:29:24', '2020-12-23 09:11:32'),
(236, 3, 'Starkes vertrauenswürdiges Unternehmen 2018', 'im_object', 'name', 55, 'Starkes vertrauenswürdiges Unternehmen 2018', NULL, '2020-09-16 09:29:37', '2020-09-16 09:29:37'),
(237, 2, 'Business Gazelles 2018', 'im_object', 'name', 56, 'Business Gazelles 2018', NULL, '2020-09-16 09:31:02', '2020-09-16 09:31:02'),
(238, 2, 'Business Gazelles 2018', 'im_object', 'content', 56, '<p>ROYALPACK became a member of the elite Gazele Biznesu 2018 club</p>', '', '2020-09-16 09:31:21', '2020-09-16 09:32:06'),
(239, 3, 'Business Gazelles 2018', 'im_object', 'content', 56, '<p>ROYALPACK wurde Mitglied des Elite-Clubs Gazele Biznesu 2018</p>', '', '2020-09-16 09:31:35', '2020-09-16 09:32:20'),
(240, 3, 'Business Gazelles 2018', 'im_object', 'name', 56, 'Business Gazelles 2018', NULL, '2020-09-16 09:31:47', '2020-09-16 09:31:47'),
(241, 2, 'Reliable for Business 2016', 'im_object', 'name', 57, 'Reliable for Business 2016', NULL, '2020-09-16 09:32:59', '2020-09-16 09:32:59'),
(242, 2, 'Reliable for Business 2016', 'im_object', 'content', 57, '<p>ROYALPACK received the Reliable for Business 2016 award</p>', '', '2020-09-16 09:33:12', '2020-09-16 09:34:10'),
(243, 3, 'Zuverlässig für das Geschäft 2016', 'im_object', 'name', 57, 'Zuverlässig für das Geschäft 2016', NULL, '2020-09-16 09:33:31', '2020-09-16 09:33:31'),
(244, 3, 'Zuverlässig für das Geschäft 2016', 'im_object', 'content', 57, '<p>ROYALPACK erhielt die Auszeichnung Reliable for Business 2016</p>', NULL, '2020-09-16 09:33:56', '2020-09-16 09:33:56'),
(245, 2, 'Eagles of Wprost 2016', 'im_object', 'name', 58, 'Eagles of Wprost 2016', NULL, '2020-09-16 09:34:46', '2020-09-16 09:34:46'),
(246, 2, 'Eagles of Wprost 2016', 'im_object', 'content', 58, '<p>ROYALPACK Laureate of Wprost Eagles 2016</p>', '', '2020-09-16 09:34:58', '2020-09-16 09:36:03'),
(247, 3, 'Eagles \"Wprost\" 2016', 'im_object', 'content', 58, '<p>ROYALPACK-Preis für Wprost Eagles 2016</p>', '', '2020-09-16 09:35:29', '2020-12-23 09:12:25'),
(248, 3, 'Eagles \"Wprost\" 2016', 'im_object', 'name', 58, 'Eagles \"Wprost\" 2016', NULL, '2020-09-16 09:35:42', '2020-09-16 09:35:42'),
(249, 2, 'Business Gazelles 2015', 'im_object', 'name', 59, 'Business Gazelles 2015', NULL, '2020-09-16 09:36:40', '2020-09-16 09:36:40'),
(250, 2, 'Business Gazelles 2015', 'im_object', 'content', 59, '<p>ROYALPACK became a member of the elite Gazele Biznesu 2015 club</p>', NULL, '2020-09-16 09:37:03', '2020-09-16 09:37:03'),
(251, 3, 'Business Gazelles 2015', 'im_object', 'content', 59, '<p>ROYALPACK wurde Mitglied des Elite-Clubs Gazele Biznesu 2015</p>', NULL, '2020-09-16 09:37:21', '2020-09-16 09:37:21'),
(252, 3, 'Business Gazelles 2015', 'im_object', 'name', 59, 'Business Gazelles 2015', NULL, '2020-09-16 09:37:46', '2020-09-16 09:37:46'),
(253, 2, 'Diamonds of the Polish Economy 2019', 'im_object', 'name', 116, 'Diamonds of the Polish Economy 2019', '', '2020-09-16 09:41:24', '2020-09-16 09:41:51'),
(254, 3, 'Diamanten der polnischen Wirtschaft 2019', 'im_object', 'name', 116, 'Diamanten der polnischen Wirtschaft 2019', '', '2020-09-16 09:41:24', '2020-09-16 09:41:58'),
(255, 2, 'Diamonds of the Polish Economy 2019', 'im_object', 'content', 116, '<p>ROYALPACK was awarded by the Institute of European Business in the 12th edition of the 2019 Diamonds of the Polish Economy Competition</p>', '', '2020-09-16 09:41:24', '2020-09-16 09:42:33'),
(256, 3, 'Diamanten der polnischen Wirtschaft 2019', 'im_object', 'content', 116, '<p>ROYALPACK wurde vom Institute of European Business in der 12. Ausgabe des Diamonds of the Polish Economy-Wettbewerbs 2019 ausgezeichnet</p>', '', '2020-09-16 09:41:24', '2020-09-16 09:42:54'),
(257, 2, 'Business Cheetahs 2019', 'im_object', 'name', 117, 'Business Cheetahs 2019', '', '2020-09-16 09:45:23', '2020-09-16 09:46:18'),
(258, 3, 'Business Cheetahs 2019', 'im_object', 'name', 117, 'Business Cheetahs 2019', '', '2020-09-16 09:45:23', '2020-09-16 10:10:25'),
(259, 3, 'Business Cheetahs 2019', 'im_object', 'content', 117, '<p>ROYALPACK erhielt eine Auszeichnung in der 14. Ausgabe des Business Cheetahs 2019-Wettbewerbs für die dynamische Entwicklung und Steigerung des Marktwerts durch das Institute of European Business.</p>', '', '2020-09-16 09:45:23', '2020-12-23 09:22:52'),
(260, 2, 'Business Cheetahs 2019', 'im_object', 'content', 117, '<p>ROYALPACK received a distinction in the 14th edition of the Business Cheetahs 2019 Competition for dynamic development and increase in market value by the Institute of European Business.</p>', '', '2020-09-16 09:45:23', '2020-09-16 10:11:32'),
(261, 2, 'Effective company 2019', 'im_object', 'name', 118, 'Effective company 2019', '', '2020-09-16 10:13:23', '2020-09-16 10:13:42'),
(262, 3, 'Effektives Unternehmen 2019', 'im_object', 'name', 118, 'Effektives Unternehmen 2019', '', '2020-09-16 10:13:23', '2020-09-16 10:13:51'),
(263, 3, 'Effektives Unternehmen 2019', 'im_object', 'content', 118, '<p>ROYALPACK wurde vom Institute of European Business in der 12. Ausgabe des Wettbewerbs Effective Company 2019 ausgezeichnet</p>', '', '2020-09-16 10:13:23', '2020-09-16 10:14:48'),
(264, 2, 'Effective company 2019', 'im_object', 'content', 118, '<p>ROYALPACK was awarded by the Institute of European Business in the 12th edition of the Effective Company 2019 competition</p>', '', '2020-09-16 10:13:23', '2020-09-16 10:15:01'),
(265, 2, 'Strong Trustworthy Company 2019', 'im_object', 'name', 119, 'Strong Trustworthy Company 2019', '', '2020-09-16 10:16:11', '2020-09-16 10:17:30'),
(266, 2, 'Strong Trustworthy Company 2019', 'im_object', 'content', 119, '<p>ROYALPACK was awarded by the Institute of European Business in the 7th edition of the Strong Trustworthy Company Promotional Program 2019</p>', '', '2020-09-16 10:16:11', '2020-09-16 10:17:05'),
(267, 3, 'Starkes vertrauenswürdiges Unternehmen 2019', 'im_object', 'content', 119, '<p>ROYALPACK wurde vom Institute of European Business in der 7. Ausgabe des Strong Trustworthy Company Promotional Programme 2019 ausgezeichnet</p>', '', '2020-09-16 10:16:11', '2020-12-23 09:23:36'),
(268, 3, 'Starkes vertrauenswürdiges Unternehmen 2019', 'im_object', 'name', 119, 'Starkes vertrauenswürdiges Unternehmen 2019', '', '2020-09-16 10:16:11', '2020-09-16 10:17:39'),
(269, 2, 'FEFCO Standard', 'im_object', 'name', 115, 'FEFCO Standard', NULL, '2020-09-16 13:05:34', '2020-09-16 13:05:34'),
(270, 3, 'Der FEFCO-Standard', 'im_object', 'name', 115, 'Der FEFCO-Standard', NULL, '2020-09-16 13:06:50', '2020-09-16 13:06:50'),
(271, 3, 'SRP-Displays', 'im_object', 'content', 120, '<p>Das Kundenkaufverhalten wird maßgeblich von der visuellen Präsentation des Produktes bestimmt. Daher ist diese Art der Verpackung eine sehr beliebte und wichtige Form der Warenpräsentation. Sie formuliert ihren Inhalt durch hohe Ästhetik. Dank der praktischen Anwendung und einfachen Bedienung werden sie sehr häufig zur Präsentation von Produkten in Ladenketten verwendet.</p>', '', '2020-09-22 11:22:39', '2020-12-23 09:24:02'),
(272, 2, 'SRP-Displays', 'im_object', 'content', 120, '<p>Customers often make a purchase based on the visual assessment of the product. That is why this type of packaging is a immensely popular form of displaying goods. The aesthetics of the packaging helps promote its content. Due to the practicality of their use and ease of arrangement, they are very often used to display products in chain stores.</p>', '', '2020-09-22 11:22:39', '2020-11-10 15:53:41'),
(275, 3, 'Ekspozytory ladowe', 'im_object', 'content', 121, '<p>Ladendisplay, wie der Name schon sagt, werden auf Verkaufsflächen platziert. Sie werden normalerweise verwendet, um kleine Produkte wie Lebensmittel, Kosmetika oder Büroartikel zu präsentieren. Royalpack implementiert unterschiedliche Designmöglichkeiten mit Offset- und Flexodruck, die bestmöglich das Produkt präsentieren und die Aufmerksamkeit des Kunden gewinnen.</p>', '', '2020-09-22 11:32:27', '2020-12-23 09:24:18'),
(276, 2, 'Ekspozytory ladowe', 'im_object', 'content', 121, '<p>A counter display, as its name suggests, is placed on the counter. This kind of a display is usually used to present small-sized products, such as food, cosmetics or office products. Royalpack implements a number of design solutions, with offset or flexographic printing, to present the product in the best possible way and to attract the customer\'s attention.</p>', '', '2020-09-22 11:32:27', '2020-09-22 11:53:26'),
(277, 3, 'Ekspozytory ladowe', 'im_object', 'name', 121, '<i class=\"fal fa-grip-lines\"></i> Ladengestell <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 11:32:27', '2020-09-22 11:54:28'),
(278, 2, 'Ekspozytory ladowe', 'im_object', 'name', 121, '<i class=\"fal fa-grip-lines\"></i> Counter displays <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 11:32:27', '2020-09-22 11:54:40'),
(279, 2, 'Ekspozytory ladowe', 'im_section', 'name', 12, 'Counter displays', NULL, '2020-09-22 11:34:53', '2020-09-22 11:34:53'),
(280, 3, 'Ekspozytory ladowe', 'im_section', 'name', 12, 'Ladengestell', NULL, '2020-09-22 11:35:11', '2020-09-22 11:35:11'),
(281, 3, 'E-Commerce-Verpackungen', 'im_section', 'name', 13, 'E-Commerce-Verpackungen', NULL, '2020-09-22 11:35:45', '2020-09-22 11:35:45'),
(282, 2, 'E-commerce packaging', 'im_section', 'name', 13, 'E-commerce packaging', NULL, '2020-09-22 11:35:59', '2020-09-22 11:35:59'),
(283, 3, 'Einzelne Projekte', 'im_section', 'name', 15, 'Einzelne Projekte', '', '2020-09-22 11:37:47', '2020-09-22 11:39:10'),
(284, 2, 'Individual projects', 'im_section', 'name', 15, 'Individual projects', NULL, '2020-09-22 11:39:35', '2020-09-22 11:39:35'),
(285, 2, 'Innovative projects', 'im_section', 'name', 16, 'Innovative projects', NULL, '2020-09-22 11:40:02', '2020-09-22 11:40:02'),
(286, 3, 'Innovative Projekte', 'im_section', 'name', 16, 'Innovative Projekte', NULL, '2020-09-22 11:40:29', '2020-09-22 11:40:29'),
(287, 3, 'SILA LINER', 'im_object', 'content', 122, '<p>Sehr geehrter Kunde! Der Offsetdruck muss nicht nur auf weißem Papier erfolgen.</p>\r\n<p>Um die Markterwartungen zu erfüllen, haben wir unsere neue Produktlinie eingeführt. Hierbei handelt es sich um Wellpappenschachteln, die im hochauflösenden Offsetdruck auf einer dunkelbraunen Kraftliner-Oberfläche gedruckt werden - erhältlich unter der Marke Sila Liner.</p>\r\n<p>Die Offsetdrucktechnik garantiert, dass die 6-Punkt-Schriftarten immer noch perfekt sichtbar sind und die verbleibenden kleinsten Grafikdetails extrem scharf sind. Die neue Produktlinie, die wir anbieten, zeichnet sich nicht nur durch eine hohe Qualität aus. Sondern, sie ermöglicht auch Kunden, die sich für diese Drucktechnologie entscheiden, Ihre Kosten, die mit dem Kauf von Werkzeugen zur Vorbereitung des Druckprozesses in Bezug auf die Flexotechnologie verbunden sind, zu reduzieren.</p>\r\n<p><strong class=\"text-danger\">70% der Kunden, die vor einem Verkaufsregal stehen, treffen und ändern ihre Entscheidungen unter dem Einfluss von Emotionen und Impulsen.</strong></p>', '', '2020-09-22 11:43:18', '2020-12-23 09:25:31'),
(288, 2, 'SILA LINER', 'im_object', 'content', 122, '<p>Dear customer, offset printing does not have to be done only on the white paper.</p>\r\n<p>To meet market expectations, we have launched our new product line. These are corrugated boxes with high resolution offset printing on a dark brown kraftliner surface - available under the Sila Liner brand.</p>\r\n<p>The offset printing technique guarantees, that the 6 point fonts are still perfectly visible, and the remaining even smallest graphic details are extremely sharp. The new product line we offer is not only distinguished by high quality, but what is very important, when deciding on this printing technology, you reduce your costs associated with the purchase of tools for preparing the printing process in relation to flexo technology.</p>\r\n<p><strong class=\"text-danger\">At the point of sale, up to the 70% of customers can change their decisions under the influence of emotions and impulses.</strong></p>', '', '2020-09-22 11:43:18', '2020-11-10 15:56:03'),
(291, 3, 'Opakowania e-commerce', 'im_object', 'content', 123, '<p>E-Commerce-Verpackungen sind für Online-Shops bestimmt. Dank der Verwendung eines Klebestreifens und eines perforierten, leicht zu öffnendem Verschlusssystems, können sie mehrmals verwendet werden; z. B., wenn das Produkt an den Absender zurückgeschickt werden muss. Diese Lösung ermöglicht sowohl einen ästhetischen Verschluss sowie die einfache Öffnung der Verpackung. Bei dieser Art der Verpackungen ist der visuelle Effekt außerordentlich wichtig, da es das wichtigste Marketinginstrument ist (&ndash); das Produkt muss sich selbst präsentieren. Wir erstellen es in Offset-, Flexo- und Mischtechnologie, das heißt z. B. Flexo außen und Offset innen, um beim Empfänger einen Wow-Effekt zu erzielen.</p>', '', '2020-09-22 11:55:14', '2020-12-23 09:25:49'),
(292, 2, 'Opakowania e-commerce', 'im_object', 'content', 123, '<p>E-commerce packages are dedicated to online stores. Thanks to the thin layer of glue covered with a tape and the use of perforated easy-open sealing, they can be used several times, e.g. when sending the product back to the sender. This solution allows for the aesthetic closure of the package, as well as its opening. With this type of packaging, the visual effect is extremely important because the package is the most important marketing tool - it must represent the product it contains. We create this kind of packaging in offset, flexo and mixed technology, for example flexo on the outside and offset on the inside, to create a wow effect for the recipient.</p>', '', '2020-09-22 11:55:14', '2020-11-10 15:58:11'),
(293, 3, 'Opakowania e-commerce', 'im_object', 'name', 123, '<i class=\"fal fa-grip-lines\"></i> E-Commerce-Verpackungen <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 11:55:14', '2020-09-22 11:55:55'),
(294, 2, 'Opakowania e-commerce', 'im_object', 'name', 123, '<i class=\"fal fa-grip-lines\"></i> E-commerce packaging <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 11:55:14', '2020-09-22 11:56:15'),
(295, 3, 'Projekty indywidualne', 'im_object', 'content', 124, '<p>Jedes Projekt ist speziell für uns. Deshalb konzentrieren wir uns auf besonders individuelle Verpackungslösungen, die durch vorherige Optimierung unterstützt und optimiert sind. Um die Umsetzung der individuellen Bedürfnisse kümmert sich unser hochkreatives Team von Konstrukteuren, das originelle Lösungen für geformte Verpackungen entwickelt.</p>', '', '2020-09-22 12:16:05', '2020-12-23 09:26:13'),
(296, 2, 'Projekty indywidualne', 'im_object', 'content', 124, '<p>Each and every project is special for us. That is why we usually focus on individual packaging solutions supported by prior optimization. The individual needs of our customers are taken care of by our highly creative team of design constructors, who create original solutions for shaped packaging.</p>', '', '2020-09-22 12:16:05', '2020-09-22 12:18:41'),
(297, 3, 'Projekty indywidualne', 'im_object', 'name', 124, '<i class=\"fal fa-grip-lines\"></i> Einzelne Projekte <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 12:16:05', '2020-09-22 12:17:42'),
(298, 2, 'Projekty indywidualne', 'im_object', 'name', 124, '<i class=\"fal fa-grip-lines\"></i> Individual projects <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 12:16:05', '2020-09-22 12:17:26'),
(299, 3, 'Projekty innowacyjne', 'im_object', 'content', 125, '<p>Eine Verpackung ist nicht nur eine Art der Warensicherung, sondern vor allem ein Weg um eine Produktmarke zu schaffen. Deshalb bieten wir spezielle Designs mit einem effektiven Offsetdruck an, die wir zusätzlich verfeinern, z. B. durch Stempeln, Heißimprägnieren, Folienlaminierung usw..</p>', '', '2020-09-22 12:19:07', '2020-12-23 09:26:36'),
(300, 2, 'Projekty innowacyjne', 'im_object', 'content', 125, '<p>Packaging is not only a way of securing the content, it is, first of all, creating a product brand. That is why we offer special constructions with an effective offset printing, which can be additionally refined, e.g. by stamping, hot stamping, foil lamination, etc.</p>', '', '2020-09-22 12:19:07', '2020-09-22 12:21:57'),
(301, 3, 'Projekty innowacyjne', 'im_object', 'name', 125, '<i class=\"fal fa-grip-lines\"></i> Innovative Projekte <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 12:19:07', '2020-09-22 12:21:17'),
(302, 2, 'Projekty innowacyjne', 'im_object', 'name', 125, '<i class=\"fal fa-grip-lines\"></i> Innovative projects <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 12:19:07', '2020-09-22 12:21:32'),
(303, 3, 'SILA LINER', 'im_object', 'content', 126, '<p>Unsere neue Marke Sila Liner ist die perfekte Lösung für Sie, wenn Sie ein ökonomisches Image Ihrer Produkte erstellen möchten, die die natürliche Umgebung schonen möchten und gleichzeitig die höchste Druckqualität erhalten wollen. Die Kombination der oben genannten Faktoren wird Ihre Produkte im Verkaufsregal hervorheben. Deshalb werden Ihre Kunden uns zu schätzen wissen.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Spezialpapier für Offsetverpackungen</span></strong></p>\r\n<p>Die Marke Sila Liner basiert auf der speziellen Art von uncoated Papier, mit der Sie die schönste und unverwechselbarste Wellpappenverpackung mit Offsetdruck herstellen können. Unser Offsetdruck auf Sila Liner erzeugt ein unglaublich klares Bild auf der dunkelbraunen natürlichen und matten Oberfläche.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Viel st&auml;rker als GD2-Papier</span></strong></p>\r\n<p>Es ist ein Papier aus der Kraftliner-Familie mit langen Holzfasern, dass  sich durch eine  höhere Reißfestigkeit- und Rissbeständigkeit und eine sehr hohe Feuchtigkeitsbeständigkeit im Vergleich zu Standard-GD2-Recyclingpapier auszeichnet.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Braune oder wei&szlig;e Farbe</span></strong></p>\r\n<p>Sila Liner mit seinen hochgradigen Eigenschaften ist auch in weißer Farbe erhältlich. Wir erreichen ein extrem scharfes Bild mit hoher Auflösung des Offsetdrucks sowohl auf weißen als auch auf dunkelbraunen Oberflächen.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Umweltfreundliches Image</span></strong></p>\r\n<p>Die Verpackungen aus der Sila Liner-Serie ermöglichen Ihren Kunden authentische Erlebnisse am Verkaufsregal, an denen sie einfach nicht vorbeikommen. Das steht im klaren Zusammenhang mit unseren ökologischen Verpackungslösungen, da unser Papier in FSC-Zertifizierung hergestellt wird.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Perfekt f&uuml;r alle Projekte</span></strong></p>\r\n<p>Sila Liner bietet eine Basis für alle Projekte; ausgehend von Einzelverpackungen über Sammelverpackungen bis hin zu individuellen Designs und Displays.</p>', '', '2020-09-22 14:48:30', '2020-12-23 09:29:23'),
(304, 2, 'SILA LINER', 'im_object', 'content', 126, '<p>Our new brand Sila Liner is the perfect solution for you, if you want to create an ecological image of your products, to care for the natural environment, while maintaining the highest quality of print. The combination of the above factors will make your products stand out on the store shelf, which customers will certainly appreciate.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Special paper for offset packaging</span></strong></p>\r\n<p>The Sila Liner brand is based on a special type of uncoated paper, that allows you to create the most beautiful, distinctive corrugated board packaging with offset printing. Our offset printing on Sila Liner creates an incredibly clear image on the dark brown natural matt surface.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Much stronger than GD2 paper</span></strong></p>\r\n<p>It is a paper from the Kraftliner family with long wood fibers, thanks to which it is distinguished by a much higher tear and cracks resistance, and high moisture resistance when compared to standard GD2 recycled paper.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Brown or white color</span></strong></p>\r\n<p>Sila Liner with its high strength features is also available in white colour. We reach an extremely sharp image with high resolution of offset printing on both white and dark brown surfaces.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Environmentally friendly image</span></strong></p>\r\n<p>Thanks to our packaging from the Sila Liner series, your customers will be able to experience natural sensations at the shelf store, which they will not be able to ignore. What is key in the context of ecological packaging solutions, our paper is produced in FSC certification.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Perfect for all projects</span></strong></p>\r\n<p>Sila Liner can be the basis for all projects, starting from the unit packaging, collective packaging, individual designs and ending with displays.</p>', '', '2020-09-22 14:48:42', '2020-11-10 16:02:01');
INSERT INTO `im_translation` (`translation_id`, `language_id`, `name`, `target_table`, `target_column`, `target_record`, `content`, `description`, `date_create`, `date_modify`) VALUES
(305, 2, 'OFFSET', 'im_object', 'content', 127, '<p><strong><span style=\"font-size: 14pt;\">STANDARD OFFSET</span></strong></p>\r\n<p>The ideal solution for most demanding graphic projects is offset printing, which, in addition to high quality printing, has a great potential when it comes to finishing of a package. ROYALPACK is equipped in a large-format offset printing machine of the latest generation, which allows for such finishes as:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- standard ones, using CMYK, Pantone and dispersion varnish</li>\r\n<li class=\"list-group-item\">- paints for food</li>\r\n<li class=\"list-group-item\">- fluorescent paints</li>\r\n<li class=\"list-group-item\">- metallic paints</li>\r\n<li class=\"list-group-item\">- printing on a PE+PET layer</li>\r\n<li class=\"list-group-item\">- varnishes for food</li>\r\n<li class=\"list-group-item\">- soft-touch varnishes</li>\r\n<li class=\"list-group-item\">- anti-skid varnishes</li>\r\n<li class=\"list-group-item\">- UV varnishes</li>\r\n<li class=\"list-group-item\">- selective varnishes, e.g. matte + UV</li>\r\n<li class=\"list-group-item\">- primer varnishes and many others</li>\r\n</ul>\r\n<p><strong><span style=\"font-size: 14pt;\">SILA LINER OFFSET</span></strong></p>\r\n<p>In the area of printing, ROYALPACK has created a unique brand called Sila Liner. It offers the possibility of precise printing on brown uncoated papers, thus giving our customers a real opportunity to be eco-friendly. From now on, the quality of printing on a grey substrate does not differ from printing on bleached papers in the offset printing technique. We can act in an eco-friendly way together and, at the same time, create unique packaging solutions that will effectively promote the products on store shelves. You can find out more at: <a href=\"http://www.silaliner.eu\" target=\"_blank\" rel=\"noopener\">www.silaliner.eu</a></p>', '', '2020-09-22 15:05:46', '2020-11-10 16:03:14'),
(306, 3, 'OFFSET', 'im_object', 'content', 127, '<p><strong><span style=\"font-size: 14pt;\">OFFSET-STANDARD</span></strong></p>\r\n<p>Für die anspruchsvollsten Grafikdesigns ist der Offsetdruck die perfekte Lösung, weil er neben dem hochwertigen Druck die meisten Möglichkeiten im Bereich der Endbearbeitung bietet. ROYALPACK verfügt über eine großformatige Offsetdruckmaschine der neuesten Generation, mit deren Hilfe folgende Arbeiten bis zum Ende hergestellt werden können:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- Standard, mit CMYK, Pantone und Dispersionslack</li>\r\n<li class=\"list-group-item\">- Lebensmittelfarben</li>\r\n<li class=\"list-group-item\">- Fluoreszenzfarbe</li>\r\n<li class=\"list-group-item\">- Metallicfarben</li>\r\n<li class=\"list-group-item\">- Ausdruck auf einer PE + PET-Schicht</li>\r\n<li class=\"list-group-item\">- Lebensmittellacke</li>\r\n<li class=\"list-group-item\">- Soft-Touch-Lacke</li>\r\n<li class=\"list-group-item\">- Anti-Rutsch-Lacke</li>\r\n<li class=\"list-group-item\">- UV-Lacke</li>\r\n<li class=\"list-group-item\">- selektive Lacke, z.B. matt + UV</li>\r\n<li class=\"list-group-item\">- Grundierungslacke und viele andere</li>\r\n</ul>\r\n<p><strong><span style=\"font-size: 14pt;\">SILA LINER OFFSET</span></strong></p>\r\n<p>Im Bereich Druck hat ROYALPACK eine einzigartige Marke namens Sila Liner geschaffen, die die Möglichkeit bietet, braune uncoated Papiere präzise zu drucken, und so Ihren Kunden eine echte Chance bietet, umweltfreundlich zu sein. Von nun an unterscheidet sich der Ausdruck auf grauem Substrat nicht mehr von der Druckqualität auf gebleichten Papieren in der Offsetdrucktechnik. Gemeinsam können wir damit umweltfreundlich werden und dabei einzigartige Verpackungslösungen entwickeln, die die Produkte effektiv in den Verkaufsregalen auszeichnen werden. Mehr auf: <a href=\"http://www.silaliner.eu\" target=\"_blank\" rel=\"noopener\">www.silaliner.eu</a></p>', '', '2020-09-22 15:05:46', '2020-12-23 09:31:01'),
(309, 3, 'FLEXO', 'im_object', 'content', 128, '<p><strong><span style=\"font-size: 14pt;\">STANDARD FLEXO</span></strong></p>\r\n<p>Der Flexodruck hat in den letzten Jahren seine Position unter den Drucktechniken gestärkt. Zweifellos ist die Qualität dieses Drucks dank des technologischen Fortschritts bereits auf einem sehr hohen Niveau. Sein Vorteil ist die Möglichkeit, direkt auf den Wellpappenblatt zu drucken, was sich im Folgenden übersetzt:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- M&ouml;glichkeit der Reduzierung der Grammatur einzelner Wellpappenschichten</li>\r\n<li class=\"list-group-item\">- Verk&uuml;rzung der Auftragserf&uuml;llungszeit durch Eliminierung des Laminierungsprozesses</li>\r\n<li class=\"list-group-item\">- Preisoptimierung der Verpackung</li>\r\n</ul>\r\n<p>Dank der hochmodernen, großformatigen Flexodruckmaschine und der selbst hergestellten Wellpappe, hat ROYALPACK einen echten und großen Einfluss auf die hohe Qualität der hergestellten Produkte.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">HIGH QUALITY FLEXO</span></strong></p>\r\n<p>Die kontinuierliche Zusammenarbeit mit einem Team von Druckern und weltweit anerkannten Lieferanten von Rohstoffen wie Papier, Farben und Polymeren garantieren die Möglichkeiten, die anspruchsvollsten Projekte in ROYALPACK umzusetzen.</p>\r\n<p>In der hochwertigen Flexodrucktechnik führen unsere erfahrenen Drucker Projekte auf der Basis von weißem gestrichenem Papier durch, bei denen grafische Motive in der Regel in hoher Auflösung erstellt werden. Dies erfordert die Verwendung von Rasterlineatur und erstklassigen Komponenten. Der endgültige Druck wird gemäß den Projektannahmen mit Lack bedeckt.</p>', '', '2020-09-22 15:30:50', '2020-12-23 09:32:35'),
(310, 2, 'FLEXO', 'im_object', 'content', 128, '<p><strong><span style=\"font-size: 14pt;\">STANDARD FLEXO</span></strong></p>\r\n<p>In recent years, flexographic printing has strengthened its position among printing techniques. Thanks to the technological progress, the quality of this kind of printing is undoubtedly already at a remarkably high level. Its biggest advantage is the possibility of printing directly on a cardboard sheet, which means that:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- it is possible to reduce the grammage of individual layers of corrugated cardboard</li>\r\n<li class=\"list-group-item\">- the time of order filling can be shortened by eliminating the lamination process</li>\r\n<li class=\"list-group-item\">- the price of packaging can be optimized</li>\r\n</ul>\r\n<p>Thanks to the state-of-the-art, large-format flexographic machine and the fact that we manufacture cardboard ourselves, ROYALPACK has a real impact on the high quality of the manufactured packaging.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">HIGH QUALITY FLEXO</span></strong></p>\r\n<p>Continuous cooperation with a team of printers and world-renowned suppliers of raw materials such as paper, paints and polymers makes it possible for ROYALPACK to implement even the most demanding projects.</p>\r\n<p>In the area of High Quality Flexo printing technology, our experienced printers implement projects based on white coated paper, where graphic motifs are usually prepared in high resolution. This requires the use of high screen rulings and top-class components. The final printing, made in accordance with the project specifications, is covered with varnish.</p>', '', '2020-09-22 15:30:50', '2020-09-22 15:36:50'),
(311, 3, 'R&D', 'im_object', 'content', 129, '<p><strong><span style=\"font-size: 14pt;\">Abteilung f&uuml;r Produktentwicklung</span></strong></p>\r\n<p>Die Konstrukteure der R&amp;D-Abteilung bilden ein junges, ehrgeiziges und kreatives Team. Ihre Aufgabe ist, neue Verpackungen in der Produktion umzusetzen, sowie die kreative Zusammenarbeit mit dem Kunden aufzunehmen, um die beste Verpackung für Ihr Produkt zu schaffen. Damit sie die oben genannten Ziele verwirklichen können, wurden sie mit Software für folgende Aufgaben ausgestattet:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Design der Konstruktionen (Artios Cad, Cape Pack)</strong></li>\r\n<li><img src=\"../system/default/public/artios-d60004c3c44794f93da802c1c23befb6.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Grafikdesign (Adobe Creative Cloud)</strong></li>\r\n<li><img src=\"../system/default/public/cape-702e619167a79ab7d93ef07f707d7499.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" li=\"\" /></li>\r\n<li><strong>Design und Visualisierung der Verpackungen in 3D (Studio Designer)</strong></li>\r\n<li><img src=\"../system/default/public/kodak-67c51a0a8ec58b2c29aed5a751e89b48.png\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>Sie verf&uuml;gen auch &uuml;ber folgende Ger&auml;te:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Drucker f&uuml;r digitale Proofs</strong></li>\r\n<li><img src=\"../system/default/public/drukarkaproof-dba70fd0fa03f1c9629b02a413450982.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Plotter der Firma Kongsberg f&uuml;rs Stanzen der Prototypen der Verpackungen</strong></li>\r\n<li><img src=\"../system/default/public/ploter-4d1dfee42efe90bdbcf75ec6961903b7.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Filmbelichter der Firma KODAK f&uuml;r Vorbereitung prozessfreier SONORA-Offsetplatten</strong></li>\r\n<li><img src=\"../system/default/public/naswietlarka-33199de87eb5c2163aaf56df55b2fffc.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>Die Verbindung der Kreativität des Teams mit technologischen Möglichkeiten dieser Geräte ermöglicht uns folgendes:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">Unabh&auml;ngigkeit w&auml;hrend der Umsetzung des neuen Produktes</li>\r\n<li class=\"list-group-item\">Gr&ouml;&szlig;ere Elastizit&auml;t im Prozess der Vorbereitung der Verpackung</li>\r\n<li class=\"list-group-item\">Lieferfrist des fertigen Produktes bis auf ein Minimum reduziert</li>\r\n<li class=\"list-group-item\">Anwendung umweltfreundlicher Technologien in Zusammenarbeit mit der Firma KODAK &ndash; Wir sind umweltfreundlich!</li>\r\n</ul>\r\n<p>Und damit wollen wir die vollste Kundenzufriedenheit erreichen.</p>\r\n<p>ROYALPACK zeigt eine wesentliche Geschäftsentwicklung mit Anwendung der KODAK SONORA prozessfreien Offset-Platten.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/qxKPV_xpkFw\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', '', '2020-09-22 15:50:37', '2020-12-23 09:35:42'),
(312, 2, 'R&D', 'im_object', 'content', 129, '<p><strong><span style=\"font-size: 14pt;\">Product Development Department</span></strong></p>\r\n<p>The R&amp;D design department is a young, ambitious and creative team. Their task is to implement new packaging for production, as well as to cooperate creatively with the customers to design the best packaging for their product. To be able to accomplish these objectives, they were equipped with special software that allows for:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Construction design (Artios Cad, Cape Pack)</strong></li>\r\n<li><img src=\"../system/default/public/artios-d60004c3c44794f93da802c1c23befb6.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Graphics design (Adobe Creative Cloud)</strong></li>\r\n<li><img src=\"../system/default/public/cape-702e619167a79ab7d93ef07f707d7499.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Design and 3D visualisation (Studio Designer)</strong></li>\r\n<li><img src=\"../system/default/public/kodak-67c51a0a8ec58b2c29aed5a751e89b48.png\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>and devices:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Digital proofing printer</strong></li>\r\n<li><img src=\"../system/default/public/drukarkaproof-dba70fd0fa03f1c9629b02a413450982.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Kongsberg plotter to cut out packaging prototypes</strong></li>\r\n<li><img src=\"../system/default/public/ploter-4d1dfee42efe90bdbcf75ec6961903b7.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>KODAK platesetter for the preparation of offset CTP SONORA plates</strong></li>\r\n<li><img src=\"../system/default/public/naswietlarka-33199de87eb5c2163aaf56df55b2fffc.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>Linking the creativity of our team and technological capabilities of these devices enables us to:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">Become independent in the process of product launching</li>\r\n<li class=\"list-group-item\">Reach greater flexibility in the process of packaging design</li>\r\n<li class=\"list-group-item\">Minimize delivery time of the ready-made product</li>\r\n<li class=\"list-group-item\">Use environmentally friendly technology in collaboration with KODAK &ndash; We are GREEN!</li>\r\n</ul>\r\n<p>And thereby, achieving total customer satisfaction.</p>\r\n<p>ROYALPACK shows significant business development using KODAK SONORA Process Free Plates</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/qxKPV_xpkFw\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', '', '2020-09-22 15:50:37', '2020-11-10 16:05:45'),
(313, 3, 'Park maszynowy', 'im_object', 'content', 130, '<p>Um unseren Kunden  Verpackungen höchster Qualität zu garantieren, hat Royalpack immer den Erwerb modernster Maschinen zur Herstellung von Verpackungen bevorzugt. Heute verfügt Royalpack über Maschinen leitender Firmen in der Branche, wie z.B.: KBA, BOBST, STOCK, BHS &ndash; die es uns ermöglichen, den Prozess höchster Qualität durchzuführen; von dem Design bis zur fertigen Verpackung. Im Nachfolgenden präsentieren wir einige unserer Maschinen:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Wellpappanlage</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/tekturnica-7f67b5543abd16d4b43b8747b86a704b.jpg\" title=\"Tekturnica - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>2 BHS Single Facers für die Herstellung von der offenen Welle und Doppelwelle. Single Facers arbeiten in-line mit STOCK Kaschiermaschine und Aufwickler</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Druckmaschinen</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/drukarka-ff836e39d231bb53f8f87ed9156e4402.jpg\" title=\"Drukarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>VLF KBA Rapida 164A</li>\r\n<li>FLEXO - BOBST</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Kaschiermaschinen</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/kaszerka-e4f4b5cc61a216c72a873ce1035f8543.jpg\" title=\"Kaszerka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>in line</li>\r\n<li>off line - Blatt</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Flache Stanzmaschinen</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/bobst-372d027081b0df1b01561b76a49c6fa8.jpg\" title=\"Bobst - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>BOBST Power Register 1600</li>\r\n<li>BOBST 1600</li>\r\n<li>BOBST 1575</li>\r\n<li>VIKING 1650</li>\r\n<li>CROSLAND 1750</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Faltschachtel-Klebemaschinen</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/sklejarka-3ac89d3c952f958f4e75be3cfccc536b.jpg\" title=\"Sklejarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>5-Klebepunkte</li>\r\n<li>4-Klebepunkte</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Querschneider</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/przekrawacz-ff3f59d3c8b22bfa45ae8efd4c858f3c.jpg\" title=\"Przekrawacz - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>Papierschneider</li>\r\n<li>Wellpappeschneider</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Verpackungslinie</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/wiazarka-66cae27d16ab10fd709bd92c5bc760c7.jpg\" title=\"Wiązarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>Automatische Bandumreifungsmaschine</li>\r\n</ul>\r\n</div>\r\n</li>\r\n</ul>', '', '2020-09-22 18:52:14', '2020-12-23 09:37:55'),
(314, 2, 'Park maszynowy', 'im_object', 'content', 130, '<p>In order to provide our customers with the highest quality packaging, ROYALPACK has always preferred to purchase the most modern machines for their production. At the moment, we are in possession of machines from leading companies in the industry such as: KBA, BOBST, STOCK, BHS, BW Papersystems, Mosca, Pivab, HSM and Kongsberg which allow us to perform a high quality process, from the design to the ready-made packaging. Below, we present some of our machines:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Corrugator</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/tekturnica-7f67b5543abd16d4b43b8747b86a704b.jpg\" title=\"Tekturnica - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>2 BHS Single Facers for single face, single wall, double single face and double wall board production. Single Facers works in-line with laminator and rewinder for single face flute.</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Printing machines</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/drukarka-ff836e39d231bb53f8f87ed9156e4402.jpg\" title=\"Drukarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>VLF KBA Rapida 164A</li>\r\n<li>FLEXO - BOBST</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Laminators</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/kaszerka-e4f4b5cc61a216c72a873ce1035f8543.jpg\" title=\"Kaszerka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>in line</li>\r\n<li>off line - sheet</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Flat-bed die cutting machines</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/bobst-372d027081b0df1b01561b76a49c6fa8.jpg\" title=\"Bobst - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>BOBST Power Register 1600</li>\r\n<li>BOBST 1600</li>\r\n<li>BOBST 1575</li>\r\n<li>VIKING 1650</li>\r\n<li>CROSLAND 1750</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Folding-gluing machines</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/sklejarka-3ac89d3c952f958f4e75be3cfccc536b.jpg\" title=\"Sklejarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>5-point</li>\r\n<li>4-point</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Sheeters</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/przekrawacz-ff3f59d3c8b22bfa45ae8efd4c858f3c.jpg\" title=\"Przekrawacz - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>Paper sheeter</li>\r\n<li>Corrugated cardboard sheeter</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Packaging line</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/wiazarka-66cae27d16ab10fd709bd92c5bc760c7.jpg\" title=\"Wiązarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>automated belt strapping machine</li>\r\n</ul>\r\n</div>\r\n</li>\r\n</ul>', '', '2020-09-22 18:52:14', '2020-11-10 16:06:55'),
(315, 3, 'Park maszynowy', 'im_object', 'name', 130, '<i class=\"fal fa-grip-lines\"></i> Maschinenpark <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-22 18:55:16', '2020-09-22 18:55:16'),
(316, 2, 'Park maszynowy', 'im_object', 'name', 130, '<i class=\"fal fa-grip-lines\"></i> Machinery <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-22 18:55:42', '2020-09-22 18:55:42'),
(317, 3, 'Park maszynowy', 'im_section', 'name', 25, 'Maschinenpark', NULL, '2020-09-22 19:54:24', '2020-09-22 19:54:24'),
(318, 2, 'Park maszynowy', 'im_section', 'name', 25, 'Machinery', NULL, '2020-09-22 19:54:45', '2020-09-22 19:54:45'),
(319, 2, 'Innowacje', 'im_section', 'name', 27, 'Innovation', NULL, '2020-09-22 20:00:13', '2020-09-22 20:00:13'),
(320, 3, 'Innowacje', 'im_section', 'name', 27, 'Innovationen', NULL, '2020-09-22 20:00:36', '2020-09-22 20:00:36'),
(321, 3, 'Innowacje', 'im_object', 'content', 131, '<div style=\"font-size: 14pt;\" class=\"text-danger\">Sila Liner</div>\r\n<p><img src=\"../system/default/public/silaliner_2-3b234450924a4c1b3b3bbc1eb3583e32.png\" title=\"Sila Liner - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Wir haben eine neue Verpackungsmarke für Bio-Produkte erschaffen. Sie heißt: Sila Liner. Der von uns hergestellte Druck auf Sila Liner garantiert ein unglaublich scharfes Bild auf einer dunkelbraunen natürlichen Oberfläche. Es handelt sich hier um ein Papier aus der Kraftliner-Familie, das sich durch eine viel höhere Reißfestigkeit und eine hohe Feuchtigkeitsbeständigkeit im Vergleich zu GD2 Recyclingpapier auszeichnet. Im Zusammenhang mit umweltfreundlichen Verpackungslösungen ist es wichtig, dass unser Papier FSC-zertifiziert ist. Sila Liner bietet eine Basis für alle Projekte, ausgehend von Einzelverpackungen über Sammelverpackungen bis hin zu individuellen Designs und Displays.</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Wiederverwendbare Kartonverpackung</div>\r\n<p><img src=\"../system/default/public/_warstwa-odlepna_180905d03_stand-jungle-7e3f61cffa6b0b7e9a1124c6ee0549b1.jpg\" title=\"Opakowania kartonowe wielokrotnego użytku - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Unser neues innovatives Produkt ist das Ergebnis des Projekts \"Eine Reihe innovativer, wiederverwendbarer Kartonverpackungen mit innovativen Merkmalen und der Umbruch bei Leistungsparametern\". Hierbei handelt es sich um Verpackungskonstruktionen mit der Möglichkeit, Grafiken durch Verwendung einer zusätzlichen informativen-dekorativen Klebeschicht zu ändern. Die Herstellungstechnologie von Verpackungen unterliegt dem Patentschutz Nr. 233993 mit dem Titel: Produkt aus Wellpappe mit einer Klebeschicht. Dieses Produkt ist für Kunden gedacht, die Wert auf Ökologie & Ökonomie und gleichzeitig auf hohe Ästhetik legen; deshalb findet es eine große Anwendung. Dank der Klebeschicht kann die Konstruktion für mehrere Ausstellungen sowie für verschiedene in Vertriebsnetzen organisierte Werbeaktionen verwendet werden. Auf diese Weise optimiert der Empfänger die Kosten für nachfolgende Werbeaktionen und reduziert die Menge des erzeugten Abfalls.</p>\r\n<p><strong>Produktinnovation:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Möglichkeit, die Grafiken zu wieder zu nutzen, die im Offsetdruck höchster Qualität erstellt wurden (Klebeschichten)</li>\r\n<li>Verpackung mit verlängerter Lebensdauer - Mehrfachverwendung</li>\r\n<li>Erhöhte strukturelle Festigkeit</li>\r\n<li>Umweltschonend</li>\r\n<li>Kostenoptimierung</li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p>\r\nIm Rahmen des oben genannten Projekts haben wir auch Verpackungen mit erhöhter Festigkeit aus Wellpappe mit erhöhten Festigkeitsparametern durch ausgewählte Strukturumwandlungen durch maschinell montierte Querentwicklungen geschaffen. Solche Versänderungsentwicklungen haben ihre praktische Anwendung, insbesondere in Bag-in-Box-Verpackungen. Die oben genannten Verpackungen sind ab April 2020 im Verkaufsangebot des Unternehmens erhältlich. Das Produkt wurde dank der europäischen Unionsbeihilfe im Rahmen des operationellen Programms für intelligente Entwicklung 2014-2020 entwickelt. 3.2.1 Marktforschung</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Verpackungen mit erhöhter Beständigkeit</div>\r\n<p><img src=\"../system/default/public/wytrz-0e129f6e7936ce48cb0c0dc1ff63b761.png\" title=\"Opakowania o podwyższonej wytrzymałości\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>\r\nGegenstand der Erfindung ist das innovative, energiesparende System für die Herstellung von Verpackungen mit erhöhter Beständigkeit. Die Technologie der Herstellung von Verpackungen wurde am Patentamt der Republik Polen als Erfindung Nr. P.398521 u.d.T. &bdquo;Art der Herstellung der Schachtel aus Pappe und Pappschachtel &rdquo; sowie beim Europäischen Patentamt als Erfindung Nr. EP12183020.2 u.d.T. &bdquo;A method for manufacturing of cardboard boxes and a cardboard box&rdquo; zum Schutz angemeldet. Das neue Produkt ist für Abnehmer innovativer Verpackungen bestimmt, die auf das Verständnis der Produkte mit neuen Funktions- und Nutzungsmerkmalen setzen. Diese Erzeugnisse zeichnen sich durch hohe Beständigkeit, visuelle Ästhetik und Umweltfreundlichkeit (3R &ndash; Reduce, Reuse, Recycle) aus.</p>\r\n<div class=\"clearfix\"></div>\r\n<p><strong>Wesentliche Merkmale:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Durchschnittliche Kraft für Abrissfähigkeit der Fugen: 211 N/m</li>\r\n<li>Maximale Kraft für Abrissfähigkeit der Fugen: 336 N/m</li>\r\n<li>Arbeitsabrissfähigkeit der Fugen: 495 J/m&sup2;</li>\r\n<li>Beständigkeit der Fuge gegen Auswirkungen der Scherspannungen: 1032 N/m</li>\r\n<li>Deformation der zerquetschten Schachtel: 9,01 mm</li>\r\n<li>Beständigkeit der Schachtel gegen statische Druckkraft (BCT): 2781 N</li>\r\n</ul>\r\n<p><strong>Innovatives Produkt:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Zusätzliche Schutzfunktion</li>\r\n<li>Verpackung für dynamisches Packen</li>\r\n<li>Zusätzliche Transportfunktion &ndash; großformatige Verpackungen</li>\r\n<li>Zusätzliche Transportfunktion &ndash; Transport in extremen klimatischen Bedingungen</li>\r\n<li>Zusätzliche Marketingfunktion &ndash; Offsetdruck höchster Qualität</li>\r\n</ul>\r\n<p><strong>VERPACKUNGEN MIT ERHÖHTER BESTÄNDIGKEIT SIND IM VERKAUFSANGEBOT DER FIRMA AB MÄRZ 2015 ERHÄLTLICH.</strong></p>\r\n<p><strong>Das Produkt entstand dank der Finanzierung aus dem Europäischen Fond für Regionale Entwicklung im Rahmen des Operationellen Programms Innovative Wirtschaft 4.6.</strong></p>', '', '2020-09-22 20:04:14', '2020-12-23 09:43:12'),
(322, 2, 'Innowacje', 'im_object', 'content', 131, '<div style=\"font-size: 14pt;\" class=\"text-danger\">Sila Liner</div>\r\n<p><img src=\"../system/default/public/silaliner_2-3b234450924a4c1b3b3bbc1eb3583e32.png\" title=\"Sila Liner - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>We have created a new packaging brand dedicated to organic products. Its name is Sila Liner. The print on the Sila Liner made by us creates an incredibly sharp image on the dark brown natural surface. This is a kind of the Kraft paper, thanks to that it stands out by much higher tear resistance and high moisture resistance compared to the standard GD2 recycled paper. What is important in the context of environmentally friendly packaging solutions &ndash; our paper is FSC certified. Sila Liner can be the basis for all projects, from unit packaging, to collective packaging, individual designs and displays.</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Reusable cardboard packaging</div>\r\n<p><img src=\"../system/default/public/_warstwa-odlepna_180905d03_stand-jungle-7e3f61cffa6b0b7e9a1124c6ee0549b1.jpg\" title=\"Opakowania kartonowe wielokrotnego użytku - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Our new innovative product is the result of the project \"A range of innovative reusable cardboard packaging, with innovative features and breakthrough performance parameters\". These are packaging constructions with the possibility of changing graphics, by using an additional informative and decorative adhesive layer. The production technology of packaging is covered by patent protection No. 233993 entitled: Product of corrugated cardboard with an adhesive layer. This product is designed for customers who value ecology, saving and at the same time high aesthetics, which is why it has a wide range of applications. Due to the adhesive layer, the construction can be used for several exhibitions, as well as for various promotions organized in distribution networks. In this way, the recipient optimizes the costs of subsequent promotions and reduces the amount of generated waste.</p>\r\n<p><strong>Product innovation:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>the ability to change graphics made in the highest quality offset printing (adhesive layers)</li>\r\n<li>extended packaging life - multiple use</li>\r\n<li>increased structural strength</li>\r\n<li>reduction of the amount of generated waste - ecology</li>\r\n<li>costs optimization</li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p>As part of the above project, we have also created corrugated cardboard packaging with increased strength parameters of selected structural walls through the use of machine-bonded transverse reinforcements. Such reinforcements have their practical application, in particular in Bag-in-Box packaging. The above packaging have been available for sale since April 2020. The product was created thanks to the grant from European Funds under the Intelligent Development Operational Program 2014-2020. Sub-measure 3.2.1 Market research</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Packaging with increased durability</div>\r\n<p><img src=\"../system/default/public/wytrz-0e129f6e7936ce48cb0c0dc1ff63b761.png\" title=\"Opakowania o podwyższonej wytrzymałości\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>The present invention is an innovative energy-saving system for producing packaging with increased durability. Our packaging production technology was filed for protection in the Polish Patent Office as an invention no. P.398521 under the name: &ldquo;A method for manufacturing of cardboard boxes and a cardboard box&rdquo;, as well as in the European Patent Office as an invention no. EP12183020.2 under the name: \"A method for manufacturing of cardboard boxes and a cardboard box.\" The new product is designed for customers of innovative packaging who rely on assigning new functional and utilitarian features to products. These products are characterized by high durability, aesthetic look and high environmental performance (3R - Reduce, Reuse, Recycle).</p>\r\n<div class=\"clearfix\"></div>\r\n<p><strong>Important features:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Average breaking strength of the weld: 211 N/m</li>\r\n<li>Maximum breaking strength of the weld: 336 N/m</li>\r\n<li>Weld cracking work: 495 J/m&sup2;;</li>\r\n<li>Resistance of the weld to the shear stresses: 1032 N/m</li>\r\n<li>Deformation of a compressed box: 9.01 mm</li>\r\n<li>Resistance of the box to the static pressure (BCT): 2781 N</li>\r\n</ul>\r\n<p><strong>Product innovation:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Additional protective function</li>\r\n<li>Boxes for dynamic packing</li>\r\n<li>Additional transporting function &ndash; bulk packaging containers</li>\r\n<li>Additional transporting function &ndash; transport in extreme climatic conditions</li>\r\n<li>Additional marketing function &ndash; offset printing of the highest quality</li>\r\n</ul>\r\n<p><strong>PACKAGING WITH INCREASED DURABILITY HAVE BEEN AVAILABLE FOR SALE SINCE MARCH 2015.</strong></p>\r\n<p><strong>The product was created thanks to the grant from European Regional Development Fund under the I.E.O.P 4.6.</strong></p>', '', '2020-09-22 20:04:14', '2020-11-10 16:10:06'),
(323, 2, 'Innowacje', 'im_object', 'name', 131, '<i class=\"fal fa-grip-lines\"></i> Innovation <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-09-22 20:05:05', '2020-09-22 20:05:05'),
(324, 3, 'Innowacje', 'im_object', 'name', 131, '<i class=\"fal fa-grip-lines\"></i> Innovationen <i class=\"fal fa-grip-lines\"></i>', '', '2020-09-22 20:05:21', '2020-09-22 20:05:40'),
(325, 2, 'Diamenty Miesięcznika Forbesa 2020', 'im_object', 'name', 132, 'The Forbes Diamonds 2020', '', '2020-10-08 18:16:18', '2020-10-08 18:23:20'),
(326, 3, 'Diamenty Miesięcznika Forbesa 2020', 'im_object', 'name', 132, 'Der Forbes Diamonds 2020', '', '2020-10-08 18:16:18', '2020-10-08 18:23:27'),
(327, 2, 'ROYALPACK laureatem Diamenty Miesięcznika Forbesa 2020', 'im_object', 'content', 132, '<p>ROYALPACK is the laureate of the Forbes Diamonds 2020</p>', '', '2020-10-08 18:16:18', '2020-10-08 18:21:30'),
(328, 3, 'ROYALPACK laureatem Diamenty Miesięcznika Forbesa 2020', 'im_object', 'content', 132, '<p>ROYALPACK ist Preisträger der Forbes Diamonds 2020</p>', '', '2020-10-08 18:16:18', '2020-12-23 09:45:19'),
(329, 4, 'Profil działalności', 'im_object', 'name', 16, '<i class=\"fal fa-grip-lines\"></i> Profil d\'activité <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 12:05:14', '2020-12-08 12:05:14'),
(330, 4, 'Kim jesteśmy', 'im_object', 'content', 16, '<p><strong><span style=\"font-size: 14pt;\">Qui sommes-nous?</span></strong></p>\r\n<p>Nous sommes un fabricant du carton ondulé et des emballages, imprimés avec des techniques d\'impression offset et flexographique. Nous fabriquons des emballages individuels et collectifs, des présentoirs, ainsi que des projets du groupe POS des produits de différents secteurs du marché. L\'entreprise est présente sur le marché depuis 2009, mais son histoire est un long processus basé sur plus de 20 ans d\'expérience dans l\'industrie de l\'emballage. Par conséquent, nous sommes pleinement conscients de l\'importance de prendre soin de nos clients. Nous vous comprenons et nous nous adaptons à vos besoins.</p>', '', '2020-12-08 12:09:13', '2020-12-08 12:09:13'),
(331, 4, 'Zaufanie', 'im_object', 'name', 6, 'CONFIANCE', NULL, '2020-12-08 12:10:11', '2020-12-08 12:10:11'),
(332, 4, 'Ekologia', 'im_object', 'name', 7, 'ÉCOLOGIE', NULL, '2020-12-08 12:10:30', '2020-12-08 12:10:30'),
(333, 4, 'Jakość', 'im_object', 'name', 8, 'QUALITÉ', '', '2020-12-08 12:10:48', '2020-12-08 12:10:48'),
(334, 4, 'Profil działalności', 'im_object', 'content', 15, '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Mission</span></strong></p>\r\n<p>Notre objectif est d\'être le meilleur dans ce que nous faisons. Afin de construire des relations durables avec nos clients, nous proposons un service très flexible et complet. Il garantit une flexibilité pour les besoins des plus gros clients, ce qui se traduit par leur satisfaction. C\'est le résultat d\'une entreprise responsable et durable.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potentiel</span></strong></p>\r\n<p>Le potentiel de l\'entreprise en constante croissance est dû principalement à nos employés. Dès le début de notre existence, nous avons investi dans le développement rapide de notre position sur le marché. Avec un personnel qualifié et des capacités en constante augmentation, et grâce à l\'achat des machines modernes, nous atteignons cet objectif. Nous investissons dans le développement de l\'entreprise. En 2019, nous avons construit une nouvelle usine de fabrication et nous avons acheté des machines modernes, augmentant la capacité de production à 50 millions de m2. Grâce à notre fiabilité et à notre approche professionnelle, nous construisons notre marque au quotidien.</p>', NULL, '2020-12-08 12:12:28', '2020-12-08 12:12:28'),
(335, 4, 'O nas', 'im_section', 'name', 2, 'À PROPOS DE NOUS', NULL, '2020-12-08 12:14:31', '2020-12-08 12:14:31'),
(336, 4, 'Oferta', 'im_section', 'name', 3, 'OFFRE', '', '2020-12-08 12:15:30', '2020-12-08 12:15:30'),
(337, 4, 'Technologia', 'im_section', 'name', 4, 'TECHNOLOGIE', '', '2020-12-08 12:16:39', '2020-12-08 12:16:39'),
(338, 4, 'Kariera', 'im_section', 'name', 5, 'Carrière', NULL, '2020-12-08 12:17:18', '2020-12-08 12:17:18'),
(339, 4, 'Kontakt', 'im_section', 'name', 6, 'Contact', NULL, '2020-12-08 12:17:55', '2020-12-08 12:17:55'),
(340, 4, 'Strona główna', 'im_section', 'name', 1, 'HOME', '', '2020-12-08 12:18:35', '2020-12-08 12:18:35'),
(341, 4, 'Profil działalności', 'im_section', 'name', 7, 'Profil d\'activité', NULL, '2020-12-08 12:21:16', '2020-12-08 12:21:16'),
(342, 4, 'Historia firmy', 'im_section', 'name', 17, 'Histoire de l\'entreprise', NULL, '2020-12-08 12:22:13', '2020-12-08 12:22:13'),
(343, 4, 'Historia firmy', 'im_object', 'name', 20, '<i class=\"fal fa-grip-lines\"></i> Histoire de l\'entreprise <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 12:22:39', '2020-12-08 12:22:39'),
(344, 4, 'Historia firmy - aktualnie', 'im_object', 'content', 48, '<p><strong><span style=\"font-size: 14pt;\">Actuellement...</span></strong></p>\r\n<p>Actuellement, ROYALPACK emploie plus de 100 personnes, mais leur nombre ne cesse de croître. Ce qui y contribue, ce sont les nouvelles machines achetées en 2018, les nouveaux investissements, et donc l\'intérêt croissant des entreprises de différents secteurs industriels et marchés. Royalpack opère sur les marchés polonais, allemand, autrichien, britannique, scandinave et du Benelux avec des perspectives de développement avec d\'autres marchés européens...</p>', '', '2020-12-08 12:24:19', '2020-12-08 12:24:29'),
(345, 4, 'Historia firmy', 'im_object', 'content', 20, '<p>Malgré les modestes débuts, une entreprise familiale moderne a été créée. Un développement rapide dès 2011 avait ses racines en 1996 lorsque le fondateur de Royalpack, Andrzej Tatar, est devenu le seul représentant de Stone Europa Carton GmbH sur le marché polonais. Trois ans plus tard, en 1999, il ouvre en Pologne une succursale d\'Europa Carton Sp. z oo et en devient le PDG. En 2000, Anna Tatar, future copropriétaire de Royalpack, rejoint l\'équipe logistique de l\'agence Europa Carton à Zielona Góra. D\'ici 2010, la branche d\'Europa Carton Sp. z oo faisait partie des structures du groupe Smurfit Kappa.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Année 2011</span></strong></p>\r\n<p>Création de ROYALPACK, Tatar Sp.j. L\'activité se concentre sur la production d\'emballages collectifs en carton ondulé avec impression offset. En 2011, l\'entreprise s\'est dotée des machines suivantes:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- machine d\'impression offset KBA 162 (format: 1120 x 1620 mm),</li>\r\n<li class=\"list-group-item\">- machine de laminage,</li>\r\n<li class=\"list-group-item\">- presse de découpe automatique BOBST 1575,</li>\r\n<li class=\"list-group-item\">- presse de découpe Viking et Crosland (format jusqu\'à 1700 mm),</li>\r\n<li class=\"list-group-item\">- plieuse-colleuse 3 points.</li>\r\n</ul>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg\" title=\"New office of the company\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Année 2013</span></strong></p>\r\n<p>Une année décisive dans l’activité de la société. Le 31 juillet, ROYALPACK, Tatar Sp. j. a reçu une subvention de l\'UE au titre du Programme Opérationnel Économie Innovante, axe prioritaire 4 - Investissements dans des entreprises innovantes. Pilotage: « Prise en charge de la première mise en œuvre de l\'invention ». Grâce à lui, en novembre, nous avons commencé la construction d\'une usine moderne à Słone, près de Zielona Góra.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Année 2015</span></strong></p>\r\n<p>Achèvement de l\'investissement et changement du siège social de la société.</p>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg\" title=\"The extension of Production Park\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Année 2016</span></strong></p>\r\n<p>L\'extension du parc de production, avec un espace de stockage, pour 2 680 m² supplémentaires</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Année 2018</span></strong></p>\r\n<p>Une autre percée dans l’activité de l\'entreprise. Le 15 janvier, ROYALPACK a reçu une subvention de l\'UE dans le cadre du Programme opérationnel Développement Intelligent, 2014-2020. Projet: « Gamme d\'emballages en carton réutilisables novateurs avec des fonctionnalités innovantes et des paramètres de performance révolutionnaires ». Grâce à la subvention, l\'entreprise est équipée d\'une ligne de production moderne pour la production d\'emballages avec une impression offset de très haute qualité. En outre, l\'entreprise a acheté la machine d\'impression flexographique sur ses propres fonds et a agrandi l\'usine d\'env. 6 000 m².</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Année 2020</span></strong></p>\r\n<p>Réalisation de l\'investissement, dans le cadre duquel Royalpack a installé:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- Une ligne unique au monde pour la production du carton ondulé et son laminage simultané. La ligne a été fournie par BHS, PIVAB et STOCK.</li>\r\n<li class=\"list-group-item\">- Machine VLF K&B Rapida 164A, 6 couleurs pour l\'impression offset</li>\r\n<li class=\"list-group-item\">- Machine BOBST, 5 couleurs pour l\'impression flexographique.</li>\r\n<li class=\"list-group-item\">- Presse de découpe à plat BOBST 1600 avec Power Register System.</li>\r\n<li class=\"list-group-item\">- Machine de découpe du carton ondulé STOCK et du carton compact BW Papersystems.</li>\r\n</ul>\r\n<p>En outre, l\'usine de production a été agrandie de 6 000 m2 supplémentaires.</p>', '', '2020-12-08 12:30:52', '2020-12-08 12:31:03'),
(346, 4, 'Polityka rozwoju', 'im_object', 'name', 30, '<i class=\"fal fa-grip-lines\"></i> Politique de développement durable <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 12:32:27', '2020-12-08 12:32:27'),
(347, 4, 'Polityka rozwoju', 'im_section', 'name', 18, 'Politique de développement durable', NULL, '2020-12-08 12:32:44', '2020-12-08 12:32:55'),
(348, 4, 'Polityka rozwoju', 'im_object', 'content', 30, '<p>La politique de développement économique durable est avant tout une activité commerciale soucieuse de progrès social et de respect de l\'environnement.</p>\r\n<p>Royalpack est une entreprise qui mène ses activités de manière responsable et durable. La satisfaction de nos clients, le développement personnel de nos collaborateurs et le respect de l\'environnement et des communautés locales sont les principales valeurs que nous chérissons.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Communauté</span></strong></p>\r\n<p>Royalpack s\'efforce d\'être le fabricant d\'emballages en carton le plus connu du marché. Pour y parvenir, nous agirons au profit de l\'environnement et des communautés locales dans lesquelles nous avons le privilège de travailler.</p>\r\n<p>Nos employés sont notre plus grand investissement. Nous essayons de prendre en charge le développement de leurs compétences, un sentiment d\'identité avec l\'entreprise et des opportunités de carrière enrichissantes. La base du développement personnel de nos employés est de soutenir leurs activités, d\'organiser des formations, de booster leur ambition et leur motivation positive.</p>\r\n<p>Nous disons non à la discrimination fondée sur le sexe, la race, l\'âge, la religion, les opinions politiques ou d\'autres caractéristiques qui pourraient de quelque manière que ce soit causer de la discrimination.</p>\r\n<p>Nous promouvons les intérêts des personnes handicapées et des personnes qui élèvent des enfants en adaptant les infrastructures appropriées. Grâce à cela, les personnes handicapées ne se sentent pas discriminées et peuvent pleinement fonctionner dans notre usine.</p>', NULL, '2020-12-08 12:35:06', '2020-12-08 12:35:06'),
(349, 4, 'Gepard Biznesu 2019', 'im_object', 'name', 31, 'ROYALPACK c\'est Brylant Polskiej Gospodarki et Gepard Biznesu 2019', '', '2020-12-08 12:35:58', '2020-12-08 12:36:45'),
(350, 4, 'Gepard Biznesu 2019', 'im_object', 'content', 31, '<p>ROYALPACK, Tatar Sp. j. à Słone a été récompensé par l’Institut Européen des Affaires lors de la 14e édition du concours Gepardy Biznesu 2019, de la 12e édition du concours Brylanty Polskiej Gospodarki 2019, de la 12e édition du concours Efektywna Firma 2019 et de la 7e édition du programme promotionnel Mocna Firma Godna Zaufania 2019.</p>', '', '2020-12-08 12:37:40', '2020-12-08 12:37:40'),
(351, 4, 'Czytaj więcej', 'im_object', 'link_name', 31, 'Read more...', '', '2020-12-08 12:38:13', '2020-12-08 12:38:13'),
(352, 4, 'Orły Wprost 2016', 'im_object', 'name', 32, 'ROYALPACK est un lauréat du prix Orły Wprost 2016', NULL, '2020-12-08 12:38:45', '2020-12-08 12:38:45'),
(353, 4, 'Orły Wprost 2016', 'im_object', 'content', 32, '', '', '2020-12-08 12:39:09', '2020-12-08 12:39:09'),
(354, 4, 'Czytaj więcej', 'im_object', 'link_name', 32, 'Read more...', NULL, '2020-12-08 12:39:27', '2020-12-08 12:39:27'),
(355, 4, 'Rzetelni dla Biznesu', 'im_object', 'name', 34, 'ROYALPACK a reçu un prix \"Rzetelni dla Biznesu 2016\"', NULL, '2020-12-08 12:40:22', '2020-12-08 12:40:22'),
(356, 4, 'Czytaj więcej', 'im_object', 'link_name', 34, 'Read more...', NULL, '2020-12-08 12:41:14', '2020-12-08 12:41:14'),
(357, 4, 'Rzetelni dla Biznesu', 'im_object', 'content', 34, '<p>Il a été récompensé « pour la commercialisation d\'idées innovantes mis sur le marché de l\'industrie de l\'emballage en carton</p>', NULL, '2020-12-08 12:42:07', '2020-12-08 12:42:07'),
(358, 4, 'Brylant', 'im_object', 'name', 35, 'ROYALPACK a été récompensé par l\'Institut européen des affaires lors de la 11e édition du concours Brylanty Polskiej Gospodarki 2018', '', '2020-12-08 12:42:53', '2020-12-08 12:42:53'),
(359, 4, 'Czytaj więcej', 'im_object', 'link_name', 35, 'Read more...', NULL, '2020-12-08 12:43:12', '2020-12-08 12:43:12'),
(360, 4, 'Brylant', 'im_object', 'content', 35, '<p>ROYALPACK, Tatar S. J. à Świdnica a été récompensé par l’Institut Européen des Affaires lors de la 13e édition du concours Gepardy Biznesu 2018, de la 11e édition du concours Brylanty Polskiej Gospodarki 2018, de la 11e édition du concours Efektywna Firma 2018 et de la 6e édition du Programme de Promotion Mocna Firma Godna Zaufania 2018</p>', '', '2020-12-08 12:44:10', '2020-12-08 12:44:10'),
(361, 4, 'Czytaj więcej', 'im_object', 'link_name', 36, 'Read more...', NULL, '2020-12-08 12:44:22', '2020-12-08 12:44:22'),
(362, 4, 'Rozwój firmy', 'im_object', 'name', 36, 'ROYALPACK parmi les entreprises les plus dynamiques - 2018', NULL, '2020-12-08 12:51:57', '2020-12-08 12:51:57'),
(363, 4, 'Rozwój firmy', 'im_object', 'content', 36, '<p>ROYALPACK est devenu un membre du club d\'élite Gazele Biznesu 2015.</p>', NULL, '2020-12-08 12:54:52', '2020-12-08 12:54:52'),
(364, 4, 'Ogólne warunki handlowe', 'im_section', 'name', 20, 'Conditions générales de vente', NULL, '2020-12-08 12:57:53', '2020-12-08 12:57:53'),
(365, 4, 'Ogólne warunki handlowe', 'im_object', 'name', 45, '<i class=\"fal fa-grip-lines\"></i> CONDITIONS GÉNÉRALES DE VENTE <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 12:58:46', '2020-12-08 12:58:46'),
(366, 4, 'Wyróżnienia', 'im_section', 'name', 21, 'Distinctions', '', '2020-12-08 12:59:15', '2020-12-08 12:59:15'),
(367, 4, 'Media o nas', 'im_section', 'name', 22, 'Médias à propos de nous', NULL, '2020-12-08 12:59:49', '2020-12-08 12:59:49'),
(368, 4, 'Media o nas', 'im_object', 'name', 33, '<i class=\"fal fa-grip-lines\"></i> Médias à propos de nous <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 13:00:07', '2020-12-08 13:09:25'),
(369, 4, 'Wyróżnienia', 'im_object', 'name', 51, '<i class=\"fal fa-grip-lines\"></i> Distinctions <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 13:02:11', '2020-12-08 13:02:11'),
(370, 4, 'Dotacja EU', 'im_object', 'name', 61, '<i class=\"fal fa-grip-lines\"></i> Subvention de l\'UE <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 13:02:46', '2020-12-08 13:02:46'),
(371, 4, 'Dotacja EU', 'im_object', 'content', 61, '', NULL, '2020-12-08 13:02:58', '2020-12-08 13:02:58');
INSERT INTO `im_translation` (`translation_id`, `language_id`, `name`, `target_table`, `target_column`, `target_record`, `content`, `description`, `date_create`, `date_modify`) VALUES
(372, 4, 'Dotacja EU', 'im_object', 'content', 79, '<p>Mise en place d\'un système innovant et économe en énergie pour fabriquer des emballages avec une durabilité accrue</p>\r\n<p>En juillet 2013, ROYALPACK, Tatar Sp. j. a reçu une subvention de l\'UE au titre Programme Opérationnel Économie Innovante, axe prioritaire 4 - Investissements dans des entreprises innovantes. Pilotage: <em>\"Support pour la première mise en œuvre de l\'invention\"</em>.</p>\r\n<p>Grâce à cette subvention, nous avons construit notre nouvelle usine de fabrication à Słone près de Zielona Góra. Dans le cadre du projet, nous avons également acheté et installé des machines modernes.</p>\r\n<p>Les travaux de construction ont débuté en novembre 2013. L\'usine a été achevée en février 2015.</p>', '', '2020-12-08 13:04:23', '2020-12-08 13:04:23'),
(373, 4, 'Nowy zakład produkcyjny', 'im_image', 'name', 33, 'Grâce à cette subvention, nous avons construit notre nouvelle usine de fabrication à Słone près de Zielona Góra', NULL, '2020-12-08 13:06:50', '2020-12-08 13:07:03'),
(374, 4, 'Tekst na filmie', 'im_object', 'content', 4, '<p><span style=\"font-size: 36pt;\">Manufacturer of corrugated cardboard and packaging</span></p>', '', '2020-12-08 13:08:08', '2020-12-08 13:08:08'),
(375, 4, 'Obsługa klienta', 'im_section', 'name', 19, 'Service clients\r\n', NULL, '2020-12-08 13:08:49', '2020-12-08 13:08:49'),
(376, 4, 'Kariera', 'im_object', 'name', 28, '<i class=\"fal fa-grip-lines\"></i> Carrière <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 13:09:10', '2020-12-08 13:09:18'),
(377, 4, 'Kontakt', 'im_object', 'name', 22, '<i class=\"fal fa-grip-lines\"></i> Contact <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 13:10:09', '2020-12-08 13:16:38'),
(378, 4, 'Kariera', 'im_object', 'content', 28, '<p>Si vous souhaitez travailler dans une entreprise en développement dynamique, avec un potentiel élevé et des capacités en constante croissance, postulez chez nous en remplissant un formulaire.</p>', NULL, '2020-12-08 13:10:52', '2020-12-08 13:10:52'),
(379, 4, 'CV', 'im_object', 'attachment', 27, 'CV', NULL, '2020-12-08 13:11:30', '2020-12-08 13:11:30'),
(380, 4, 'Dotacja EU', 'im_section', 'name', 29, 'Subvention de l\'UE', '', '2020-12-08 13:11:56', '2020-12-08 13:11:56'),
(381, 4, 'Prawa', 'im_object', 'content', 9, '<div class=\"text-center\">Tous droits réservés & 2020<br />Conception et réalisation: <a href=\"https://internet.media.pl\" title=\"Strony internetowe, e-sklepy, serwisy WWW, projekty i wykonanie, portale web\" target=\"_blank\" class=\"text-warning\" rel=\"noopener\">www.internet.media.pl</a></div>', NULL, '2020-12-08 13:12:41', '2020-12-08 13:12:41'),
(382, 4, 'Cookies', 'im_object', 'content', 10, '<div id=\"cookie\"><i class=\"fad fa-cookie float-left\"></i> En naviguant sur ce site, vous acceptez l\'utilisation de cookies <button class=\"btn btn-dark\">OK</button></div>', '', '2020-12-08 13:13:35', '2020-12-08 13:13:35'),
(383, 4, 'Profil działalności', 'im_object', 'section_name', 81, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-12-08 13:14:09', '2020-12-08 13:14:09'),
(384, 4, 'Profil działalności', 'im_object', 'section_name', 83, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-12-08 13:14:27', '2020-12-08 13:14:27'),
(385, 4, 'Profil działalności', 'im_object', 'section_name', 84, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-12-08 13:14:37', '2020-12-08 13:14:37'),
(386, 4, 'Profil działalności', 'im_object', 'section_name', 85, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-12-08 13:14:56', '2020-12-08 13:14:56'),
(387, 4, 'Profil działalności', 'im_object', 'section_name', 87, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-12-08 13:15:09', '2020-12-08 13:15:09'),
(388, 4, 'Profile', 'im_object', 'name', 81, 'PROFIL D\'ACTIVITÉ', NULL, '2020-12-08 13:15:53', '2020-12-08 13:15:53'),
(389, 4, 'History of the company', 'im_object', 'name', 83, 'HISTOIRE DE L\'ENTREPRISE', NULL, '2020-12-08 13:16:23', '2020-12-08 13:16:23'),
(390, 4, 'Sustainable development policy', 'im_object', 'name', 84, 'POLITIQUE DE DÉVELOPPEMENT', NULL, '2020-12-08 13:59:16', '2020-12-08 13:59:16'),
(391, 4, 'Customer service', 'im_object', 'name', 85, 'SERVICE CLIENTS', NULL, '2020-12-08 13:59:49', '2020-12-08 13:59:49'),
(392, 4, 'General terms and conditions of deliveries', 'im_object', 'name', 86, 'CONDITIONS GÉNÉRALES DE VENTE', NULL, '2020-12-08 14:00:39', '2020-12-08 14:00:39'),
(393, 4, 'Awards', 'im_object', 'name', 87, 'DISTINCTIONS', NULL, '2020-12-08 14:02:00', '2020-12-08 14:02:00'),
(394, 4, 'Profil działalności', 'im_object', 'section_name', 88, '<span>Read more</span><i class=\"fal fa-arrow-to-right\"></i>', NULL, '2020-12-08 14:02:16', '2020-12-08 14:02:16'),
(395, 4, 'Media about us', 'im_object', 'name', 88, 'MÉDIAS À PROPOS DE NOUS', '', '2020-12-08 14:02:40', '2020-12-08 14:04:23'),
(396, 4, 'O nas', 'im_object', 'name', 82, '<i class=\"fal fa-grip-lines\"></i> À propos de nous <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 14:03:14', '2020-12-08 14:03:14'),
(397, 4, 'Oferta', 'im_object', 'name', 89, '<i class=\"fal fa-grip-lines\"></i> Offre <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 14:03:45', '2020-12-08 14:03:45'),
(398, 4, 'Technologie', 'im_object', 'name', 90, '<i class=\"fal fa-grip-lines\"></i> Technologie <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 14:04:09', '2020-12-08 14:04:19'),
(399, 4, 'Opakowania', 'im_object', 'name', 91, 'EMBALLAGES', NULL, '2020-12-08 14:05:41', '2020-12-08 14:05:51'),
(400, 4, 'Zaufanie', 'im_object', 'content', 6, '<p>ROYALPACK est une entreprise familiale qui s\'appuie sur les bases solides de sa structure commerciale. Le pilier de notre famille est la confiance. Sur la même base, nous construisons des relations à long terme avec nos clients du monde entier. Grâce à notre engagement total dans la création de valeur et le service flexible et complet que nous offrons...</p>\r\n<p class=\"im-hide show-rest-text-1\">Nous nous occuperons efficacement du bon <strong> développement de votre entreprise</strong>.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-1\"></i></div>', NULL, '2020-12-08 14:08:00', '2020-12-08 14:08:00'),
(401, 4, 'Ekologia', 'im_object', 'content', 7, '<p>Notre souci de l\'environnement naturel résulte de notre sens élémentaire de responsabilité envers la planète sur laquelle nous vivons. Les emballages en carton ondulé que nous créons pour vous s\'inscrivent dans les principes de la stratégie internationale qui visent à utiliser moins d\'emballages plastiques et plus recyclage des matériaux d\'emballage...</p><p class=\"im-hide show-rest-text-2\">Tous nos produits sont certifiés FSC. Notre parc des machines moderne et les systèmes pro-écologiques mis en œuvre en son sein, utilisés dans le processus de production, </p> \r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-2\"></i></div>', NULL, '2020-12-08 14:09:57', '2020-12-08 14:13:28'),
(402, 4, 'Jakość', 'im_object', 'content', 8, '<p>La plus haute qualité, l’attention du détail et des solutions innovantes dans le domaine de la création d\'emballages - tels sont les atouts de nos produits. La recherche sur le comportement des consommateurs indique clairement que l\'expérience visuelle d\'un client potentiel a un impact significatif sur le processus de prise de décision d\'achat des produits en magasin...</p>\r\n<p class=\"im-hide show-rest-text-3\">En fin de compte, les produits placés dans des emballages soigneusement conçus et intéressants sont plus appréciés pour un client que d\'autres produits. Notre équipe et notre parc des machines modernes vous permettront de générer de nombreuses solutions intéressantes.</p>\r\n<div class=\"text-center\"><i class=\"fal fa-chevron-down show-object\" id=\"show-rest-text-3\"></i></div>', '', '2020-12-08 14:14:57', '2020-12-08 14:14:57'),
(403, 4, 'Dział kontroli jakości', 'im_object', 'name', 105, 'DÉPARTEMENT DE CONTRÔLE QUALITÉ', NULL, '2020-12-08 14:15:33', '2020-12-08 14:15:33'),
(404, 4, 'Dział kontroli jakości', 'im_object', 'content', 37, '<p>Nous savons que la qualité est la plus importante, c\'est pourquoi nos emballages sont fabriqués à partir de matières premières de la plus haute qualité. Nous surveillons attentivement les conditions dans le hall de production et l\'entrepôt. Le système ISO 9001: 2015 que nous avons introduit nous permet de coordonner toutes les activités et processus individuels.</p>\r\n<div class=\"text-center pb-3\"><i class=\"fal fa-grip-lines\" style=\"font-size: 3em;\"></i></div>\r\n<p><strong>Chaque jour, notre service de contrôle qualité effectue des tests précis de résistance de nos emballages</strong></p>', NULL, '2020-12-08 14:17:18', '2020-12-08 14:17:18'),
(405, 4, 'Gramatura', 'im_object', 'name', 38, '<i class=\"fal fa-weight\"></i><br>GRAMMAGE', '', '2020-12-08 14:17:50', '2020-12-08 14:17:50'),
(406, 4, 'ECT', 'im_object', 'content', 39, '<p>Indicateur de test d\'écrasement du bord du carton ondulé - force liée à la longueur du bord de l\'échantillon de carton, agissant parallèlement à la direction des cannelures et provoquant la rupture de l\'échantillon. Cette force est essentielle lorsque les boîtes sont empilées. Le type des cannelures n\'a pratiquement aucun effet sur l\'ECT. Ce qui a le plus grand impact sur la valeur ECT est la qualité du papier utilisé dans la production.</p>', NULL, '2020-12-08 14:18:24', '2020-12-08 14:18:24'),
(407, 4, 'BCT', 'im_object', 'content', 40, '<p>Indicateur de résistance de l\'emballage à la compression. Elle s\'exprime comme la valeur de la force agissant directement sur l\'emballage lors de son écrasement, qui provoque sa déformation ou sa destruction. Ce paramètre dépend de toutes les caractéristiques individuelles d\'un emballage donné - ses dimensions, sa construction et le type et la résistance du carton utilisé. La valeur du BCT dépend directement de l\'ECT.</p>', NULL, '2020-12-08 14:18:57', '2020-12-08 14:19:08'),
(408, 4, 'Wilgotność', 'im_object', 'name', 41, '<i class=\"fal fa-dewpoint\"></i><br>HUMIDITÉ', NULL, '2020-12-08 14:19:48', '2020-12-08 14:19:48'),
(409, 4, 'Wilgotność', 'im_object', 'content', 41, '<p>Indicateur montre le rapport entre le poids d\'eau contenue dans le carton et le poids du produit entier. Cela dépend non seulement de l\'humidité de l\'air, mais aussi de la température ambiante et de la composition du carton. Pour conserver les bonnes propriétés du carton, il est nécessaire de créer des conditions optimales pour son stockage. Les pièces doivent être sèches et aérées, et la température à l\'intérieur ne doit pas descendre en dessous de 4 ° C, il est recommandé de maintenir une température entre 18 et 22 ° C. L\'humidité doit être maintenue au niveau de 60%, avec une valeur minimale de 45% dans les pièces chauffées. Une teneur en humidité excessive du carton entraîne des modifications de ses propriétés physiques: diminution de la rigidité, déformation linéaire, plus grande compressibilité, épaisseur et rugosité. D\'autre part, une humidité insuffisante provoque la rupture des cannelures du carton et, par conséquent, des feuilles entières de carton.</p>', NULL, '2020-12-08 14:20:13', '2020-12-08 16:48:12'),
(410, 4, 'Delta E', 'im_object', 'content', 42, '<p>Indicateur montre le rapport entre le poids d\'eau contenue dans le carton et le poids du produit entier. Cela dépend non seulement de l\'humidité de l\'air, mais aussi de la température ambiante et de la composition du carton. Pour conserver les bonnes propriétés du carton, il est nécessaire de créer des conditions optimales pour son stockage. Les pièces doivent être sèches et aérées, et la température à l\'intérieur ne doit pas descendre en dessous de 4 ° C, il est recommandé de maintenir une température entre 18 et 22 ° C. L\'humidité doit être maintenue au niveau de 60%, avec une valeur minimale de 45% dans les pièces chauffées. Une teneur en humidité excessive du carton entraîne des modifications de ses propriétés physiques: diminution de la rigidité, déformation linéaire, plus grande compressibilité, épaisseur et rugosité. D\'autre part, une humidité insuffisante provoque la rupture des cannelures du carton et, par conséquent, des feuilles entières de carton.</p>', '', '2020-12-08 16:19:59', '2020-12-08 16:19:59'),
(411, 4, 'Stopień nasycenia bieli podłoża druku', 'im_object', 'name', 43, '<i class=\"fal fa-eye-dropper\"></i><br>DEGRÉ DE BLANCHEUR DU SUBSTRAT POUR L\'IMPRESSION', NULL, '2020-12-08 16:20:38', '2020-12-08 16:20:38'),
(412, 4, 'Stopień nasycenia bieli podłoża do druku', 'im_object', 'content', 43, '<p>Examen du degré de blancheur du substrat est une activité clé pour obtenir une impression de haute qualité. Déjà au stade de la préparation du projet, nous devons être absolument sûrs que le papier donné pour l\'impression répond aux exigences. La blancheur du substrat est particulièrement importante si des couleurs vives (transparentes) sont utilisées dans la conception graphique car elles ont un impact direct sur l\'impression finale. Les mesures sont prises avec le spectrophotomètre X-Rite eXact. De cette façon, nous pouvons vérifier la qualité du substrat et développer des recettes de peinture appropriées pour un projet spécifique.</p>', '', '2020-12-08 16:21:10', '2020-12-08 16:21:10'),
(413, 4, 'Dział kontroli jakości', 'im_object', 'name', 37, '<i class=\"fal fa-grip-lines\"></i> DÉPARTEMENT DE CONTRÔLE QUALITÉ <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 16:22:05', '2020-12-08 16:22:05'),
(414, 4, 'Dział kontroli jakości', 'im_section', 'name', 28, 'Département du contrôle de la qualité', NULL, '2020-12-08 16:22:43', '2020-12-08 16:22:43'),
(415, 4, 'Innowacje', 'im_object', 'name', 104, 'INNOVATIONS', NULL, '2020-12-08 16:23:20', '2020-12-08 16:23:20'),
(416, 4, 'Park maszynowy', 'im_object', 'name', 102, 'PARC DE MACHINES', NULL, '2020-12-08 16:23:51', '2020-12-08 16:23:51'),
(417, 4, 'Opakowania', 'im_object', 'name', 106, '<i class=\"fal fa-grip-lines\"></i> Emballages <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 16:24:22', '2020-12-08 16:48:22'),
(418, 4, 'Opakowania', 'im_section', 'name', 8, 'Emballages', NULL, '2020-12-08 16:24:48', '2020-12-08 16:24:48'),
(419, 4, 'Obsługa klient', 'im_object', 'content', 107, '<p>Chaque entreprise a des besoins différents, c\'est pourquoi chez Royalpack, chaque client est traité individuellement. Une personne dédiée de l\'équipe du service client présentera toujours une gamme complète de possibilités liées à la mise en œuvre des projets. Nous savons qu’aujourd’hui l\'information est l\'élément le plus important, par conséquent, nous nous assurons que nos clients sont bien informés sur toutes les questions liées à la coopération. Nous garantissons des livraisons en temps opportun, une prise de décision rapide et une disponibilité à résoudre les problèmes de production et de logistique les plus difficiles.</p>\r\n<p>Les services fournis de manière professionnelle, complète et flexible nous permettent de construire des relations durables avec nos clients.</p>', '', '2020-12-08 16:25:44', '2020-12-08 16:25:44'),
(420, 4, 'Obsługa klienta', 'im_object', 'name', 109, '<i class=\"fal fa-grip-lines\"></i> Service clients <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 16:26:15', '2020-12-08 16:48:00'),
(421, 4, 'Opakowania', 'im_object', 'content', 110, '<p>Grâce à la créativité de nos constructeurs et graphistes et au fait que nous utilisons des machines modernes pour la production de colis collectifs et unitaires en carton ondulé, vous pouvez trouver dans notre offre de nombreuses solutions d\'emballage uniques avec impression offset et flexographique. Nous mettons en œuvre toutes les structures basées sur le catalogue FEFCO et ses dérivés, ainsi que des projets individuels adaptés aux besoins du produit à emballer. Un département R&D très motivé s\'occupe de l\'aspect esthétique et fonctionnel de l\'emballage.</p>', NULL, '2020-12-08 16:27:33', '2020-12-08 16:27:33'),
(422, 4, 'Opakowania', 'im_object', 'content', 111, '<p>Des bonnes solutions d\'emballage sont celles qui combinent les caractéristiques d\'une fonctionnalité élevée et d\'une esthétique impeccable. Les plus grands atouts de notre société sont un département de développement de produits hautement qualifié ainsi qu\'un parc des machines automatisé et moderne qui garantit les deux caractéristiques susmentionnées de nos produits. ROYALPACK est la seule entreprise en Europe à disposer d\'une ligne de production de carton ondulé et de laminage simultané avec de nombreuses solutions technologiques innovantes, ce qui est unique dans le monde. Les nouvelles machines installées dans notre usine garantissent la plus haute qualité d\'emballage en carton ondulé, à partir de la cannelure F, en passant par la cannelure E, B, C, EE, EB, BB et BC, et les machines d\'impression grand format de nouvelle génération créent une impression offset ou flexographique extrêmement esthétique à haute résolution. En fin de compte, les emballages fabriqués par ROYALPACK sont un outil marketing efficace pour nos clients satisfaits.</p>', '', '2020-12-08 16:28:07', '2020-12-08 16:28:07'),
(423, 4, 'POS-Displays', 'im_object', 'content', 112, '<p>Ils sont couramment utilisés dans de nombreuses chaînes de magasins. Un stand, ou POS / PDV (point de vente), est une forme d\'affichage qui permet une présentation efficace d\'un produit et sa promotion en même temps. Les structures d\'affichage sont extrêmement utiles, en particulier dans la phase de promotion et de mise en œuvre de nouveaux produits. \r\nGrâce à leur forme et à leur graphisme, ils attirent l\'attention du client beaucoup plus efficacement que les étagères habituelles des magasins. Les stands permettent un plus grand impact ou la création d\'une marque au point d\'achat.</p>\r\n<p>Notre offre comprend différentes structures de stands: monolithiques, modulaires ou îlots de produits.</p>', '', '2020-12-08 16:29:09', '2020-12-08 16:29:09'),
(424, 4, 'Ekspozytory ladowe', 'im_object', 'name', 95, 'PRESENTOIR DE COMPTOIR', NULL, '2020-12-08 16:29:37', '2020-12-08 16:29:37'),
(425, 4, 'Standard FEFCO', 'im_object', 'name', 93, 'STANDARD FEFCO', NULL, '2020-12-08 16:30:13', '2020-12-08 16:30:13'),
(426, 4, 'Projekty indywidualne', 'im_object', 'name', 98, 'PROJETS INDIVIDUELS', NULL, '2020-12-08 16:30:40', '2020-12-08 16:30:40'),
(427, 4, 'Projekty innowacyjne', 'im_object', 'name', 99, 'PROJETS INNOVANTS', NULL, '2020-12-08 16:31:01', '2020-12-08 16:31:01'),
(428, 4, 'Standard FEFCO', 'im_section', 'name', 10, 'Standard FEFCO', '', '2020-12-08 16:31:29', '2020-12-08 16:31:29'),
(429, 4, 'Standard FEFCO', 'im_object', 'content', 115, '<p>Le catalogue FEFCO est un ensemble de projets les plus couramment utilisés pour déterminer la construction du package. Nous mettons en œuvre toutes les structures qui y sont incluses, ainsi qu\'un certain nombre d\'autres.</p>', '', '2020-12-08 16:31:59', '2020-12-08 16:31:59'),
(430, 4, 'Diamonds of the Polish Economy 2018', 'im_object', 'name', 52, 'ROYALPACK c\'est Brylant Polskiej Gospodarki et Gepard Biznesu 2018', NULL, '2020-12-08 16:33:42', '2020-12-08 16:33:42'),
(431, 4, 'Diamonds of the Polish Economy 2018', 'im_object', 'content', 52, '<p>\r\nROYALPACK, Tatar S. J. à Świdnica a été récompensé par l’Institut Européen des Affaires lors de la 13e édition du concours Gepardy Biznesu 2018, de la 11e édition du concours Brylanty Polskiej Gospodarki 2018, de la 11e édition du concours Efektywna Firma 2018 et de la 6e édition du Programme de Promotion Mocna Firma Godna Zaufania 2018\r\n</p>', NULL, '2020-12-08 16:34:36', '2020-12-08 16:34:36'),
(432, 4, 'Business Cheetahs 2018', 'im_object', 'name', 53, 'ROYALPACK c\'est Brylant Polskiej Gospodarki et Gepard Biznesu 2018', NULL, '2020-12-08 16:35:41', '2020-12-08 16:35:41'),
(433, 4, 'Business Cheetahs 2018', 'im_object', 'content', 53, '<p>\r\nROYALPACK, Tatar S. J. à Świdnica a été récompensé par l’Institut Européen des Affaires lors de la 13e édition du concours Gepardy Biznesu 2018, de la 11e édition du concours Brylanty Polskiej Gospodarki 2018, de la 11e édition du concours Efektywna Firma 2018 et de la 6e édition du Programme de Promotion Mocna Firma Godna Zaufania 2018</p>', NULL, '2020-12-08 16:36:52', '2020-12-08 16:36:52'),
(434, 4, 'Effective company 2018', 'im_object', 'name', 54, 'Efektywna Firma 2018', NULL, '2020-12-08 16:37:26', '2020-12-08 16:37:26'),
(435, 4, 'Effective company 2018', 'im_object', 'content', 54, '<p>ROYALPACK a été récompensé par l\'Institut Européen des Affaires lors de la 11e édition du concours Efektywna Firma 2018</p>', NULL, '2020-12-08 16:37:55', '2020-12-08 16:37:55'),
(436, 4, 'Strong Trustworthy Company 2018', 'im_object', 'name', 55, 'Mocna Firma Godna Zaufania 2018', NULL, '2020-12-08 16:39:25', '2020-12-08 16:39:25'),
(437, 4, 'Strong Trustworthy Company 2018', 'im_object', 'content', 55, '<p>ROYALPACK a été récompensé par l\'Institut Européen des Affaires dans la 6e édition du Programme Promotionnel Mocna Firma Godna Zaufania 2018</p>', '', '2020-12-08 16:39:49', '2020-12-08 16:39:49'),
(438, 4, 'Business Gazelles 2018', 'im_object', 'name', 56, 'Gazele Biznesu 2018', NULL, '2020-12-08 16:40:17', '2020-12-08 16:40:17'),
(439, 4, 'Business Gazelles 2018', 'im_object', 'content', 56, '<p>ROYALPACK est devenu un membre du club d\'élite Gazele Biznesu 2018</p>', '', '2020-12-08 16:40:40', '2020-12-08 16:40:40'),
(440, 4, 'Reliable for Business 2016', 'im_object', 'name', 57, 'ROYALPACK a reçu une distinction Rzetelni dla Biznesu 2016', NULL, '2020-12-08 16:43:22', '2020-12-08 16:43:22'),
(441, 4, 'Reliable for Business 2016', 'im_object', 'content', 57, '<p>Il a été récompensé « pour la commercialisation d\'idées innovantes mis sur le marché de l\'industrie de l\'emballage en carton</p>', '', '2020-12-08 16:44:32', '2020-12-08 16:44:32'),
(442, 4, 'Eagles of Wprost 2016', 'im_object', 'name', 58, 'Orły Wprost 2016', NULL, '2020-12-08 16:45:10', '2020-12-08 16:47:45'),
(443, 4, 'Eagles of Wprost 2016', 'im_object', 'content', 58, '<p>ROYALPACK est un lauréat du prix Orły Wprost 2016</p>', '', '2020-12-08 16:47:25', '2020-12-08 16:47:25'),
(444, 4, 'Business Gazelles 2015', 'im_object', 'name', 59, 'Gazele Biznesu 2015', NULL, '2020-12-08 16:48:59', '2020-12-08 16:48:59'),
(445, 4, 'Business Gazelles 2015', 'im_object', 'content', 59, '<p>ROYALPACK est devenu un membre du club d\'élite Gazele Biznesu 2015</p>', NULL, '2020-12-08 16:49:21', '2020-12-08 16:49:21'),
(446, 4, 'Diamonds of the Polish Economy 2019', 'im_object', 'name', 116, 'Brylanty Polskiej Gospodarki 2019', '', '2020-12-08 16:49:55', '2020-12-08 16:49:55'),
(447, 4, 'Diamonds of the Polish Economy 2019', 'im_object', 'content', 116, '<p>ROYALPACK a été récompensé par l\'Institut européen des affaires lors de la 12e édition du concours Brylanty Polskiej Gospodarki 2019</p>', '', '2020-12-08 16:50:17', '2020-12-08 16:50:17'),
(448, 4, 'Business Cheetahs 2019', 'im_object', 'name', 117, 'Gepardy Biznesu 2019', '', '2020-12-08 16:50:42', '2020-12-08 16:50:42'),
(449, 4, 'Business Cheetahs 2019', 'im_object', 'content', 117, '<p>ROYALPACK a reçu une distinction lors de la 14e édition du Concours Gepardy Biznesu 2019 pour le développement dynamique et l\'augmentation de la valeur marchande par l\'Institut européen des affaires.</p>', '', '2020-12-08 16:51:09', '2020-12-08 16:51:09'),
(450, 4, 'Effective company 2019', 'im_object', 'name', 118, 'Efektywna Firma 2019', '', '2020-12-08 16:51:36', '2020-12-08 16:51:36'),
(451, 4, 'Effective company 2019', 'im_object', 'content', 118, '<p>ROYALPACK a été récompensé par l\'Institut Européen des Affaires lors de la 12e édition du concours Efektywna Firma 2019</p>', '', '2020-12-08 16:52:05', '2020-12-08 16:52:05'),
(452, 4, 'Strong Trustworthy Company 2019', 'im_object', 'name', 119, 'Mocna Firma Godna Zaufania 2019', '', '2020-12-08 16:52:40', '2020-12-08 16:52:40'),
(453, 4, 'Strong Trustworthy Company 2019', 'im_object', 'content', 119, '<p>ROYALPACK a été récompensé par l\'Institut Européen des Affaires dans la 7e édition du Programme Promotionnel Mocna Firma Godna Zaufania 2019</p>', '', '2020-12-08 16:53:02', '2020-12-08 16:53:02'),
(454, 4, 'FEFCO Standard', 'im_object', 'name', 115, 'Standard FEFCO', NULL, '2020-12-08 16:53:38', '2020-12-08 16:53:38'),
(455, 4, 'SRP-Displays', 'im_object', 'content', 120, '<p>Les clients effectuent souvent un achat en fonction de l\'évaluation visuelle du produit. C\'est pourquoi ce type d\'emballage est une forme extrêmement populaire de présentation de marchandises. L\'esthétique de l\'emballage permet de valoriser son contenu. En raison de l\'aspect pratique de leur utilisation et de leur facilité de rangement, ils sont très souvent utilisés pour présenter des produits dans les chaînes de magasins.</p>', '', '2020-12-08 16:54:12', '2020-12-08 16:54:12'),
(456, 4, 'Ekspozytory ladowe', 'im_object', 'content', 121, '<p>Les présentoir de comptoir, comme son nom l\'indique, sont placés sur le comptoir. Ce type d\'affichage est généralement utilisé pour présenter des produits de petite taille, tels que des produits alimentaires, cosmétiques ou de bureau. Royalpack met en œuvre un certain nombre de solutions de conception, avec impression offset ou flexographique, pour présenter le produit de la meilleure façon possible et pour attirer l\'attention du client.</p>', '', '2020-12-08 16:54:47', '2020-12-08 16:54:47'),
(457, 4, 'Ekspozytory ladowe', 'im_object', 'name', 121, '<i class=\"fal fa-grip-lines\"></i> Présentoir de comptoir <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 16:55:11', '2020-12-08 16:55:11'),
(458, 4, 'Ekspozytory ladowe', 'im_section', 'name', 12, 'Présentoir de comptoir', NULL, '2020-12-08 16:55:37', '2020-12-08 16:55:37'),
(459, 4, 'E-commerce packaging', 'im_section', 'name', 13, 'Emballage e-commerce', NULL, '2020-12-08 16:56:19', '2020-12-08 16:56:19'),
(460, 4, 'Individual projects', 'im_section', 'name', 15, 'Projets individuels', NULL, '2020-12-08 16:56:41', '2020-12-08 16:56:41'),
(461, 4, 'Innovative projects', 'im_section', 'name', 16, 'Projets innovants', NULL, '2020-12-08 16:57:03', '2020-12-08 16:57:03'),
(462, 4, 'SILA LINER', 'im_object', 'content', 122, '<p>Cher client, l\'impression offset ne doit pas être effectuée uniquement sur du papier blanc.</p>\r\n<p>Pour répondre aux attentes du marché, nous avons lancé notre nouvelle gamme de produits. Il s\'agit d’emballages avec impression offset haute résolution sur un substrat kraftliner brun foncé - disponibles sous la marque Sila Liner.</p>\r\n<p>La technique d\'impression offset garantit que les polices à 6 points sont toujours parfaitement visibles et que les détails graphiques restants, même les plus petits, sont extrêmement nets. La nouvelle gamme de produits que nous proposons ne se distingue pas seulement par sa haute qualité, mais ce qui est très important, lorsque vous décidez de cette technologie d\'impression, vous réduisez vos coûts associés à l\'achat d\'outils pour préparer le processus d\'impression par rapport à la technologie flexo.</p>\r\n<p><strong class=\"text-danger\">Au point de vente, jusqu\'à 70% des clients peuvent changer leurs décisions d\'achat sous l\'influence des émotions et des impulsions.</strong></p>', '', '2020-12-08 16:58:45', '2020-12-08 16:58:45'),
(463, 4, 'Opakowania e-commerce', 'im_object', 'content', 123, '<p>Les emballages e-commerce sont dédiés aux boutiques en ligne. Grâce à la bande de colle recouverte d\'un ruban et à l\'utilisation de bande de déchirure perforée, ils peuvent être utilisés plusieurs fois, par ex. lors du renvoi du produit à l\'expéditeur. Cette solution permet la fermeture esthétique de l\'emballage, ainsi que son ouverture. Avec ce type d\'emballage, l\'effet visuel est extrêmement important car l\'emballage est l\'outil marketing le plus important - il doit représenter le produit qu\'il contient. Nous créons ce type d\'emballage en technologie offset, flexo et mixte, par exemple flexo à l\'extérieur et offset à l\'intérieur, pour créer un effet wow pour le destinataire.</p>', '', '2020-12-08 17:01:11', '2020-12-08 17:01:11'),
(464, 4, 'Opakowania e-commerce', 'im_object', 'name', 123, '<i class=\"fal fa-grip-lines\"></i> Emballage e-commerce <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 17:01:45', '2020-12-08 17:01:45'),
(465, 4, 'Projekty indywidualne', 'im_object', 'content', 124, '<p>\r\nChaque projet est spécial pour nous. C\'est pourquoi nous nous concentrons généralement sur des solutions d\'emballage individuelles soutenues par une optimisation préalable. Les besoins individuels de nos clients sont pris en charge par notre équipe hautement créative de constructeurs, qui créent des solutions originales pour les emballages à façon. \r\n</p>', '', '2020-12-08 17:03:18', '2020-12-08 17:03:18'),
(466, 4, 'Projekty indywidualne', 'im_object', 'name', 124, '<i class=\"fal fa-grip-lines\"></i> Projets individuels <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 17:03:41', '2020-12-08 17:03:41'),
(467, 4, 'Projekty innowacyjne', 'im_object', 'content', 125, '<p>L\'emballage n\'est pas seulement un moyen de sécuriser le contenu, mais avant tout de créer une marque de produit. C\'est pourquoi nous proposons des constructions spéciales avec une impression offset efficace, qui peut être affinée en plus, par ex. par gaufrage, marquage à chaud, lamination etc.</p>', '', '2020-12-08 17:04:32', '2020-12-08 17:04:32'),
(468, 4, 'Projekty innowacyjne', 'im_object', 'name', 125, '<i class=\"fal fa-grip-lines\"></i> Projets innovants <i class=\"fal fa-grip-lines\"></i>', '', '2020-12-08 17:05:09', '2020-12-08 17:06:49'),
(469, 4, 'SILA LINER', 'im_object', 'content', 126, '<p>Notre nouvelle marque Sila Liner est une solution parfaite pour vous si vous souhaitez créer une image écologique de vos produits, prendre soin de l\'environnement naturel, tout en conservant la plus haute qualité d\'impression. La combinaison des facteurs, ci-dessus, rendra vos produits visibles au rayon de magasin, ce que certainement les clients apprécieront.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Papier spécial pour emballage offset</span></strong></p>\r\n<p>La marque Sila Liner est basée sur un type spécial de papier non couché, qui vous permet de créer les emballages en carton ondulé les plus beaux et les plus distinctifs avec l\'impression offset. Notre impression offset sur Sila Liner crée une image incroyablement claire sur la surface mate naturelle brun foncé.\r\n</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Beaucoup plus résistant que le papier GD2</span></strong></p>\r\n<p>C\'est un papier de la famille Kraftliner avec de longues fibres vierges, grâce auxquelles il se distingue par une résistance à la déchirure et aux fissures beaucoup plus élevée, et une résistance à l\'humidité élevée par rapport au papier recyclé GD2 standard.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Couleur brune ou blanche</span></strong></p>\r\n<p>Sila Liner avec ses caractéristiques de haute résistance est également disponible en couleur blanche. Nous atteignons une image extrêmement nette avec une haute résolution d\'impression offset sur des surfaces blanches et brun foncé.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Image respectueuse de l\'environnement</span></strong></p>\r\n<p>Grâce à nos emballages de la série Sila Liner, vos clients pourront vivre des sensations naturelles en rayon, qu\'ils ne pourront ignorer. Ce qui est essentiel dans le cadre de solutions d\'emballage écologiques, notre papier utilisé pour la production est certifié FSC.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Parfait pour tous les projets</span></strong></p>\r\n<p>Sila Liner peut être la base de tous les projets, à partir de l\'emballage unitaire, de l\'emballage collectif, des conceptions individuelles et se terminant par des présentoirs.</p>', '', '2020-12-08 17:10:03', '2020-12-08 17:10:03'),
(470, 4, 'OFFSET', 'im_object', 'content', 127, '<p><strong><span style=\"font-size: 14pt;\">OFFSET STANDARD</span></strong></p>\r\n<p>La solution idéale pour les projets graphiques les plus exigeants est l\'impression offset, qui, en plus d\'une impression de haute qualité, présente un grand potentiel pour la finition d\'un emballage. ROYALPACK est équipé d\'une machine d\'impression offset grand format de dernière génération, qui permet des finitions telles que:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- standard, utilisant CMJN, pantone et vernis à dispersion</li>\r\n<li class=\"list-group-item\">- encres alimentaires</li>\r\n<li class=\"list-group-item\">- encres fluorescentes</li>\r\n<li class=\"list-group-item\">- encres métallisées </li>\r\n<li class=\"list-group-item\">- impression sur une couche PE + PET</li>\r\n<li class=\"list-group-item\">- vernis alimentaires</li>\r\n<li class=\"list-group-item\">- vernis soft-touch</li>\r\n<li class=\"list-group-item\">- vernis antidérapants</li>\r\n<li class=\"list-group-item\">- vernis UV</li>\r\n<li class=\"list-group-item\">- vernis sélectifs, par ex. mat + UV</li>\r\n<li class=\"list-group-item\">- vernis primer et bien d\'autres</li>\r\n</ul>\r\n<p><strong><span style=\"font-size: 14pt;\">SILA LINER OFFSET</span></strong></p>\r\n<p>Dans le domaine de l\'impression, ROYALPACK a créé une marque unique appelée Sila Liner. Elle offre la possibilité d\'imprimer avec précision sur du papier brun non couché, donnant ainsi à ses clients une réelle opportunité d\'être respectueux de l\'environnement. Désormais, la qualité de l\'impression sur support gris ne diffère pas de l\'impression sur papiers blanchis en technique d\'impression offset. Nous pouvons agir ensemble de manière éco-responsable et, en même temps, créer des solutions d\'emballage les plus uniques qui valoriseront efficacement les produits au rayon des magasins. Vous pouvez en savoir plus sur: <a href=\"http://www.silaliner.eu\" target=\"_blank\" rel=\"noopener\">www.silaliner.eu</a></p>', '', '2020-12-08 17:13:12', '2020-12-08 17:13:12'),
(471, 4, 'FLEXO', 'im_object', 'content', 128, '<p><strong><span style=\"font-size: 14pt;\">STANDARD FLEXO</span></strong></p>\r\n<p>Ces dernières années, l\'impression flexographique a renforcé sa position parmi les techniques d\'impression. Grâce aux progrès technologiques, la qualité de ce type d\'impression est sans aucun doute déjà à un niveau remarquablement élevé. Son plus grand avantage est la possibilité d\'imprimer directement sur une feuille de carton, ce qui signifie que:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- il est possible de réduire le grammage des couches individuelles de carton ondulé</li>\r\n<li class=\"list-group-item\">- le temps d\'exécution de la commande peut être raccourci en éliminant le processus de lamination </li>\r\n<li class=\"list-group-item\">- le prix de l\'emballage peut être optimisé</li>\r\n</ul>\r\n<p>Grâce à la machine flexographique grand format de pointe et au fait que nous fabriquons nous-mêmes le carton, ROYALPACK a un réel impact sur la haute qualité des emballages fabriqués.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">FLEXO DE HAUTE QUALITÉ</span></strong></p>\r\n<p>La coopération continue avec une équipe d\'imprimeurs et des fournisseurs, renommée mondiale, de matières premières comme le papier, les encres et les polymères permet à ROYALPACK de mettre en œuvre les projets les plus exigeants.</p>\r\n<p>Dans le domaine de la technologie d\'impression Flexo de haute qualité, nos imprimeurs expérimentés mettent en œuvre des projets basés sur du papier couché blanc, où les motifs graphiques sont généralement préparés en haute résolution. Cela nécessite l\'utilisation de la haute linéature de la trame et de composants de première classe. L\'impression finale, réalisée conformément aux spécifications du projet, est recouverte de vernis\r\n</p>', '', '2020-12-08 17:17:10', '2020-12-08 17:17:10'),
(472, 4, 'R&D', 'im_object', 'content', 129, '<p><strong><span style=\"font-size: 14pt;\">Département de développement de produits</span></strong></p>\r\n<p>Les constructeurs du département R&D sont une équipe jeune, ambitieuse et créative. Leur tâche est de mettre en œuvre de nouveaux emballages pour la production, ainsi que de coopérer de manière créative avec les clients pour concevoir le meilleur emballage pour leur produit. Pour pouvoir atteindre ces objectifs, ils ont été équipés d\'un logiciel spécial qui permet:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Conception structurelle (ArtiosCAD, Cape Pack)</strong></li>\r\n<li><img src=\"../system/default/public/artios-d60004c3c44794f93da802c1c23befb6.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Conception graphique (Adobe Creative Cloud)</strong></li>\r\n<li><img src=\"../system/default/public/cape-702e619167a79ab7d93ef07f707d7499.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Conception et visualisation d\'emballages en 3D (Studio Designer)</strong></li>\r\n<li><img src=\"../system/default/public/kodak-67c51a0a8ec58b2c29aed5a751e89b48.png\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>et appareils:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Imprimante d\'épreuve numérique</strong></li>\r\n<li><img src=\"../system/default/public/drukarkaproof-dba70fd0fa03f1c9629b02a413450982.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>Traceur Kongsberg pour découper des prototypes d\'emballage</strong></li>\r\n<li><img src=\"../system/default/public/ploter-4d1dfee42efe90bdbcf75ec6961903b7.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li><strong>CTP thermique KODAK platesetter pour préparer de plaques offset CTP SONORA</strong></li>\r\n<li><img src=\"../system/default/public/naswietlarka-33199de87eb5c2163aaf56df55b2fffc.jpg\" title=\"R&amp;D\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p></p>\r\n<p>Liaison de la créativité de notre équipe et des capacités technologiques de ces appareils nous permet:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">d’être indépendant dans le processus de lancement d\'un nouveau produit</li>\r\n<li class=\"list-group-item\">d’obtenir une plus grande flexibilité dans le processus de conception d\'emballage</li>\r\n<li class=\"list-group-item\">de minimiser le délai de livraison du produit prêt à l\'emploi</li>\r\n<li class=\"list-group-item\">d’utiliser une technologie respectueuse de l\'environnement en collaboration avec KODAK. Nous sommes ECO!</li>\r\n</ul>\r\n<p>Et ainsi, atteindre la pleine satisfaction du client.</p>\r\n<p>ROYALPACK montre un développement commercial significatif en utilisant les plaques sans traitement KODAK SONORA</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/qxKPV_xpkFw\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" width=\"100%\" height=\"315\" frameborder=\"0\"></iframe></p>', '', '2020-12-08 17:20:32', '2020-12-08 17:20:32'),
(473, 4, 'Park maszynowy', 'im_object', 'content', 130, '<p>Afin de fournir à nos clients des emballages de la plus haute qualité, ROYALPACK a toujours préféré acheter les machines les plus modernes pour leur production. Actuellement, nous sommes en possession de machines des plus grandes entreprises de l\'industrie telles que: K&B, Kodak, BOBST, STOCK, BHS, BW Papersystems, Mosca, Pivab, HSM et Kongsberg qui nous permettent de réaliser un processus de haute qualité, de la conception à l\'emballage prêt à l\'emploi. Nous vous présentons, ci-dessous, quelques-unes de nos machines:</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Onduleuse</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/tekturnica-7f67b5543abd16d4b43b8747b86a704b.jpg\" title=\"Tekturnica - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>2 x Simple Face BHS pour la production du carton ondulé : simple face, double face, double simple face, double cannelure travaillent en ligne avec la machine à laminer STOCK et l\'enrouleur automatique.</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Machines à imprimer</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/drukarka-ff836e39d231bb53f8f87ed9156e4402.jpg\" title=\"Drukarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>OFFSET - VLF K&B Rapida 164A</li>\r\n<li>FLEXO - BOBST 1700</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Machines à laminer</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/kaszerka-e4f4b5cc61a216c72a873ce1035f8543.jpg\" title=\"Kaszerka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>en ligne</li>\r\n<li>hors ligne; de feuilles</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Presses à découper à plat</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/bobst-372d027081b0df1b01561b76a49c6fa8.jpg\" title=\"Bobst - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>BOBST Power Register 1600</li>\r\n<li>BOBST 1600</li>\r\n<li>BOBST 1575</li>\r\n<li>VIKING 1650</li>\r\n<li>CROSLAND 1750</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Plieuse-colleuse</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/sklejarka-3ac89d3c952f958f4e75be3cfccc536b.jpg\" title=\"Sklejarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>5 points</li>\r\n<li>4 points</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Machine de découpe</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/przekrawacz-ff3f59d3c8b22bfa45ae8efd4c858f3c.jpg\" title=\"Przekrawacz - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>du carton ondulé</li>\r\n<li>du papier</li>\r\n</ul>\r\n</div>\r\n</li>\r\n<li><strong>Ligne d\'emballage</strong>\r\n<div class=\"clearfix\">\r\n<ul class=\"im-list-group\">\r\n<li><img src=\"../system/default/public/wiazarka-66cae27d16ab10fd709bd92c5bc760c7.jpg\" title=\"Wiązarka - park maszyn\" style=\"max-width: 220px;\" class=\"content-img\" /></li>\r\n<li>cercleuse automatique</li>\r\n</ul>\r\n</div>\r\n</li>\r\n</ul>', '', '2020-12-08 17:24:54', '2020-12-08 17:24:54'),
(474, 4, 'Park maszynowy', 'im_object', 'name', 130, '<i class=\"fal fa-grip-lines\"></i> Parc des machines <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 17:25:22', '2020-12-08 17:25:22'),
(475, 4, 'Park maszynowy', 'im_section', 'name', 25, 'Parc des machines', NULL, '2020-12-08 17:25:58', '2020-12-08 17:25:58'),
(476, 4, 'Innovations', 'im_section', 'name', 27, 'Innovation', NULL, '2020-12-08 17:26:22', '2020-12-08 17:26:22'),
(477, 4, 'Innowacje', 'im_object', 'content', 131, '<div style=\"font-size: 14pt;\" class=\"text-danger\">Sila Liner</div>\r\n<p><img src=\"../system/default/public/silaliner_2-3b234450924a4c1b3b3bbc1eb3583e32.png\" title=\"Sila Liner - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Nous avons créé une nouvelle marque d\'emballage dédiée aux produits écologiques. Son nom est Sila Liner. L\'impression sur le Sila Liner, que nous fabriquons, crée une image incroyablement nette sur la surface naturelle brun foncé. C\'est un papier de la famille Kraftliner, grâce à cela, il se distingue par une résistance à la déchirure, aux éventuelles fissures et une résistance à l\'humidité beaucoup plus élevée que le papier recyclé GD2 standard. Ce qui est important dans le contexte de solutions d\'emballage respectueuses de l\'environnement - notre papier est certifié FSC. Sila Liner peut être la base de tous les projets, de l\'emballage unitaire à l\'emballage collectif, en passant par les conceptions individuelles et les présentoirs.</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Emballage en carton réutilisable</div>\r\n<p><img src=\"../system/default/public/_warstwa-odlepna_180905d03_stand-jungle-7e3f61cffa6b0b7e9a1124c6ee0549b1.jpg\" title=\"Opakowania kartonowe wielokrotnego użytku - innowacje\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>Notre nouveau produit innovant est le résultat du projet nommé: « Une gamme d\'emballages en carton réutilisables novateurs , avec des fonctionnalités innovantes et des paramètres de performance révolutionnaires ». Ce sont des constructions d\'emballage avec la possibilité de changer de graphique, en utilisant une couche adhésive informative et décorative supplémentaire. La technologie de production des emballages est couverte par la protection par brevet n° 233993 intitulé: Produkt z tektury falistej z warstwą odlepną (Produit en carton ondulé avec une couche adhésive). Ce produit est conçu pour les clients qui apprécient l\'écologie, l\'économie et en même temps une esthétique élevée, c\'est pourquoi il a une large gamme d\'applications. Grâce à la couche adhésive, la construction peut être utilisée pour plusieurs expositions, ainsi que pour diverses promotions organisées dans les réseaux de distribution. De cette manière, le bénéficiaire optimise les coûts des promotions ultérieures et réduit la quantité de déchets générés.</p>\r\n<p><strong>Innovation du produit:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>possibilité de modifier les graphiques réalisés dans l\'impression offset de la plus haute qualité (couches adhésives)</li>\r\n<li>durée de vie prolongée de l\'emballage - usage multiple</li>\r\n<li>résistance structurelle accrue</li>\r\n<li>réduction de la quantité de déchets générés - écologie</li>\r\n<li>optimisation des coûts</li>\r\n</ul>\r\n<div class=\"clearfix\"></div>\r\n<p>Dans le cadre du projet ci-dessus, nous avons également créé des emballages en carton ondulé avec des paramètres de résistance accrus de parois structurelles sélectionnées grâce à l\'utilisation de renforts transversaux collés à la machine. De tels renforts trouvent leur application pratique, en particulier dans les emballages Bag-in-Box. Les emballages ci-dessus sont disponibles à la vente depuis avril 2020. Le produit a été créé grâce à la subvention des fonds européens dans le cadre du Programme Opérationnel de Développement Intelligent 2014-2020. Sous-mesure 3.2.1 Etude de marché</p>\r\n<div class=\"clearfix\"></div>\r\n<div style=\"font-size: 14pt;\" class=\"text-danger\">Emballage avec une durabilité accrue</div>\r\n<p><img src=\"../system/default/public/wytrz-0e129f6e7936ce48cb0c0dc1ff63b761.png\" title=\"Opakowania o podwyższonej wytrzymałości\" style=\"max-width: 220px;\" class=\"content-img float-right\" /></p>\r\n<p>La présente invention est un système innovant d\'économie d\'énergie pour produire des emballages avec une durabilité accrue. Notre technologie de production d\'emballage a été déposée pour protection auprès de l\'Office polonais des brevets en tant qu\'invention n° P. 398521 sous le nom: « Sposób wytwarzania pudeł tekturowych i pudło tekturowe » (Procédé de fabrication de boîtes en carton et d\'une boîte en carton), ainsi qu’à l’Office européen des brevets comme invention n° EP12183020.2 sous le nom: « A method for manufacturing of cardboard boxes and a cardboard box ».\r\nLe nouveau produit est destiné aux clients d\'emballages innovants qui comptent sur l\'attribution de nouvelles caractéristiques fonctionnelles et utilitaires aux produits. Ces produits se caractérisent par une durabilité élevée, un aspect esthétique et des performances environnementales élevées (3R - Réduire, Réutiliser, Recycler).</p>\r\n<div class=\"clearfix\"></div>\r\n<p><strong>Caractéristiques principales:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Résistance moyenne à la rupture de la soudure: 211 N/m</li>\r\n<li>Résistance maximale à la rupture de la soudure: 336 N/m</li>\r\n<li>Travail de rupture de la soudure: 495 J / m & sup2</li>\r\n<li>Résistance de la soudure aux effets des efforts de cisaillement: 1032 N / m</li>\r\n<li>Déformation de la boîte écrasée: 9,01 mm</li>\r\n<li>Résistance du boîte à la pression statique (BCT): 2781 N</li>\r\n</ul>\r\n<p><strong>Innovation du produit:</strong></p>\r\n<ul class=\"im-list-group\">\r\n<li>Fonction de protection supplémentaire</li>\r\n<li>Emballage pour emballage dynamique</li>\r\n<li>Fonction de transport supplémentaire; emballage grand format</li>\r\n<li>Fonction de transport supplémentaire; transport dans des conditions climatiques extrêmes</li>\r\n<li>Fonction marketing supplémentaire - impression offset de la plus haute qualité</li>\r\n</ul>\r\n<p><strong>DES EMBALLAGES AVEC UNE DURABILITÉ ACCRUE SONT DISPONIBLES À LA VENTE DEPUIS MARS 2015.</strong></p>\r\n<p><strong>Le produit a été créé grâce à la subvention du Fonds européen de développement régional sous P.O.I.G 4.6.</strong></p>', '', '2020-12-08 17:34:02', '2020-12-08 17:34:02'),
(478, 4, 'Innowacje', 'im_object', 'name', 131, '<i class=\"fal fa-grip-lines\"></i> Innovations <i class=\"fal fa-grip-lines\"></i>', NULL, '2020-12-08 17:34:47', '2020-12-08 17:34:47');
INSERT INTO `im_translation` (`translation_id`, `language_id`, `name`, `target_table`, `target_column`, `target_record`, `content`, `description`, `date_create`, `date_modify`) VALUES
(479, 4, 'Diamenty Miesięcznika Forbesa 2020', 'im_object', 'name', 132, 'Diamenty Miesięcznika Forbesa 2020', '', '2020-12-08 17:35:26', '2020-12-08 17:35:26'),
(480, 4, 'ROYALPACK laureatem Diamenty Miesięcznika Forbesa 2020', 'im_object', 'content', 132, '<p>ROYALPACK est un lauréat du prix Diamenty Miesięcznika Forbes 2020</p>', '', '2020-12-08 17:35:55', '2020-12-08 17:35:55'),
(481, 4, 'Gramatura', 'im_object', 'content', 38, '<p>C\'est le param&egrave;tre principal, o&ugrave; la valeur est le poids de 1 m&sup2; d\'une feuille de carton ondul&eacute; exprim&eacute; en grammes (g / m2). Le grammage est un &eacute;l&eacute;ment important lors du choix du type de carton appropri&eacute;, car plus le grammage est &eacute;lev&eacute;, plus le carton est &eacute;pais et rigide.</p>', '', '2020-12-08 17:45:13', '2020-12-08 17:45:37'),
(482, 4, 'Tekst na filmie', 'im_object', 'content', 4, '<p><span style=\"font-size: 36pt;\">Fabricant du carton ondulé et des emballages</span></p>', '', '2020-12-08 17:49:49', '2020-12-08 17:49:49'),
(483, 3, 'Tektura falista', 'im_object', 'name', 135, 'WELLPAPPE UND VOLLPAPPE', NULL, '2020-12-20 17:34:36', '2020-12-20 17:34:36'),
(484, 4, 'Tektura falista', 'im_object', 'name', 135, 'CARTON ONDULÉ ET COMPACT', '', '2020-12-20 17:35:37', '2020-12-20 17:59:01'),
(485, 2, 'Tektura falista', 'im_object', 'name', 135, 'CORRUGATED AND SOLID BOARD', NULL, '2020-12-20 17:36:25', '2020-12-20 17:36:25'),
(486, 4, 'Tektura falista', 'im_section', 'name', 30, 'Carton ondulé et compact', '', '2020-12-20 17:39:36', '2020-12-20 18:01:08'),
(487, 3, 'Tektura falista', 'im_section', 'name', 30, 'Wellpappe und Vollpappe', NULL, '2020-12-20 17:40:00', '2020-12-20 17:40:00'),
(488, 2, 'Tektura falista', 'im_section', 'name', 30, 'Corrugated and solid board', NULL, '2020-12-20 17:40:21', '2020-12-20 17:40:21'),
(489, 3, 'Tektura falista', 'im_object', 'content', 136, '<p>Wir bieten auch die Herstellung einseitiger Wellpappe in Rollen an. Ein solcher Karton kann vorgedruckt sein oder nicht. Wir produzieren Rollen mit einer Breite von 80 mm bis zu 1600 mm, einschlie&szlig;lich der sogenannten Papierrolle.</p>\r\n<p>Unser breites Angebot umfasst auch Wellpappe und Vollpappe in B&ouml;gen.</p>', '', '2020-12-20 17:42:20', '2020-12-20 17:50:27'),
(490, 2, 'Tektura falista', 'im_object', 'content', 136, '<p>We also offer the production of open flute board in rolls. Such board can be pre-printed or not. Rolls can be from 80 mm to 1600 mm wide.</p>\r\n<p>Our wide offer also includes corrugated and solid board in sheets.</p>', '', '2020-12-20 17:42:20', '2020-12-20 17:50:19'),
(491, 4, 'Tektura falista', 'im_object', 'content', 136, '<p>Nous proposons &eacute;galement la production de carton 2 couches en rouleaux. Un tel carton peut &ecirc;tre pr&eacute;-imprim&eacute; ou non. Nous produisons des rouleaux de 80 mm &agrave; 1600 mm de large, y compris les bobines. Notre large offre comprend &eacute;galement du carton ondul&eacute; et compact en feuilles.</p>', '', '2020-12-20 17:42:20', '2020-12-20 17:50:57'),
(492, 4, 'Tektura falista', 'im_object', 'name', 136, 'Carton ondulé et compact en rouleaux et en feuilles', NULL, '2020-12-20 17:46:38', '2020-12-20 17:46:38'),
(493, 3, 'Tektura falista', 'im_object', 'name', 136, 'Wellpappe und Vollpappe in Rollen oder Bögen', NULL, '2020-12-20 17:46:55', '2020-12-20 17:46:55'),
(494, 2, 'Tektura falista', 'im_object', 'name', 136, 'Corrugated and solid board in rolls and sheets', NULL, '2020-12-20 17:47:09', '2020-12-20 17:47:09'),
(495, 2, 'Dynamiczna firma 2013', 'im_object', 'name', 133, 'Dynamic Company 2013', NULL, '2020-12-23 10:07:36', '2020-12-23 10:07:36'),
(496, 3, 'Dynamiczna firma 2013', 'im_object', 'name', 133, 'Dynamische Firma 2013', '', '2020-12-23 10:08:06', '2020-12-23 10:08:59'),
(497, 4, 'Dynamiczna firma 2013', 'im_object', 'name', 133, 'Entreprise dynamique 2013', NULL, '2020-12-23 10:08:30', '2020-12-23 10:08:30'),
(498, 4, 'Dynamiczna firma 2013', 'im_object', 'content', 133, '<p>ROYALPACK a re&ccedil;u le certificat d\'entreprise dynamique accord&eacute; par Bisnode Polska pour la dynamique de croissance r&eacute;alis&eacute;e en 2010, 2011, 2012</p>', NULL, '2020-12-23 10:09:41', '2020-12-23 10:09:41'),
(499, 3, 'Dynamiczna firma 2013', 'im_object', 'content', 133, '<p>Das Zertifikat Dynamische Firma wurde f&uuml;r die durch die Firma Royalpack erreichte Wachstumsdynamik in den Jahren 2010, 2011, 2012 durch Bisnode Polen verliehen.</p>', NULL, '2020-12-23 10:10:09', '2020-12-23 10:10:09'),
(500, 2, 'Dynamiczna firma 2013', 'im_object', 'content', 133, '<p>ROYALPACK received the Dynamic Company Certificate awarded by Bisnode Polska for the achieved growth dynamics in 2010, 2011, 2012</p>', NULL, '2020-12-23 10:10:31', '2020-12-23 10:10:31'),
(501, 3, 'Certyfikat Wiarygodności Biznesowej', 'im_object', 'name', 134, 'Zertifikat der Glaubwürdigkeit des Unternehmens', NULL, '2020-12-23 10:12:24', '2020-12-23 10:12:24'),
(502, 4, 'Certyfikat Wiarygodności Biznesowej', 'im_object', 'name', 134, 'Certificat de crédibilité commerciale', NULL, '2020-12-23 10:12:42', '2020-12-23 10:12:42'),
(503, 2, 'Certyfikat Wiarygodności Biznesowej', 'im_object', 'name', 134, 'Certificate of Business Credibility', NULL, '2020-12-23 10:13:05', '2020-12-23 10:13:05'),
(504, 2, 'Certyfikat Wiarygodności Biznesowej', 'im_object', 'content', 134, '<p>In 2013 the company received the Certificate of Business Credibility awarded by D&amp;B Poland for the high assessment of the company\'s stability.</p>', NULL, '2020-12-23 10:13:39', '2020-12-23 10:13:39'),
(505, 3, 'Certyfikat Wiarygodności Biznesowej', 'im_object', 'content', 134, '<p>Im Jahr 2013 erhielt die Firma das Zertifikat der Glaubw&uuml;rdigkeit des Unternehmen von D&amp;B Poland f&uuml;r hohe Stabilit&auml;tsnote.</p>', NULL, '2020-12-23 10:14:00', '2020-12-23 10:14:00'),
(506, 4, 'Certyfikat Wiarygodności Biznesowej', 'im_object', 'content', 134, '<p>En 2013, l\'entreprise a re&ccedil;u le certificat de cr&eacute;dibilit&eacute; commerciale accord&eacute; par D&amp;B Poland pour la haute &eacute;valuation de la stabilit&eacute; de l\'entreprise.</p>', NULL, '2020-12-23 10:14:17', '2020-12-23 10:14:17'),
(507, 4, 'ROYALPACK zainteresowały się media krajowe', 'im_object', 'name', 137, 'Les médias nationaux se sont intéressés à ROYALPACK. La société est devenue le personnage principal de l\'épisode de l\'émission \"DOBRE BO POLSKIE\"', NULL, '2020-12-23 10:49:45', '2020-12-23 10:49:45'),
(508, 3, 'ROYALPACK zainteresowały się media krajowe', 'im_object', 'name', 137, 'Landesmedien interessierten sich für die Firma ROYALPACK. Unser Unternehmen war das Hauptthema im Programm \"DOBRE BO POLSKIE\"', NULL, '2020-12-23 10:50:35', '2020-12-23 10:50:35'),
(509, 2, 'ROYALPACK zainteresowały się media krajowe', 'im_object', 'name', 137, 'National media got interested in ROYALPACK. The company became the main character of the episode of the \"GOOD BECAUSE POLISH\" program', NULL, '2020-12-23 10:51:02', '2020-12-23 10:51:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(9, 2, 'Name', 'name', 'Name', '', '2020-06-09 16:25:23', '2020-08-19 18:49:06'),
(10, 2, 'From', 'source', 'from', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(11, 1, 'Formularz błąd', 'form-error', 'Błąd wysyłania wiadomości', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(12, 1, 'Formularz poprawny', 'form-ok', 'Wiadomość wysłana', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(13, 2, 'Form error', 'form-error', 'Error sending form', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(14, 2, 'Form ok', 'form-ok', 'Form send', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(15, 1, 'Błąd captcha', 'captcha-error', 'Błąd obrazka', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(16, 2, 'Captcha error', 'captcha-error', 'Captcha error', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(17, 1, 'Captcha', 'captcha-text', 'Wpisz znaki', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(18, 2, 'Captcha', 'captcha-text', 'Insert captcha', '', '2020-06-09 16:25:23', '2020-06-09 16:25:23'),
(19, 3, 'All', 'show-all', 'Alles', NULL, '2020-08-19 18:38:07', '2020-08-19 18:38:07'),
(20, 3, 'No data', 'no-data', 'Nicht verfügbar', NULL, '2020-08-19 18:40:08', '2020-08-19 18:40:08'),
(21, 3, 'Przycisk wyślij', 'send', 'Schick', NULL, '2020-08-19 18:41:15', '2020-08-19 18:41:15'),
(22, 3, 'Nazwa', 'name', 'Name', '', '2020-08-19 18:41:45', '2020-08-19 18:48:55'),
(23, 3, 'From', 'source', 'Absenderin', NULL, '2020-08-19 18:43:31', '2020-08-19 18:43:31'),
(24, 3, 'Form error', 'form-error', 'Form Fehler', '', '2020-08-19 18:44:22', '2020-08-19 18:46:58'),
(25, 3, 'Form ok', 'form-ok', 'Richtig schick', '', '2020-08-19 18:45:25', '2020-08-19 18:45:34'),
(26, 3, 'Captcha error', 'captcha-error', 'Captcha Fehler', NULL, '2020-08-19 18:46:36', '2020-08-19 18:46:36'),
(27, 3, 'Captcha', 'captcha-text', 'Gaben Captcha', NULL, '2020-08-19 18:48:31', '2020-08-19 18:48:31'),
(28, 4, 'All', 'show-all', 'Tout afficher', '', '2020-12-14 17:37:52', '2020-12-14 17:37:52'),
(29, 4, 'No data', 'no-data', 'Pas de données', '', '2020-12-14 17:38:19', '2020-12-14 17:38:19'),
(30, 4, 'Przycisk wyślij', 'send', 'Envoyer', '', '2020-12-14 17:39:08', '2020-12-14 17:39:08'),
(31, 4, 'Nazwa', 'name', 'Nom', '', '2020-12-14 17:39:37', '2020-12-14 17:39:37'),
(32, 4, 'Nadawca', 'source', 'Expéditeur', '', '2020-12-14 17:39:57', '2020-12-14 17:39:57'),
(33, 4, 'Formularz błąd', 'form-error', 'Erreur d\'envoi', '', '2020-12-14 17:40:26', '2020-12-14 17:40:26'),
(34, 4, 'Formularz poprawny', 'form-ok', 'Message envoyé', '', '2020-12-14 17:40:48', '2020-12-14 17:40:48'),
(35, 4, 'Błąd captcha', 'captcha-error', 'Erreur d\'image', '', '2020-12-14 17:41:20', '2020-12-14 17:41:20'),
(36, 4, 'Captcha', 'captcha-text', 'Entrez les caractères', '', '2020-12-14 17:41:36', '2020-12-14 17:41:36'),
(38, 1, 'Więcej', 'more', 'Więcej...', '', '2020-12-23 11:01:39', '2020-12-23 11:01:39'),
(39, 2, 'Więcej', 'more', 'More...', '', '2020-12-23 11:01:39', '2020-12-23 11:01:39'),
(40, 3, 'Więcej', 'more', 'Mehr...', '', '2020-12-23 11:01:39', '2020-12-23 11:01:39'),
(41, 4, 'Więcej', 'more', 'Plus...', '', '2020-12-23 11:01:39', '2020-12-23 11:01:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(9, 'Nawigacja okruszkowa', 'col-12 animated slideInLeft', 'on', '', '2020-06-23 10:19:21', '2020-09-15 10:44:04'),
(10, 'Treść - sekcja', 'col-12', 'on', 'bez galerii zdjęć, dlatego sugerowana sekcja z paralaksą', '2020-06-30 09:12:54', '2020-08-19 18:01:11'),
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
(22, 'Zapytanie ofertowe', 'col-12 request-proposal', 'on', 'Sekcja dotacje UE', '2020-07-28 12:59:01', '2020-08-19 18:02:41'),
(23, 'Zdjęcie', '', 'on', NULL, '2020-07-28 15:22:39', '2020-07-28 15:22:39'),
(24, 'Kontener prosty', 'col-12 col-lg-4 im-box-simple', 'on', '', '2020-09-01 19:45:41', '2020-09-01 20:01:08'),
(25, 'Szczegóły sekcji', 'col-12', 'on', '', '2020-09-16 12:56:10', '2020-09-16 12:56:18'),
(26, 'Kontener prosty - większy', 'col-12 col-lg-6 im-box-simple im-box-simple-image', 'on', '', '2020-09-20 17:09:54', '2020-09-20 19:21:22'),
(27, 'Źródło', 'col-12', 'on', 'Filmy z youtube', '2020-12-23 10:18:52', '2020-12-23 10:19:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type_property`
--

INSERT INTO `im_type_property` (`type_property_id`, `type_id`, `property_id`, `class`, `class_field`, `position`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 4, 'col-12', 'animated zoomIn', 1, 'on', '', '2020-06-10 11:05:51', '2020-06-16 09:18:08'),
(2, 2, 7, 'col-12', 'navbar navbar-expand-lg animated fadeInLeftBig im-right text-uppercase', 1, 'on', '', '2020-06-10 11:10:25', '2020-12-08 12:20:10'),
(3, 3, 15, 'col-12', '', 1, 'on', '', '2020-06-11 13:09:58', '2020-07-08 13:39:19'),
(4, 4, 2, 'col-12 text-center', 'animated fadeIn', 1, 'on', '', '2020-06-16 10:50:26', '2020-10-07 08:23:41'),
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
(16, 10, 12, 'col-12 text-center', 'p-4', 1, 'off', '', '2020-06-30 09:55:28', '2020-09-20 15:57:19'),
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
(39, 23, 4, 'col-12', '', 1, 'on', '', '2020-07-28 15:22:45', '2020-07-28 15:22:51'),
(40, 24, 12, 'col-12 box-icon', '', 1, 'on', '', '2020-09-01 19:46:12', '2020-09-01 20:03:22'),
(41, 24, 1, 'col-12 box-name', '', 2, 'on', '', '2020-09-01 19:46:50', '2020-09-01 20:03:33'),
(42, 24, 5, 'col-12 box-link', '', 3, 'on', '', '2020-09-01 19:47:04', '2020-09-09 08:46:23'),
(43, 25, 4, 'col-12 col-lg-6', '', 2, 'on', '', '2020-09-16 12:56:42', '2020-09-16 12:59:18'),
(44, 25, 2, 'col-12 col-lg-6', 'pt-5', 3, 'on', '', '2020-09-16 12:57:19', '2020-09-16 13:32:54'),
(45, 25, 1, 'col-12 pb-4', 'text-right h5', 1, 'on', '', '2020-09-16 12:58:38', '2020-09-16 13:09:34'),
(46, 26, 1, 'col-12 box-name', '', 1, 'on', '', '2020-09-20 17:11:28', '2020-09-20 17:11:45'),
(47, 26, 5, 'col-12 box-link', '', 2, 'on', '', '2020-09-20 17:11:54', '2020-09-20 17:11:58'),
(48, 27, 11, 'col-12', 'list-group-flush', 2, 'on', '', '2020-12-23 10:19:42', '2020-12-23 10:42:32'),
(49, 27, 1, 'col-12 text-center', 'h6', 1, 'on', '', '2020-12-23 10:20:35', '2020-12-23 10:39:00');

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
