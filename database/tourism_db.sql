-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 11:55 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(4, 8, 8, 2, '2022-06-03', '2022-05-30 11:36:23'),
(5, 8, 8, 0, '2022-06-03', '2022-05-31 16:44:14'),
(6, 6, 7, 3, '2022-06-10', '2022-05-31 16:46:57'),
(8, 6, 1, 3, '2022-06-10', '2022-06-03 15:21:28'),
(9, 10, 8, 3, '2022-06-09', '2022-06-03 15:26:43'),
(11, 1, 9, 3, '2022-06-04', '2022-06-03 15:46:22'),
(12, 7, 8, 3, '2022-06-08', '2022-06-05 08:11:38'),
(13, 7, 12, 3, '2022-06-16', '2022-06-06 08:05:08'),
(15, 7, 10, 3, '2022-06-10', '2022-06-06 11:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(14, 'dipisha', 'dipisha@g.com', 'science', 'Newtons second law of gravitations', 1, '2022-06-05 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(10, 'Cultural Heritages Sites ', 'Nepal', 20000, '&lt;p&gt;&lt;span style=&quot;color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px; text-align: justify; background-color: rgb(249, 254, 252);&quot;&gt;Nepal is a treasure land for cultural heritages and natural heritages. These ancient monuments date back to 13&lt;/span&gt;&lt;span style=&quot;border: 0px; margin: 0px; padding: 0px; font-size: 9.75px; text-align: justify; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; background-color: rgb(249, 254, 252);&quot;&gt;th&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px; text-align: justify; background-color: rgb(249, 254, 252);&quot;&gt;&amp;nbsp;century. Pashupatinath, Swayambhunath, Boudhanath, Changunarayan, Kathmandu Durbar square, Bhaktapur Durbar square and Patan Durbar Square (Durbar square means &ldquo;King&rsquo;s Palace&rdquo; in Nepalese term) are listed in the world cultural heritage list. Kathmandu, Bhaktapur and Patan are three major historical cities where art, architecture and culture was developed and flourished to its full potential during 13&lt;/span&gt;&lt;span style=&quot;border: 0px; margin: 0px; padding: 0px; font-size: 9.75px; text-align: justify; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; background-color: rgb(249, 254, 252);&quot;&gt;th&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px; text-align: justify; background-color: rgb(249, 254, 252);&quot;&gt;&amp;nbsp;century to 17&lt;/span&gt;&lt;span style=&quot;border: 0px; margin: 0px; padding: 0px; font-size: 9.75px; text-align: justify; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; background-color: rgb(249, 254, 252);&quot;&gt;th&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px; text-align: justify; background-color: rgb(249, 254, 252);&quot;&gt;&amp;nbsp;century.&amp;nbsp; Another UNESCO listed world cultural heritage site is Lumbini where Lord Buddha was born and spread Buddhism all over the world&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(32, 32, 32); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px; text-align: justify; background-color: rgb(249, 254, 252);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; style=&quot;border: 0px; margin: 0px; padding: 0px; font-size: 18px; text-align: justify; border-spacing: 0px; width: 611.266px; line-height: 40px; color: rgb(93, 111, 141); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; background-color: rgb(249, 254, 252);&quot;&gt;&lt;tbody style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32); line-height: 22px;&quot;&gt;&lt;b style=&quot;border: 0px; margin: 0px; padding: 0px; font-weight: bold;&quot;&gt;Package Name:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32); line-height: 22px;&quot;&gt;World Cultural Heritage Tour Package in Nepal&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32); line-height: 22px;&quot;&gt;&lt;b style=&quot;border: 0px; margin: 0px; padding: 0px; font-weight: bold;&quot;&gt;Tour type:&lt;/b&gt;&lt;b style=&quot;border: 0px; margin: 0px; padding: 0px; font-weight: bold;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32); line-height: 22px;&quot;&gt;Private/ Group/ Families/ Couple&lt;b style=&quot;border: 0px; margin: 0px; padding: 0px; font-weight: bold;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32); line-height: 22px;&quot;&gt;&lt;b style=&quot;border: 0px; margin: 0px; padding: 0px; font-weight: bold;&quot;&gt;Tour duration:&lt;/b&gt;&lt;b style=&quot;border: 0px; margin: 0px; padding: 0px; font-weight: bold;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32); line-height: 22px;&quot;&gt;07 Days&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32); line-height: 22px;&quot;&gt;&lt;b style=&quot;border: 0px; margin: 0px; padding: 0px; font-weight: bold;&quot;&gt;Key Attractions:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; text-align: left; vertical-align: top;&quot;&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; text-align: justify; line-height: 22px;&quot;&gt;UNESCO cultural Heritages sites in Kathmandu and Lumbini&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; text-align: justify; line-height: 22px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; text-align: justify; line-height: 22px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; text-align: justify; line-height: 22px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; text-align: justify; line-height: 22px;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Contact: +977-9840382265&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; text-align: justify; line-height: 22px;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;E-mail: shrawanjaiyswal10@gmail.com&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; border: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; text-align: justify; line-height: 22px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'uploads/package_10', 1, '2022-06-05 12:03:27'),
(11, 'Chitwan Jungle Safari', 'Chitwan', 15000, '&lt;p style=&quot;margin: 10px 0px; line-height: 22px; text-align: justify; color: rgb(17, 17, 17); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Jungle safari&lt;/span&gt;&amp;nbsp;is one of the interesting and adventurous activities in Nepal. The safari takes place in low land Terai which is famous for various species of wildlife, birds, and reptiles. Simply, jungle safari is a journey to the deep wild forest with the view of wildlife and their activities. The trip was even a big-game hunt in the past, but nowadays safari refers to observe and photograph. There are bunch of jungles in Nepal.&amp;nbsp;&lt;span style=&quot;font-size: 0.875rem;&quot;&gt;Nepal is rich in terms of diversity though it&rsquo;s small in terms of size and area.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 0.875rem;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 0.875rem;&quot;&gt;we can observe a vast range of flora and fauna variation.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 10px 0px; line-height: 22px; text-align: justify; color: rgb(17, 17, 17); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;b style=&quot;color: rgb(32, 33, 34); font-family: sans-serif; text-align: start;&quot;&gt;Chitwan National Park&lt;/b&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif; text-align: start;&quot;&gt;&amp;nbsp;is the first national park of N&lt;/span&gt;epal&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif; text-align: start;&quot;&gt;. It was established in 1973 and was granted the status of a World Heritage Sites&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif; text-align: start;&quot;&gt;in 1984. It covers an area of 952.63&amp;nbsp;km&lt;/span&gt;&lt;sup style=&quot;line-height: 1; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif; text-align: start;&quot;&gt;2&lt;/sup&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif; text-align: start;&quot;&gt;&amp;nbsp;(367.81&amp;nbsp;sq&amp;nbsp;mi) and it is located in the subtropical&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Inner_Terai_Valleys_of_Nepal&quot; title=&quot;Inner Terai Valleys of Nepal&quot; style=&quot;color: rgb(6, 69, 173); background: none rgb(255, 255, 255); font-family: sans-serif; text-align: start;&quot;&gt;I&lt;/a&gt;nner Terai Lowlands&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif; text-align: start;&quot;&gt;&amp;nbsp;of south-central.&lt;/span&gt;&lt;span style=&quot;font-size: 0.875rem;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 10px 0px; line-height: 22px; text-align: justify; color: rgb(17, 17, 17); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; style=&quot;caption-side: bottom; border: 0px; margin: 0px; padding: 0px; font-size: 18px; text-align: justify; border-spacing: 0px; width: 611.266px; line-height: 40px; color: rgb(93, 111, 141); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; background-color: rgb(249, 254, 252);&quot;&gt;&lt;tbody style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Package Name:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;Jungle Safari Nepal&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Tour type:&lt;/b&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;Private/ Group/ Families/ Couple&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Tour duration:&lt;/b&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;04 Days&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Key Attractions:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; text-align: left; vertical-align: top;&quot;&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(17, 17, 17); font-size: 14px; text-align: start; background-color: rgb(255, 255, 255);&quot;&gt;Elephant back ride, jungle safari, canoe riding, tharu cultural show, tharu village walk&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(17, 17, 17); font-size: 14px; text-align: start; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(17, 17, 17); font-size: 14px; text-align: start; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Contact: +977-9840382265&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;E-mail: shrawanjaiyswal10@gmail.com&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'uploads/package_11', 1, '2022-06-05 12:28:31'),
(12, 'Everest Base Camp Trek', 'Solukhumbu', 50000, '&lt;p&gt;&lt;font color=&quot;#525252&quot; face=&quot;source sans pro, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Mount Everest is the highest peak in the world which stands at 8848 m high altitude from sea level.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-size: 16px; color: rgb(82, 82, 82); font-family: &amp;quot;source sans pro&amp;quot;, sans-serif;&quot;&gt;It is located in the Solukhumbu district of Nepal. Mount Everest, known in Nepalese as Sagarmatha/&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font color=&quot;#525252&quot; face=&quot;source sans pro, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Everest Base Camp Tour is a short trek in the Himalayas of Nepal which is enlisted as Top Everest Base Camp Treks. 12 Days Everest Base Camp Tour is one of the most famous trekking trails of Nepal that will take you to the lap of World Highest Peak i.e. Mount Everest. This Everest Base camp tour is widely known by it&rsquo;s famous name Everest Base Camp Trek.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; style=&quot;caption-side: bottom; border: 0px; margin: 0px; padding: 0px; font-size: 18px; text-align: justify; border-spacing: 0px; width: 611.266px; line-height: 40px; color: rgb(93, 111, 141); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; background-color: rgb(249, 254, 252);&quot;&gt;&lt;tbody style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Package Name:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;Everest Base Camp Trek&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Tour type:&lt;/b&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;Private/ Group/ Families/ Couple&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Tour duration:&lt;/b&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;12days&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Key Attractions:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; text-align: left; vertical-align: top;&quot;&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;Everest Base Camp, Sagarmatha National Park, Namche Bazar, Majestic mountain views, Ancient Monasteries and Gompa&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(32, 32, 32); font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Contact: +977-9840382265&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;E-mail: shrawanjaiyswal10@gmail.com&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_12', 1, '2022-06-05 13:12:15'),
(13, 'Pokhara Tour Package', 'Pokhara city, Kaski district', 10000, '&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font color=&quot;#212529&quot; face=&quot;manrope, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px;&quot;&gt;Pokhara tour package offers a view of the snow-clad Himalayan peaks, a visit to the scenic Phewa Lake, pagoda-style temples, and great outdoor activities.&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;Nepal\'s adventurous yet romantic valley offers spectacular views and scenes from the moment you arrive in Pokhara.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;The city is set on a tranquil lake called Fewa that is embraced by two mountain ranges at the foothills of the Himalayas.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;It is a springboard for an exciting adventure, where mountain peaks and terraced fields create one of Nepal\'s most popular tourist destinations.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;Pokhara is also known as the &quot;city of lakes.&quot; Phewa Lake, Begnas Lake, and Rupa Lake are the major lakes situated in Pokhara.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;Another attraction of Pokhara is Tal Barahi Temple, also known as Lake Temple or Barahi Temple, a two-storage pagoda&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;temple located in the Kaski District of the Gandaki Zone in western Nepal. It is a Hindu temple of the Goddess Durga, the protector of gods.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;Pokhara is the gateway to significant trekking routes in Nepal, including Ghandruk, Ghorepani poonhill, Mardi Himal, Annapurna base camp trek.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;span style=&quot;font-size: 16px; letter-spacing: 0.3px; color: rgb(33, 37, 41); font-family: manrope, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; style=&quot;caption-side: bottom; border: 0px; margin: 0px; padding: 0px; font-size: 18px; text-align: justify; border-spacing: 0px; width: 611.266px; line-height: 40px; color: rgb(93, 111, 141); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; background-color: rgb(249, 254, 252);&quot;&gt;&lt;tbody style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Package Name:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;Pokhara Tour Package&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Tour type:&lt;/b&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;Private/ Group/ Families/ Couple&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px; background-color: rgb(247, 247, 247);&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Tour duration:&lt;/b&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;06 Days&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;border: 0px; margin: 0px; padding: 0px;&quot;&gt;&lt;td width=&quot;182&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; font-size: 12px; text-align: left; vertical-align: top; color: rgb(148, 150, 153);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; font-size: 13px; text-align: justify; color: rgb(32, 32, 32);&quot;&gt;&lt;b style=&quot;font-weight: bold; border: 0px; margin: 0px; padding: 0px;&quot;&gt;Key Attractions:&lt;/b&gt;&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;426&quot; valign=&quot;top&quot; style=&quot;border: 0px; margin: 0px; padding: 0px 0px 0px 20px; text-align: left; vertical-align: top;&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; color: rgb(32, 32, 32); font-size: 13px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;Tal Barahi Temple, Phewa Lake, Begnas Lake, World Peace Pagoda,&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Devi\'s fall,&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-size: 13px; color: rgb(32, 32, 32);&quot;&gt;Gupteshwor Gupha (Cave),&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 13px; color: rgb(32, 32, 32);&quot;&gt;Mahendra Gupha (Cave)&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Chemari Gupha (Bat cave),&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-size: 13px; color: rgb(32, 32, 32);&quot;&gt;Sarangkot sunrise and sunset viewpoint.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; color: rgb(32, 32, 32); font-size: 13px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(17, 17, 17); font-size: 14px; text-align: start; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; color: rgb(32, 32, 32); font-size: 13px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(17, 17, 17); font-size: 14px; text-align: start; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Contact: +977-9840382265&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 22px; border: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#202020&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;E-mail: shrawanjaiyswal10@gmail.com&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_13', 1, '2022-06-05 14:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate_review`
--

INSERT INTO `rate_review` (`id`, `user_id`, `package_id`, `rate`, `review`, `date_created`) VALUES
(5, 6, 7, 5, '&lt;p&gt;awesome trip&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '2022-05-31 16:48:16'),
(6, 6, 7, 5, '&lt;p&gt;aksjhdfkjashd&lt;/p&gt;', '2022-06-03 15:17:35'),
(7, 6, 1, 5, '&lt;p&gt;dksjhfkjasdhg&lt;/p&gt;', '2022-06-03 15:23:05'),
(10, 7, 8, 4, '&lt;p&gt;awesome&lt;span style=&quot;font-family: &amp;quot;Arial Black&amp;quot;; font-size: 12px;&quot;&gt;﻿&lt;/span&gt;&lt;/p&gt;', '2022-06-05 08:12:34'),
(11, 7, 12, 5, '&lt;p&gt;awesome trip!!!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '2022-06-06 08:06:10'),
(12, 7, 10, 3, '', '2022-06-06 11:19:29'),
(13, 7, 10, 5, '', '2022-06-06 11:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Tours Management System'),
(6, 'short_name', 'TMS'),
(11, 'logo', 'uploads/1653995100_IMG_2220.JPG'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1653722040_eiffel1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620201300_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-18 16:47:05'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23'),
(6, 'Messi', 'Leo', 'LeoMessi', 'f5bb0c8de146c67b44babbf4e6584cc0', 'uploads/1653995040_Messi.jpg', NULL, 0, '2022-05-31 16:46:06', '2022-05-31 16:49:43'),
(7, 'Bishal', 'Jaiswal', 'bishal', '5690d363233fab288d51e9b4b4c70edb', 'uploads/1654235100_profilee.png', NULL, 0, '2022-06-01 15:59:14', '2022-06-03 11:30:59'),
(10, 'swastika', 'neupane', 'swastika', 'f5bb0c8de146c67b44babbf4e6584cc0', NULL, NULL, 0, '2022-06-03 15:26:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
