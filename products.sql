-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2019 at 06:43 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `premise`
--

CREATE TABLE `premise` (
  `id` int(11) NOT NULL,
  `premise_name` varchar(255) NOT NULL,
  `premise_type` int(2) NOT NULL,
  `premise_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `premise`
--

INSERT INTO `premise` (`id`, `premise_name`, `premise_type`, `premise_address`) VALUES
(1, 'PASARAYA PANTAI TIMUR', 1, 'PANTAI TIMUR SHOPPING CENTRE, LOT 3225-3236 JALAN JEDOK, 17500 TANAH MERAH, KELANTAN'),
(2, 'MYDIN WHOLESALE HYPERMARKET KULAI UTAMA', 2, 'MYDIN WHOLESALE HYPERMARKET KULAI UTAMA, LOT 1.18A KULAI HYPERMARKET, JALAN ANGGERIK 8, TAMAN KULAI UTAMA 81000 KULAI JOHOR DARUL TAKZIM');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `premise_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_picture` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_dt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `premise_id`, `product_name`, `product_picture`, `product_price`, `product_qty`, `created_dt`) VALUES
(1, 1, 'OREN VALENCIA (SAIZ M)', 'http://www.infopengguna.com/1pengguna/images/apps/1487.png', '0.40', 1, '02/05/2019'),
(2, 2, 'UBI KENTANG IMPORT (CHINA)', 'http://www.infopengguna.com/1pengguna/images/apps/1131.png', '0.90', 1, '02/05/2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `premise`
--
ALTER TABLE `premise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `premise`
--
ALTER TABLE `premise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
