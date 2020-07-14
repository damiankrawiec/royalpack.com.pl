-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 14 Lip 2020, 18:19
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_file`
--

INSERT INTO `im_file` (`file_id`, `name`, `content`, `url`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Obowiązek informacyjny', '<p><span style=\"font-size: 10pt;\">(dokument dotyczący przetwarzania danych osobowych)</span></p>', 'obowiazek-informacyjny-kontrahenci-1ab149fac33bd7f9292e02147a767de2.pdf', 'on', '', '2020-07-14 17:36:42', '2020-07-14 17:49:25'),
(2, 'Artykuł ekologiczne i ekonomiczne - świat druku', NULL, 'swiat-druku-924bf7ef033d814dc221bde1cc7b6b65.pdf', 'on', NULL, '2020-07-14 18:41:33', '2020-07-14 18:41:33');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(16, 0, 'ROYALPACK w gronie najdynamiczniej rozwijających się firm', '', '5-be915b8b6c72a3ae812a52ab8b5fb6b4.jpg', 'on', 'Media o nas', '2020-07-14 19:47:55', '2020-07-14 19:48:04');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(19, 'Plik', 'file', NULL, NULL, '2020-07-14 17:35:45', '2020-07-14 17:35:45');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object`
--

INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `section_name`, `system_name`, `name`, `content`, `link`, `link_name`, `email`, `form`, `icon`, `map`, `position`, `status`, `status_copy`, `description`, `date`, `date_create`, `date_modify`) VALUES
(1, 1, 1, 0, '', 'Logo', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-10', '2020-06-10 11:06:20', '2020-06-30 08:49:50'),
(2, 2, 2, 0, '', 'Menu główne', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', 'W nagłówku', '2020-06-10', '2020-06-10 11:10:54', '2020-06-30 08:49:34'),
(3, 3, 3, 0, '', 'Film na stronę główną', '', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-11', '2020-06-11 13:10:27', '2020-06-11 13:12:43'),
(4, 4, 4, 0, '', 'Tekst na filmie', '', '<p><em><span style=\"font-size: 40pt;\">Jakiś przykładowy tekst...</span></em></p>', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 10:52:10', '2020-06-16 11:13:59'),
(5, 5, 5, 0, '', 'Firma - biało czarne', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', 'Przed stopką', '2020-06-16', '2020-06-16 11:44:48', '2020-07-08 13:42:30'),
(6, 6, 7, 1, 'Czytaj więcej...', 'Pasja', 'ROYALPACK TO PASJA', '<p>Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść.</p>', '', '', '', '', 'fal fa-boxes', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 11:57:53', '2020-06-30 09:51:13'),
(7, 6, 7, 1, 'Czytaj więcej...', 'Oferta', 'CO MOŻEMY ZAOFEROWAĆ', '<p>Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść.</p>', '', '', '', '', 'fal fa-box-full', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 12:03:38', '2020-06-30 09:51:23'),
(8, 6, 7, 1, 'Czytaj więcej...', 'Technologia', 'TECHNOLOGIA TO PODSTAWA', '<p>Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść.</p>', '', '', '', '', 'fal fa-microchip', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 12:05:25', '2020-06-30 09:51:33'),
(9, 7, 8, 0, '', 'Stopka', '', '<p>Wszelkie prawa zastrzeżone &amp; 2020</p>', '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-16', '2020-06-16 12:47:29', '2020-06-23 11:39:55'),
(10, 7, 9, 0, '', 'Ciasteczka', '', '<div id=\"cookie\"><i class=\"fad fa-cookie float-left\"></i> Przeglądając serwis WWW, akceptujesz pliki cookies zgodnie z ustawieniami przeglądarki <button class=\"btn btn-dark\">OK</button></div>', '', '', '', '', '', '', 2, 'on', 'on', '', '2020-06-16', '2020-06-16 13:02:02', '2020-07-08 13:55:42'),
(12, 8, 10, 0, '', 'Submenu', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-23', '2020-06-23 07:49:33', '2020-06-23 08:30:51'),
(13, 9, 12, 0, '', 'Nawigacja okruszkowa', '', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-23', '2020-06-23 10:20:22', '2020-06-23 10:49:48'),
(14, 5, 13, 0, '', 'Logo - biało czarne', '', NULL, '', '', '', '', '', '', 2, 'on', 'off', 'W stopce', '2020-06-23', '2020-06-23 11:44:23', '2020-07-08 13:42:41'),
(15, 10, 6, 0, '', 'Profil działalności', 'Profil działalności', '<p></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Misja</span></strong></p>\r\n<p>Naszą misją jest bycie najlepszym w tym co robimy. W trosce o budowanie trwałych relacji z naszymi klientami oferujemy bardzo elastyczną i kompleksową obsługę. Strategia ta umożliwia nam swobodne dopasowanie się do potrzeb nawet największych odbiorc&oacute;w, a to z kolei przekłada się na ich satysfakcję. Jest ona efektem odpowiedzialnej oraz zr&oacute;wnoważonej działalności firmy.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Potencjał</span></strong></p>\r\n<p>Stale rosnący potencjał firmy to przede wszystkim zasługa naszych pracownik&oacute;w. Od początku działalności stawialiśmy na prężny rozw&oacute;j naszej pozycji na rynku. Dzięki wykwalifikowanej kadrze oraz nieustannie rosnącym możliwościom firmy poprzez nabycie nowoczesnego parku maszynowego udaje się nam realizować ten cel. Inwestując w rozw&oacute;j przedsiębiorstwa firma w 2019 r. rozbudowała zakład produkcyjny oraz nabyła nowoczesny park maszynowy, zwiększając swoje możliwości wytw&oacute;rcze do 50 mln m2. Poprzez rzetelność i profesjonalizm budujemy wizerunek naszej marki dzień po dniu.</p>', '', '', '', '', 'fal fa-grip-lines fa-3x', '', 1, 'on', 'off', '', '2020-06-30', '2020-06-30 09:28:31', '2020-07-07 22:44:45'),
(16, 11, 14, 0, '', 'Profil działalności', '<i class=\"fal fa-grip-lines\"></i> Profil działalności <i class=\"fal fa-grip-lines\"></i>', '<p><strong><span style=\"font-size: 14pt;\">Kim jesteśmy?</span></strong></p>\r\n<p>Jesteśmy producentem opakowań z tektury falistej, zadrukowanych techniką druku offsetowego i fleksograficznego. Produkujemy opakowania jednostkowe, zbiorcze, displaye, jak r&oacute;wnież projekty z grupy POS dla produkt&oacute;w z r&oacute;żnych sektor&oacute;w gospodarki rynkowej. Sp&oacute;łka jest obecna na rynku od 2009 roku, jednak jej historia to długi proces oparty na 20 letnim doświadczeniu w branży opakowań. Dlatego też w pełni zdajemy sobie sprawę jak ważna jest dbałość o klienta. Rozumiemy i dopasowujemy się do Państwa potrzeb.</p>', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-30', '2020-06-30 10:21:56', '2020-06-30 11:02:43'),
(18, 12, 15, 0, '', 'Slider', '', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-08', '2020-07-08 13:47:03', '2020-07-08 13:50:25'),
(20, 11, 14, 0, '', 'Historia firmy', '<i class=\"fal fa-grip-lines\"></i> Historia firmy <i class=\"fal fa-grip-lines\"></i>', '<p><strong><span style=\"font-size: 14pt;\">Wstęp</span></strong></p>\r\n<p>Ze skromnych początk&oacute;w powstało nowoczesne rodzinne przedsiębiorstwo. Szybki rozw&oacute;j od 2011 r. miał swoje korzenie już w 1996 r., kiedy to założyciel Royalpack, Andrzej Tatar, został jedynym przedstawicielem Stone Europa Carton GmbH na polskim rynku. Trzy lata p&oacute;źniej, w 1999 r., otwiera w Polsce oddział Europa Carton Sp. z o. o. i zostaje jego prezesem. W 2000 r. do zespołu obsługi logistycznej oddziału Europa Carton w Zielonej G&oacute;rze dołączyła przyszła wsp&oacute;łwłaścicielka Royalpack Anna Tatar. Do 2010 r. oddział Europa Carton Sp. z o. o. znajdował się w strukturach koncernu Smurfit Kappa.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2011</span></strong></p>\r\n<p>Założenie firmy ROYALPACK, Tatar Sp&oacute;łka jawna. Działalność przedsiębiorstwa skupia się na produkcji opakowań zbiorczych z tektury falistej zadrukowanych metodą druku offsetowego. W 2011 r. firma dysponowała parkiem maszynowym w postaci:</p>\r\n<ul class=\"list-group-flush\">\r\n<li class=\"list-group-item\">- maszyny drukującej offsetowej KBA 162 (format 1120 x 1620 mm),</li>\r\n<li class=\"list-group-item\">- maszyny kaszerującej,</li>\r\n<li class=\"list-group-item\">- maszyny sztancującej automatycznej BOBST 1575,</li>\r\n<li class=\"list-group-item\">- tygla sztancującego Viking i Crosland (format do 1700 mm),</li>\r\n<li class=\"list-group-item\">- składarko-sklejarki 3-punktowej.</li>\r\n</ul>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/1-04b59c4fcc9b9d4eb4c772cdec752c02.jpg\" title=\"Nowa siedziba firmy\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2013</span></strong></p>\r\n<p>Rok przełomowy w działalności przedsiębiorstwa - 31 lipca uzyskało Dotację Unijną w ramach Programu Operacyjnego Innowacyjna Gospodarka, Oś Priorytetowa 4 - Inwestycje w innowacyjne przedsięwzięcia. Pilotaż: &bdquo;Wsparcie na pierwsze wdrożenie wynalazku&rdquo;. Dzięki niej w listopadzie rozpoczęła się budowa nowoczesnego zakładu w Słonem.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2015</span></strong></p>\r\n<p>Zakończenie inwestycji i zmiana siedziby firmy.</p>\r\n<p class=\"img-right\"><strong><span style=\"font-size: 14pt;\"><img src=\"../system/default/public/2-32cdc3fd2af72d8cbe8c7a3f0ba07ea4.jpg\" title=\"Rozbudowa hali produkcyjnej\" style=\"max-width: 220px;\" class=\"content-img\" /></span></strong></p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2016</span></strong></p>\r\n<p>Rozbudowanie hali produkcyjnej o dodatkową powierzchnię magazynową &ndash; 2 680 m&sup2;.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Rok 2018</span></strong></p>\r\n<p>Kolejny przełom w działalności firmy &ndash; 15 stycznia 2018 r. uzyskała Dotację Unijną w ramach Programu Operacyjnego Inteligentny Rozw&oacute;j, 2014-2020. Projekt: &bdquo;Gama nowatorskich opakowań tekturowych wielokrotnego zastosowania, o innowacyjnych cechach i przełomowych parametrach użytkowych&rdquo;. Dzięki niej firma została wyposażona w nowoczesną linię produkcyjną do produkcji opakowań o bardzo wysokiej jakości nadruku offsetowego. Natomiast z własnych środk&oacute;w nabyła maszynę drukującą do druku fleksograficznego oraz rozbudowała zakład o ok. 6 000 m&sup2;.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Obecnie</span></strong></p>\r\n<p>Aktualnie ROYALPACK zatrudnia ponad 100 os&oacute;b, lecz ich liczba stale wzrasta. Przyczynia się do tego nowy park maszynowy nabyty w 2018 r., nowa inwestycja, a tym samym rosnące zainteresowanie firm z r&oacute;żnych branż oraz rynk&oacute;w. Royalpack prowadzi swoją działalność na rynku polskim, niemieckim, austriackim, brytyjskim, skandynawskim oraz w krajach Beneluksu z perspektywami na dalsze zdobywanie kolejnych rynk&oacute;w europejskich&hellip;</p>', '', '', '', '', '', '', 2, 'on', 'off', 'Bez paralaksy do sekcji przypisujemy tylko obiekt \"treść - wstęp\"', '2020-07-08', '2020-07-08 14:15:31', '2020-07-08 15:34:28'),
(21, 13, 16, 0, '', 'Mapa w stopce', '', NULL, '', '', '', '', '', '51.921311,15.411415', 1, 'on', 'off', '', '2020-07-13', '2020-07-13 20:04:02', '2020-07-13 20:08:22'),
(22, 14, 14, 0, '', 'Sekcja kontakt', '<i class=\"fal fa-grip-lines\"></i> Kontakt <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-13', '2020-07-13 20:57:51', '2020-07-13 20:59:01'),
(23, 15, 6, 0, '', 'Sekcja kontakt', '', '<p><span style=\"font-size: 18pt;\">Royalpack, Tatar &nbsp;Sp. j.&nbsp;</span></p>\r\n<p><strong>Adres:</strong></p>\r\n<p>Aleja Brzozowa 2A, Słone</p>\r\n<p>66-008 Świdnica</p>\r\n<p><strong>Telefon:</strong> (+48) 534 747 400</p>\r\n<p><strong>E-mail:</strong> biuro@royalpack.com.pl</p>', '', '', '', 'damian.krawiec@gmail.com', '', '', 1, 'on', 'off', '', '2020-07-13', '2020-07-13 21:03:15', '2020-07-13 21:07:24'),
(25, 16, 18, 0, '', 'Języki', '', NULL, '', '', '', '', '', '', 1, 'on', 'off', 'Element zawierający panel przełączania języków', '2020-07-14', '2020-07-14 17:05:17', '2020-07-14 17:06:02'),
(27, 15, 6, 0, '', 'Sekcja kariera', '', '<p><span style=\"font-size: 18pt;\">Royalpack, Tatar &nbsp;Sp. j.&nbsp;</span></p>\r\n<p><strong>Adres:</strong></p>\r\n<p>Aleja Brzozowa 2A, Słone</p>\r\n<p>66-008 Świdnica</p>\r\n<p><strong>Telefon:</strong> (+48) 534 747 400</p>\r\n<p><strong>E-mail:</strong> biuro@royalpack.com.pl</p>', '', '', '', 'm@internet.media.pl', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 17:27:09', '2020-07-14 17:30:09'),
(28, 11, 14, 0, '', 'Kariera', '<i class=\"fal fa-grip-lines\"></i> Kariera <i class=\"fal fa-grip-lines\"></i>', '<p>Jeśli chcesz pracować w dynamicznie rozwijającej się firmie o wysokim potencjale i stale rosnących możliwościach zapraszamy do składania aplikacji poprzez wypełnienie formularza.</p>', '', '', '', '', '', '', 3, 'on', 'off', '', '2020-07-14', '2020-07-14 17:29:08', '2020-07-14 17:30:27'),
(29, 17, 19, 0, '', 'Obowiązek informacyjny', '', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 17:37:17', '2020-07-14 17:38:30'),
(30, 11, 14, 0, '', 'Polityka rozwoju', '<i class=\"fal fa-grip-lines\"></i> Polityka zrównoważonego rozwoju <i class=\"fal fa-grip-lines\"></i>', '<p>Polityka zr&oacute;wnoważonego rozwoju gospodarczego to przede wszystkim prowadzenie działalności gospodarczej z troską o postęp społeczny oraz z poszanowaniem środowiska naturalnego.</p>\r\n<p>Royalpack to firma, kt&oacute;ra prowadzi swoją działalność w spos&oacute;b odpowiedzialny i zr&oacute;wnoważony. Zadowolenie klient&oacute;w, rozw&oacute;j osobisty pracownik&oacute;w oraz szacunek dla środowiska naturalnego i lokalnych społeczności są gł&oacute;wnymi wartościami, kt&oacute;re pielęgnujemy.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Społeczność</span></strong></p>\r\n<p>Royalpack dąży do tego aby w swojej branży być najbardziej rozpoznawalnym producentem opakowań kartonowych. Aby to osiągnąć będziemy działać na rzecz otoczenia i społeczności w kt&oacute;rych mamy zaszczyt pracować.</p>\r\n<p>Naszą największą inwestycją są nasi pracownicy. Staramy się dbać o rozw&oacute;j ich kompetencji, poczucia tożsamości z firmą, a także satysfakcjonujące możliwości kariery. Podstawą rozwoju osobistego naszych pracownik&oacute;w jest wspieranie ich działań, organizacja szkoleń, ich ambicje oraz pozytywna motywacja.</p>\r\n<p>Sprzeciwiamy się dyskryminacji ze względu na płeć, rasę, wiek, wyznanie, przekonania polityczne i inne cechy, mogące w jakikolwiek spos&oacute;b wywołać działania dyskryminacyjne.</p>\r\n<p>Wychodzimy r&oacute;wnież naprzeciw osobom niepełnosprawnym oraz wychowującym dzieci, poprzez dostosowanie odpowiedniej infrastruktury. Dzięki temu osoby niepełnosprawne nie czują się dyskryminowane i mogą w pełni funkcjonować w naszym zakładzie.</p>\r\n<p><strong><span style=\"font-size: 14pt;\">Środowisko</span></strong></p>\r\n<p>Budowa nowego zakładu produkcyjnego nie może oddziaływać negatywnie na środowisko naturalne. Będąc w pełni tego świadomym staramy się wdrażać technologie sprzyjające środowisku.</p>\r\n<ul class=\"im-list-group\">\r\n<li><strong>Odnawialne źr&oacute;dła energii</strong>\r\n<div>Na terenie zakładu zamontowane są solary. Dzięki takiemu działaniu zmniejszamy zużycie energii. Energię słoneczną firma wykorzystuje do ogrzewania bieżącej wody w budynku biurowym, jak r&oacute;wnież na hali produkcyjnej.</div>\r\n</li>\r\n<li><strong>Zmniejszenie materiałochłonności produkcji</strong>\r\n<div>Nowoczesny park maszynowy umożliwia nam zmniejszenie ilości produkowanych odpad&oacute;w, powstających podczas procesu produkcyjnego. Wiąże się to bezpośrednio z nabyciem mniejszej ilości niezbędnych surowc&oacute;w.</div>\r\n</li>\r\n<li><strong>Zastosowanie płyt Sonora firmy KODAK</strong>\r\n<div>Dzięki nabyciu i wdrożeniu nowoczesnej technologii w procesie druku, jakim jest użycie płyt bezprocesowych Sonora, firma wprowadziła znaczące oszczędności związane z eliminacją środk&oacute;w chemicznych. Zmniejszyła ilość zużywanej wody i energii podczas procesu obr&oacute;bki płyt. Skr&oacute;ciła czas przygotowania projektu do druku oraz wyeliminowała odpady chemiczne, kłopotliwe w utylizacji (<a href=\"system/default/public/swiat-druku-924bf7ef033d814dc221bde1cc7b6b65.pdf\" target=\"_blank\" rel=\"noopener\">artykuł świat druku</a>).</div>\r\n</li>\r\n</ul>\r\n<p>Kombinacja czynnik&oacute;w ekonomicznych i ekologicznych, tworzy pozytywny efekt w działalności przedsiębiorstwa, jak r&oacute;wnież w otaczającym go środowisku naturalnym.</p>', '', '', '', '', '', '', 2, 'on', 'off', 'Bez paralaksy do sekcji przypisujemy tylko obiekt \"treść - wstęp\"', '2020-07-14', '2020-07-14 18:02:47', '2020-07-14 18:48:15'),
(31, 18, 6, 0, '', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2019', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2019', '<p>Royalpack, Tatar Sp. j. w Słonem została wyr&oacute;żniona przez Instytut Europejskiego Biznesu w XIV edycji Konkursu Gepardy Biznesu 2019, XII edycji Konkursu Brylanty Polskiej Gospodarki 2019, XII edycji Konkursu Efektywna Firma 2019 i VII edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2019.</p>', 'http://europejskafirma.pl/24591', 'Czytaj więcej...', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:32:12', '2020-07-14 20:10:14'),
(32, 18, 6, 0, '', 'ROYALPACK Laureatem Orły Wprost 2016', 'ROYALPACK Laureatem Orły Wprost 2016', '<p>Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść. Jakaś treść.&nbsp;</p>', 'http://europejskafirma.pl/24591', 'Czytaj więcej...', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:34:53', '2020-07-14 20:10:27'),
(33, 14, 14, 0, '', 'Sekcja media o nas', '<i class=\"fal fa-grip-lines\"></i> Media o nas <i class=\"fal fa-grip-lines\"></i>', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:38:14', '2020-07-14 19:38:47'),
(34, 18, 6, 0, '', 'Royalpack otrzymał wyróżnienie Rzetelni dla Biznesu 2016', 'Royalpack otrzymał wyróżnienie Rzetelni dla Biznesu 2016', '<p>Została ona przyznana \"Za komercjalizację nowatorskich pomysł&oacute;w wprowadzonych na rynek branży opakowań tekturowych\"</p>', 'https://royalpack.com.pl/images/news/wielka-gala.pdf', 'Czytaj więcej...', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:40:55', '2020-07-14 20:10:33'),
(35, 18, 6, 0, '', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2018', 'ROYALPACK to Brylant Polskiej Gospodarki i Gepard Biznesu 2018', '<p>Royalpack, Tatar S. J. w Świdnicy została wyr&oacute;żniona przez Instytut Europejskiego Biznesu w XIII edycji Konkursu Gepardy Biznesu 2018, XI edycji Konkursu Brylanty Polskiej Gospodarki 2018, XI edycji Konkursu Efektywna Firma 2018 oraz VI edycji Programu Promocyjnego Mocna Firma Godna Zaufania 2018</p>', 'http://europejskafirma.pl/20414,royalpack-tatar-s-j-to-brylant-polskiej-gospodarki-i-gepard-biznesu-2018', 'Czytaj więcej...', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:42:38', '2020-07-14 20:10:38'),
(36, 18, 6, 0, '', 'ROYALPACK w gronie najdynamiczniej rozwijających się firm', 'ROYALPACK w gronie najdynamiczniej rozwijających się firm', '<p>W 2015 roku ROYALPACK został członkiem elitarnego klubu Gazel Biznesu. Jednocześnie stał się jednym z najbardziej dynamicznie rozwijających się przedsiębiorstw wśr&oacute;d małych i średnich firm.</p>', 'http://europejskafirma.pl/20414,royalpack-tatar-s-j-to-brylant-polskiej-gospodarki-i-gepard-biznesu-2018', 'Czytaj więcej...', '', '', '', '', 1, 'on', 'off', '', '2020-07-14', '2020-07-14 19:46:22', '2020-07-14 20:10:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_file`
--

INSERT INTO `im_object_file` (`object_file_id`, `object_id`, `file_id`, `position`) VALUES
(1, 29, 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_image`
--

INSERT INTO `im_object_image` (`object_image_id`, `object_id`, `image_id`, `position`) VALUES
(8, 12, 4, 1),
(9, 12, 3, 2),
(12, 1, 1, 1),
(13, 5, 2, 1),
(14, 14, 5, 1),
(18, 18, 8, 1),
(19, 18, 6, 2),
(20, 18, 9, 3),
(39, 31, 15, 1),
(40, 32, 14, 1),
(41, 34, 13, 1),
(42, 35, 12, 1),
(43, 36, 16, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section`
--

INSERT INTO `im_section` (`section_id`, `parent`, `name`, `name_second`, `name_url`, `meta`, `icon`, `class`, `popup`, `position`, `status`, `status_copy`, `status_popup`, `status_parallax`, `description`, `date_create`, `date_modify`) VALUES
(1, 0, 'Strona główna', '', 'strona-glowna', 'Opis strony głownej', '', '', '', 1, 'off', 'on', 'off', 'off', '', '2020-06-09 16:25:42', '2020-06-23 10:49:17'),
(2, 0, 'O NAS', '', 'o-nas', '', '', 'container', '', 2, 'on', 'off', 'off', 'off', '', '2020-06-16 08:09:19', '2020-07-14 17:04:49'),
(3, 0, 'OFERTA', '', 'oferta', '', '', 'container', '', 3, 'on', 'off', 'off', 'off', '', '2020-06-16 08:10:11', '2020-07-14 17:04:50'),
(4, 0, 'TECHNOLOGIA', '', 'technologia', '', '', 'container', '', 4, 'on', 'off', 'off', 'off', '', '2020-06-16 08:10:47', '2020-06-24 13:57:09'),
(5, 0, 'KARIERA', '', 'kariera', '', '', 'container', '', 5, 'on', 'on', 'off', 'off', '', '2020-06-16 08:10:59', '2020-06-24 13:57:15'),
(6, 0, 'KONTAKT', '', 'kontakt', '', '', 'container', '', 6, 'on', 'on', 'off', 'off', '', '2020-06-16 08:11:10', '2020-06-24 13:57:22'),
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
(23, 4, 'Offset', '', 'offset', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'off', '', '2020-06-21 17:06:29', '2020-06-23 11:16:26'),
(24, 4, 'Flexo', '', 'flexo', '', 'fal fa-angle-right', 'container', '', 2, 'on', 'on', 'off', 'off', '', '2020-06-21 17:06:43', '2020-06-23 11:16:31'),
(25, 4, 'Park maszynowy', '', 'park-maszynowy', '', 'fal fa-angle-right', 'container', '', 3, 'on', 'on', 'off', 'off', '', '2020-06-21 17:06:56', '2020-06-23 11:16:37'),
(26, 4, 'R&D', '', 'rd', '', 'fal fa-angle-right', 'container', '', 4, 'on', 'on', 'off', 'off', '', '2020-06-21 17:07:12', '2020-06-23 11:16:41'),
(27, 4, 'Innowacje', '', 'innowacje', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'off', '', '2020-06-21 17:07:27', '2020-06-23 11:16:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section_image`
--

INSERT INTO `im_section_image` (`section_image_id`, `section_id`, `image_id`, `position`) VALUES
(1, 7, 9, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=1123 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(452, 2, 13),
(453, 3, 13),
(454, 4, 13),
(455, 5, 13),
(456, 6, 13),
(457, 7, 13),
(458, 8, 13),
(459, 9, 13),
(460, 10, 13),
(461, 11, 13),
(462, 12, 13),
(463, 13, 13),
(464, 14, 13),
(465, 15, 13),
(466, 16, 13),
(467, 17, 13),
(468, 18, 13),
(469, 19, 13),
(470, 20, 13),
(471, 21, 13),
(472, 22, 13),
(473, 23, 13),
(474, 24, 13),
(475, 25, 13),
(476, 26, 13),
(477, 27, 13),
(487, 1, 9),
(488, 2, 9),
(489, 3, 9),
(490, 4, 9),
(491, 5, 9),
(492, 6, 9),
(493, 7, 9),
(494, 8, 9),
(495, 9, 9),
(496, 10, 9),
(497, 11, 9),
(498, 12, 9),
(499, 13, 9),
(500, 14, 9),
(501, 15, 9),
(502, 16, 9),
(503, 17, 9),
(504, 18, 9),
(505, 19, 9),
(506, 20, 9),
(507, 21, 9),
(508, 22, 9),
(509, 23, 9),
(510, 24, 9),
(511, 25, 9),
(512, 26, 9),
(513, 27, 9),
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
(643, 1, 6),
(644, 7, 6),
(645, 1, 7),
(646, 7, 7),
(647, 1, 8),
(648, 7, 8),
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
(702, 1, 14),
(703, 5, 14),
(704, 6, 14),
(705, 7, 14),
(706, 10, 14),
(707, 11, 14),
(708, 12, 14),
(709, 13, 14),
(710, 14, 14),
(711, 15, 14),
(712, 16, 14),
(713, 17, 14),
(714, 18, 14),
(715, 19, 14),
(716, 20, 14),
(717, 21, 14),
(718, 22, 14),
(719, 23, 14),
(720, 24, 14),
(721, 25, 14),
(722, 26, 14),
(723, 27, 14),
(751, 1, 18),
(758, 1, 10),
(759, 2, 10),
(760, 3, 10),
(761, 4, 10),
(762, 5, 10),
(763, 6, 10),
(794, 17, 20),
(797, 1, 21),
(798, 6, 21),
(799, 6, 22),
(801, 6, 23),
(1040, 1, 25),
(1041, 5, 25),
(1042, 6, 25),
(1043, 7, 25),
(1044, 10, 25),
(1045, 11, 25),
(1046, 12, 25),
(1047, 13, 25),
(1048, 14, 25),
(1049, 15, 25),
(1050, 16, 25),
(1051, 17, 25),
(1052, 18, 25),
(1053, 19, 25),
(1054, 20, 25),
(1055, 21, 25),
(1056, 22, 25),
(1057, 23, 25),
(1058, 24, 25),
(1059, 25, 25),
(1060, 26, 25),
(1061, 27, 25),
(1066, 5, 27),
(1067, 5, 28),
(1068, 5, 29),
(1069, 6, 29),
(1093, 18, 30),
(1101, 22, 33),
(1118, 22, 31),
(1119, 22, 32),
(1120, 22, 34),
(1121, 22, 35),
(1122, 22, 36);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(9, 'Nawigacja okruszkowa', 'col-12', 'on', '', '2020-06-23 10:19:21', '2020-06-23 10:27:15'),
(10, 'Treść - sekcja', 'col-12', 'on', 'bez galerii zdjęć, dlatego sugerowana sekcja z paralaksą', '2020-06-30 09:12:54', '2020-06-30 10:19:59'),
(11, 'Treść - wstęp', 'col-12', 'on', '', '2020-06-30 10:20:13', '2020-06-30 10:20:19'),
(12, 'Slider', 'col-12 d-lg-none', 'on', '', '2020-07-08 13:46:13', '2020-07-08 13:49:40'),
(13, 'Mapa', 'col-12', 'on', '', '2020-07-13 20:02:31', '2020-07-13 20:02:38'),
(14, 'Nazwa', 'col-12', 'on', 'Tylko nazwa', '2020-07-13 20:57:08', '2020-07-14 16:55:33'),
(15, 'Treść z formularzem', 'col-12', 'on', 'W jednym wierszu treść html i formularz', '2020-07-13 21:00:33', '2020-07-14 16:56:04'),
(16, 'Języki', 'col-12', 'on', '', '2020-07-14 17:03:57', '2020-07-14 17:04:03'),
(17, 'Plik', 'col-12', 'on', '', '2020-07-14 17:36:10', '2020-07-14 17:36:16'),
(18, 'Kontener - wpis', 'col-12 col-md-6 col-xl-4 im-box', 'on', '', '2020-07-14 19:16:25', '2020-07-14 20:01:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type_property`
--

INSERT INTO `im_type_property` (`type_property_id`, `type_id`, `property_id`, `class`, `class_field`, `position`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 4, 'col-12', 'animated zoomIn', 1, 'on', '', '2020-06-10 11:05:51', '2020-06-16 09:18:08'),
(2, 2, 7, 'col-12', 'navbar navbar-expand-lg animated bounceInRight', 1, 'on', '', '2020-06-10 11:10:25', '2020-06-24 14:30:11'),
(3, 3, 15, 'col-12', '', 1, 'on', '', '2020-06-11 13:09:58', '2020-07-08 13:39:19'),
(4, 4, 2, 'col-12 text-center', 'animated swing', 1, 'on', '', '2020-06-16 10:50:26', '2020-07-08 13:40:57'),
(5, 5, 4, 'col-12', '', 1, 'on', '', '2020-06-16 11:43:49', '2020-06-16 11:44:04'),
(6, 6, 12, 'col-12', 'icon', 1, 'on', '', '2020-06-16 11:55:21', '2020-06-16 12:14:44'),
(7, 6, 1, 'col-12', 'title', 2, 'on', '', '2020-06-16 11:56:25', '2020-06-16 12:14:07'),
(8, 6, 2, 'col-12', 'text text-justify', 3, 'on', '', '2020-06-16 11:56:41', '2020-06-16 12:41:42'),
(9, 6, 5, 'col-12', 'btn link', 4, 'on', '', '2020-06-16 11:56:57', '2020-06-16 12:38:49'),
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
(21, 14, 1, 'col-12 text-center text-md-right', 'h5 pt-3 pb-3', 1, 'on', '', '2020-07-13 20:57:30', '2020-07-13 20:58:13'),
(22, 15, 2, 'col-12 col-md-6 col-xl-3', '', 1, 'on', '', '2020-07-13 21:00:47', '2020-07-13 21:08:16'),
(23, 15, 10, 'col-12 col-md-6 col-xl-9', 'im-form', 2, 'on', '', '2020-07-13 21:02:15', '2020-07-13 21:12:26'),
(24, 16, 13, 'col-12', '', 1, 'on', '', '2020-07-14 17:04:09', '2020-07-14 17:04:15'),
(25, 17, 6, 'col-12', '', 1, 'on', '', '2020-07-14 17:37:29', '2020-07-14 17:40:34'),
(26, 18, 1, 'col-12 text-center pt-4', 'font-weight-bold', 2, 'on', '', '2020-07-14 19:16:40', '2020-07-14 20:04:55'),
(27, 18, 4, 'col-12', '', 1, 'on', '', '2020-07-14 19:17:00', '2020-07-14 19:19:35'),
(28, 18, 2, 'col-12', 'text-justify pt-3 pb-3', 3, 'on', '', '2020-07-14 19:17:30', '2020-07-14 19:55:10'),
(29, 18, 8, 'col-12 text-center pb-5', 'btn link', 4, 'on', '', '2020-07-14 19:18:46', '2020-07-14 20:09:07');

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
