-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2013 at 08:13 PM
-- Server version: 5.1.70-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `visualed_p2_visualedgedev_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `bios`
--

CREATE TABLE IF NOT EXISTS `bios` (
  `bio_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`bio_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `bios`
--

INSERT INTO `bios` (`bio_id`, `created`, `user_id`, `content`) VALUES
(5, 1383710110, 5, 'a'),
(54, 1383703701, 54, 'Hello everyone this is my bio'),
(55, 1383703819, 55, 'My bio as well'),
(56, 1383710237, 56, 'posted my bio'),
(57, 1383711438, 57, 'Roommates'),
(60, 1383716088, 60, 'bio'),
(63, 1384312719, 63, 'Gandalf was the wisest of the Maiar. He was first known as Olórin, and sometimes dwelt in the gardens of Irmo, and was the pupil of Nienna, who taught him wisdom and pity, and of Manwë and Varda. When the Valar decided to send the order of the Istari (also known as Wizards) to Middle-earth, to counsel and assist all those in Middle-earth who opposed the Dark Lord Sauron Manwë and Varda decided to include Olórin among the five who were sent. When he arrived to Middle Earth he received Narya, the ring of fire, from Cirdan the Shipwright. Gandalf (Olorin) spent many centuries walking among the elves as a stranger, learning from them and teaching them. He later revealed himself as one of the Istari, and eventually became known as the wisest of and most powerful of that order. He joined the White Council, which was formed to investigate a dark power in Dol Guldur, of which Galadriel wanted him to become the leader, yet Saruman came to lead the Council instead of him.[1] Although Saruman was at first more powerful, was more knowledgeable about many matters regarding Sauron and the Rings of Power, and was head of the White Council before the War of the Ring, he later grew jealous and afraid of Gandalf.'),
(64, 1385688034, 64, 'test bio');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `created`, `modified`, `user_id`, `content`) VALUES
(1, 1382411070, 1382411070, 5, 'testing1\r\n'),
(2, 1382411082, 1382411082, 5, 'testing 2\r\n \r\nboom'),
(3, 1382411111, 1382411111, 5, 'test3'),
(6, 1383503846, 1383503846, 5, 'Tableau provides business intelligence (BI) software to help all organizations see and understand their data. Given the freedom to easily and rapidly explore, visualize, publish and share analyses, Tableau clients work 10 to 100 times faster. \r\n\r\nResponsible for all aspects of net-new customer acquisition and sales of Tableau’s BI products within a region of the midwest in a quota carrying “land and expand” sales role. Activities included prospecting, qualifying, technical demonstration, negotiating, closing, and managing any additional resources involved in each sales cycle.'),
(7, 1383508308, 1383508308, 5, 'nov 3 is today'),
(10, 1383536140, 1383536140, 5, 'test'),
(12, 1383614819, 1383614819, 5, ''),
(13, 1383615186, 1383615186, 5, 'not blank'),
(26, 1383703686, 1383703686, 54, 'Hello World'),
(27, 1383703806, 1383703806, 55, 'Signing in'),
(28, 1383710248, 1383710248, 56, 'post1'),
(29, 1383711459, 1383711459, 57, 'Here we go'),
(30, 1383711636, 1383711636, 59, 'new user w/o pic'),
(31, 1383712844, 1383712844, 58, 'Another test post'),
(32, 1383715898, 1383715898, 60, 'test'),
(33, 1383866583, 1383866583, 58, 'Post'),
(34, 1384310212, 1384310212, 63, 'A Balrog. A demon of the ancient world. This foe is beyond any of you. Run!'),
(35, 1385688045, 1385688045, 64, 'hello'),
(36, 1386539765, 1386539765, 5, 'x');

-- --------------------------------------------------------

--
-- Table structure for table `profilePics`
--

CREATE TABLE IF NOT EXISTS `profilePics` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `picture` longblob NOT NULL,
  `created` int(11) NOT NULL,
  `image_name` varchar(65) NOT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `profilePics`
--

INSERT INTO `profilePics` (`pic_id`, `user_id`, `picture`, `created`, `image_name`) VALUES
(5, 5, 0x70696374757265352e6a706567, 1383710144, ''),
(54, 54, 0x7069637475726535342e706e67, 1383703453, ''),
(55, 55, 0x7069637475726535352e6a7067, 1383703795, ''),
(56, 56, 0x7069637475726535362e706e67, 1383710225, ''),
(57, 57, 0x7069637475726535372e6a7067, 1383711426, ''),
(58, 58, 0x7069637475726535382e6a706567, 1383711515, ''),
(59, 59, 0x2f75706c6f6164732f70726f66696c65732f626c616e6b5f70726f66696c652e6a7067, 1383711627, ''),
(60, 60, 0x7069637475726536302e706e67, 1383715913, ''),
(61, 61, 0x2f75706c6f6164732f70726f66696c65732f626c616e6b5f70726f66696c652e6a7067, 1383793525, ''),
(62, 62, 0x2f75706c6f6164732f70726f66696c65732f626c616e6b5f70726f66696c652e6a7067, 1384117738, ''),
(63, 63, 0x7069637475726536332e6a7067, 1384312978, ''),
(64, 64, 0x7069637475726536342e6a7067, 1385688133, '');

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
  `timezone` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `first_name`, `last_name`, `email`) VALUES
(5, 1381774363, 1381774363, 'f9baf85185b1aa25f79668bcb588403762ea94d0', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'andy', 'leroy', 'test@test.com'),
(54, 1383703430, 1383703430, 'c48db1b207607595277a7b478b5909531540d205', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'Michael', 'LeRoy', 'mleroy@tulsa.edu'),
(55, 1383703736, 1383703736, 'ac825522b9e68999ca83d5c4e78b20df33ffbb64', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'Jimmy', 'Barber', 'jbarber@gmail.com'),
(56, 1383710174, 1383710174, '63d839618168b9ec87ba18d8ac75e6d2383f710c', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'Ranier', 'Mt', 'mt@ranier.com'),
(57, 1383711413, 1383711413, '00d6f2a8d5e63d00b5713e1446cf5fd123ec19a5', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'Jim', 'Barber', 'jb@gmail.com'),
(58, 1383711509, 1383711509, '1f41dd356f6901e56fe6879cb5a93e8ddfcfcd29', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'Andy', 'LeRoy', 'apleroy@gmail.com'),
(59, 1383711626, 1383711626, '103ba71e0b0c0981c962f5be6ff5d9505ecf26a9', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'New', 'User', 'new@user.com'),
(60, 1383715858, 1383715858, '609c4302be002c548e05865917e899d4ed273328', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'New', 'User2', 'user2@test.com'),
(61, 1383793525, 1383793525, 'dfaeed273a023db88374672d45c172a03c59e571', '7344a08752ab18904ed2c21fe3d04203ad00c445', 0, 0, 'Viraj', 'Vora', 'viraj1303@yahoo.com'),
(62, 1384117738, 1384117738, '17158ffcf04f9692ccde5b03e31c199fba700860', '51d159971aefe4053977d1dafd5308dc14312721', 0, 0, 'Susie ', 'LeRoy', 'srlleroy@gmail.com'),
(63, 1384309456, 1384309456, '85d5500053cd99515c9219ce3fd555209e3a9b50', '9fe4d3ea0e9397175045bfab13765f7a92878bb2', 0, 0, 'Gandalf', 'Grey, the', 'keepItSecret@keepIt.Safe'),
(64, 1385687919, 1385687919, '13ab274b6bc553043ab6e94b3efd2f26ffed76ce', '8db21c790989238cda4c55e900de32c05a36da8e', 0, 0, 'Nov28', 'Thanksgiving', 'test@nov28.com');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE IF NOT EXISTS `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'FK.Follower.',
  `user_id_followed` int(11) NOT NULL COMMENT 'Followed.',
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`user_user_id`, `created`, `user_id`, `user_id_followed`) VALUES
(6, 1382820568, 5, 15),
(56, 1383703394, 5, 5),
(57, 1383703404, 5, 5),
(61, 1383703670, 54, 5),
(62, 1383703676, 54, 54),
(63, 1383703810, 55, 55),
(64, 1383710116, 5, 55),
(65, 1383710253, 56, 5),
(66, 1383710254, 56, 54),
(67, 1383710256, 56, 55),
(68, 1383710258, 56, 56),
(69, 1383711463, 57, 57),
(70, 1383711466, 57, 5),
(71, 1383711521, 58, 5),
(72, 1383711522, 58, 54),
(73, 1383711523, 58, 57),
(74, 1383711641, 59, 59),
(75, 1383712872, 58, 58),
(76, 1383713059, 58, 59),
(78, 1383881099, 5, 58),
(79, 1383881104, 5, 57),
(80, 1383881128, 5, 60),
(81, 1384048382, 58, 60),
(83, 1384117822, 62, 57),
(84, 1384209218, 58, 62),
(85, 1384310233, 63, 5),
(86, 1384310236, 63, 63),
(87, 1384310271, 63, 55),
(89, 1384720911, 62, 54),
(90, 1384720917, 62, 5),
(92, 1385687975, 64, 54),
(93, 1385687976, 64, 55),
(94, 1385687980, 64, 56),
(95, 1385688025, 64, 64),
(96, 1385688227, 58, 64),
(97, 1386539795, 5, 64),
(98, 1387073123, 5, 63);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bios`
--
ALTER TABLE `bios`
  ADD CONSTRAINT `bios_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profilePics`
--
ALTER TABLE `profilePics`
  ADD CONSTRAINT `profilePics_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_users`
--
ALTER TABLE `users_users`
  ADD CONSTRAINT `users_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=200 ;

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
(197, 10, '2', 1387759152, 1387759152, 1, 'red'),
(198, 10, '3', 1387759157, 1387759157, 2, ''),
(199, 10, '4', 1387759175, 1387759175, 0, 'green');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

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
(10, 1387759136, 1387759136, 'f565a59f403eeb5266962c8bb68fe8f5c0dee38b', '8d7ae77090aca0760e876327a9b6d88bf39266c0', 0, '', 'test10', 'test10', 'test10@test10.com');

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
