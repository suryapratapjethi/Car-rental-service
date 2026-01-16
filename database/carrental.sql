-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2025 at 08:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Wagon R', 'KA19MG9910', 'assets/img/cars/wagon-r.png', 10, 8, 2000, 1600, 'yes'),
(2, 'Alto 800', 'MH20GH9452', 'assets/img/cars/alto-800.png', 9, 7, 1800, 1400, 'yes'),
(3, 'Innova', 'GA16NM9125', 'assets/img/cars/Innova.png', 13, 11, 2600, 2200, 'yes'),
(4, 'Ford Figo', 'GJ17HZ4001', 'assets/img/cars/figo.png', 11, 9, 2200, 1800, 'yes'),
(6, 'Mahindra Bolero', 'KL18MJ8472', 'assets/img/cars/bolero.jpg', 15, 13, 3000, 2600, 'yes'),
(7, 'Honda Amaze', 'PJ16YX8820', 'assets/img/cars/amaze.png', 14, 12, 2800, 2400, 'no'),
(8, 'Tata Nexon', 'WB15EX5005', 'assets/img/cars/nexon.jpg', 12, 10, 2400, 2000, 'yes'),
(9, 'Swift Dzire', 'BR01HX8001', 'assets/img/cars/dzire.png', 10, 8, 2000, 1600, 'yes'),
(10, 'Suzuki Ciaz', 'TN17MS1997', 'assets/img/cars/Suzuki_Ciaz_2017.jpg', 12, 10, 2400, 2000, 'yes'),
(11, 'Mahindra XUV 500', 'KA12EX1883', 'assets/img/cars/Mahindra XUV.jpg', 15, 13, 3000, 2600, 'yes'),
(12, 'Toyota Fortuner', 'GA08MX1997', 'assets/img/cars/Fortuner.png', 16, 14, 3200, 2800, 'yes'),
(13, 'Suzuki Ertiga', 'MH02DC1997', 'assets/img/cars/maruti-suzuki-ertiga.jpg', 14, 12, 2800, 2400, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'surya'),
(2, 'surya'),
(3, 'surya'),
(4, 'surya'),
(6, 'surya'),
(7, 'surya'),
(8, 'surya'),
(9, 'surya'),
(10, 'surya'),
(11, 'surya'),
(12, 'surya'),
(13, 'surya');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('surya', 'Surya Pratap', '7735391440', 'surjyapratap2002@gmail.co', 'Odisha', 'surya7735');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('diwakar', 'Diwakar Vignesh', '9412578632', 'diwakar@gmail.com', 'Patna', 'root'),
('rakshith', 'Rakshith Kotian', '9541257862', 'rakshith@gmail.com', 'Surat', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Ravi Moolya', 'DL_TEH5974', '9547863157', 'Odisha', 'Male', 'surya', 'yes'),
(2, 'Nikitha Ghetia', 'DL_NDC7584', '9147523684', 'Odisha', 'Female', 'surya', 'yes'),
(3, 'S M Adil', 'DL_LSC8451', '9147523682', 'Odisha', 'Male', 'surya', 'yes'),
(4, 'Sona Somshekar', 'DL_MND8415', '9187563240', 'Odisha', 'Female', 'surya', 'no'),
(5, 'Aditi Naik', 'DL_GAX9452', '7584960123', 'Odisha', 'Female', 'surya', 'yes'),
(6, 'Sudarshan Shetty', 'DL_YSH9542', '8421025476', 'Odisha', 'Male', 'surya', 'yes'),
(7, 'Jugal Chauhan', 'DL_XEC9742', '7541023695', 'Odisha', 'Male', 'surya', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Surya', 'surjyapratp2002@gmail.com', 'Hope this works.'),
('surya', 'surjyapratap2002@gmail.com', 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'diwakar', 4, 2, '2025-07-18', '2025-07-01', '2025-07-02', '2025-07-18', 11, 'km', 244, 1, 5884, 'R'),
(574681246, 'diwakar', 6, 6, '2025-07-18', '2025-06-01', '2025-06-28', '2025-07-18', 15, 'km', 69, 27, 5035, 'R'),
(574681247, 'diwakar', 3, 1, '2025-07-18', '2025-07-19', '2025-07-22', '2025-07-20', 13, 'km', 421, 3, 5473, 'R'),
(574681248, 'rakshith', 1, 2, '2025-07-20', '2025-07-28', '2025-07-29', '2025-07-20', 10, 'km', 69, 1, 690, 'R'),
(574681249, 'rakshith', 1, 2, '2025-07-23', '2025-07-24', '2025-07-27', '2025-07-23', 10, 'km', 500, 1, 5000, 'R'),
(574681250, 'rakshith', 3, 2, '2025-07-23', '2025-07-23', '2025-07-24', '2025-07-23', 2600, 'days', NULL, 1, 2600, 'R'),
(574681251, 'rakshith', 10, 1, '2025-07-23', '2025-07-25', '2025-07-30', '2025-07-23', 10, 'km', 60, 2, 600, 'R'),
(574681252, 'rakshith', 11, 2, '2025-07-23', '2025-07-23', '2025-07-23', '2025-07-23', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'diwakar', 6, 7, '2025-07-23', '2025-07-23', '2025-08-03', '2025-07-23', 2600, 'days', NULL, 11, 28600, 'R'),
(574681254, 'diwakar', 12, 5, '2025-07-23', '2025-07-23', '2025-07-26', '2025-07-23', 3200, 'days', NULL, 3, 9600, 'R'),
(574681255, 'rakshith', 8, 5, '2025-07-23', '2025-07-23', '2025-08-08', '2025-07-23', 2400, 'days', NULL, 16, 38400, 'R'),
(574681257, 'rakshith', 7, 4, '2025-08-11', '2025-08-13', '2025-08-17', NULL, 14, 'km', NULL, NULL, NULL, 'NR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681258;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
