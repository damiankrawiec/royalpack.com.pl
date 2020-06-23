-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 23 Cze 2020, 09:50
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_image`
--

INSERT INTO `im_image` (`image_id`, `section`, `name`, `content`, `url`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 'Logo', '', 'logo-b6f6827caed1e0e4cb483bfe19e0999c.png', 'on', '', '2020-06-10 11:03:32', '2020-06-16 10:48:16'),
(2, 0, 'Firma - biało-czarne', NULL, 'firma-50048d2218927674c307879508d7e07b.jpg', 'on', NULL, '2020-06-16 11:45:57', '2020-06-16 11:45:57'),
(3, 0, 'Produkt 1', '', 'produkt-1-43f62f220ff3aad0c0a9679ba47a5369.png', 'on', 'Do submenu', '2020-06-23 07:58:17', '2020-06-23 08:32:06'),
(4, 0, 'Produkt 2', '', 'produkt-2-98e71fa3aa8b2194e845fc89bb369686.png', 'on', 'Do submenu', '2020-06-23 08:09:04', '2020-06-23 08:09:18'),
(5, 1, 'Logo w stopce', '', 'logo-footer-0d7039911841f8e1b14ccb2d58391bfd.png', 'on', '', '2020-06-23 11:38:42', '2020-06-23 11:47:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_label`
--

