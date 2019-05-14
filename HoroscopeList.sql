-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Värd: localhost
-- Tid vid skapande: 30 apr 2019 kl 13:39
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `HoroscopeList`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `HoroscopeList`
--

CREATE TABLE `HoroscopeList` (
  `id` int(11) NOT NULL,
  `dateFrom` date NOT NULL,
  `dateUntil` date NOT NULL,
  `horoscopeSign` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `HoroscopeList`
--

INSERT INTO `HoroscopeList` (`id`, `dateFrom`, `dateUntil`, `horoscopeSign`) VALUES
(1, '2019-03-21', '2019-04-19', 'Aries'),
(2, '2019-04-20', '2019-05-20', 'Taurus'),
(3, '2019-05-21', '2019-06-20', 'Gemini'),
(4, '2019-06-21', '2019-07-22', 'Cancer'),
(5, '2019-07-23', '2019-08-22', 'Leo'),
(6, '2019-08-23', '2019-09-22', 'Virgo'),
(7, '2019-09-23', '2019-10-22', 'Libra'),
(8, '2019-10-23', '2019-11-21', 'Scorpio'),
(9, '2019-11-22', '2019-12-21', 'Sagittarius'),
(10, '2019-12-22', '2020-01-19', 'Capricorn'),
(11, '2019-01-20', '2019-02-18', 'Aquarius'),
(12, '2019-02-19', '2019-03-20', 'Pisces');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `HoroscopeList`
--
ALTER TABLE `HoroscopeList`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `HoroscopeList`
--
ALTER TABLE `HoroscopeList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
