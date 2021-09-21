-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2021 at 12:13 AM
-- Server version: 10.5.9-MariaDB-1
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ychat`
--

-- --------------------------------------------------------

--
-- Table structure for table `ychat_bans`
--

CREATE TABLE `ychat_bans` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ychat_images`
--

CREATE TABLE `ychat_images` (
  `id` int(1) NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ychat_invitations`
--

CREATE TABLE `ychat_invitations` (
  `userID` int(10) UNSIGNED NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ychat_messages`
--

CREATE TABLE `ychat_messages` (
  `id` int(11) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `text` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ychat_online`
--

CREATE TABLE `ychat_online` (
  `userID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin NOT NULL,
  `userRole` int(1) NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `dateTime` datetime NOT NULL,
  `ip` varbinary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ychat_bans`
--
ALTER TABLE `ychat_bans`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Indexes for table `ychat_images`
--
ALTER TABLE `ychat_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ychat_invitations`
--
ALTER TABLE `ychat_invitations`
  ADD PRIMARY KEY (`userID`,`channel`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Indexes for table `ychat_messages`
--
ALTER TABLE `ychat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_condition` (`id`,`channel`,`dateTime`),
  ADD KEY `dateTime` (`dateTime`);

--
-- Indexes for table `ychat_online`
--
ALTER TABLE `ychat_online`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ychat_images`
--
ALTER TABLE `ychat_images`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ychat_messages`
--
ALTER TABLE `ychat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
