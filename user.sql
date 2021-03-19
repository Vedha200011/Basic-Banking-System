-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2021 at 01:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `transaction1` (
  `transaction_id` int(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `datetime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans`
--

INSERT INTO `transaction1` (`transaction_id`, `sender`, `reciever`, `amount`, `datetime`) VALUES
(1, 'Vedhashree Naik', 'Divita phadakle', 100, '2021-01-14 12:41:48.544309');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user` (`id`, `email`, `balance` , `name1`) VALUES
(1, 'vedhashreenaik2000@gmail.com', 50000, 'Vedhashree Naik'),
(2, 'nidhimishra301001@hotmail.com', 30000, 'Nivedita Mishra'),
(3, 'kirtimoily0605@hotmail.com', 25473, 'Kirti Moily'),
(4, 'sony34567te@hotmail.com', 93335,'Laxmi Yadav'),
(5, 'anitauniyal20@hotmail.com', 498574, 'Anita uniyal'),
(6, 'tantan93@hotmail.com', 8000000, 'Tanushree Poojary'),
(7, 'naik009800@hotmail.com', 38366, 'yash naik'),
(8, 'mansi74@gmail.com', 9393020, 'Mansi Mistry'),
(9, 'divita45@gmail.com', 83363,'Divita phadakle'),
(10, 'quency@gmail.com', 594549, 'Quency gonsalves');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trans`
--
ALTER TABLE `transaction1`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `transaction1`
  MODIFY `transaction_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;