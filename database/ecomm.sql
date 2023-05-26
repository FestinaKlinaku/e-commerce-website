-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 04:53 PM
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
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Lips', 'lips'),
(2, 'Eyes', 'eyes'),
(3, 'Face & Cheeks', 'face'),
(4, 'Skincare', 'skincare');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'L\'ORÉAL COLOR RICHE LIPSTICK 377 PERFECT RED', '<p>L\'Oréal Color Riche Lipstick is a longwearing lipstick with an intense color and a velvet finish. Shade: 377 Perfect Red.</p>\r\n\r\n<p>Intense and ultra-pigmented, L\'Oréal Color Riche Lipstick has a variety of color for any time and occasion.</p>\r\n', 'lorealcolorrichebatom377perfectred_1', 17.09, 'lorealcolorrichebatom377perfectred_1.jpg', '2023-05-26', 5),
(2, 1, 'MAYBELLINE NY COLOR SENSATIONAL MADE FOR ALL LIPSTICK 382 RED FOR ME', '<p>Maybelline Color Sensational Made For All is a long-lasting creamy lipstick with vibrant and universal color for smooth and plumped lips. Shade: 382 Red For Me.</p>\r\n\r\n<p>Available in various universal colors, Maybelline Color Sensational Made For All perfectly adapts to all complexion types.</p>\r\n', 'maybellinecolorsensationalmadeforall382red_1', 13.38, 'maybellinecolorsensationalmadeforall382red_1.jpg', '2023-05-26', 4),
(3, 1, 'L\'ORÉAL PARIS ROUGE SIGNATURE LIQUID LIPSTICK 112 I ACHIEVE 7ML', '<p>L\'Oréal Rouge Signature Liquid Lipstick is a liquid lipstick with a vibrant color and a matte finish. Shade: 112 I Achieve.</p>\r\n\r\n<p>With a variety of sweet and vibrant shades, L\'Oréal Rouge Signature Liquid Lipstick adds an irresistible, comfortable and longwearing color to the lips.</p>\r\n', 'lorealrougesignature112iachieve_2', 13.78, 'lorealrougesignature112iachieve_2.jpg', '2023-05-26', 6),
(4, 1, 'MAC RETRO MATTE LIQUID LIPCOLOUR ATOMIZED', '<p>With a matte finish, MAC Retro Matte Liquid Lipcolour is a longwearing liquid lipstick that provides intensely saturated pigmentation.</p>\r\n\r\n<p>MAC Retro Matte Liquid Lipcolour offers 2 finishes: matte and metallic matte. Its velvety texture ensures a comfortable finish that lasts up to 8 hours.</p>\r\n', 'macretromattelipcolour_atomized_1', 28.16, 'macretromattelipcolour_atomized_1.jpg', '2023-05-26', 3),
(5, 3, 'L\'ORÉAL PARIS INFAILLIBLE 24H FRESH WEAR LIQUID FOUNDATION 180 ROSE SAND 30ML', '<p>L\'Oréal Infaillible 24h Foundation is a fresh wear liquid foundation, with longwear full coverage, for flawless skin that looks fresh all day. Shade: 180 Rose Sand.</p>\r\n\r\n<p>Providing full coverage, L\'Oréal Infaillible 24h Foundation covers imperfections, leaving the complexion with a fresh and lightweight feel.</p>\r\n', 'lorealinfaillible24hbase180rosesand_1', 20.27, 'lorealinfaillible24hbase180rosesand_1.jpg', '2023-05-26', 4),
(6, 1, 'L\'ORÉAL PARIS ROUGE SIGNATURE LIQUID LIPSTICK 104 I REBEL 7ML', '<p>L\'Oréal Rouge Signature Liquid Lipstick is a liquid lipstick with a vibrant color and a matte finish. Shade: 104 I Rebel.</p>\r\n\r\nWith a variety of sweet and vibrant shades, L\'Oréal Rouge Signature Liquid Lipstick adds an irresistible, comfortable and longwearing color to the lips.</p>\r\n', 'lorealrougesignature104irebel_1', 13.78, 'lorealrougesignature104irebel_1.jpg', '2023-05-26', 2),
(7, 3, 'L\'ORÉAL PARIS INFAILLIBLE 24H FRESH WEAR FOUNDATION IN A POWDER 130 TRUE BEIGE 9G', '<p>L\'Oréal Infaillible 24h Fresh Wear Foundation in a Powder is a mattifying compact powder foundation with high coverage and long-wearing, for a skin free of shine and imperfections all day. Shade 130 True Beige.</p>\r\n\r\n<p>With high coverage, L\'Oréal Infaillible 24h Fresh Wear Foundation in a Powder covers imperfections and reduces shine, leaving the complexion matte and soft.</p>\r\n', 'lorealinfaillible24freshwearpo130truebeige_1', 18.25, 'lorealinfaillible24freshwearpo130truebeige_1.jpg', '2023-05-26', 0),
(8, 2, 'MAYBELLINE TATTOO LINER 921 DEEP TEAL 1.3G', '<p>Maybelline Tattoo Liner is a long-wearing eyeliner pencil for an intense look. Shade: 921 Deep Teal.</p>\r\n\r\n<p>In a blendable gel texture, Maybelline Tattoo Liner defines the eyes and provides an intense color for up to 36h.</p>\r\n', 'maybellinetattoolinerlapisdeepteal_1', 12.79, 'maybellinetattoolinerlapisdeepteal_1.jpg', '2023-05-26', 3),
(9, 2, 'MAYBELLINE TATTOO BROW 36H EYEBROW PENCIL 02 BLONDE', '<p>Maybelline Tattoo Brow 36h Eyebrow Pencil is a long-lasting eyebrow pencil with a spooly brush to define and fill in the eyebrows. Shade 02 Blonde.</p>\r\n\r\n<p>Long-wearing, Maybelline Tattoo Brow 36h Eyebrow Pencil allows you to perfectly design and define your eyebrow up to 36h.</p>\r\n', 'maybellinetattoobrow36hblonde_1', 9.34, 'maybellinetattoobrow36hblonde_1.jpg', '2023-05-26', 2),
(10, 2, 'MAYBELLINE TATTOO LINER 932 INTENSE GREEN 1.3G', '<p>Maybelline Tattoo Liner is a long-wearing eyeliner pencil for an intense look. Shade: 932 Intense Green.</p>\r\n\r\n<p>In a blendable gel texture, Maybelline Tattoo Liner defines the eyes and provides an intense color for up to 36h.</p>\r\n', 'maybellinetattoolinerlapisintensegreen_1', 11.35, 'maybellinetattoolinerlapisintensegreen_1.jpg', '2023-05-26', 2),
(11, 2, 'MAYBELLINE TATTOO LINER 940 RICH AMETHYST 1.3G', '<p>Maybelline Tattoo Liner is a long-wearing eyeliner pencil for an intense look. Shade: 940 Rich Amethyst.</p>\r\n\r\n<p>In a blendable gel texture, Maybelline Tattoo Liner defines the eyes and provides an intense color for up to 36h.</p>\r\n', 'maybellinetattoolinerlapisrichametyst_1', 11.35, 'maybellinetattoolinerlapisrichametyst_1.jpg', '2023-05-26', 4),
(12, 3, 'APIVITA AQUA BEELICIOUS TINTED HYDRATING FLUID SPF30 40ML', '<p>Formulated with 85% naturally derived ingredients, Apivita Aqua Beelicious Tinted Moisturizing Fluid SPF30 hydrates and perfects skin.</p>\r\n\r\n<p>This lightweight moisturizing fluid provides long-lasting protection against UVA, UVB and blue light rays, while helping to camouflage imperfections thanks to natural pigments.</p>\r\n\r\n<p>Ideal for all skin types.</p>\r\n', '7266106-apivita_aqua_beelicious_hydrating_fluid_tinted_cream_spf30_40ml', 20.67, '7266106-apivita_aqua_beelicious_hydrating_fluid_tinted_cream_spf30_40ml.jpg', '2023-05-26', 1),
(13, 4, 'VICHY MINERAL 89 72H MOISTURE BOOSTING CREAM 50ML', '<p>Just like the much-loved serum, Vichy Mineral 89 72h Moisture Boosting Cream is a cream that contains hyaluronic acid and Vichy volcanic water, a powerful duo to intensely moisturize and protect the skin against daily aggressions.</p>\r\n\r\n<p>Light and fresh, this cream combats skin dehydration caused mainly by daily external aggressions, which cause the skin to lose water, minerals, lipids, vitamins and hyaluronic acid.</p>\r\n\r\n<p>Ideal for all skin types.</p>\r\n', '7249326-vichymineral89cremeligeiro_1_', 24.96, '7249326-vichymineral89cremeligeiro_1_.jpg', '2023-05-26', 1),
(14, 4, 'LA ROCHE POSAY HYDRAPHASE HA UV SPF25 LIGHT MOISTURIZER 40ML', '<p>La Roche Posay Hydraphase HA UV Light is a long-lasting moisturizing light care, with filling effect and sun protection, for normal to combination skin, even the most sensitive.</p>\r\n\r\n<p>With an intensive action, La Roche Posay Hydraphase HA UV Light gives the skin 72 hours of hydration, leaving it plumped and luminous.</p>\r\n', '7260802-larocheposayhydraphaseligeirauv50ml', 20.49, '7260802-larocheposayhydraphaseligeirauv50ml.jpg', '2023-05-26', 6),
(15, 4, 'LA ROCHE POSAY HYALU B5 EYE SERUM 15ML', '<p>La Roche Posay Hyalu B5 Eye Serum&nbsp;is a concentrated repairing, moisturizing and anti-dark circles serum for the eye contour.</p>\r\n\r\n<p>Formulated with maximum efficacy and tolerance, this serum can be used at any time and at any age to hydrate, correct dark circles and fill in wrinkles or fine lines.</p>\r\n\r\n<p>Suitable for the most sensitive eye contours.</p>\r\n', 'la-roche-posay-hyalu-b5-eye-serum-15ml', 32.49, 'la-roche-posay-hyalu-b5-eye-serum-15ml.jpg', '2023-05-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2023-05-27'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2023-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', '', '', '', 'avatar.png', 1, '', '', '2023-05-20'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2023-05-24'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'Becker', 'Bacolod City, Negros Island', '7542214500', 'female3.jpg', 1, '', '', '2023-05-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;