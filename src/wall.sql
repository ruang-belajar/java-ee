-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2025 at 11:31 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `wall`
--

CREATE DATABASE IF NOT EXISTS wall DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE wall;

-- --------------------------------------------------------

--
-- Table structure for table `percakapan`
--

DROP TABLE IF EXISTS `percakapan`;
CREATE TABLE `percakapan` (
  `id` int(11) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `percakapan`
--
ALTER TABLE `percakapan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `percakapan`
--
ALTER TABLE `percakapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;