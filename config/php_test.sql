-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2022 at 12:22 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `php_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `city` text NOT NULL,
  `phone` varchar(13) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `city`, `phone`, `created_at`) VALUES
(1, 'Andrej', 'andrej@mail.test', 'Glasgow', '+421949222333', '2013-09-19 22:20:19'),
(2, 'Juraj', 'juraj@mail.test', 'Praha', '+421949222555', '2013-09-19 22:20:34'),
(3, 'Jožko', 'jozko@mail.test', 'Bratislava', '+421949222777', '2013-09-19 22:21:04'),
(4, 'Peter', 'peter@mail.test', 'Brno', '', '2013-09-19 22:21:17'),
(5, 'Jon', 'jon@mail.test', 'New York', '+421949222999', '2013-09-19 22:21:41'),
(9, 'skdaod', 'as@as.com', 'Slovak', '+421949222333', '2022-01-31 00:07:30'),
(10, 'skdaod', 'as@as.coms', 'Slovak', '+421949222333', '2022-01-31 00:07:48'),
(11, 'skdaod', 'as@as.coms', 'Slovak', '421949222333', '2022-01-31 00:13:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
