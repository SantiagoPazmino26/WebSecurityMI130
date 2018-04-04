-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2014 at 11:33 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `last_log_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `last_log_date`) VALUES
(1, 'san', 'password', '2018-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `password`, `name`,  `mobile`,  `address`, `city`, `state`) VALUES
(1,'user@gmail.com','pass', 'User',  '9704159596',  'Grenstrasse', 'Kiel', 'Germany'),
(12,'blacksantzero@gmail.com','santiago', 'Santiago',  '9704159593',  'Grenstrasse', 'Kiel', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE IF NOT EXISTS `customer_cart` (
`cartid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer_cart`
--

INSERT INTO `customer_cart` (`cartid`, `productid`, `customerid`, `product_name`, `details`, `price`, `quantity`, `date_added`) VALUES
(4, 19, 11, 'Puma Contest Lite Sneakers', 'Puma Shoes at cheap Price', 28.99, 1, '2014-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `details` text NOT NULL,
  `category` varchar(16) NOT NULL,
  `subcategory` varchar(16) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `details`, `category`, `subcategory`, `date_added`) VALUES
(19, 'Puma Contest Lite Sneakers', 28.99, 'Puma Shoes at cheap Price', 'Clothing', '', '2014-11-10'),
(20, 'Diesel Magnete Boots', 199, 'High quality shoes from Diesel designed for YOU.', 'Clothing', '', '2014-11-10'),
(21, 'Clarks Newton Energy Boat Shoes', 18.65, 'Very Cheap Shoes.', 'Footwear', '', '2014-11-10'),
(22, 'Puma Drifter Road III Flip Flops', 9.99, 'Amazing made for you.', 'Footwear', '', '2014-11-10'),
(24, 'Uditva Men''s Churidar & Kurta Set', 12.75, 'Traditional Wear', 'Clothing', '', '2014-11-10'),
(25, 'Platinum Studio Solid Men''s Waistcoat', 14.99, 'Solid Men''s Waistcoat', 'Clothing', '', '2014-11-10'),
(26, 'Fastrack Sports Analog Watch', 25, 'Analog Watch - For Men', 'Watches', '', '2014-11-10'),
(27, 'Fossil NATE Analog Watch', 25.45, 'Fossil NATE Analog Watch - For Men', 'Watches', '', '2014-11-10'),
(28, 'Martian Notifier Smart Watch', 43.54, 'Martian Notifier Smart Watch from Switzerland', 'Watches', '', '2014-11-10'),
(29, 'Butterflies Perforated Design Hand Bag', 100, 'Butterflies Perforated Design Hand Bag', 'HandBag', '', '2014-11-10'),
(30, 'Butterflies Elegant Hand Bag', 120.99, 'Butterflies Elegant Hand Bag', 'HandBag', '', '2014-11-10'),
(31, 'Butterflies Laser Cut Hand Bag', 58.34, 'Butterflies Laser Cut Designer Hand Bag', 'HandBag', '', '2014-11-10'),
(32, 'Anna Andre Paris Pure Eau de Toilette - 100 ml', 45.99, 'Anna Andre Paris Pure Eau de Toilette - 100 ml', 'Perfumes', '', '2014-11-10'),
(33, 'Elizabeth Arden Beauty Eau de Toilette - 100 ml', 15.54, 'Elizabeth Arden Beauty Eau de Toilette - 100 ml', 'Perfumes', '', '2014-11-10'),
(34, 'Davidoff Cool Water Eau de Toilette', 12.87, 'Davidoff Cool Water Eau de Toilette', 'Perfumes', '', '2014-11-10'),
(35, 'Paco Rabanne Black XS Eau de Toilette', 134, 'Paco Rabanne Black XS Eau de Toilette', 'Perfumes', '', '2014-11-10'),
(36, 'BlueStone The Carysa Gold Diamond, Peridot Ring', 134.99, 'BlueStone The Carysa Gold Diamond, Peridot Ring', 'Jewellery', '', '2014-11-10'),
(37, 'CaratLane Fiore Rose Gold Necklace', 456.67, 'CaratLane Fiore Rose Gold Necklace', 'Jewellery', '', '2014-11-10'),
(38, 'CaratLane La FoisFor Her Gold Diamond Ring', 256.87, 'CaratLane La FoisFor Her Gold Diamond Ring', 'Jewellery', '', '2014-11-10'),
(39, 'Spiky Stylish Wayfarer Sunglasses', 10, 'Spiky Stylish Wayfarer Sunglasses', 'Sunglasses', '', '2014-11-10'),
(40, 'EYELOVEYOU Over-sized Sunglasses', 20, 'EYELOVEYOU Over-sized Sunglasses', 'Sunglasses', '', '2014-11-10'),
(41, 'Angel Glitter Purple Rainbow, Blue Bow Kids Wayfarer Sunglasses', 25, 'Angel Glitter Purple Rainbow, Blue Bow Kids Wayfarer Sunglasses', '', '', '2014-11-10'),
(42, 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', 5, 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', 'EBooks', '', '2014-11-10'),
(43, 'The Lost Hero (Heroes of Olympus Book 1)', 16, 'The Lost Hero (Heroes of Olympus Book 1)', 'EBooks', '', '2014-11-10'),
(44, 'The Monk Who Sold His Ferrari', 15, 'The Monk Who Sold His Ferrari: A Fable About Fulfilling Your Dreams & Reaching Your Destiny', 'Clothing', '', '2014-11-10'),
(45, 'The Kill List', 25, 'The Kill List', 'EBooks', '', '2014-11-10'),
(46, 'Divergent', 20.99, 'Divergent', 'DVD', '', '2014-11-10'),
(47, 'Frozen', 40.55, 'Frozen Animation', 'DVD', '', '2014-11-10'),
(48, 'The Sound Of Music', 21.65, 'The Sound Of Music (45th Anniversary Edition)', 'DVD', '', '2014-11-10'),
(49, 'Pokemon Alpha Sapphire', 35.75, 'Pokemon Alpha Sapphire', 'Gaming', '', '2014-11-10'),
(50, 'Ultimate Action Triple Pack', 25.99, 'Ultimate Action Triple Pack (Includes 3 Games)', 'Gaming', '', '2014-11-10'),
(51, 'Total War: Rome II', 9.99, 'Total War: Rome II', 'Gaming', '', '2014-11-10');

--
-- Table structure for table `cookies`
--

CREATE TABLE IF NOT EXISTS `cookies` (
`id` int(11) NOT NULL,
  `cookie_user` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `logged_in` boolean NOT NULL,
  `login_expire` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

CREATE TABLE IF NOT EXISTS `order_details` (
`id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `mobile` (`mobile`,`email`);

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
 ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `product_name` (`product_name`);

--
-- Indexes for table `cookies`
--
ALTER TABLE `cookies`
 ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_cart`
--
ALTER TABLE `customer_cart`
MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cookies`
--
ALTER TABLE `cookies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;