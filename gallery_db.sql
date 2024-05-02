-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: 06 يوليو 2023 الساعة 13:03
-- إصدار الخادم: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- بنية الجدول `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(2, 5, 'Samer', 'Hi nice to see you all'),
(4, 3, 'Ahmed', 'Sampling involves the selection of a portion of the population being studied. In probability sampling, each element in the population has a known, nonzero chance of being selected through the use of a random selection procedure. EPSEM refers to an equal probability of selection method. It is not a specific sampling method such as systematic sampling, stratified sampling, or multi-stage sampling. Rather it refers to the application of a sampling technique that results in the population elements having equal probabilities of being included in the sample. EPSEM samples are self-weigh ting; that is, the reciprocal of the probability of selection of each element in the selected sample is the same. Thus the base sampling weighting for each selected element in the sample is a constant'),
(5, 3, 'Sami', 'The martial arts movies of the 1960s and 1970s served to greatly increase the popularity of martial arts around the world, and English-speakers began to use the word karate in a generic way to refer to all striking-based Asian martial arts.[12] Karate schools began appearing around the world, catering to those with casual interest'),
(6, 5, 'Khaled', 'nice photo'),
(7, 5, 'Omar', 'This method was first introduced in PHP 5 as a magic function but now this method is deprecated as of PHP version 7.2.0. If we want our code to be compatible with the future versions of PHP then we should not use it in our code. We should start using the new method spl_autoload_register which has more flexibility then __autoload function. We should only use __autoload method when you know that your current PHP version does not support spl_autoload_register method.\r\nNote : The __autoload() function can also be used for'),
(8, 5, 'Raed', 'It creates a PHP resource file per class definition that is the standard practice for the developers who are writing object-oriented applications. So you have to write the required list at the beginning of every script and the list can be different in several scripts. You will need to find out that every time what you have written is correct and you have to manage it. This is where SPL register function comes to the rescue. So, now in this example we are using autoloader and as you can see it still shows the same output that means all classes are loaded.');

-- --------------------------------------------------------

--
-- بنية الجدول `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`) VALUES
(3, 'Great Book', 'Books', '<b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">The martial arts movies of the 1960s and 1970s served to greatly increase the popularity of martial arts around the world, and English-speakers began to use the word </span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">karate</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> in a generic way to refer to all striking-based </span><a href=\"https://en.wikipedia.org/wiki/Asian_martial_arts\" class=\"mw-redirect\" title=\"Asian martial arts\" style=\"color: rgb(6, 69, 173); background: none rgb(255, 255, 255); font-family: sans-serif;\">Asian martial arts</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">.</span><sup id=\"cite_ref-12\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://en.wikipedia.org/wiki/Karate#cite_note-12\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[12]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> Karate schools began appearing around the world, catering to those with casual interest</span></b>', 'img6.jpg', 'Great Book', 'image/jpeg', 46291),
(5, 'test', '', '', 'art4.jpg', '', 'image/jpeg', 87782),
(6, 'Nice Book', '', '', 'img1.jpg', '', 'image/jpeg', 75677),
(7, 'Another new book', '', '', 'novel5.jpg', '', 'image/jpeg', 40815);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(11, 'omaer', 'omaer1988abcd', 'Omaer', 'Aghbar', 'img5.jpg'),
(12, 'omaer', 'omaer1988abcd', 'Omaer', 'Aghbar', 'art7.jpg'),
(13, 'Samer1988', '111', 'Samer', 'Ahmed', 'science6.jpg'),
(15, 'sami555', 'omaer1988abcd', 'sami', 'emad', 'art1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
