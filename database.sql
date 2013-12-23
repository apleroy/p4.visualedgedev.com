-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2013 at 10:30 PM
-- Server version: 5.1.70-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `visualed_p4_visualedgedev_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `list_id` (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `list_title_entry` varchar(255) NOT NULL,
  `modified` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  PRIMARY KEY (`list_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`list_id`, `user_id`, `list_title_entry`, `modified`, `created`, `sort_order`, `color`) VALUES
(105, 3, '1234', 1387419441, 1387419441, 0, ''),
(106, 3, 'qa', 1387419533, 1387419533, 0, ''),
(109, 3, 'asc', 1387419952, 1387419952, 0, ''),
(114, 3, 'id', 1387421913, 1387421913, 0, ''),
(115, 3, 'id', 1387421917, 1387421917, 0, ''),
(116, 3, 'apl', 1387422813, 1387422813, 0, ''),
(117, 3, 'abdl', 1387422906, 1387422906, 0, ''),
(128, 2, '123567890', 1387659199, 1387659199, 8, 'purple'),
(129, 2, '567', 1387659204, 1387659204, 7, 'blue'),
(130, 2, 'abc', 1387667860, 1387667860, 10, 'purple'),
(133, 2, '0', 1387675428, 1387675428, 9, 'purple'),
(134, 2, '333', 1387675931, 1387675931, 5, 'green'),
(135, 2, '9999', 1387676047, 1387676047, 6, 'purple'),
(136, 2, 'should be first', 1387676097, 1387676097, 3, 'blue'),
(137, 2, '#1', 1387676125, 1387676125, 1, 'blue'),
(139, 2, 'new #1', 1387676195, 1387676195, 2, 'red'),
(140, 2, 'Dec 18: P3 Grades have been posted; visit students.dwa15.com to view your grade. Grade distribution: A 89%, B 8%, C 2%, D 1%', 1387680796, 1387680796, 4, 'orange'),
(142, 4, 'boom', 1387682764, 1387682764, 2, ''),
(143, 4, 'yessir', 1387682771, 1387682771, 1, ''),
(147, 5, 'abc', 1387687905, 1387687905, 1, ''),
(148, 5, 'def', 1387688413, 1387688413, 3, ''),
(149, 5, 'it might have been about. The electronic list might be slowly destroying our ability to memorize and recall things, scary… I think I will play a little memory tonight with my kids.', 1387688541, 1387688541, 4, ''),
(156, 4, 'bcdljabckjabckdjabckjdabckajbckdjcbaceaceceavcdvkjbkcdjbckj   cacdlaclknbncaslckncsacsdac', 1387691063, 1387691063, 0, ''),
(157, 5, 'vdsac', 1387691956, 1387691956, 0, ''),
(158, 5, '1111', 1387691966, 1387691966, 2, ''),
(159, 6, 'aaaab', 1387726370, 1387726370, 4, ''),
(162, 6, '111', 1387727874, 1387727874, 1, ''),
(163, 6, 'a', 1387736010, 1387736010, 3, 'gray'),
(170, 6, 'sadadd', 1387736042, 1387736042, 2, ''),
(176, 7, '1', 1387748658, 1387748658, 10, 'blue'),
(177, 7, '2', 1387748715, 1387748715, 9, ''),
(178, 7, '3', 1387748719, 1387748719, 7, ''),
(179, 7, '4', 1387748733, 1387748733, 8, ''),
(180, 7, '5', 1387748773, 1387748773, 5, ''),
(181, 7, '6', 1387748806, 1387748806, 6, ''),
(183, 7, '8', 1387748870, 1387748870, 11, 'gray'),
(184, 8, '1', 1387749660, 1387749660, 1, 'orange'),
(185, 8, '1', 1387749680, 1387749680, 0, ''),
(186, 7, '2', 1387749703, 1387749703, 4, ''),
(187, 7, '1', 1387749797, 1387749797, 3, ''),
(188, 7, '1', 1387749870, 1387749870, 2, ''),
(189, 7, 'a', 1387749880, 1387749880, 1, ''),
(190, 7, 'q', 1387749974, 1387749974, 0, ''),
(191, 9, 'helow', 1387750060, 1387750060, 1, 'red'),
(192, 9, 'q', 1387750069, 1387750069, 3, 'purple'),
(193, 9, 's', 1387750074, 1387750074, 2, ''),
(194, 9, 'a', 1387750391, 1387750391, 0, ''),
(195, 2, 'Dec 18: P3 Grades have been posted; visit students.dwa15.com to view your grade  Dec 18: P3 Grades have been posted; visit students.dwa15.com to view your grade. Grade distribution: A 89%, B 8%, C 2%, D 1%Dec 18: P3 Grades have been posted; visit students', 1387750670, 1387750670, 0, 'blue'),
(197, 10, '2', 1387759152, 1387759152, 1, 'blue'),
(198, 10, '3', 1387759157, 1387759157, 2, 'purple'),
(199, 10, '42', 1387759175, 1387759175, 0, 'orange'),
(200, 11, '1', 1387762723, 1387762723, 2, 'gray'),
(201, 11, '2', 1387762746, 1387762746, 1, 'purple'),
(202, 11, '3', 1387762751, 1387762751, 0, 'red'),
(204, 12, 'b', 1387766478, 1387766478, 0, 'blue'),
(205, 12, 'cda', 1387766483, 1387766483, 2, 'purple'),
(206, 12, 'd', 1387766488, 1387766488, 1, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `first_name`, `last_name`, `email`) VALUES
(1, 1386540382, 1386540382, 'f1dec873620af80f4c07913c22f04a107f7eac65', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'a', 'v', 'a@abc.com'),
(2, 1387031177, 1387031177, 'a406d9090faed947bd39f63f1c4c64254694a8ae', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test', 'test', 'test@test.com'),
(3, 1387077324, 1387077324, 'd0342ddaa35bb3c40e532983573bf8a7557cc915', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test2', 'test2', 'test2@test2.com'),
(4, 1387682730, 1387682730, 'ad060ea7b791b7a29d827275753ca5e7ecf65999', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test3', 'test3', 'test3@test3.com'),
(5, 1387687324, 1387687324, '83a0b4c268b3c2b682995df83c16c0d0f62be389', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test4', 'test4', 'test4@test4.com'),
(6, 1387726140, 1387726140, 'e0808f154f268566a6fdc19a87ddba6bbb901758', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test5', 'test5', 'test5@test5.com'),
(7, 1387748647, 1387748647, '662c9d9b8eca0701535fcece39c109a76af562c1', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test6', 'test6', 'test6@test6.com'),
(8, 1387749650, 1387749650, 'dd329812ef26d04211be91248a101d44970e96d8', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'firefox', 'firefox', 'firefox@a.com'),
(9, 1387750019, 1387750019, 'b293f401310c96cf3f548905b589268c60e8aebf', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test7', 'test7', 'test7@test7.com'),
(10, 1387759136, 1387759136, 'dfc48f55835fec3f839efa4844779eff8935ed64', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test10', 'test10', 'test10@test10.com'),
(11, 1387762711, 1387762711, '3d14c0bdaf9c18141159d250c005995ccecabc96', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'Andy', 'LeRoy', 'test1@test1.com'),
(12, 1387766466, 1387766466, 'ae883485edf1d5a8bccf11a20508d8da48db8424', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'Andy', 'LeRoy', 'apl@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `lists` (`list_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `lists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;