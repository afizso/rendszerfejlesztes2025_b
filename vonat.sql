-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Okt 26. 15:13
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



-- Felhasználó tábla

CREATE TABLE `felhasznalo` (
  `felhasznalo_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `regisztracio_datuma` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

INSERT INTO `felhasznalo` (`felhasznalo_id`, `nev`, `email`, `jelszo`, `regisztracio_datuma`) VALUES
(1, 'Ági', 'agi@gmail.com', 'agi123', '2025-11-09 15:24:10'),
(2, 'Bence', 'bence@gmail.com', 'bence123', '2025-12-15 15:40:50'),
(3, 'Csilla', 'csilla@gmail.com', 'csilla123', '2025-01-31 15:41:22'),
(4, 'Dániel', 'daniel@gmail.com', 'daniel123', '2025-10-11 15:43:12'),
(5, 'Erika', 'erika@gmail.com', 'erika123', '2025-11-05 15:46:13');

-- -----------------------------------------------------



-- Járat tábla

CREATE TABLE `jarat` (
  `jarat_id` int(11) NOT NULL,
  `jarat_szam` varchar(20) NOT NULL,
  `indulasi_allomas` varchar(100) NOT NULL,
  `erkezesi_allomas` varchar(100) NOT NULL,
  `indulasi_ido` datetime NOT NULL,
  `erkezesi_ido` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

INSERT INTO `jarat` (`jarat_id`, `jarat_szam`, `indulasi_allomas`, `erkezesi_allomas`, `indulasi_ido`, `erkezesi_ido`) VALUES
(1, 'IC100', 'Debrecen', 'Nyíregyháza', '2025-10-26 17:30:00', '2025-10-26 21:00:00'),
(2, 'IC101', 'Budapest', 'Debrecen', '2025-10-26 05:45:00', '2025-10-26 09:00:00'),
(3, 'IC102', 'Győr', 'Budapest', '2025-10-26 12:00:00', '2025-10-26 14:00:00'),
(4, 'IC103', 'Budapest', 'Debrecen', '2025-10-26 13:45:00', '2025-10-26 15:15:00'),
(5, 'IC104', 'Budapest', 'Debrecen', '2025-10-26 15:15:00', '2025-10-26 16:30:00'),
(6, 'IC105', 'Szeged', 'Budapest', '2025-10-26 16:45:00', '2025-10-26 20:15:00'),
(7, 'IC106', 'Budapest', 'Debrecen', '2025-10-26 06:45:00', '2025-10-26 10:00:00'),
(8, 'IC107', 'Szeged', 'Budapest', '2025-10-26 08:45:00', '2025-10-26 10:15:00'),
(9, 'IC108', 'Debrecen', 'Nyíregyháza', '2025-10-26 08:00:00', '2025-10-26 12:00:00'),
(10, 'IC109', 'Szeged', 'Budapest', '2025-10-26 15:45:00', '2025-10-26 17:45:00'),
(11, 'IC110', 'Győr', 'Budapest', '2025-10-26 09:00:00', '2025-10-26 11:30:00'),
(12, 'IC111', 'Veszprém', 'Győr', '2025-10-26 08:15:00', '2025-10-26 12:30:00'),
(13, 'IC112', 'Győr', 'Sopron', '2025-10-26 07:15:00', '2025-10-26 10:15:00'),
(14, 'IC113', 'Budapest', 'Győr', '2025-10-26 18:15:00', '2025-10-26 22:30:00'),
(15, 'IC114', 'Szeged', 'Budapest', '2025-10-26 09:30:00', '2025-10-26 13:45:00'),
(16, 'IC115', 'Győr', 'Sopron', '2025-10-26 07:00:00', '2025-10-26 09:00:00'),
(17, 'IC116', 'Debrecen', 'Nyíregyháza', '2025-10-26 13:30:00', '2025-10-26 17:00:00'),
(18, 'IC117', 'Budapest', 'Debrecen', '2025-10-26 17:45:00', '2025-10-26 21:00:00'),
(19, 'IC118', 'Debrecen', 'Nyíregyháza', '2025-10-26 06:00:00', '2025-10-26 08:00:00'),
(20, 'IC119', 'Szolnok', 'Debrecen', '2025-10-26 14:00:00', '2025-10-26 17:00:00'),
(21, 'IC120', 'Veszprém', 'Győr', '2025-10-26 13:00:00', '2025-10-26 17:00:00'),
(22, 'IC121', 'Budapest', 'Győr', '2025-10-26 12:15:00', '2025-10-26 16:15:00'),
(23, 'IC122', 'Szolnok', 'Debrecen', '2025-10-26 15:00:00', '2025-10-26 17:00:00'),
(24, 'IC123', 'Budapest', 'Debrecen', '2025-10-26 10:45:00', '2025-10-26 13:00:00'),
(25, 'IC124', 'Pécs', 'Budapest', '2025-10-26 10:30:00', '2025-10-26 12:45:00'),
(26, 'IC125', 'Szeged', 'Budapest', '2025-10-26 15:15:00', '2025-10-26 19:45:00'),
(27, 'IC126', 'Budapest', 'Debrecen', '2025-10-26 19:00:00', '2025-10-26 22:15:00'),
(28, 'IC127', 'Veszprém', 'Győr', '2025-10-26 13:30:00', '2025-10-26 17:30:00'),
(29, 'IC128', 'Szeged', 'Budapest', '2025-10-26 16:30:00', '2025-10-26 20:00:00'),
(30, 'IC129', 'Eger', 'Budapest', '2025-10-26 18:45:00', '2025-10-26 22:45:00'),
(31, 'IC100', 'Debrecen', 'Nyíregyháza', '2025-10-26 17:30:00', '2025-10-26 21:00:00'),
(32, 'IC101', 'Budapest', 'Debrecen', '2025-10-26 05:45:00', '2025-10-26 09:00:00'),
(33, 'IC102', 'Győr', 'Budapest', '2025-10-26 12:00:00', '2025-10-26 14:00:00'),
(34, 'IC103', 'Budapest', 'Debrecen', '2025-10-26 13:45:00', '2025-10-26 15:15:00'),
(35, 'IC104', 'Budapest', 'Debrecen', '2025-10-26 15:15:00', '2025-10-26 16:30:00'),
(36, 'IC105', 'Szeged', 'Budapest', '2025-10-26 16:45:00', '2025-10-26 20:15:00'),
(37, 'IC106', 'Budapest', 'Debrecen', '2025-10-26 06:45:00', '2025-10-26 10:00:00'),
(38, 'IC107', 'Szeged', 'Budapest', '2025-10-26 08:45:00', '2025-10-26 10:15:00'),
(39, 'IC108', 'Debrecen', 'Nyíregyháza', '2025-10-26 08:00:00', '2025-10-26 12:00:00'),
(40, 'IC109', 'Szeged', 'Budapest', '2025-10-26 15:45:00', '2025-10-26 17:45:00'),
(41, 'IC110', 'Győr', 'Budapest', '2025-10-26 09:00:00', '2025-10-26 11:30:00'),
(42, 'IC111', 'Veszprém', 'Győr', '2025-10-26 08:15:00', '2025-10-26 12:30:00'),
(43, 'IC112', 'Győr', 'Sopron', '2025-10-26 07:15:00', '2025-10-26 10:15:00'),
(44, 'IC113', 'Budapest', 'Győr', '2025-10-26 18:15:00', '2025-10-26 22:30:00'),
(45, 'IC114', 'Szeged', 'Budapest', '2025-10-26 09:30:00', '2025-10-26 13:45:00'),
(46, 'IC115', 'Győr', 'Sopron', '2025-10-26 07:00:00', '2025-10-26 09:00:00'),
(47, 'IC116', 'Debrecen', 'Nyíregyháza', '2025-10-26 13:30:00', '2025-10-26 17:00:00'),
(48, 'IC117', 'Budapest', 'Debrecen', '2025-10-26 17:45:00', '2025-10-26 21:00:00'),
(49, 'IC118', 'Debrecen', 'Nyíregyháza', '2025-10-26 06:00:00', '2025-10-26 08:00:00'),
(50, 'IC119', 'Szolnok', 'Debrecen', '2025-10-26 14:00:00', '2025-10-26 17:00:00'),
(51, 'IC120', 'Veszprém', 'Győr', '2025-10-26 13:00:00', '2025-10-26 17:00:00'),
(52, 'IC121', 'Budapest', 'Győr', '2025-10-26 12:15:00', '2025-10-26 16:15:00'),
(53, 'IC122', 'Szolnok', 'Debrecen', '2025-10-26 15:00:00', '2025-10-26 17:00:00'),
(54, 'IC123', 'Budapest', 'Debrecen', '2025-10-26 10:45:00', '2025-10-26 13:00:00'),
(55, 'IC124', 'Pécs', 'Budapest', '2025-10-26 10:30:00', '2025-10-26 12:45:00'),
(56, 'IC125', 'Szeged', 'Budapest', '2025-10-26 15:15:00', '2025-10-26 19:45:00'),
(57, 'IC126', 'Budapest', 'Debrecen', '2025-10-26 19:00:00', '2025-10-26 22:15:00'),
(58, 'IC127', 'Veszprém', 'Győr', '2025-10-26 13:30:00', '2025-10-26 17:30:00'),
(59, 'IC128', 'Szeged', 'Budapest', '2025-10-26 16:30:00', '2025-10-26 20:00:00'),
(60, 'IC129', 'Eger', 'Budapest', '2025-10-26 18:45:00', '2025-10-26 22:45:00'),
(61, 'IC100', 'Debrecen', 'Nyíregyháza', '2025-10-26 17:30:00', '2025-10-26 21:00:00'),
(62, 'IC101', 'Budapest', 'Debrecen', '2025-10-26 05:45:00', '2025-10-26 09:00:00'),
(63, 'IC102', 'Győr', 'Budapest', '2025-10-26 12:00:00', '2025-10-26 14:00:00'),
(64, 'IC103', 'Budapest', 'Debrecen', '2025-10-26 13:45:00', '2025-10-26 15:15:00'),
(65, 'IC104', 'Budapest', 'Debrecen', '2025-10-26 15:15:00', '2025-10-26 16:30:00'),
(66, 'IC105', 'Szeged', 'Budapest', '2025-10-26 16:45:00', '2025-10-26 20:15:00'),
(67, 'IC106', 'Budapest', 'Debrecen', '2025-10-26 06:45:00', '2025-10-26 10:00:00'),
(68, 'IC107', 'Szeged', 'Budapest', '2025-10-26 08:45:00', '2025-10-26 10:15:00'),
(69, 'IC108', 'Debrecen', 'Nyíregyháza', '2025-10-26 08:00:00', '2025-10-26 12:00:00'),
(70, 'IC109', 'Szeged', 'Budapest', '2025-10-26 15:45:00', '2025-10-26 17:45:00'),
(71, 'IC110', 'Győr', 'Budapest', '2025-10-26 09:00:00', '2025-10-26 11:30:00'),
(72, 'IC111', 'Veszprém', 'Győr', '2025-10-26 08:15:00', '2025-10-26 12:30:00'),
(73, 'IC112', 'Győr', 'Sopron', '2025-10-26 07:15:00', '2025-10-26 10:15:00'),
(74, 'IC113', 'Budapest', 'Győr', '2025-10-26 18:15:00', '2025-10-26 22:30:00'),
(75, 'IC114', 'Szeged', 'Budapest', '2025-10-26 09:30:00', '2025-10-26 13:45:00'),
(76, 'IC115', 'Győr', 'Sopron', '2025-10-26 07:00:00', '2025-10-26 09:00:00'),
(77, 'IC116', 'Debrecen', 'Nyíregyháza', '2025-10-26 13:30:00', '2025-10-26 17:00:00'),
(78, 'IC117', 'Budapest', 'Debrecen', '2025-10-26 17:45:00', '2025-10-26 21:00:00'),
(79, 'IC118', 'Debrecen', 'Nyíregyháza', '2025-10-26 06:00:00', '2025-10-26 08:00:00'),
(80, 'IC119', 'Szolnok', 'Debrecen', '2025-10-26 14:00:00', '2025-10-26 17:00:00'),
(81, 'IC120', 'Veszprém', 'Győr', '2025-10-26 13:00:00', '2025-10-26 17:00:00'),
(82, 'IC121', 'Budapest', 'Győr', '2025-10-26 12:15:00', '2025-10-26 16:15:00'),
(83, 'IC122', 'Szolnok', 'Debrecen', '2025-10-26 15:00:00', '2025-10-26 17:00:00'),
(84, 'IC123', 'Budapest', 'Debrecen', '2025-10-26 10:45:00', '2025-10-26 13:00:00'),
(85, 'IC124', 'Pécs', 'Budapest', '2025-10-26 10:30:00', '2025-10-26 12:45:00'),
(86, 'IC125', 'Szeged', 'Budapest', '2025-10-26 15:15:00', '2025-10-26 19:45:00'),
(87, 'IC126', 'Budapest', 'Debrecen', '2025-10-26 19:00:00', '2025-10-26 22:15:00'),
(88, 'IC127', 'Veszprém', 'Győr', '2025-10-26 13:30:00', '2025-10-26 17:30:00'),
(89, 'IC128', 'Szeged', 'Budapest', '2025-10-26 16:30:00', '2025-10-26 20:00:00'),
(90, 'IC129', 'Eger', 'Budapest', '2025-10-26 18:45:00', '2025-10-26 22:45:00');

-- --------------------------------------------------------



-- Jegy tábla

CREATE TABLE `jegy` (
  `jegy_id` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `jarat_id` int(11) NOT NULL,
  `ar` decimal(10,2) NOT NULL,
  `ervenyes_datum` date NOT NULL,
  `ulohely` varchar(10) DEFAULT NULL,
  `vasarlas_datuma` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- -------------------------------------------------------



-- Menetrend tábla

CREATE TABLE `menetrend` (
  `menetrend_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `jarat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

INSERT INTO `menetrend` (`menetrend_id`, `datum`, `jarat_id`) VALUES
(1, '2025-10-26', 1);

-- ------------------------------------------------------


-- Kulcsok beállítása

ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`felhasznalo_id`),
  ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `jarat`
  ADD PRIMARY KEY (`jarat_id`);

ALTER TABLE `jegy`
  ADD PRIMARY KEY (`jegy_id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`),
  ADD KEY `jarat_id` (`jarat_id`);

ALTER TABLE `menetrend`
  ADD PRIMARY KEY (`menetrend_id`),
  ADD KEY `jarat_id` (`jarat_id`);

-- -------------------------------------------------------



-- AUTO_INCREMENT(automatikusan növekednek az indexek)

ALTER TABLE `felhasznalo`
  MODIFY `felhasznalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `jarat`
  MODIFY `jarat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

ALTER TABLE `jegy`
  MODIFY `jegy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `menetrend`
  MODIFY `menetrend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

-- -------------------------------------------------------------


-- Dele, Cascade, Update

ALTER TABLE `jegy`
  ADD CONSTRAINT `jegy_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalo` (`felhasznalo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jegy_ibfk_2` FOREIGN KEY (`jarat_id`) REFERENCES `jarat` (`jarat_id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `menetrend`
  ADD CONSTRAINT `menetrend_ibfk_1` FOREIGN KEY (`jarat_id`) REFERENCES `jarat` (`jarat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- Készítette: Géczi Zsófia
