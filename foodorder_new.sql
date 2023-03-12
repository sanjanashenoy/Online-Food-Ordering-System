-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 03:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('Raksh', 'Rakshita', 'raksh@gmail.com', '7896547890', 'RR Nagar,Bangalore', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(80, 'Open Butter Masala Dosa', 100, 'Potato masala smeared generously all over the dosa and topped with butter ', 7, 'images/dosa_kai.jpeg', 'ENABLE'),
(82, 'Chole Bhature', 120, 'A combination of chana masala (spicy white chickpeas) and bhatura/puri, a fried bread made from maida', 7, 'images/chole_kai.jpeg', 'ENABLE'),
(83, 'Idly', 60, 'Idli is a soft, pillowy steamed savory cake made from rice and lentil batter. ', 7, 'images/idly_kai.jpeg', 'ENABLE'),
(84, 'Coffee', 30, 'Beverage brewed from the roasted and ground seeds of the tropical evergreen coffee plants of African origin.', 7, 'images/coffee_kai.jpeg', 'ENABLE'),
(85, 'Tea', 30, 'Tea is an aromatic beverage prepared by pouring hot or boiling water over cured or fresh leaves of Camellia sinensis', 7, 'images/tea_kai.jpeg', 'ENABLE'),
(86, 'Waffle', 170, 'Waffle, crisp raised cake baked in a waffle iron', 8, 'images/waffle_pie.jpeg', 'ENABLE'),
(87, 'Pancakes', 200, 'A pancake is a thin, flat, circular piece of cooked batter made from milk, flour, and eggs.', 8, 'images/pancake_pie.jpeg', 'ENABLE'),
(88, 'Sizzling Brownie', 200, 'It is a chocolate brownie with a scoop of ice-cream on top served with a generous pouring of melted chocolate on the ice-cream.', 8, 'images/brownie_pie.jpeg', 'ENABLE'),
(89, 'Pizza', 300, 'Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients', 8, 'images/pizza_pie.jpeg', 'ENABLE'),
(90, 'Veg Burger', 150, 'Delicious burger with crispy and spicy paneer patty', 8, 'images/burger_pie.jpeg', 'ENABLE'),
(92, 'Pasta', 170, 'Marinara and Alfredo Sauce mixed together with Penne', 9, 'images/pasta_ross.jpeg', 'ENABLE'),
(93, 'Noodles', 190, 'Flavorful noodles tossed with vegetables.', 9, 'images/noodles_ross.jpeg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('Joshita', 'Joshita ', 'joshita.atmakuri@gmail.com', '9802927828', 'Bangalore', '123'),
('Pai', 'Adithya Pai', 'pai@gmail.com', '8765945679', 'Jayanagar,Bangalore', '123'),
('Ross', 'Ross', 'ross@gmail.com', '9876078548', 'Church Street', '123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(69, 80, 'Open Butter Masala Dosa', 100, 1, '2022-01-09', 'Raksh', 7),
(70, 86, 'Waffle', 170, 1, '2022-01-09', 'Raksh', 8),
(71, 93, 'Noodles', 190, 1, '2022-01-09', 'Raksh', 9),
(72, 80, 'Open Butter Masala Dosa', 100, 1, '2022-01-09', 'Raksh', 7),
(73, 86, 'Waffle', 170, 1, '2022-01-09', 'Raksh', 8),
(74, 93, 'Noodles', 190, 2, '2022-01-09', 'Raksh', 9),
(75, 83, 'Idly', 60, 1, '2022-01-09', 'Raksh', 7),
(76, 83, 'Idly', 60, 1, '2022-01-10', 'Raksh', 7),
(77, 83, 'Idly', 60, 1, '2022-01-10', 'Raksh', 7),
(78, 82, 'Chole Bhature', 120, 1, '2022-01-10', 'Raksh', 7),
(79, 82, 'Chole Bhature', 120, 1, '2022-01-10', 'Raksh', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(7, 'Kai Ruchi', 'kairuchi@gmail.com', '9870966800', 'JP Nagar, Bangalore', 'Joshita'),
(8, 'Pai\'s Pies', 'pies@gmail.com', '7890534789', 'Jayanagar,Bangalore', 'Pai'),
(9, 'Ross Cafe', 'ross_cafe@gmail.com', '8769876543', 'Church Street', 'Ross');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
