-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2019 at 11:56 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ez_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `authorId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorId`, `name`) VALUES
(1, 'Chris Smith'),
(2, 'Steven Levithan'),
(4, 'Ryan Benedetti'),
(6, 'Clay Breshears'),
(7, 'Kevlin Henney'),
(12, 'E. Masiulis'),
(13, 'R. Kurlianskis'),
(14, 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `authorsnbooks`
--

DROP TABLE IF EXISTS `authorsnbooks`;
CREATE TABLE IF NOT EXISTS `authorsnbooks` (
  `booksID` int(11) DEFAULT NULL,
  `authorsID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `authorsnbooks`
--

INSERT INTO `authorsnbooks` (`booksID`, `authorsID`) VALUES
(20, 12),
(20, 13),
(1, 1),
(2, 2),
(3, 4),
(4, 6),
(5, 7),
(6, 14),
(7, 14),
(8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `title`, `year`) VALUES
(1, 'Programming F# 3.0, 2nd Edition', 2012),
(2, 'Regular Expressions Cookbook, 2nd Edition', 2012),
(3, 'Head First Networking', 2009),
(4, 'The Art of Concurrency', 2009),
(5, '97 Things Every Programmer Should Know', 2010),
(6, 'McCullough and Berglund on Mastering Advanced Git', NULL),
(7, 'Version Control with Git, 2nd Edition', 2012),
(8, 'Learning Python, 4th Edition', 2009),
(17, 'Lietuvos Futbolas', 2020),
(18, 'Megstu kava', 2010),
(19, 'Tremtinio Kelias', 2000),
(20, '90 000 eurų', 2016);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
