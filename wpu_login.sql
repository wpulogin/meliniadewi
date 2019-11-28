-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 01:33 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(65, 'Melinia Admin', 'meliniapurwita@gmail.com', 'default.jpg', '$2y$10$.JI1QSb7IdUT5TN/PVSkguhQgP0d.AYhaZvACQaKK44Ej.SiJ5Ps6', 2, 1, 1574901051),
(66, 'Melinia Admin', 'meliniadewi0@gmail.com', 'default.jpg', '$2y$10$eJTRdlC3WB7ZEPSCt7H7BOJrTEEJJrlqole8N0j6524B2rD45i1fC', 1, 1, 1574901161);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'Admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'SubMenuManagement ', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(10, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(11, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(34, 'pwpbtugas@gmail.com', 'ktonL80/SrZlaaR/+A0NdPZVQbxRidijXe8zvtjTDos=', 1571295936),
(35, 'pwpbtugas@gmail.com', '/FjczDJS/leGjgEMXwUXA0A/3+3qsWNHi4sO7bxa8oo=', 1571295988),
(36, 'mia@gmail.com', 'rijrCgvSsMXY6FqV1L3YOcoI4yIYzeY0RC2t+nQCyxM=', 1574734097),
(38, '21sacah002@gmail.com', '2f7mUoX+B82MDx7VZ1DRAkWgi9N4TAeruV9pDZuGY6s=', 1574734763),
(39, '21sacah002@gmail.com', 'ayk+V+iC62WCoOye2fs73Qi++I71wZusjfHCEEgZ5dE=', 1574735001),
(41, 'wd767526@gmail.com', 'f1GYMRIyJlCQY7er+Fl7DdM8UbOmoX11OK0H0RCRUgE=', 1574736107),
(42, 'mellydella282@gmail.com', 'CFX3cCJBARD/1h2kcmUSIHwCSAb+hoLbZEGTY7lVVfE=', 1574736259),
(43, 'ruaryvinaa@gmail.com', 'AWbdx+V2K510E8NKpnMZlW2+n1KkfezgXrB6Q7Qx3oM=', 1574736840),
(44, 'ruaryvinaa@gmail.com', 'IKR7IgUjgPnVsKXh3OLFxxq+gWmyctjARC1WQaUekF0=', 1574737025),
(45, 'ruaryvinaa@gmail.com', 'YPyEwWlKbrlrxR0v8Top6wHy6mPvMl6mCckQh1docWo=', 1574737080),
(46, 'mellydella282@gmail.com', 'F/1g8dM1tTedn8Nztz/zaIbTn1QiozMGQzV2HHWkxXw=', 1574737217),
(47, 'welwely433@gmail.com', 'opmh47kX8cQ7Edv+kEe3MP5J9ItzjC9nCqNUaapdWUY=', 1574738143),
(48, 'wely6124@gmail.com', '68ZOIF8CUWmOvrlyHCGZh27mujd7rUFLaz98WyJSAT8=', 1574738226),
(49, 'wd767526@gmail.com', 'zp3ZKAoJgOoRsFJbbuI3XzBOLWt4WYAm6XftFE98dHQ=', 1574738564),
(50, 'gadingrejo578@gmail.com', 'Yw2KqXWPSTgZA2WMxsF+obfB0GixZciCUKP2yLb1x1I=', 1574738654),
(51, 'rizkypermatadewi20256@gmail.com', 'SO3+AhyywfeFuusDqpE0+6rCZjQluVlFYIgawUAHvNE=', 1574738993),
(52, 'rizkypd17@gmail.com', '/7cpXomj90NaLbRSE6VHb8E0y4P7XOyGBQCkvNX4BXA=', 1574739076),
(53, 'ritasulistiawati60@gmail.com', 'OZmE4R415ES3BEFQlkjmmvq3K7DdrqA/8687YpJfogE=', 1574739841),
(54, 'RitaSulis17@gmail.com', 'tLP6PbAZg9xJt1ww38HfIgtUdLH07eOL8yNMVuAi/Tw=', 1574739898),
(55, 'meliniapurwita@gmail.com', 'uy1kLxvAszeVL+xz1Tk8cItmitcfUzq7HGUO9qiZhto=', 1574901051),
(56, 'meliniadewi0@gmail.com', 'HJeVRy/WXiBIM6MiWqHzhQFagA7HtjB5USekbzMqL5c=', 1574901161);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