INSERT INTO `im_label` (`label_id`, `name`, `system_name`, `style`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Logo', 'logo', NULL, NULL, '2020-06-10 11:04:06', '2020-06-10 11:04:06'),
(2, 'Menu', 'menu', NULL, NULL, '2020-06-10 11:09:49', '2020-06-10 11:09:49'),
(3, 'Film', 'movie', NULL, NULL, '2020-06-11 13:09:32', '2020-06-11 13:09:32'),
(4, 'Tekst na filmie', 'movie-text', NULL, NULL, '2020-06-16 10:49:37', '2020-06-16 10:49:37'),
(5, 'Zdjęcie firmy w stopce', 'company-image', NULL, NULL, '2020-06-16 11:39:48', '2020-06-16 11:39:48'),
(6, 'Treść główna', 'content', NULL, NULL, '2020-06-16 11:54:24', '2020-06-16 11:54:24'),
(7, 'Kontener', 'box', NULL, NULL, '2020-06-16 12:10:30', '2020-06-16 12:10:30'),
(8, 'Stopka', 'footer', NULL, NULL, '2020-06-16 12:43:26', '2020-06-16 12:43:26'),
(9, 'Ciasteczka', 'cookie', NULL, NULL, '2020-06-16 12:59:44', '2020-06-16 12:59:44'),
(10, 'Submenu', 'submenu', NULL, NULL, '2020-06-21 16:26:49', '2020-06-21 16:26:49'),
(12, 'Nawigacja okruszkowa', 'im-breadcrumb', NULL, NULL, '2020-06-23 10:26:58', '2020-06-23 10:26:58'),
(13, 'Logo w stopce', 'footer-logo', NULL, NULL, '2020-06-23 11:43:53', '2020-06-23 11:43:53');

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
(1, 1, 0, 'col-9 col-md-5 col-xl-4', '', '2020-06-10 11:32:13', '2020-06-16 08:37:37'),
(2, 2, 0, 'col-3 col-md-7 col-xl-8', '', '2020-06-10 11:32:28', '2020-06-16 08:37:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object`
--

INSERT INTO `im_object` (`object_id`, `type_id`, `label_id`, `section`, `section_name`, `system_name`, `name`, `content`, `link`, `link_name`, `email`, `form`, `icon`, `map`, `position`, `status`, `status_copy`, `description`, `date`, `date_create`, `date_modify`) VALUES
(1, 1, 1, 0, '', 'Logo', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-10', '2020-06-10 11:06:20', '2020-06-10 11:11:16'),
(2, 2, 2, 0, '', 'Menu główne', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', 'W nagłówku', '2020-06-10', '2020-06-10 11:10:54', '2020-06-23 07:48:55'),
(3, 3, 3, 0, '', 'Film na stronę główną', '', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-11', '2020-06-11 13:10:27', '2020-06-11 13:12:43'),
(4, 4, 4, 0, '', 'Tekst na filmie', '', '<p><em><span style=\"font-size: 40pt;\">Jakiś przykładowy tekst...</span></em></p>', '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 10:52:10', '2020-06-16 11:13:59'),
(5, 5, 5, 0, '', 'Firma - biało czarne', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-16', '2020-06-16 11:44:48', '2020-06-23 11:42:20'),
(6, 6, 7, 1, 'Czytaj więcej...', 'Pasja', 'ROYALPACK TO PASJA', '<p>Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść.</p>', '', '', '', '', 'fal fa-boxes', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 11:57:53', '2020-06-23 11:35:37'),
(7, 6, 7, 1, 'Czytaj więcej...', 'Oferta', 'CO MOŻEMY ZAOFEROWAĆ', '<p>Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść.</p>', '', '', '', '', 'fal fa-box-full', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 12:03:38', '2020-06-23 07:44:45'),
(8, 6, 7, 1, 'Czytaj więcej...', 'Technologia', 'TECHNOLOGIA TO PODSTAWA', '<p>Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść. Tu będzie treść.</p>', '', '', '', '', 'fal fa-microchip', '', 1, 'on', 'off', '', '2020-06-16', '2020-06-16 12:05:25', '2020-06-23 07:44:53'),
(9, 7, 8, 0, '', 'Stopka', '', '<p>Wszelkie prawa zastrzeżone &amp; 2020</p>', '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-16', '2020-06-16 12:47:29', '2020-06-23 11:39:55'),
(10, 7, 9, 0, '', 'Ciasteczka', '', '<div id=\"cookie\"><i class=\"fad fa-cookie fa-2x float-left m-1\"></i> Przeglądając niniejszy serwis internetowy, akceptujesz pliki cookies zgodnie z ustawieniami przeglądarki <button class=\"btn btn-dark\">OK</button></div>', '', '', '', '', '', '', 2, 'on', 'on', '', '2020-06-16', '2020-06-16 13:02:02', '2020-06-23 08:00:54'),
(12, 8, 10, 0, '', 'Submenu', '', NULL, '', '', '', '', '', '', 1, 'on', 'on', '', '2020-06-23', '2020-06-23 07:49:33', '2020-06-23 08:30:51'),
(13, 9, 12, 0, '', 'Nawigacja okruszkowa', '', NULL, '', '', '', '', '', '', 1, 'on', 'off', '', '2020-06-23', '2020-06-23 10:20:22', '2020-06-23 10:49:48'),
(14, 5, 13, 0, '', 'Logo - biało czarne', '', NULL, '', '', '', '', '', '', 2, 'on', 'off', '', '2020-06-23', '2020-06-23 11:44:23', '2020-06-23 11:44:29');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_object_image`
--

INSERT INTO `im_object_image` (`object_image_id`, `object_id`, `image_id`, `position`) VALUES
(1, 1, 1, 1),
(8, 12, 4, 1),
(9, 12, 3, 2),
(10, 5, 2, 1),
(11, 14, 5, 1);

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
(2, 0, 'O NAS', 'nasza wizja', 'o-nas', '', '', 'container', '', 2, 'on', 'off', 'off', 'off', '', '2020-06-16 08:09:19', '2020-06-23 11:31:42'),
(3, 0, 'OFERTA', 'zakres działalności', 'oferta', '', '', 'container', '', 3, 'on', 'off', 'off', 'off', '', '2020-06-16 08:10:11', '2020-06-23 11:31:43'),
(4, 0, 'TECHNOLOGIA', 'nowoczesne rozwiązania', 'technologia', '', '', 'container', '', 4, 'on', 'off', 'off', 'off', '', '2020-06-16 08:10:47', '2020-06-23 11:31:44'),
(5, 0, 'KARIERA', 'dołącz do nas', 'kariera', '', '', 'container', '', 5, 'on', 'on', 'off', 'off', '', '2020-06-16 08:10:59', '2020-06-17 14:27:37'),
(6, 0, 'KONTAKT', 'napisz lub zadzwoń', 'kontakt', '', '', 'container', '', 6, 'on', 'on', 'off', 'off', '', '2020-06-16 08:11:10', '2020-06-17 14:27:57'),
(7, 2, 'Profil działalności', '', 'profil-dzialalnosci', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'on', 'off', 'off', '', '2020-06-21 15:45:04', '2020-06-23 11:15:33'),
(8, 3, 'OPOMIAROWANIA', '', 'opomiarowania', '', '', 'container', NULL, 1, 'on', 'off', 'off', 'off', NULL, '2020-06-21 15:49:55', '2020-06-23 11:31:54'),
(9, 3, 'STANDY', '', 'standy', '', '', 'container', NULL, 2, 'on', 'off', 'off', 'off', NULL, '2020-06-21 15:50:11', '2020-06-23 11:31:55'),
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
(27, 4, 'Innowacje', '', 'innowacje', '', 'fal fa-angle-right', 'container', '', 5, 'on', 'on', 'off', 'off', '', '2020-06-21 17:07:27', '2020-06-23 11:16:46'),
(28, 9, 'Jakaś sekcja', '', 'jakas-sekcja', '', 'fal fa-angle-right', 'container', '', 1, 'on', 'off', 'off', 'off', '', '2020-06-23 10:59:48', '2020-06-23 11:11:50');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_section_object`
--

INSERT INTO `im_section_object` (`section_object_id`, `section_id`, `object_id`) VALUES
(1, 1, 1),
(4, 1, 3),
(5, 2, 1),
(7, 3, 1),
(9, 4, 1),
(11, 5, 1),
(13, 6, 1),
(19, 1, 4),
(94, 1, 10),
(95, 2, 10),
(96, 3, 10),
(97, 4, 10),
(98, 5, 10),
(99, 6, 10),
(100, 8, 1),
(102, 9, 1),
(104, 10, 1),
(106, 11, 1),
(108, 12, 1),
(110, 13, 1),
(112, 14, 1),
(114, 15, 1),
(116, 16, 1),
(148, 17, 1),
(151, 18, 1),
(154, 19, 1),
(157, 20, 1),
(160, 21, 1),
(163, 22, 1),
(166, 23, 1),
(169, 24, 1),
(172, 25, 1),
(175, 26, 1),
(178, 27, 1),
(182, 1, 7),
(183, 1, 8),
(210, 1, 2),
(211, 2, 2),
(212, 3, 2),
(213, 4, 2),
(214, 5, 2),
(215, 6, 2),
(216, 8, 2),
(217, 9, 2),
(218, 10, 2),
(219, 11, 2),
(220, 12, 2),
(221, 13, 2),
(222, 14, 2),
(223, 15, 2),
(224, 16, 2),
(225, 17, 2),
(226, 18, 2),
(227, 19, 2),
(228, 20, 2),
(229, 21, 2),
(230, 22, 2),
(231, 23, 2),
(232, 24, 2),
(233, 25, 2),
(234, 26, 2),
(235, 27, 2),
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
(478, 28, 1),
(479, 28, 2),
(482, 28, 10),
(483, 28, 12),
(486, 1, 6),
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
(514, 28, 9),
(515, 1, 5),
(516, 2, 5),
(517, 3, 5),
(518, 4, 5),
(519, 5, 5),
(520, 6, 5),
(521, 7, 5),
(522, 8, 5),
(523, 9, 5),
(524, 10, 5),
(525, 11, 5),
(526, 12, 5),
(527, 13, 5),
(528, 14, 5),
(529, 15, 5),
(530, 16, 5),
(531, 17, 5),
(532, 18, 5),
(533, 19, 5),
(534, 20, 5),
(535, 21, 5),
(536, 22, 5),
(537, 23, 5),
(538, 24, 5),
(539, 25, 5),
(540, 26, 5),
(541, 27, 5),
(542, 28, 5),
(565, 1, 14),
(566, 5, 14),
(567, 6, 14),
(568, 7, 14),
(569, 10, 14),
(570, 11, 14),
(571, 12, 14),
(572, 13, 14),
(573, 14, 14),
(574, 15, 14),
(575, 16, 14),
(576, 17, 14),
(577, 18, 14),
(578, 19, 14),
(579, 20, 14),
(580, 21, 14),
(581, 22, 14),
(582, 23, 14),
(583, 24, 14),
(584, 25, 14),
(585, 26, 14),
(586, 27, 14);

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
(3, 'Font', 'font', 'Hind', '', '2020-06-09 16:25:42', '2020-06-16 10:42:23'),
(4, 'Font size', 'font-size', '15px', '', '2020-06-17 14:13:35', '2020-06-17 14:13:35'),
(5, 'Google API', 'google-api', '', '', '2020-06-17 14:13:36', '2020-06-17 14:13:36'),
(6, 'Style map', 'map-style', '', '', '2020-06-17 14:13:36', '2020-06-17 14:13:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type`
--

INSERT INTO `im_type` (`type_id`, `name`, `class`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 'Logo', 'col-12', 'on', '', '2020-06-10 11:04:32', '2020-06-10 11:32:52'),
(2, 'Menu', 'col-12', 'on', '', '2020-06-10 11:10:03', '2020-06-16 08:15:59'),
(3, 'Film', 'col-12', 'on', '', '2020-06-11 13:09:43', '2020-06-11 13:09:49'),
(4, 'Tekst na filmie', 'col-12 d-none d-xl-block', 'on', '', '2020-06-16 10:50:10', '2020-06-16 12:43:48'),
(5, 'Zdjęcia w stopce', 'col-12', 'on', '', '2020-06-16 11:43:29', '2020-06-23 11:40:53'),
(6, 'Kontener', 'col-12 col-lg-4 text-center', 'on', '', '2020-06-16 11:54:36', '2020-06-16 13:04:49'),
(7, 'Treść', 'col-12', 'on', 'W różnych częściach serwisu', '2020-06-16 12:46:41', '2020-06-16 12:47:07'),
(8, 'Submenu', 'col-12', 'on', '', '2020-06-23 07:45:48', '2020-06-23 07:45:54'),
(9, 'Nawigacja okruszkowa', 'col-12', 'on', '', '2020-06-23 10:19:21', '2020-06-23 10:27:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `im_type_property`
--

INSERT INTO `im_type_property` (`type_property_id`, `type_id`, `property_id`, `class`, `class_field`, `position`, `status`, `description`, `date_create`, `date_modify`) VALUES
(1, 1, 4, 'col-12', 'animated zoomIn', 1, 'on', '', '2020-06-10 11:05:51', '2020-06-16 09:18:08'),
(2, 2, 7, 'col-12', 'navbar navbar-expand-xl animated bounceInRight', 1, 'on', '', '2020-06-10 11:10:25', '2020-06-16 13:03:28'),
(3, 3, 15, 'col-12', '', 1, 'on', '', '2020-06-11 13:09:58', '2020-06-11 13:10:04'),
(4, 4, 2, 'col-12 text-center', 'animated swing', 1, 'on', '', '2020-06-16 10:50:26', '2020-06-16 11:21:44'),
(5, 5, 4, 'col-12', '', 1, 'on', '', '2020-06-16 11:43:49', '2020-06-16 11:44:04'),
(6, 6, 12, 'col-12', 'icon', 1, 'on', '', '2020-06-16 11:55:21', '2020-06-16 12:14:44'),
(7, 6, 1, 'col-12', 'title', 2, 'on', '', '2020-06-16 11:56:25', '2020-06-16 12:14:07'),
(8, 6, 2, 'col-12', 'text text-justify', 3, 'on', '', '2020-06-16 11:56:41', '2020-06-16 12:41:42'),
(9, 6, 5, 'col-12', 'btn link', 4, 'on', '', '2020-06-16 11:56:57', '2020-06-16 12:38:49'),
(10, 7, 2, 'col-12', '', 1, 'on', '', '2020-06-16 12:47:49', '2020-06-16 12:50:47'),
(11, 8, 7, 'col-12 col-md-6', 'animated fadeInLeft', 1, 'on', '', '2020-06-23 07:46:31', '2020-06-23 08:38:20'),
(12, 8, 4, 'd-none d-md-block col-md-6 text-center submenu-img', '', 2, 'on', '', '2020-06-23 07:47:18', '2020-06-23 10:16:00'),
(13, 9, 14, 'col-12', '', 1, 'on', '', '2020-06-23 10:19:41', '2020-06-23 10:19:52');

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
