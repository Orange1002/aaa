-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-24 17:29:51
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `bark_bijou`
--

-- --------------------------------------------------------

--
-- 資料表結構 `gender`
--

CREATE TABLE `gender` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- 資料表結構 `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL,
  `gender_id` int(2) UNSIGNED NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `level_id` tinyint(2) NOT NULL,
  `user_image_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `valid` tinyint(2) NOT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `gender_id`, `account`, `password`, `email`, `phone`, `adress`, `level_id`, `user_image_id`, `created_at`, `valid`, `birth_date`) VALUES
(1, 'Jimmy', 0, 'Jimmy', 'e10adc3949ba59abbe56e057f20f88', 'daha71205@gmail.com', '0975026267', '', 0, 0, '2025-02-21 14:37:09', 1, NULL),
(2, 'Bill', 0, 'Bill', 'e10adc3949ba59abbe56e057f20f88', 'bill@gmail.com', '0936314036', '', 0, 0, '2025-02-21 14:39:04', 1, NULL),
(3, 'eson', 0, 'eson', 'e10adc3949ba59abbe56e057f20f88', 'eson@gmail.com', '0951791210', '', 0, 0, '2025-02-21 15:43:04', 1, NULL),
(4, 'albe', 0, 'albe', 'e10adc3949ba59abbe56e057f20f88', 'albe@gmail.com', '0995112965', '', 0, 0, '2025-02-21 15:46:50', 1, NULL),
(5, 'Laby', 0, 'laby', 'e10adc3949ba59abbe56e057f20f88', 'laby@gmail.com', '0912345678', '', 0, 0, '2025-02-21 13:16:04', 1, NULL),
(6, 'Sophia', 0, 'sophia', '827ccb0eea8a706c4c34a16891f84e', 'sophia@gmail.com', '0936314036', '', 0, 0, '2025-02-21 14:05:05', 1, NULL),
(7, 'John', 0, 'john', '827ccb0eea8a706c4c34a16891f84e', 'john@gmail.com', '0900000000', '', 0, 0, '2025-02-21 14:19:57', 1, NULL),
(8, 'Isabella', 0, 'isabella', '827ccb0eea8a706c4c34a16891f84e', 'isabella@gmail.com', '0975028899', '', 0, 0, '2025-02-21 14:29:02', 1, NULL),
(9, 'Emma', 0, 'emma', '827ccb0eea8a706c4c34a16891f84e', 'emma@outlook.com', '0975080809', '', 0, 0, '2025-02-21 14:30:25', 1, NULL),
(10, 'Robert', 0, 'robert', '827ccb0eea8a706c4c34a16891f84e', 'robert@outlook.com', '0978308096', '', 0, 0, '2025-02-21 14:31:20', 1, NULL),
(11, '', 0, 'olivia', '827ccb0eea8a706c4c34a16891f84e', 'olivia@outlook.com', '', '', 0, 0, '2025-02-21 14:32:10', 1, NULL),
(12, '', 0, 'william', '827ccb0eea8a706c4c34a16891f84e', 'william@outlook.com', '', '', 0, 0, '2025-02-21 14:32:30', 1, NULL),
(13, 'Beau', 0, 'beau', '827ccb0eea8a706c4c34a16891f84e', 'beau@gmail.com', '0974635245', '', 0, 0, '2025-02-24 12:52:53', 1, NULL),
(14, '', 0, 'jasmine', '827ccb0eea8a706c4c34a16891f84e', 'jasmine@gmail.com', '', '', 0, 0, '2025-02-24 12:54:38', 1, NULL),
(15, '', 0, 'omar', '827ccb0eea8a706c4c34a16891f84e', 'omar@gmail.com', '', '', 0, 0, '2025-02-24 12:54:58', 1, NULL),
(16, '', 0, 'hallie', '827ccb0eea8a706c4c34a16891f84e', 'hallie@gmail.com', '', '', 0, 0, '2025-02-24 13:31:39', 1, NULL),
(17, '', 0, 'kenzie', '827ccb0eea8a706c4c34a16891f84e', 'kenzie@gmail.com', '', '', 0, 0, '2025-02-24 13:32:08', 1, NULL),
(18, '', 0, 'rylie', '827ccb0eea8a706c4c34a16891f84e', 'rylie@gmail.com', '', '', 0, 0, '2025-02-24 13:32:31', 1, NULL),
(19, '', 0, 'ethan', '827ccb0eea8a706c4c34a16891f84e', 'ethan@gmail.com', '', '', 0, 0, '2025-02-24 13:33:29', 1, NULL),
(20, '', 0, 'bailey', '827ccb0eea8a706c4c34a16891f84e', 'bailey@gmail.com', '', '', 0, 0, '2025-02-24 13:41:40', 1, NULL),
(21, '', 0, 'timothy', '827ccb0eea8a706c4c34a16891f84e', 'timothy@gmail.com', '', '', 0, 0, '2025-02-24 13:45:52', 1, NULL),
(22, '', 0, 'mariah', '827ccb0eea8a706c4c34a16891f84e', 'mariah@gmail.com', '', '', 0, 0, '2025-02-24 14:06:12', 1, NULL),
(23, '', 0, 'archie', '827ccb0eea8a706c4c34a16891f84e', 'archie@gmail.com', '', '', 0, 0, '2025-02-24 14:06:40', 1, NULL),
(24, '', 0, 'destiny', '827ccb0eea8a706c4c34a16891f84e', 'destiny@gmail.com', '', '', 0, 0, '2025-02-24 14:14:04', 1, NULL),
(25, '', 0, 'avaa', '827ccb0eea8a706c4c34a16891f84e', 'avaa@gmail.com', '', '', 0, 0, '2025-02-24 14:14:48', 1, NULL),
(26, '', 0, 'ayden', '827ccb0eea8a706c4c34a16891f84e', 'ayden@gmail.com', '', '', 0, 0, '2025-02-24 14:15:08', 1, NULL),
(27, '', 0, 'cash', '827ccb0eea8a706c4c34a16891f84e', 'cash@gmail.com', '', '', 0, 0, '2025-02-24 14:15:29', 1, NULL),
(28, '', 0, 'andy', '827ccb0eea8a706c4c34a16891f84e', 'andy@gmail.com', '', '', 0, 0, '2025-02-24 14:16:00', 1, NULL),
(29, '', 0, 'emily', '827ccb0eea8a706c4c34a16891f84e', 'emily@gmail.com', '', '', 0, 0, '2025-02-24 14:16:22', 1, NULL),
(30, '', 0, 'angelina', '827ccb0eea8a706c4c34a16891f84e', 'angelina@gmail.com', '', '', 0, 0, '2025-02-24 14:16:46', 1, NULL),
(31, '', 0, 'weston', '827ccb0eea8a706c4c34a16891f84e', 'weston@gmail.com', '', '', 0, 0, '2025-02-24 14:17:25', 1, NULL),
(32, '', 0, 'jacob', '827ccb0eea8a706c4c34a16891f84e', 'jacob@gmail.com', '', '', 0, 0, '2025-02-24 14:17:39', 1, NULL),
(33, '', 0, 'blair', '827ccb0eea8a706c4c34a16891f84e', 'blair@gmail.com', '', '', 0, 0, '2025-02-24 14:18:09', 1, NULL),
(34, '', 0, 'Kate', '827ccb0eea8a706c4c34a16891f84e', 'Kate@gmail.com', '', '', 0, 0, '2025-02-24 14:18:39', 1, NULL),
(35, '', 0, 'connor', '827ccb0eea8a706c4c34a16891f84e', 'connor@gmail.com', '', '', 0, 0, '2025-02-24 14:19:33', 1, NULL),
(36, '', 0, 'miles', '827ccb0eea8a706c4c34a16891f84e', 'miles@gmail.com', '', '', 0, 0, '2025-02-24 14:19:45', 1, NULL),
(37, '', 0, 'hugo', '827ccb0eea8a706c4c34a16891f84e', 'hugo@gmail.com', '', '', 0, 0, '2025-02-24 14:20:03', 1, NULL),
(38, '', 0, 'michael', '827ccb0eea8a706c4c34a16891f84e', 'michael@gmail.com', '', '', 0, 0, '2025-02-24 14:20:20', 1, NULL),
(39, '', 0, 'faith', '827ccb0eea8a706c4c34a16891f84e', 'faith@gmail.com', '', '', 0, 0, '2025-02-24 14:20:35', 1, NULL),
(40, '', 0, 'millie', '827ccb0eea8a706c4c34a16891f84e', 'millie@gmail.com', '', '', 0, 0, '2025-02-24 14:21:04', 1, NULL),
(41, '', 0, 'vivian', '827ccb0eea8a706c4c34a16891f84e', 'vivian@gmail.com', '', '', 0, 0, '2025-02-24 14:29:10', 1, NULL),
(42, '', 0, 'samuel', '827ccb0eea8a706c4c34a16891f84e', 'samuel@gmail.com', '', '', 0, 0, '2025-02-24 14:30:08', 1, NULL),
(43, '', 0, 'lilly', '827ccb0eea8a706c4c34a16891f84e', 'lilly@gmail.com', '', '', 0, 0, '2025-02-24 14:31:22', 1, NULL),
(44, '', 0, 'julia', '827ccb0eea8a706c4c34a16891f84e', 'julia@gmail.com', '', '', 0, 0, '2025-02-24 14:31:37', 1, NULL),
(45, '', 0, 'jaxx', '827ccb0eea8a706c4c34a16891f84e', 'jax@gmail.com', '', '', 0, 0, '2025-02-24 14:31:53', 1, NULL),
(46, '', 0, 'james', '827ccb0eea8a706c4c34a16891f84e', 'james@gmail.com', '', '', 0, 0, '2025-02-24 14:33:06', 1, NULL),
(47, '', 0, 'curry', '827ccb0eea8a706c4c34a16891f84e', 'curry@gmail.com', '', '', 0, 0, '2025-02-24 14:38:24', 1, NULL),
(48, '', 0, 'harden', '827ccb0eea8a706c4c34a16891f84e', 'harden@gmail.com', '', '', 0, 0, '2025-02-24 14:39:17', 1, NULL),
(49, '', 0, 'adams', '827ccb0eea8a706c4c34a16891f84e', 'adams@gmail.com', '', '', 0, 0, '2025-02-24 14:39:56', 1, NULL),
(50, '', 0, 'morant', '827ccb0eea8a706c4c34a16891f84e', 'morant@gmail.com', '', '', 0, 0, '2025-02-24 14:40:31', 1, NULL),
(51, '', 0, 'durant', '827ccb0eea8a706c4c34a16891f84e', 'durant@gmail.com', '', '', 0, 0, '2025-02-24 14:41:10', 1, NULL),
(52, '', 0, 'allen', '827ccb0eea8a706c4c34a16891f84e', 'allen@gmail.com', '', '', 0, 0, '2025-02-24 14:41:40', 1, NULL),
(53, '', 0, 'beal', '827ccb0eea8a706c4c34a16891f84e', 'beal@gmail.com', '', '', 0, 0, '2025-02-24 14:43:32', 1, NULL),
(54, '', 0, 'books', '827ccb0eea8a706c4c34a16891f84e', 'books@gmail.com', '', '', 0, 0, '2025-02-24 14:44:27', 1, NULL),
(55, '', 0, 'brown', '827ccb0eea8a706c4c34a16891f84e', 'brown@gmail.com', '', '', 0, 0, '2025-02-24 14:44:47', 1, NULL),
(56, '', 0, 'bridges', '827ccb0eea8a706c4c34a16891f84e', 'bridges@gmail.com', '', '', 0, 0, '2025-02-24 14:45:04', 1, NULL),
(57, '', 0, 'bryant', '827ccb0eea8a706c4c34a16891f84e', 'bryant@gmail.com', '', '', 0, 0, '2025-02-24 14:45:38', 1, NULL),
(58, '', 0, 'jordan', '827ccb0eea8a706c4c34a16891f84e', 'jordan@gmail.com', '', '', 0, 0, '2025-02-24 14:46:08', 1, NULL),
(59, '', 0, 'carter', '827ccb0eea8a706c4c34a16891f84e', 'carter@gmail.com', '', '', 0, 0, '2025-02-24 14:46:37', 1, NULL),
(60, '', 0, 'clark', '827ccb0eea8a706c4c34a16891f84e', 'clark@gmail.com', '', '', 0, 0, '2025-02-24 14:47:01', 1, NULL),
(61, '', 0, 'ophelia', '827ccb0eea8a706c4c34a16891f84e', 'ophelia@gmail.com', '', '', 0, 0, '2025-02-24 14:47:24', 1, NULL),
(62, '', 0, 'danna', '827ccb0eea8a706c4c34a16891f84e', 'danna@gmail.com', '', '', 0, 0, '2025-02-24 14:47:53', 1, NULL),
(63, '', 0, 'ella', '827ccb0eea8a706c4c34a16891f84e', 'ella@gmail.com', '', '', 0, 0, '2025-02-24 14:48:14', 1, NULL),
(64, '', 0, 'juliet', '827ccb0eea8a706c4c34a16891f84e', 'juliet@gmail.com', '', '', 0, 0, '2025-02-24 14:48:29', 1, NULL),
(65, '', 0, 'nina', '827ccb0eea8a706c4c34a16891f84e', 'nina@gmail.com', '', '', 0, 0, '2025-02-24 14:49:04', 1, NULL),
(66, '', 0, 'daphne', '827ccb0eea8a706c4c34a16891f84e', 'daphne@gmail.com', '', '', 0, 0, '2025-02-24 14:49:34', 1, NULL),
(67, '', 0, 'abigail', '827ccb0eea8a706c4c34a16891f84e', 'abigail@gmail.com', '', '', 0, 0, '2025-02-24 14:49:56', 1, NULL),
(68, '', 0, 'sara', '827ccb0eea8a706c4c34a16891f84e', 'sara@gmail.com', '', '', 0, 0, '2025-02-24 14:50:13', 1, NULL),
(69, '', 0, 'marcus', '827ccb0eea8a706c4c34a16891f84e', 'marcus@gmail.com', '', '', 0, 0, '2025-02-24 14:50:40', 1, NULL),
(70, '', 0, 'serena', '827ccb0eea8a706c4c34a16891f84e', 'serena@gmail.com', '', '', 0, 0, '2025-02-24 14:51:01', 1, NULL),
(71, '', 0, 'alice', '827ccb0eea8a706c4c34a16891f84e', 'alice@gmail.com', '', '', 0, 0, '2025-02-24 14:51:21', 1, NULL),
(72, '', 0, 'thea', '827ccb0eea8a706c4c34a16891f84e', 'thea@gmail.com', '', '', 0, 0, '2025-02-24 14:51:34', 1, NULL),
(73, '', 0, 'melissa', '827ccb0eea8a706c4c34a16891f84e', 'melissa@gmail.com', '', '', 0, 0, '2025-02-24 14:52:31', 1, NULL),
(74, '', 0, 'molly', '827ccb0eea8a706c4c34a16891f84e', 'molly@gmail.com', '', '', 0, 0, '2025-02-24 14:53:09', 1, NULL),
(75, '', 0, 'talia', '827ccb0eea8a706c4c34a16891f84e', 'talia@gmail.com', '', '', 0, 0, '2025-02-24 14:53:24', 1, NULL),
(76, '', 0, 'ashh', '827ccb0eea8a706c4c34a16891f84e', 'ash@gmail.com', '', '', 0, 0, '2025-02-24 14:53:58', 1, NULL),
(77, '', 0, 'katherine', '827ccb0eea8a706c4c34a16891f84e', 'katherine@gmail.com', '', '', 0, 0, '2025-02-24 14:54:39', 1, NULL),
(78, '', 0, 'sophie', '827ccb0eea8a706c4c34a16891f84e', 'sophie@gmail.com', '', '', 0, 0, '2025-02-24 14:55:42', 1, NULL),
(79, '', 0, 'josephine', '827ccb0eea8a706c4c34a16891f84e', 'josephine@gmail.com', '', '', 0, 0, '2025-02-24 14:55:59', 1, NULL),
(80, '', 0, 'annie', '827ccb0eea8a706c4c34a16891f84e', 'annie@gmail.com', '', '', 0, 0, '2025-02-24 14:56:31', 1, NULL),
(81, '', 0, 'poppy', '827ccb0eea8a706c4c34a16891f84e', 'poppy@gmail.com', '', '', 0, 0, '2025-02-24 14:56:45', 1, NULL),
(82, '', 0, 'ivyy', '827ccb0eea8a706c4c34a16891f84e', 'ivy@gmail.com', '', '', 0, 0, '2025-02-24 14:57:04', 1, NULL),
(83, '', 0, 'clara', '827ccb0eea8a706c4c34a16891f84e', 'clara@gmail.com', '', '', 0, 0, '2025-02-24 14:57:27', 1, NULL),
(84, '', 0, 'crawford', '827ccb0eea8a706c4c34a16891f84e', 'crawford@gmail.com', '', '', 0, 0, '2025-02-24 14:58:08', 1, NULL),
(85, '', 0, 'dante', '827ccb0eea8a706c4c34a16891f84e', 'dante@gmail.com', '', '', 0, 0, '2025-02-24 14:58:33', 1, NULL),
(86, '', 0, 'davis', '827ccb0eea8a706c4c34a16891f84e', 'davis@gmail.com', '', '', 0, 0, '2025-02-24 14:58:52', 1, NULL),
(87, '', 0, 'davison', '827ccb0eea8a706c4c34a16891f84e', 'davison@gmail.com', '', '', 0, 0, '2025-02-24 14:59:14', 1, NULL),
(88, '', 0, 'edwards', '827ccb0eea8a706c4c34a16891f84e', 'edwards@gmail.com', '', '', 0, 0, '2025-02-24 15:01:36', 1, NULL),
(89, '', 0, 'foxx', '827ccb0eea8a706c4c34a16891f84e', 'fox@gmail.com', '', '', 0, 0, '2025-02-24 15:02:03', 1, NULL),
(90, '', 0, 'freeman', '827ccb0eea8a706c4c34a16891f84e', 'freeman@gmail.com', '', '', 0, 0, '2025-02-24 15:02:20', 1, NULL),
(91, '', 0, 'garland', '827ccb0eea8a706c4c34a16891f84e', 'garland@gmail.com', '', '', 0, 0, '2025-02-24 15:02:34', 1, NULL),
(92, '', 0, 'george', '827ccb0eea8a706c4c34a16891f84e', 'george@gmail.com', '', '', 0, 0, '2025-02-24 15:02:51', 1, NULL),
(93, '', 0, 'giddey', '827ccb0eea8a706c4c34a16891f84e', 'giddey@gmail.com', '', '', 0, 0, '2025-02-24 15:03:08', 1, NULL),
(94, '', 0, 'gobert', '827ccb0eea8a706c4c34a16891f84e', 'gobert@gmail.com', '', '', 0, 0, '2025-02-24 15:03:34', 1, NULL),
(95, '', 0, 'chloe', '827ccb0eea8a706c4c34a16891f84e', 'chloe@gmail.com', '', '', 0, 0, '2025-02-24 15:03:48', 1, NULL),
(96, '', 0, 'fiona', '827ccb0eea8a706c4c34a16891f84e', 'fiona@gmail.com', '', '', 0, 0, '2025-02-24 15:04:06', 1, NULL),
(97, '', 0, 'kyrie', '827ccb0eea8a706c4c34a16891f84e', 'kyrie@gmail.com', '', '', 0, 0, '2025-02-24 15:04:25', 1, NULL),
(98, '', 0, 'laura', '827ccb0eea8a706c4c34a16891f84e', 'laura@gmail.com', '', '', 0, 0, '2025-02-24 15:04:40', 1, NULL),
(99, '', 0, 'diana', '827ccb0eea8a706c4c34a16891f84e', 'diana@gmail.com', '', '', 0, 0, '2025-02-24 15:04:59', 1, NULL),
(100, '', 0, 'gracie', '827ccb0eea8a706c4c34a16891f84e', 'gracie@gmail.com', '', '', 0, 0, '2025-02-24 15:05:21', 1, NULL),
(101, '', 0, 'skye', '827ccb0eea8a706c4c34a16891f84e', 'skye@gmail.com', '', '', 0, 0, '2025-02-24 15:05:35', 1, NULL),
(102, '', 0, 'nadia', '827ccb0eea8a706c4c34a16891f84e', 'nadia@gmail.com', '', '', 0, 0, '2025-02-24 15:05:51', 1, NULL),
(103, '', 0, 'iris', '827ccb0eea8a706c4c34a16891f84e', 'iris@gmail.com', '', '', 0, 0, '2025-02-24 15:06:08', 1, NULL),
(104, '', 0, 'zoee', '827ccb0eea8a706c4c34a16891f84e', 'zoe@gmail.com', '', '', 0, 0, '2025-02-24 15:06:21', 1, NULL),
(105, '', 0, 'lucille', '827ccb0eea8a706c4c34a16891f84e', 'lucille@gmail.com', '', '', 0, 0, '2025-02-24 15:07:09', 1, NULL),
(106, '', 0, 'camilla', '827ccb0eea8a706c4c34a16891f84e', 'camilla@gmail.com', '', '', 0, 0, '2025-02-24 15:07:29', 1, NULL),
(107, '', 0, 'jessica', '827ccb0eea8a706c4c34a16891f84e', 'jessica@gmail.com', '', '', 0, 0, '2025-02-24 15:07:54', 1, NULL),
(108, '', 0, 'richard', '827ccb0eea8a706c4c34a16891f84e', 'richard@gmail.com', '', '', 0, 0, '2025-02-24 15:08:42', 1, NULL),
(109, '', 0, 'holly', '827ccb0eea8a706c4c34a16891f84e', 'holly@gmail.com', '', '', 0, 0, '2025-02-24 15:09:09', 1, NULL),
(110, '', 0, 'tatum', '827ccb0eea8a706c4c34a16891f84e', 'tatum@gmail.com', '', '', 0, 0, '2025-02-24 15:14:37', 1, NULL),
(111, '', 0, 'stella', '827ccb0eea8a706c4c34a16891f84e', 'stella@gmail.com', '', '', 0, 0, '2025-02-24 15:14:55', 1, NULL),
(112, '', 0, 'nora', '827ccb0eea8a706c4c34a16891f84e', 'nora@gmail.com', '', '', 0, 0, '2025-02-24 15:23:17', 1, NULL),
(113, '', 0, 'alan', '827ccb0eea8a706c4c34a16891f84e', 'alan@gmail.com', '', '', 0, 0, '2025-02-24 15:23:30', 1, NULL),
(114, '', 0, 'lane', '827ccb0eea8a706c4c34a16891f84e', 'lane@gmail.com', '', '', 0, 0, '2025-02-24 15:23:43', 1, NULL),
(115, '', 0, 'johnny', '827ccb0eea8a706c4c34a16891f84e', 'johnny@gmail.com', '', '', 0, 0, '2025-02-24 15:24:11', 1, NULL),
(116, '', 0, 'elizabeth', '827ccb0eea8a706c4c34a16891f84e', 'elizabeth@gmail.com', '', '', 0, 0, '2025-02-24 15:27:11', 1, NULL),
(117, '', 0, 'arthur', '827ccb0eea8a706c4c34a16891f84e', 'arthur@gmail.com', '', '', 0, 0, '2025-02-24 15:27:32', 1, NULL),
(118, '', 0, 'lexi', '827ccb0eea8a706c4c34a16891f84e', 'lexi@gmail.com', '', '', 0, 0, '2025-02-24 15:28:36', 1, NULL),
(119, '', 0, 'pierce', '827ccb0eea8a706c4c34a16891f84e', 'pierce@gmail.com', '', '', 0, 0, '2025-02-24 15:29:01', 1, NULL),
(120, '', 0, 'kaiden', '827ccb0eea8a706c4c34a16891f84e', 'kaiden@gmail.com', '', '', 0, 0, '2025-02-24 15:29:25', 1, NULL),
(121, '', 0, 'grady', '827ccb0eea8a706c4c34a16891f84e', 'grady@gmail.com', '', '', 0, 0, '2025-02-24 15:29:40', 1, NULL),
(122, '', 0, 'odin', '827ccb0eea8a706c4c34a16891f84e', 'odin@gmail.com', '', '', 0, 0, '2025-02-24 15:31:30', 1, NULL),
(123, '', 0, 'sullivan', '827ccb0eea8a706c4c34a16891f84e', 'sullivan@gmail.com', '', '', 0, 0, '2025-02-24 15:31:51', 1, NULL),
(124, '', 0, 'soloman', '827ccb0eea8a706c4c34a16891f84e', 'soloman@gmail.com', '', '', 0, 0, '2025-02-24 15:33:02', 1, NULL),
(125, '', 0, 'dean', '827ccb0eea8a706c4c34a16891f84e', 'dean@gmail.com', '', '', 0, 0, '2025-02-24 15:33:12', 1, NULL),
(126, '', 0, 'sean', '827ccb0eea8a706c4c34a16891f84e', 'sean@gmail.com', '', '', 0, 0, '2025-02-24 15:33:26', 1, NULL),
(127, '', 0, 'keira', '827ccb0eea8a706c4c34a16891f84e', 'keira@gmail.com', '', '', 0, 0, '2025-02-24 15:33:52', 1, NULL),
(128, '', 0, 'irving', '827ccb0eea8a706c4c34a16891f84e', 'irving@gmail.com', '', '', 0, 0, '2025-02-24 15:34:33', 1, NULL),
(129, '', 0, 'joel', '827ccb0eea8a706c4c34a16891f84e', 'joel@gmail.com', '', '', 0, 0, '2025-02-24 15:34:58', 1, NULL),
(130, '', 0, 'kyle', '827ccb0eea8a706c4c34a16891f84e', 'kyle@gmail.com', '', '', 0, 0, '2025-02-24 15:35:15', 1, NULL),
(131, '', 0, 'franklin', '827ccb0eea8a706c4c34a16891f84e', 'franklin@gmail.com', '', '', 0, 0, '2025-02-24 15:35:43', 1, NULL),
(132, '', 0, 'daisy', '827ccb0eea8a706c4c34a16891f84e', 'daisy@gmail.com', '', '', 0, 0, '2025-02-24 15:36:16', 1, NULL),
(133, '', 0, 'philip', '827ccb0eea8a706c4c34a16891f84e', 'philip@gmail.com', '', '', 0, 0, '2025-02-24 15:36:38', 1, NULL),
(134, '', 0, 'raven', '827ccb0eea8a706c4c34a16891f84e', 'raven@gmail.com', '', '', 0, 0, '2025-02-24 15:38:18', 1, NULL),
(135, '', 0, 'charlie', '827ccb0eea8a706c4c34a16891f84e', 'charlie@gmail.com', '', '', 0, 0, '2025-02-24 15:38:52', 1, NULL),
(136, '', 0, 'charles', '827ccb0eea8a706c4c34a16891f84e', 'charles@gmail.com', '', '', 0, 0, '2025-02-24 15:39:16', 1, NULL),
(137, '', 0, 'bryson', '827ccb0eea8a706c4c34a16891f84e', 'bryson@gmail.com', '', '', 0, 0, '2025-02-24 15:40:07', 1, NULL),
(138, '', 0, 'julian', '827ccb0eea8a706c4c34a16891f84e', 'julian@gmail.com', '', '', 0, 0, '2025-02-24 15:40:24', 1, NULL),
(139, '', 0, 'dawson', '827ccb0eea8a706c4c34a16891f84e', 'dawson@gmail.com', '', '', 0, 0, '2025-02-24 15:40:44', 1, NULL),
(140, '', 0, 'kenneth', '827ccb0eea8a706c4c34a16891f84e', 'kenneth@gmail.com', '', '', 0, 0, '2025-02-24 15:41:06', 1, NULL),
(141, '', 0, 'patrick', '827ccb0eea8a706c4c34a16891f84e', 'patrick@gmail.com', '', '', 0, 0, '2025-02-24 15:41:51', 1, NULL),
(142, '', 0, 'reid', '827ccb0eea8a706c4c34a16891f84e', 'reid@gmail.com', '', '', 0, 0, '2025-02-24 15:42:26', 1, NULL),
(143, '', 0, 'kyler', '827ccb0eea8a706c4c34a16891f84e', 'kyler@gmail.com', '', '', 0, 0, '2025-02-24 15:42:47', 1, NULL),
(144, '', 0, 'quinn', '827ccb0eea8a706c4c34a16891f84e', 'quinn@gmail.com', '', '', 0, 0, '2025-02-24 15:43:27', 1, NULL),
(145, '', 0, 'winter', '827ccb0eea8a706c4c34a16891f84e', 'winter@gmail.com', '', '', 0, 0, '2025-02-24 15:43:39', 1, NULL),
(146, '', 0, 'andre', '827ccb0eea8a706c4c34a16891f84e', 'andre@gmail.com', '', '', 0, 0, '2025-02-24 15:44:24', 1, NULL),
(147, '', 0, 'ryan', '827ccb0eea8a706c4c34a16891f84e', 'ryan@gmail.com', '', '', 0, 0, '2025-02-24 15:44:39', 1, NULL),
(148, '', 0, 'rylee', '827ccb0eea8a706c4c34a16891f84e', 'rylee@gmail.com', '', '', 0, 0, '2025-02-24 15:45:03', 1, NULL),
(149, '', 0, 'josiah', '827ccb0eea8a706c4c34a16891f84e', 'josiah@gmail.com', '', '', 0, 0, '2025-02-24 15:45:25', 1, NULL),
(150, '', 0, 'elaina', '827ccb0eea8a706c4c34a16891f84e', 'elaina@gmail.com', '', '', 0, 0, '2025-02-24 15:46:22', 1, NULL),
(151, '', 0, 'forrest', '827ccb0eea8a706c4c34a16891f84e', 'forrest@gmail.com', '', '', 0, 0, '2025-02-24 15:46:34', 1, NULL),
(152, '', 0, 'jace', '827ccb0eea8a706c4c34a16891f84e', 'jace@gmail.com', '', '', 0, 0, '2025-02-24 15:47:13', 1, NULL),
(153, '', 0, 'pyke', '827ccb0eea8a706c4c34a16891f84e', 'pyke@gmail.com', '', '', 0, 0, '2025-02-24 15:47:44', 1, NULL),
(154, '', 0, 'owen', '827ccb0eea8a706c4c34a16891f84e', 'owen@gmail.com', '', '', 0, 0, '2025-02-24 15:48:24', 1, NULL),
(155, '', 0, 'jake', '827ccb0eea8a706c4c34a16891f84e', 'jake@gmail.com', '', '', 0, 0, '2025-02-24 15:48:41', 1, NULL),
(156, '', 0, 'malcolm', '827ccb0eea8a706c4c34a16891f84e', 'malcolm@gmail.com', '', '', 0, 0, '2025-02-24 15:49:09', 1, NULL),
(157, '', 0, 'jane', '827ccb0eea8a706c4c34a16891f84e', 'jane@gmail.com', '', '', 0, 0, '2025-02-24 15:49:28', 1, NULL),
(158, '', 0, 'peter', '827ccb0eea8a706c4c34a16891f84e', 'peter@gmail.com', '', '', 0, 0, '2025-02-24 15:49:42', 1, NULL),
(159, '', 0, 'felix', '827ccb0eea8a706c4c34a16891f84e', 'felix@gmail.com', '', '', 0, 0, '2025-02-24 15:50:00', 1, NULL),
(160, '', 0, 'lewis', '827ccb0eea8a706c4c34a16891f84e', 'lewis@gmail.com', '', '', 0, 0, '2025-02-24 15:50:16', 1, NULL),
(161, '', 0, 'williamson', '827ccb0eea8a706c4c34a16891f84e', 'williamson@gmail.com', '', '', 0, 0, '2025-02-24 15:50:47', 1, NULL),
(162, '', 0, 'caroline', '827ccb0eea8a706c4c34a16891f84e', 'caroline@gmail.com', '', '', 0, 0, '2025-02-24 15:51:02', 1, NULL),
(163, '', 0, 'sage', '827ccb0eea8a706c4c34a16891f84e', 'sage@gmail.com', '', '', 0, 0, '2025-02-24 15:51:22', 1, NULL),
(164, '', 0, 'phoenix', '827ccb0eea8a706c4c34a16891f84e', 'phoenix@gmail.com', '', '', 0, 0, '2025-02-24 15:51:37', 1, NULL),
(165, '', 0, 'jett', '827ccb0eea8a706c4c34a16891f84e', 'jett@gmail.com', '', '', 0, 0, '2025-02-24 15:53:00', 1, NULL),
(166, '', 0, 'viper', '827ccb0eea8a706c4c34a16891f84e', 'viper@gmail.com', '', '', 0, 0, '2025-02-24 15:53:17', 1, NULL),
(167, '', 0, 'sova', '827ccb0eea8a706c4c34a16891f84e', 'sova@gmail.com', '', '', 0, 0, '2025-02-24 15:53:28', 1, NULL),
(168, '', 0, 'cypher', '827ccb0eea8a706c4c34a16891f84e', 'cypher@gmail.com', '', '', 0, 0, '2025-02-24 15:53:38', 1, NULL),
(169, '', 0, 'brimstone', '827ccb0eea8a706c4c34a16891f84e', 'brimstone@gmail.com', '', '', 0, 0, '2025-02-24 15:53:49', 1, NULL),
(170, '', 0, 'omen', '827ccb0eea8a706c4c34a16891f84e', 'omen@gmail.com', '', '', 0, 0, '2025-02-24 15:54:08', 1, NULL),
(171, '', 0, 'breach', '827ccb0eea8a706c4c34a16891f84e', 'breach@gmail.com', '', '', 0, 0, '2025-02-24 15:54:19', 1, NULL),
(172, '', 0, 'raze', '827ccb0eea8a706c4c34a16891f84e', 'raze@gmail.com', '', '', 0, 0, '2025-02-24 15:54:29', 1, NULL),
(173, '', 0, 'reyna', '827ccb0eea8a706c4c34a16891f84e', 'reyna@gmail.com', '', '', 0, 0, '2025-02-24 15:54:49', 1, NULL),
(174, '', 0, 'killjoy', '827ccb0eea8a706c4c34a16891f84e', 'killjoy@gmail.com', '', '', 0, 0, '2025-02-24 15:54:58', 1, NULL),
(175, '', 0, 'yoru', '827ccb0eea8a706c4c34a16891f84e', 'yoru@gmail.com', '', '', 0, 0, '2025-02-24 15:55:10', 1, NULL),
(176, '', 0, 'astra', '827ccb0eea8a706c4c34a16891f84e', 'astra@gmail.com', '', '', 0, 0, '2025-02-24 15:55:18', 1, NULL),
(177, '', 0, 'chamber', '827ccb0eea8a706c4c34a16891f84e', 'chamber@gmail.com', '', '', 0, 0, '2025-02-24 15:55:34', 1, NULL),
(178, '', 0, 'neon', '827ccb0eea8a706c4c34a16891f84e', 'neon@gmail.com', '', '', 0, 0, '2025-02-24 15:55:44', 1, NULL),
(179, '', 0, 'fade', '827ccb0eea8a706c4c34a16891f84e', 'fade@gmail.com', '', '', 0, 0, '2025-02-24 15:55:54', 1, NULL),
(180, '', 0, 'harbor', '827ccb0eea8a706c4c34a16891f84e', 'harbor@gmail.com', '', '', 0, 0, '2025-02-24 15:56:08', 1, NULL),
(181, '', 0, 'gekko', '827ccb0eea8a706c4c34a16891f84e', 'gekko@gmail.com', '', '', 0, 0, '2025-02-24 15:56:17', 1, NULL),
(182, '', 0, 'deadlock', '827ccb0eea8a706c4c34a16891f84e', 'deadlock@gmail.com', '', '', 0, 0, '2025-02-24 15:56:28', 1, NULL),
(183, '', 0, 'isoo', '827ccb0eea8a706c4c34a16891f84e', 'iso@gmail.com', '', '', 0, 0, '2025-02-24 15:56:41', 1, NULL),
(184, '', 0, 'clove', '827ccb0eea8a706c4c34a16891f84e', 'clove@gmail.com', '', '', 0, 0, '2025-02-24 15:56:56', 1, NULL),
(185, '', 0, 'vyse', '827ccb0eea8a706c4c34a16891f84e', 'vyse@gmail.com', '', '', 0, 0, '2025-02-24 15:57:09', 1, NULL),
(186, '', 0, 'tejo', '827ccb0eea8a706c4c34a16891f84e', 'tejo@gmail.com', '', '', 0, 0, '2025-02-24 15:57:18', 1, NULL),
(187, '', 0, 'kayo', '827ccb0eea8a706c4c34a16891f84e', 'kayo@gmail.com', '', '', 0, 0, '2025-02-24 15:58:00', 1, NULL),
(188, '', 0, 'troy', '827ccb0eea8a706c4c34a16891f84e', 'troy@gmail.com', '', '', 0, 0, '2025-02-24 16:00:56', 1, NULL),
(189, '', 0, 'leon', '827ccb0eea8a706c4c34a16891f84e', 'leon@gmail.com', '', '', 0, 0, '2025-02-24 17:21:39', 1, NULL),
(190, '', 0, 'riley', '827ccb0eea8a706c4c34a16891f84e', 'riley@gmail.com', '', '', 0, 0, '2025-02-24 17:23:32', 1, NULL),
(191, '', 0, 'seth', '827ccb0eea8a706c4c34a16891f84e', 'seth@gmail.com', '', '', 0, 0, '2025-02-24 17:23:55', 1, NULL),
(192, '', 0, 'natalie', '827ccb0eea8a706c4c34a16891f84e', 'natalie@gmail.com', '', '', 0, 0, '2025-02-24 17:24:18', 1, NULL),
(193, '', 0, 'cody', '827ccb0eea8a706c4c34a16891f84e', 'cody@gmail.com', '', '', 0, 0, '2025-02-24 17:24:30', 1, NULL),
(194, '', 0, 'victor', '827ccb0eea8a706c4c34a16891f84e', 'victor@gmail.com', '', '', 0, 0, '2025-02-24 17:25:02', 1, NULL),
(195, '', 0, 'bentley', '827ccb0eea8a706c4c34a16891f84e', 'bentley@gmail.com', '', '', 0, 0, '2025-02-24 17:25:54', 1, NULL),
(196, '', 0, 'lucas', '827ccb0eea8a706c4c34a16891f84e', 'lucas@gmail.com', '', '', 0, 0, '2025-02-24 17:26:29', 1, NULL),
(197, '', 0, 'vanessa', '827ccb0eea8a706c4c34a16891f84e', 'vanessa@gmail.com', '', '', 0, 0, '2025-02-24 17:27:10', 1, NULL),
(198, '', 0, 'otto', '827ccb0eea8a706c4c34a16891f84e', 'otto@gmail.com', '', '', 0, 0, '2025-02-24 17:27:35', 1, NULL),
(199, '', 0, 'xander', '827ccb0eea8a706c4c34a16891f84e', 'xander@gmail.com', '', '', 0, 0, '2025-02-24 17:27:50', 1, NULL),
(200, '', 0, 'stevie', '827ccb0eea8a706c4c34a16891f84e', 'stevie@gmail.com', '', '', 0, 0, '2025-02-24 17:28:07', 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `user_collections`
--

CREATE TABLE `user_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `motel_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `valid` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_image`
--

CREATE TABLE `user_image` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_order_list`
--

CREATE TABLE `user_order_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user-id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender_id` (`gender_id`) USING BTREE;

--
-- 資料表索引 `user_collections`
--
ALTER TABLE `user_collections`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_order_list`
--
ALTER TABLE `user_order_list`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_collections`
--
ALTER TABLE `user_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order_list`
--
ALTER TABLE `user_order_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
