-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(100) NOT NULL,
  `sender` VARCHAR(100) NOT NULL,
  `receiver` VARCHAR(100) NOT NULL,
  `balance` int(200) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES 
('1', 'puja kumari', 'Jyoti kumari', '1000', '2022-02-15 08:17:18');
('2', 'sapna kumari', 'Ruhi kumari', '4000', '2022-02-15 08:18:18');
('3', 'Rima Bharti', 'Priyanka kumari', '3000', '2022-02-08 08:19:18');
('4', 'Suhani Kumari', 'Ritika Kumari', '5000', '2022-02-16 08:20:18');
 ('5', 'Samay Kumar', 'Suhani Shah', '2000', CURRENT_DATE()'08:21:18');
 ('6', 'Munawar Khuresi', 'Piyush Bansal', '5000', '2022-02-15 08:22:18');
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'sonu', 'sonukumar2435@gmail.com', 5000),
(2, 'sakshi kumari', 'sakshikumari1792007@gmail.com', 3000),
(3, 'nitu', 'nituku2003@gmail.com', 4000);
(4, 'Priyanka', 'priyanka12@gmail.com', 10000),
(5, 'Deepak', 'deepak1298@gmail.com', 50009),
(6, 'Juhi', 'sharmajuhi99@gmail.com', 40100),
(7, 'puja', 'pujak5060@gmail.com', 30000),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
