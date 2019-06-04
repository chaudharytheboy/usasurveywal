-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2019 at 03:18 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostingadmin_usawal`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `regular_price` varchar(100) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `review_users` int(11) DEFAULT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `url_1` varchar(255) DEFAULT NULL,
  `url_2` varchar(255) DEFAULT NULL,
  `img_popular` varchar(250) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `product_price`, `regular_price`, `shipping`, `quantity`, `images`, `review_users`, `reviews`, `url_1`, `url_2`, `img_popular`, `ct_dt`) VALUES
(1, 'Garcinia Nature\'s SlimÂ©', 'The Naturally Effective Solution To Healthy Fat Loss!', '145.99', '0.00', '4.95', 3, 'images/products_image/keto1.png', 821, 'images/5-star.png', 'https://regalketo.com/success/v2/?AFID=TAN&SID=2650&click_id=247216264', '', '', '2019-05-14 06:40:46'),
(2, '100% Organic CBD OilÂ©', 'Clinically validated to help relieve chronic pain, combat cancer, lower blood sugar, and reduce stress &amp; anxiety!', '70.95', '0.00', '4.95', 1, 'images/products_image/cbd_new19_2.png', 611, 'images/4-half-star.png', 'https://illuminatitrk.com/?a=6224&c=103967&s1={affiliate_id}&s2={transaction_id}', '', '', '2019-05-11 11:00:43'),
(3, '30-Day Anti-Aging Serum Â©', 'Scientifically proven deep-moisturizing cream easily erases wrinkles and fine lines. Better than botox!', '129.97', '0.00', '4.95', 2, 'images/products_image/srvyskin2.png', 694, 'images/5-star.png', 'https://track.clickbooth.com/c/aff?lid=607250&subid1={affiliate_id}&s2={transaction_id}', '', '', '2019-05-13 10:23:48'),
(4, 'PaltroxRXÂ© Male Enhancement Formula', 'Medical strength specially formulated male enhancement pills to help you get bigger & last longer!', '109.95', '0.00', '4.95', 5, 'images/products_image/me_new19_2.jpg', 880, 'images/5-star.png', 'https://india.doctorhealth.co.in/?clickid=5cda6355befb2900013fbca3&source=545', '', '', '2019-05-14 06:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `ct_dt`) VALUES
(1, 'amzus@crm.com', 'Admin@1', '2019-04-19 05:23:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
