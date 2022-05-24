-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 24. kvě 2022, 09:10
-- Verze serveru: 10.4.24-MariaDB
-- Verze PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `auction system`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `category`
--

CREATE TABLE `category` (
  `Name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `item`
--

CREATE TABLE `item` (
  `CreatorID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `itembid`
--

CREATE TABLE `itembid` (
  `ItemID` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Description` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `BidItemID` int(11) NOT NULL,
  `BidUserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `itemwatch`
--

CREATE TABLE `itemwatch` (
  `ItemID` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Description` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `WatchItemID` int(11) NOT NULL,
  `WatchUserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `user`
--

CREATE TABLE `user` (
  `Username` varchar(11) NOT NULL,
  `Password` text NOT NULL,
  `Email` varchar(11) NOT NULL,
  `Role` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `user`
--

INSERT INTO `user` (`Username`, `Password`, `Email`, `Role`, `UserID`) VALUES
('test3_sell', '$2y$10$sfrQCZeDivLb3say1Fsqheug8N/mlSyRNcoE1VJ/sJbtjGiKuTsl6', 'a@b.cd', 0, 0),
('test1_buy', '$2y$10$Rb8dScMguX3IL4lhZrextOqKCnHPISNYNZhk3YZi/GNl8Ye0hy7iy', 'a@b.cd', 0, 0),
('test2_buy', '$2y$10$sj3hkVIq3MmrCQMsE1Yrbe7M8TGNgrdxxnBmNpJijEwg7ZQb3sqJu', 'a@b.cd', 0, 0),
('test4_buy', '$2y$10$8NnaqZPOUQIFqbY4KeSVa.EGCk7RNbFCbrhBAu6zrWhbbd8lr0U2y', 'a@b.cd', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
