-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 08:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `desc` varchar(455) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `img` varchar(455) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `desc`, `img`, `userid`, `createdAt`) VALUES
(12, 'hello guys!', '1691730018411John_Cena_July_2018.jpg', 7, '2023-08-11 10:30:18'),
(13, 'how do i look!!!', '1691730059354elon.webp', 10, '2023-08-11 10:30:59'),
(14, 'fsdf', '1691730148058Mark-Zuckerberg-1.avif', 11, '2023-08-11 10:32:28'),
(15, 'spidermannnnn', '1691730197394Kirsten_Dunst_as_Mary_Jane_Watson.jpg', 8, '2023-08-11 10:33:17'),
(16, 'my new car!', '1691730261866car.webp', 9, '2023-08-11 10:34:21'),
(17, 'ygbgyugyuy', '1691731480860Mark-Zuckerberg-1.avif', 7, '2023-08-11 10:54:40'),
(18, 'nk here', '1691731771859IMG_20230725_144920.jpg', 10, '2023-08-11 10:59:31'),
(19, 'hello guysss!!!!', '1692612750100image.jpg', 10, '2023-08-21 15:42:30'),
(20, 'how are you alll', '1694671243255fd2.jpg', 10, '2023-09-14 11:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE IF NOT EXISTS `relationships` (
  `id` int(11) NOT NULL,
  `followerUserId` int(11) NOT NULL,
  `followedUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `followerUserId`, `followedUserId`) VALUES
(1, 7, 8),
(2, 7, 9),
(3, 7, 10),
(4, 7, 11),
(5, 8, 7),
(6, 8, 9),
(7, 8, 10),
(8, 8, 11),
(9, 9, 7),
(10, 9, 8),
(11, 9, 10),
(12, 9, 11),
(13, 10, 7),
(14, 10, 8),
(15, 10, 9),
(16, 10, 11),
(17, 11, 7),
(18, 11, 8),
(19, 11, 9),
(20, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE IF NOT EXISTS `stories` (
  `id` int(11) NOT NULL,
  `img` varchar(455) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(455) NOT NULL,
  `name` varchar(45) NOT NULL,
  `coverPic` varchar(440) DEFAULT NULL,
  `profilePic` varchar(400) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `coverPic`, `profilePic`, `city`, `website`) VALUES
(7, 'john', 'john@gmail.com', '$2a$10$MBBp2QS/Cbd257l976AYOey2uy/zlejzwVHt4gl5s95PaNKIF4jhy', 'john', NULL, NULL, NULL, NULL),
(8, 'marry', 'marry@gmail.com', '$2a$10$YAKjq4nkOZwmkUN9e/oz/upRCsIQn717g4jqYjWJb1o8jMrZsAamC', 'marry', NULL, NULL, NULL, NULL),
(9, 'rahul', 'rahul@gmail.com', '$2a$10$l712EBgAYBhrDOvSXZbWJuBPmx.0ftyJKFmqzKF6BIy5U8efcs80C', 'rahul', NULL, NULL, NULL, NULL),
(10, 'elon', 'elon@gmail.com', '$2a$10$i.qURCakEinwWYolHwzTtO2iKl/zST0K6VJ4hth9Uu2GMdRiZ5o7q', 'elon', 'https://c4.wallpaperflare.com/wallpaper/20/1004/36/car-tesla-motors-tesla-roadster-supercars-wallpaper-preview.jpg', 'https://i.guim.co.uk/img/media/9c9b849339c540cff86666967b0e509405713f3b/0_0_3280_1968/master/3280.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=1353e53bf26edffa45793a8679f60977', NULL, NULL),
(11, 'mark', 'mark@gmail.com', '$2a$10$.LAYs6r/GE5H7VyPSI77XeDoizBbgfZafECnpWqqwxStjFxCglOOq', 'mark', 'https://c4.wallpaperflare.com/wallpaper/20/1004/36/car-tesla-motors-tesla-roadster-supercars-wallpaper-preview.jpg', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postid_idx` (`postid`),
  ADD KEY `commentUserid_idx` (`userid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likeUserId_idx` (`userid`),
  ADD KEY `likePostId_idx` (`postid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid_idx` (`userid`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followerUser_idx` (`followerUserId`),
  ADD KEY `followedUser_idx` (`followedUserId`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storyUserId_idx` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `commentUserid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postid` FOREIGN KEY (`postid`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likePostId` FOREIGN KEY (`postid`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likeUserId` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relationships`
--
ALTER TABLE `relationships`
  ADD CONSTRAINT `followedUser` FOREIGN KEY (`followedUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followerUser` FOREIGN KEY (`followerUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `storyUserId` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;