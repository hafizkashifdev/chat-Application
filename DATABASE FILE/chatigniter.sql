-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 05:19 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_user`
--

CREATE TABLE `block_user` (
  `blocked_from` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `blocked_to` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `unique_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_fname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_lname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bio` varchar(100) CHARACTER SET latin1 NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `dob` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `user_pass` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_avtar` varchar(200) CHARACTER SET latin1 NOT NULL,
  `user_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `last_logout` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `unique_id`, `user_fname`, `user_lname`, `user_email`, `bio`, `created_at`, `dob`, `phone`, `address`, `user_pass`, `user_avtar`, `user_status`, `last_logout`) VALUES
(1, '0a09db', 'Hafiz', 'Ansar Ayaz', 'ansar@gmail.com', '', '10-2-2023', '', '', '', 'ansar1234', 'dcb024d4.jpeg', 'deactive', '10/02/2023, 20:49:24'),
(2, '2bc812', 'kashi Sample', 'Account', 'kashisample@gmail.com', 'Just a dummy account', '20-6-2021', '03-08-2000', '+92 3056619799', '69 Dummy Address', 'password', '9b1a8f8c.png', 'deactive', '6/20/2021, 10:53:44 PM'),
(3, '401271', 'Younais', 'Nazim', 'youni@gmail.com', '10th class student', '10-2-2023', '07/12/2005', '92 3051111', 'Alipur ', '1234', '9bfd3d5c.jpeg', 'deactive', '10/02/2023, 20:49:55'),
(4, 'bb610c', 'Muhammad', 'Kashif', 'kashi@gmail.com', 'I am Web Developer', '10-2-2023', '03/08/2000', '+92 305123', 'Baqir Sah', '123kashi', '4db02f3b.jpg', 'deactive', '10/02/2023, 21:14:22'),
(5, 'f055c4', 'umair', 'ali', 'uxair@gmail.com', 'pagal', '10-2-2023', '11/22/1999', '+021 89698', 'islamabad', '1234', '97a5c743.jpeg', 'active', ''),
(6, 'fd0abf', 'Azka', 'Falak Sher', 'azka@gmail.com', 'Software Enginner ', '10-2-2023', '04/12/2003', '+92  33333', 'Lahore', 'azka123', '0043dfb5.jpeg', 'deactive', '10/02/2023, 20:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`time`, `sender_message_id`, `receiver_message_id`, `message`) VALUES
('2023-02-10 20:03:50.000000', 'fd0abf', 'bb610c', 'Hi there! I hope your classes are going well so far this semester.'),
('2023-02-10 20:05:01.000000', 'bb610c', 'fd0abf', 'Hey, yeah they\'re going alright. How about you?'),
('2023-02-10 20:09:28.000000', 'fd0abf', 'bb610c', 'Good, thanks! I\'m especially enjoying my operating system course. What about you, what\'s your favorite class this semester?'),
('2023-02-10 20:10:56.000000', 'bb610c', 'fd0abf', 'I\'m really enjoying my Web Engineering class. The professor is really knowledgeable and makes the material interesting.'),
('2023-02-10 20:13:04.000000', 'fd0abf', 'bb610c', 'That\'s great! I\'ve heard Owais Hakeem is an excellent teacher.'),
('2023-02-10 20:19:08.000000', 'bb610c', '0a09db', 'Hey there! How\'s it going?'),
('2023-02-10 20:19:46.000000', '0a09db', 'bb610c', 'Hey! I\'m good, thanks. How about you?'),
('2023-02-10 20:20:40.000000', 'bb610c', '0a09db', 'I\'m doing well, thanks. So, what have you been up to lately?'),
('2023-02-10 20:21:18.000000', '0a09db', 'bb610c', 'Not much, just been busy with work. What about you?'),
('2023-02-10 20:21:46.000000', 'bb610c', '0a09db', 'Same here, work has been keeping me busy. But I did manage to go on a trip to the beach last weekend. It was really relaxing.'),
('2023-02-10 20:22:26.000000', '0a09db', 'bb610c', 'That sounds great! I love going to the beach. Which beach did you visit?'),
('2023-02-10 20:23:39.000000', 'bb610c', '0a09db', ' I went to Northern Areas. It\'s one of my favorite spots.'),
('2023-02-10 20:24:09.000000', '0a09db', 'bb610c', 'Oh, I\'ve always wanted to go there. How was the weather?'),
('2023-02-10 20:29:35.000000', 'bb610c', '0a09db', ' It was perfect. very cold because these areas are blessed with plenty of beautiful mountains, snow peaks, meadows, lakes, and many more.  what you need for a beach trip.'),
('2023-02-10 20:30:03.000000', '0a09db', 'bb610c', ' That sounds amazing. I\'ll have to plan a trip there soon.'),
('2023-02-10 20:30:26.000000', 'bb610c', '0a09db', 'Definitely do! You won\'t regret it.'),
('2023-02-10 20:30:48.000000', '0a09db', 'bb610c', 'Thanks for the recommendation. Talk to you soon!'),
('2023-02-10 20:31:11.000000', 'bb610c', '0a09db', 'Sure thing! Take care!'),
('2023-02-10 20:33:47.000000', '401271', 'bb610c', 'Hi there! What\'s up?'),
('2023-02-10 20:34:21.000000', 'bb610c', '401271', 'Hey! Not much, just hanging out. What about you?'),
('2023-02-10 20:34:46.000000', '401271', 'bb610c', 'Same here. Just taking a break from work. How\'s your day going so far?'),
('2023-02-10 20:35:12.000000', 'bb610c', '401271', 'It\'s going pretty well. I went for a run earlier and now I\'m catching up with some reading. How about you?'),
('2023-02-10 20:35:46.000000', '401271', 'bb610c', 'I\'ve been working on a project for most of the day. It\'s been a bit challenging, but I\'m making progress.'),
('2023-02-10 20:36:03.000000', 'bb610c', '401271', 'That\'s great to hear. What kind of project is it?'),
('2023-02-10 20:36:34.000000', '401271', 'bb610c', ' It\'s a web development project. I\'m building a website for a local business.'),
('2023-02-10 20:36:59.000000', 'bb610c', '401271', ' That\'s cool! I\'m also into web development. What programming languages are you using?'),
('2023-02-10 20:39:14.000000', 'bb610c', '401271', 'I\'m using HTML, CSS, JavaScript, and Ruby on Rails for the backend.'),
('2023-02-10 20:45:20.000000', '401271', 'bb610c', 'I\'m using HTML, CSS, JavaScript, and Ruby on Rails for the backend.'),
('2023-02-10 20:47:35.000000', 'bb610c', '401271', 'That\'s good to know that you have started your own project. Let me know if you need any help. Talk to you later!'),
('2023-02-10 20:48:03.000000', '401271', 'bb610c', 'Will do! Have a great day!'),
('2023-02-10 20:48:40.000000', '401271', 'fd0abf', 'hi'),
('2023-02-10 20:49:00.000000', '0a09db', 'fd0abf', 'helo '),
('2023-02-10 20:49:19.000000', '0a09db', '401271', 'hi handsome'),
('2023-02-10 20:49:38.000000', '401271', '0a09db', 'yes'),
('2023-02-10 20:49:49.000000', '401271', 'fd0abf', 'yes '),
('2023-02-10 20:50:10.000000', 'fd0abf', '0a09db', 'yes'),
('2023-02-10 20:50:24.000000', 'fd0abf', '401271', 'yes 2'),
('2023-02-10 20:51:01.000000', 'bb610c', '401271', 'Thanku'),
('2023-02-10 21:14:19.000000', 'bb610c', 'f055c4', 'heloo'),
('2023-02-10 21:14:39.000000', 'f055c4', 'bb610c', 'yes'),
('2023-02-10 21:15:09.000000', 'f055c4', '401271', ''),
('2023-02-10 21:15:10.000000', 'f055c4', '401271', ''),
('2023-02-10 21:15:10.000000', 'f055c4', '401271', ''),
('2023-02-10 21:15:10.000000', 'f055c4', '401271', ''),
('2023-02-10 21:15:10.000000', 'f055c4', '401271', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`unique_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
