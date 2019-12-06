-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 01:43 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `showroommanagement_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add Branch', 7, 'add_branches'),
(20, 'Can change Branch', 7, 'change_branches'),
(21, 'Can delete Branch', 7, 'delete_branches'),
(22, 'Can add Company', 8, 'add_content'),
(23, 'Can change Company', 8, 'change_content'),
(24, 'Can delete Company', 8, 'delete_content'),
(25, 'Can add Customer Registration', 9, 'add_customerregistration'),
(26, 'Can change Customer Registration', 9, 'change_customerregistration'),
(27, 'Can delete Customer Registration', 9, 'delete_customerregistration'),
(28, 'Can add Collection', 10, 'add_installmentcollection'),
(29, 'Can change Collection', 10, 'change_installmentcollection'),
(30, 'Can delete Collection', 10, 'delete_installmentcollection'),
(31, 'Can add Product', 11, 'add_product'),
(32, 'Can change Product', 11, 'change_product'),
(33, 'Can delete Product', 11, 'delete_product'),
(34, 'Can add Product Category', 12, 'add_productcat'),
(35, 'Can change Product Category', 12, 'change_productcat'),
(36, 'Can delete Product Category', 12, 'delete_productcat'),
(37, 'Can add Sales Product', 13, 'add_saleproducts'),
(38, 'Can change Sales Product', 13, 'change_saleproducts'),
(39, 'Can delete Sales Product', 13, 'delete_saleproducts'),
(40, 'Can add Area', 14, 'add_area'),
(41, 'Can change Area', 14, 'change_area'),
(42, 'Can delete Area', 14, 'delete_area'),
(43, 'Can add Company', 15, 'add_companyinfo'),
(44, 'Can change Company', 15, 'change_companyinfo'),
(45, 'Can delete Company', 15, 'delete_companyinfo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$eapbH6GkJpxM$nGAnpzKXfOYvgZZe3DbTJW1T4fXe+KAtT53J8RaE6XI=', '2019-12-02 16:17:40.577200', 1, 'admin', '', '', '', 1, 1, '2019-11-26 17:24:16.082956');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-11-27 15:07:27.589050', '1', 'Joshef Hossain (01965047851)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2019-11-27 15:08:31.402390', '1', 'Joshef Hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"customer_image\", \"nid_image\", \"present_address\", \"permanent_address\", \"profession\", \"reference_person\", \"reference_address\", \"reference_mobile\"]}}]', 9, 1),
(3, '2019-11-27 17:04:44.128325', '2', 'Mobile', 3, '', 12, 1),
(4, '2019-11-27 18:13:06.283961', '4', 'Mobile', 2, '[{\"changed\": {\"fields\": [\"branch\"]}}]', 11, 1),
(5, '2019-11-27 18:16:21.276738', '1', 'Mirpur', 2, '[{\"changed\": {\"fields\": [\"user_name\"]}}]', 7, 1),
(6, '2019-11-27 18:16:59.873476', '1', 'Mirpur', 3, '', 7, 1),
(7, '2019-11-27 18:19:30.670336', '2', 'Joshef Hossain (01965047851)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2019-11-28 08:06:03.288951', '3', 'joshef hossain (01965047851)', 3, '', 9, 1),
(9, '2019-11-28 08:06:03.390040', '2', 'Joshef Hossain (01965047851)', 3, '', 9, 1),
(10, '2019-11-28 08:31:45.019063', '4', 'joshef hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"present_address\", \"permanent_address\", \"reference_address\"]}}]', 9, 1),
(11, '2019-11-28 08:35:39.748184', '4', 'joshef hossain (01965047851)', 3, '', 9, 1),
(12, '2019-11-28 09:09:27.635698', '6', 'Electronics ', 2, '[{\"changed\": {\"fields\": [\"discription\"]}}]', 11, 1),
(13, '2019-11-28 10:59:36.356669', '1', 'joshef hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"payment_type\"]}}]', 13, 1),
(14, '2019-11-28 12:40:47.065195', '5', 'Mobile', 3, '', 12, 1),
(15, '2019-11-28 12:40:47.148584', '3', 'Mobile', 3, '', 12, 1),
(16, '2019-11-28 12:49:17.326811', '7', 'Directory ', 3, '', 12, 1),
(17, '2019-11-28 12:53:40.604565', '2', 'Mamun (01791953820)', 3, '', 13, 1),
(18, '2019-11-28 12:53:40.653937', '1', 'joshef hossain (01965047851)', 3, '', 13, 1),
(19, '2019-11-28 12:53:46.391351', '9', 'Freeze', 3, '', 12, 1),
(20, '2019-11-28 12:53:46.438454', '8', 'Freeze', 3, '', 12, 1),
(21, '2019-11-28 13:18:40.867140', '3', 'Ekram (01991953820)', 2, '[{\"changed\": {\"fields\": [\"invoice\"]}}]', 13, 1),
(22, '2019-11-28 13:19:46.066255', '5', 'Mamun (01791953820)', 2, '[{\"changed\": {\"fields\": [\"invoice\"]}}]', 13, 1),
(23, '2019-11-28 15:38:51.897392', '6', 'Electronics ', 2, '[{\"changed\": {\"fields\": [\"available_quantity\"]}}]', 11, 1),
(24, '2019-11-29 06:20:54.870894', '1', 'showroom', 1, '[{\"added\": {}}]', 8, 1),
(25, '2019-11-29 06:23:18.113290', '2', 'showroom', 1, '[{\"added\": {}}]', 8, 1),
(26, '2019-11-29 07:16:58.749450', '1', 'showroom', 2, '[{\"changed\": {\"fields\": [\"mobile2\"]}}]', 8, 1),
(27, '2019-11-29 07:54:43.068378', '1', 'Showroom', 2, '[{\"changed\": {\"fields\": [\"com_name\"]}}]', 8, 1),
(28, '2019-11-29 16:09:42.358819', '11', 'Oppo F1s', 2, '[{\"changed\": {\"fields\": [\"discription\"]}}]', 11, 1),
(29, '2019-11-29 16:10:52.373602', '11', 'Oppo F1s', 2, '[{\"changed\": {\"fields\": [\"discription\"]}}]', 11, 1),
(30, '2019-11-29 16:25:35.044039', '10', 'Ekram (01991953820)', 3, '', 13, 1),
(31, '2019-11-29 16:25:35.079146', '9', 'Ekram (01991953820)', 3, '', 13, 1),
(32, '2019-11-29 16:25:35.118305', '8', 'Ekram (01991953820)', 3, '', 13, 1),
(33, '2019-11-29 16:52:25.714799', '1', 'Mirpur', 1, '[{\"added\": {}}]', 14, 1),
(34, '2019-11-29 16:52:42.599077', '2', 'Agargoan', 1, '[{\"added\": {}}]', 14, 1),
(35, '2019-11-29 16:52:53.002529', '3', 'Tejgoan', 1, '[{\"added\": {}}]', 14, 1),
(36, '2019-11-29 18:42:57.048962', '18', 'Mamun (01791953820)', 2, '[{\"changed\": {\"fields\": [\"customer\"]}}]', 13, 1),
(37, '2019-11-29 18:43:04.867600', '15', 'joshef hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"customer\"]}}]', 13, 1),
(38, '2019-11-29 18:43:20.660006', '19', 'joshef hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"customer\"]}}]', 13, 1),
(39, '2019-11-29 18:43:33.550756', '11', 'Shohel Khan (01791953820)', 2, '[{\"changed\": {\"fields\": [\"customer\"]}}]', 13, 1),
(40, '2019-11-29 18:44:01.393174', '13', 'Shohel Khan (01791953820)', 2, '[{\"changed\": {\"fields\": [\"customer\"]}}]', 13, 1),
(41, '2019-11-29 18:44:50.541506', '19', 'joshef hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(42, '2019-11-29 19:10:45.161993', '6', 'Mirpur', 2, '[{\"changed\": {\"fields\": [\"branch_logo\"]}}]', 7, 1),
(43, '2019-11-29 19:13:32.916485', '1', 'HR Electronics', 1, '[{\"added\": {}}]', 15, 1),
(44, '2019-11-29 19:52:49.028460', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"company_logo\"]}}]', 15, 1),
(45, '2019-11-29 20:40:10.915237', '6', 'Mirpur', 2, '[{\"changed\": {\"fields\": [\"address\"]}}]', 7, 1),
(46, '2019-11-29 20:56:46.359144', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"address\"]}}]', 15, 1),
(47, '2019-11-29 20:57:49.681490', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"address\"]}}]', 15, 1),
(48, '2019-11-29 20:58:23.667923', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"email\", \"mobile1\"]}}]', 15, 1),
(49, '2019-11-29 21:00:46.737952', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"mobile2\"]}}]', 15, 1),
(50, '2019-11-29 21:01:32.472836', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"address\"]}}]', 15, 1),
(51, '2019-11-29 21:01:37.263623', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"address\"]}}]', 15, 1),
(52, '2019-11-29 21:17:54.313962', '13', 'joshef hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"area\"]}}]', 9, 1),
(53, '2019-11-29 21:18:01.738017', '11', 'Shohel Khan (01791953820)', 2, '[{\"changed\": {\"fields\": [\"area\", \"profession\"]}}]', 9, 1),
(54, '2019-11-29 21:18:29.116291', '10', 'Mamun (01791953820)', 2, '[{\"changed\": {\"fields\": [\"area\"]}}]', 9, 1),
(55, '2019-11-29 21:18:36.461175', '9', 'Ekram (01991953820)', 2, '[{\"changed\": {\"fields\": [\"area\", \"profession\"]}}]', 9, 1),
(56, '2019-11-29 21:18:41.982228', '8', 'Shohel Khan (01791953820)', 2, '[{\"changed\": {\"fields\": [\"area\", \"profession\"]}}]', 9, 1),
(57, '2019-11-30 06:27:17.847873', '1', 'HR Electronics', 2, '[{\"changed\": {\"fields\": [\"domain_url\"]}}]', 15, 1),
(58, '2019-11-30 09:23:01.156805', '11', 'Oppo F1s', 2, '[{\"changed\": {\"fields\": [\"brand_name\"]}}]', 11, 1),
(59, '2019-11-30 09:23:38.150916', '10', 'Redmi S2', 2, '[{\"changed\": {\"fields\": [\"brand_name\"]}}]', 11, 1),
(60, '2019-11-30 09:23:45.799569', '9', 'Walton Mobile', 2, '[{\"changed\": {\"fields\": [\"brand_name\"]}}]', 11, 1),
(61, '2019-11-30 10:31:13.632222', '16', 'Ekram (01991953820)', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(62, '2019-11-30 10:34:00.438208', '11', 'Shohel Khan (01791953820)', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(63, '2019-11-30 18:56:15.440462', '19', 'joshef hossain (01965047851)', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(64, '2019-12-02 16:18:19.785039', '17', 'Motorcycle ', 3, '', 12, 1),
(65, '2019-12-02 16:18:19.845003', '16', 'Tv', 3, '', 12, 1),
(66, '2019-12-02 16:18:19.889977', '15', 'Tv', 3, '', 12, 1),
(67, '2019-12-02 16:18:19.922959', '14', 'Mobile1', 3, '', 12, 1),
(68, '2019-12-02 16:18:19.945969', '13', 'Motorcycle ', 3, '', 12, 1),
(69, '2019-12-02 16:18:19.966934', '12', 'Tv', 3, '', 12, 1),
(70, '2019-12-02 16:18:19.989921', '11', 'Mobile', 3, '', 12, 1),
(71, '2019-12-02 16:18:20.011908', '10', 'Freeze', 3, '', 12, 1),
(72, '2019-12-02 16:18:20.056883', '6', 'Mobile', 3, '', 12, 1),
(73, '2019-12-02 16:18:20.200800', '4', 'Electronics ', 3, '', 12, 1),
(74, '2019-12-02 16:22:05.469098', '18', 'Mobile', 3, '', 12, 1),
(75, '2019-12-04 09:53:44.520168', '13', 'joshef hossain (01965047851)', 3, '', 9, 1),
(76, '2019-12-04 09:53:44.694131', '7', 'joshef hossain (01965047851)', 3, '', 9, 1),
(77, '2019-12-04 12:07:04.097392', '31', 'joshef hossain (01965047851)', 3, '', 13, 1),
(78, '2019-12-04 12:07:04.173817', '30', 'joshef hossain (01965047851)', 3, '', 13, 1),
(79, '2019-12-04 12:07:04.195997', '29', 'joshef hossain (01965047851)', 3, '', 13, 1),
(80, '2019-12-04 12:07:04.239524', '28', 'joshef hossain (01965047851)', 3, '', 13, 1),
(81, '2019-12-04 12:07:04.262703', '27', 'joshef hossain (01965047851)', 3, '', 13, 1),
(82, '2019-12-04 12:07:04.317756', '26', 'joshef hossain (01965047851)', 3, '', 13, 1),
(83, '2019-12-04 12:07:04.361935', '25', 'joshef hossain (01965047851)', 3, '', 13, 1),
(84, '2019-12-04 12:07:04.384888', '24', 'joshef hossain (01965047851)', 3, '', 13, 1),
(85, '2019-12-04 12:07:04.442934', '23', 'joshef hossain (01965047851)', 3, '', 13, 1),
(86, '2019-12-04 12:07:04.562830', '22', 'joshef hossain (01965047851)', 3, '', 13, 1),
(87, '2019-12-04 12:07:04.606741', '21', 'Ekram (01991953820)', 3, '', 13, 1),
(88, '2019-12-04 12:16:27.891154', '36', 'joshef hossain (01965047851)', 3, '', 13, 1),
(89, '2019-12-04 12:16:27.942222', '35', 'joshef hossain (01965047851)', 3, '', 13, 1),
(90, '2019-12-04 12:16:27.966096', '34', 'joshef hossain (01965047851)', 3, '', 13, 1),
(91, '2019-12-04 12:16:28.009009', '33', 'joshef hossain (01965047851)', 3, '', 13, 1),
(92, '2019-12-04 12:16:28.057107', '32', 'joshef hossain (01965047851)', 3, '', 13, 1),
(93, '2019-12-04 12:20:15.306863', '38', 'joshef hossain (01965047851)', 3, '', 13, 1),
(94, '2019-12-04 12:20:15.367014', '37', 'joshef hossain (01965047851)', 3, '', 13, 1),
(95, '2019-12-04 12:39:24.856195', '40', 'Walton TV', 3, '', 13, 1),
(96, '2019-12-04 12:39:24.990960', '39', 'Walton TV', 3, '', 13, 1),
(97, '2019-12-04 12:51:10.265240', '44', 'Walton Mobile', 3, '', 13, 1),
(98, '2019-12-04 12:51:10.312403', '43', 'Walton Mobile', 3, '', 13, 1),
(99, '2019-12-04 12:51:10.377725', '42', 'Walton Mobile', 3, '', 13, 1),
(100, '2019-12-04 12:51:10.435307', '41', 'Walton TV', 3, '', 13, 1),
(101, '2019-12-04 12:59:37.595133', '45', 'Walton Mobile', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(102, '2019-12-04 13:00:06.992240', '45', 'Walton Mobile', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(103, '2019-12-04 13:02:36.793134', '45', 'Walton Mobile', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(104, '2019-12-04 17:47:08.344274', '45', 'Walton Mobile', 3, '', 13, 1),
(105, '2019-12-04 18:27:32.518604', '47', 'Walton Mobile', 2, '[{\"changed\": {\"fields\": [\"next_installment_date\"]}}]', 13, 1),
(106, '2019-12-05 08:13:07.295732', '46', 'Walton Mobile', 3, '', 13, 1),
(107, '2019-12-05 08:39:53.446629', '50', 'Walton Mobile', 3, '', 13, 1),
(108, '2019-12-05 08:45:19.351448', '31', 'Ekram (01991953820)-Walton Mobile', 3, '', 10, 1),
(109, '2019-12-05 08:45:19.386837', '30', 'Ekram (01991953820)-Walton Mobile', 3, '', 10, 1),
(110, '2019-12-05 08:45:19.426144', '29', 'Ekram (01991953820)-Walton Mobile', 3, '', 10, 1),
(111, '2019-12-05 08:45:19.464586', '28', 'Ekram (01991953820)-Walton Mobile', 3, '', 10, 1),
(112, '2019-12-05 08:45:19.537683', '27', 'Ekram (01991953820)-Walton Mobile', 3, '', 10, 1),
(113, '2019-12-05 08:45:30.548547', '49', 'Walton Mobile', 3, '', 13, 1),
(114, '2019-12-05 08:45:30.587525', '48', 'Walton Mobile', 3, '', 13, 1),
(115, '2019-12-05 08:45:30.631499', '47', 'Walton Mobile', 3, '', 13, 1),
(116, '2019-12-05 10:56:04.310475', '37', 'Ekram (01991953820)-Walton TV', 3, '', 10, 1),
(117, '2019-12-05 10:56:04.400870', '36', 'Ekram (01991953820)-Walton TV', 3, '', 10, 1),
(118, '2019-12-05 10:56:04.478634', '35', 'Ekram (01991953820)-Walton TV', 3, '', 10, 1),
(119, '2019-12-05 12:38:54.385311', '53', 'Walton TV', 2, '[{\"changed\": {\"fields\": [\"due_amount\"]}}]', 13, 1),
(120, '2019-12-05 12:39:06.223344', '53', 'Walton TV', 2, '[{\"changed\": {\"fields\": [\"due_amount\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(14, 'showroom', 'area'),
(7, 'showroom', 'branches'),
(15, 'showroom', 'companyinfo'),
(8, 'showroom', 'content'),
(9, 'showroom', 'customerregistration'),
(10, 'showroom', 'installmentcollection'),
(11, 'showroom', 'product'),
(12, 'showroom', 'productcat'),
(13, 'showroom', 'saleproducts');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-11-26 17:22:27.728302'),
(2, 'auth', '0001_initial', '2019-11-26 17:22:37.543591'),
(3, 'admin', '0001_initial', '2019-11-26 17:22:39.715448'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-11-26 17:22:39.820565'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-11-26 17:22:41.198793'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-11-26 17:22:42.059451'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-11-26 17:22:42.793942'),
(8, 'auth', '0004_alter_user_username_opts', '2019-11-26 17:22:42.841144'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-11-26 17:22:43.618135'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-11-26 17:22:43.654268'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-11-26 17:22:43.682499'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-11-26 17:22:45.677224'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2019-11-26 17:22:45.826031'),
(14, 'sessions', '0001_initial', '2019-11-26 17:22:46.539934'),
(15, 'showroom', '0001_initial', '2019-11-26 17:23:09.684557'),
(16, 'showroom', '0002_branches_user_name', '2019-11-26 17:27:26.203090'),
(17, 'showroom', '0003_auto_20191128_1349', '2019-11-28 07:49:44.413313'),
(18, 'showroom', '0004_auto_20191128_1542', '2019-11-28 09:42:10.274212'),
(19, 'showroom', '0005_auto_20191128_1633', '2019-11-28 10:33:25.943828'),
(20, 'showroom', '0006_auto_20191128_1857', '2019-11-28 12:57:15.372492'),
(21, 'showroom', '0007_auto_20191129_2109', '2019-11-29 15:09:46.703326'),
(22, 'showroom', '0008_area', '2019-11-29 16:51:02.200324'),
(23, 'showroom', '0009_customerregistration_area', '2019-11-29 16:54:04.654811'),
(24, 'showroom', '0010_auto_20191130_0056', '2019-11-29 18:56:46.019326'),
(25, 'showroom', '0011_content_domain_url', '2019-11-29 19:07:55.732222'),
(26, 'showroom', '0012_auto_20191130_0110', '2019-11-29 19:10:13.925406'),
(27, 'showroom', '0013_auto_20191130_0112', '2019-11-29 19:12:39.234767'),
(28, 'showroom', '0014_area_branch', '2019-11-29 19:18:25.163291'),
(29, 'showroom', '0015_auto_20191203_1718', '2019-12-03 11:18:54.353465'),
(30, 'showroom', '0016_auto_20191203_1810', '2019-12-03 12:10:15.642990'),
(31, 'showroom', '0017_saleproducts_total_installment', '2019-12-04 09:17:04.398592'),
(32, 'showroom', '0018_installmentcollection_total_installment', '2019-12-04 09:28:54.119903'),
(33, 'showroom', '0019_auto_20191204_1800', '2019-12-04 12:00:22.383384'),
(34, 'showroom', '0020_saleproducts_paid_amount', '2019-12-04 12:49:59.614270');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9hs7wzfvyugy4cwehv82i19fm7r61muz', 'ODhiZGZiMGQ5MjFlMTQwZjNmMjQ5MzUwNzAwMjdmZDhmZjY3MTg4ZTp7ImlkIjo2LCJwcm9wcmlldG9yX25hbWUiOiJKb3kiLCJicmFuY2hfbmFtZSI6Ik1pcnB1ciIsImJyYW5jaF9sb2dvIjoiYnJhbmNoX2xvZ28vYnJhbmRfZm9yX2Jsb2cuanBnIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNiNTc0MTIzMDIwZjQ5YjNjZmYzNThiNmZmNDE1NGVjM2MzOGIyZjgifQ==', '2019-12-19 08:10:09.904920'),
('di9fiqeaded2vmine6frr0um90vnijyh', 'NTAwZDBhNzZiNTQ0NzExYzAxZDNlODZmZTIyMDM0Y2U0ODMzYzZlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYjU3NDEyMzAyMGY0OWIzY2ZmMzU4YjZmZjQxNTRlYzNjMzhiMmY4IiwidXNlciI6ImFkbWluIiwidXNlcnR5cGUiOiJhZG1pbiIsImlkIjo2LCJwcm9wcmlldG9yX25hbWUiOiJKb3kiLCJicmFuY2hfbmFtZSI6Ik1pcnB1ciIsImJyYW5jaF9sb2dvIjoiYnJhbmNoX2xvZ28vYnJhbmRfZm9yX2Jsb2cuanBnIn0=', '2019-12-14 06:23:03.102763'),
('ihltgn8yl9x4smgqtlirbcuz2rr9unzl', 'ZjY3MGJiNTU2YWJhNGY5NGE1YTViYTFmOTcwZWFmOGQwMGIwMDQ3Yzp7ImlkIjo2LCJwcm9wcmlldG9yX25hbWUiOiJKb3kiLCJicmFuY2hfbmFtZSI6Ik1pcnB1ciIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYjU3NDEyMzAyMGY0OWIzY2ZmMzU4YjZmZjQxNTRlYzNjMzhiMmY4IiwiYnJhbmNoX2xvZ28iOiJicmFuY2hfbG9nby9icmFuZF9mb3JfYmxvZy5qcGcifQ==', '2019-12-13 19:21:57.637665'),
('jvouzd18csaxctarp2xzfakuh0neqtjc', 'MTMxNjBlYWM0YTk3YmZjODEwOWRiNWM4YTUyMWE1YTQ2NmUxY2ZiOTp7ImlkIjo2LCJwcm9wcmlldG9yX25hbWUiOiJKb3kiLCJicmFuY2hfbmFtZSI6Ik1pcnB1ciIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYjU3NDEyMzAyMGY0OWIzY2ZmMzU4YjZmZjQxNTRlYzNjMzhiMmY4IiwidXNlciI6ImFkbWluIiwidXNlcnR5cGUiOiJhZG1pbiJ9', '2019-12-13 20:48:08.991501'),
('oi2nq51i9zt08wwwku7fyu4gn67hwell', 'MWU0MzliNGQ0MTQ1ZjYwMDhkMGU5OGVjZGYzYzNlZTQwMGE1NzMyOTp7ImlkIjo2LCJwcm9wcmlldG9yX25hbWUiOiJKb3kiLCJicmFuY2hfbmFtZSI6Ik1pcnB1ciIsImJyYW5jaF9sb2dvIjoiYnJhbmNoX2xvZ28vYnJhbmRfZm9yX2Jsb2cuanBnIn0=', '2019-12-18 17:36:11.021697'),
('q60lxn74bs14li5xj4sixlgffr5t9fwd', 'ODA2ZDJlMWIxZWFjOTVmYjBjYzQwYjE1MmZkOGY4NmM5MTg1ZjdiMzp7InVzZXIiOiJhZG1pbiIsInVzZXJ0eXBlIjoiYWRtaW4iLCJpZCI6NywicHJvcHJpZXRvcl9uYW1lIjoiTXIuIEtoYW4iLCJicmFuY2hfbmFtZSI6IkhlYWQgT2ZmaWNlIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNiNTc0MTIzMDIwZjQ5YjNjZmYzNThiNmZmNDE1NGVjM2MzOGIyZjgifQ==', '2019-12-12 14:15:45.331717'),
('sfdnr06kjgkeeztqbet53kbk5tu8ygg0', 'YTM3NzQzNzkzZjc5YjQyMjNmZmE2Nzg3ZjVjNTdmY2Q0YWQ3MGFjNjp7InVzZXIiOmZhbHNlLCJ1c2VydHlwZSI6ZmFsc2UsImlkIjo2LCJwcm9wcmlldG9yX25hbWUiOiJKb3kiLCJicmFuY2hfbmFtZSI6Ik1pcnB1ciIsImJyYW5jaF9sb2dvIjoiYnJhbmNoX2xvZ28vYnJhbmRfZm9yX2Jsb2cuanBnIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNiNTc0MTIzMDIwZjQ5YjNjZmYzNThiNmZmNDE1NGVjM2MzOGIyZjgifQ==', '2019-12-14 18:19:27.297963'),
('y5rb16p9lsjnvauii99mjtygxmgdk5g9', 'MDczMGM2N2Y1OWIzMjFlYTM3ZWRhODZkM2FmNmFjNTIxOGUxZTYzYzp7ImlkIjo3LCJwcm9wcmlldG9yX25hbWUiOiJNci4gS2hhbiIsImJyYW5jaF9uYW1lIjoiSGVhZCBPZmZpY2UiLCJ1c2VyIjoiYWRtaW4iLCJ1c2VydHlwZSI6ImFkbWluIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNiNTc0MTIzMDIwZjQ5YjNjZmYzNThiNmZmNDE1NGVjM2MzOGIyZjgifQ==', '2019-12-12 13:09:39.978286');

-- --------------------------------------------------------

--
-- Table structure for table `showroom_area`
--

CREATE TABLE `showroom_area` (
  `id` int(11) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `showroom_area`
--

INSERT INTO `showroom_area` (`id`, `area_name`, `status`, `branch_id`) VALUES
(1, 'Mirpur', 1, 3),
(2, 'Agargoan', 1, 3),
(3, 'Tejgoan', 1, 3),
(4, 'Uttra', 1, 6),
(5, 'Taltola', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `showroom_branches`
--

CREATE TABLE `showroom_branches` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `proprietor_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `staring_year` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `branch_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `showroom_branches`
--

INSERT INTO `showroom_branches` (`id`, `branch_name`, `proprietor_name`, `email`, `mobile`, `password`, `staring_year`, `address`, `status`, `user_name`, `branch_logo`) VALUES
(3, 'Gulshan-1', 'Habib Khan', 'hossainjoshef@gmail.com', '01965047851', '', 2019, 'xcfvdsfsdf', 1, 'habib1', ''),
(6, 'Mirpur', 'Joy', 'test@gmail.com', '01965047851', '202cb962ac59075b964b07152d234b70', 2019, 'Taltola Rd, Dhaka', 1, 'joy123', 'branch_logo/brand_for_blog.jpg'),
(7, 'Head Office', 'Mr. Khan', 'khan@gmail.com', '0215454', '202cb962ac59075b964b07152d234b70', 2019, 'Dhaka', 1, 'khan', '');

-- --------------------------------------------------------

--
-- Table structure for table `showroom_companyinfo`
--

CREATE TABLE `showroom_companyinfo` (
  `id` int(11) NOT NULL,
  `com_name` varchar(150) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile1` varchar(50) NOT NULL,
  `mobile2` varchar(50) NOT NULL,
  `domain_url` varchar(100) NOT NULL,
  `company_logo` varchar(100) NOT NULL,
  `staring_year` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `showroom_companyinfo`
--

INSERT INTO `showroom_companyinfo` (`id`, `com_name`, `owner_name`, `email`, `mobile1`, `mobile2`, `domain_url`, `company_logo`, `staring_year`, `address`, `status`) VALUES
(1, 'HR Electronics', 'Mr. Jabed khan', 'test@gmail.com', '01584721563', '0158474578', 'http://127.0.0.1:8000', 'company_logo/pepsi.png', 2019, 'North Pirerbag, Mirpur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `showroom_customerregistration`
--

CREATE TABLE `showroom_customerregistration` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `mobile1` varchar(16) NOT NULL,
  `nid_number` varchar(50) NOT NULL,
  `customer_image` varchar(100) NOT NULL,
  `nid_image` varchar(100) NOT NULL,
  `present_address` longtext NOT NULL,
  `permanent_address` longtext NOT NULL,
  `profession` varchar(150) NOT NULL,
  `reference_person` varchar(50) NOT NULL,
  `reference_address` varchar(150) NOT NULL,
  `reference_mobile` varchar(15) NOT NULL,
  `reg_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `showroom_customerregistration`
--

INSERT INTO `showroom_customerregistration` (`id`, `name`, `email`, `mobile`, `mobile1`, `nid_number`, `customer_image`, `nid_image`, `present_address`, `permanent_address`, `profession`, `reference_person`, `reference_address`, `reference_mobile`, `reg_date`, `status`, `branch_id`, `area_id`) VALUES
(8, 'Shohel Khan', 'shohel@gmail.com', '01791953820', '01965214521', '45875412256', 'customer_image/Conf 1.PNG', 'nid_image/net.PNG', 'Mirpur-10', 'Mirpur-10', 'Business', 'Habib', 'Taltola', '015478595521', '2019-11-28', 1, 6, 4),
(9, 'Ekram', 'ekram@gmail.com', '01991953820', '01965214521', '45875412256', 'customer_image/Conf 2.PNG', 'nid_image/net.PNG', 'Gulshan', 'Gulshan', 'Business', 'Arman', 'Taltola', '01452154785', '2019-11-28', 1, 6, 5),
(10, 'Mamun', 'mamun@gmail.com', '01791953820', '01965214521', '45875412256', 'customer_image/net.PNG', 'nid_image/my full.PNG', 'Kishoganj', 'Dhaka', 'Student', 'Joshef', 'Kishorganj', '0147853269', '2019-11-28', 1, 6, 4),
(11, 'Shohel Khan', 'hossainjoshef@gmail.com', '01791953820', '01965214521', '45875412256', 'customer_image/Conf 2.PNG', '', 'dsfdsf', 'sdfdsf', 'Business', 'Habib', 'dfsdfdsf', '01452154785', '2019-11-28', 1, 7, 5),
(12, 'joshef hossain', 'shohel1@gmail.com', '01965047851', '01584721563', '56214587523', 'customer_image/the-whole-tashhud-is.jpg', 'nid_image/the-whole-tashhud-is.jpg', 'sdfsdf', 'sdfsdfsdf', 'Student', 'Nayem Khan', '  dsfsdfs', '01965041025', '2019-11-29', 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `showroom_installmentcollection`
--

CREATE TABLE `showroom_installmentcollection` (
  `id` int(11) NOT NULL,
  `paid_amount` double NOT NULL,
  `due_date` datetime(6) NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `invoice` int(11) DEFAULT NULL,
  `total_installment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `showroom_installmentcollection`
--

INSERT INTO `showroom_installmentcollection` (`id`, `paid_amount`, `due_date`, `payment_date`, `status`, `branch_id`, `customer_id`, `product_id`, `invoice`, `total_installment`) VALUES
(33, 10000, '2019-12-05 18:00:00.000000', '2019-12-04 18:00:00.000000', 1, 6, 8, 51, NULL, 3),
(34, 10000, '2019-12-04 18:00:00.000000', '2019-12-04 18:00:00.000000', 1, 6, 9, 53, NULL, 3),
(38, 1250, '2019-12-04 18:00:00.000000', '2019-12-04 18:00:00.000000', 1, 6, 9, 53, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `showroom_saleproducts`
--

CREATE TABLE `showroom_saleproducts` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(1) NOT NULL,
  `sale_quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `due_amount` double NOT NULL,
  `comment` longtext NOT NULL,
  `next_installment_date` date DEFAULT NULL,
  `sale_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sale_unit_price` int(11) NOT NULL,
  `next_installment_amount` double NOT NULL,
  `invoice` int(11) DEFAULT NULL,
  `brand_name` varchar(150) NOT NULL,
  `product_model_number` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `total_installment` int(11) NOT NULL,
  `paid_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `showroom_saleproducts`
--

INSERT INTO `showroom_saleproducts` (`id`, `payment_type`, `sale_quantity`, `total_price`, `due_amount`, `comment`, `next_installment_date`, `sale_date`, `status`, `branch_id`, `customer_id`, `sale_unit_price`, `next_installment_amount`, `invoice`, `brand_name`, `product_model_number`, `product_name`, `total_installment`, `paid_amount`) VALUES
(51, '2', 1, 12000, 2000, 'bhjgu', '2019-12-06', '2019-12-05', 1, 6, 8, 12000, 666.666666666667, 1145, 'Oppo', 'D2', 'Walton Mobile', 3, 10000),
(52, '1', 1, 22000, 0, 'this is awesome mobile.', NULL, '2019-12-05', 1, 6, 10, 22000, 0, 1200, 'Oppo', 'F1s', 'Opp Mobile', 0, 0),
(53, '2', 1, 15000, 0, 'fdfdgdf', NULL, '2019-12-05', 1, 6, 9, 15000, 1250, 11454, 'Walton', 's2', 'Walton TV', 4, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `showroom_area`
--
ALTER TABLE `showroom_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_area_branch_id_bf99a7d1_fk_showroom_branches_id` (`branch_id`);

--
-- Indexes for table `showroom_branches`
--
ALTER TABLE `showroom_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showroom_companyinfo`
--
ALTER TABLE `showroom_companyinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showroom_customerregistration`
--
ALTER TABLE `showroom_customerregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_customerreg_branch_id_2ba27329_fk_showroom_` (`branch_id`),
  ADD KEY `showroom_customerreg_area_id_90c2aef1_fk_showroom_` (`area_id`);

--
-- Indexes for table `showroom_installmentcollection`
--
ALTER TABLE `showroom_installmentcollection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_installment_branch_id_1af2474f_fk_showroom_` (`branch_id`),
  ADD KEY `showroom_installment_customer_id_9aa16a5b_fk_showroom_` (`customer_id`),
  ADD KEY `showroom_installment_product_id_eb06d27a_fk_showroom_` (`product_id`);

--
-- Indexes for table `showroom_saleproducts`
--
ALTER TABLE `showroom_saleproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showroom_saleproducts_branch_id_4bd54304_fk_showroom_branches_id` (`branch_id`),
  ADD KEY `showroom_saleproduct_customer_id_edb406bb_fk_showroom_` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `showroom_area`
--
ALTER TABLE `showroom_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `showroom_branches`
--
ALTER TABLE `showroom_branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `showroom_companyinfo`
--
ALTER TABLE `showroom_companyinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `showroom_customerregistration`
--
ALTER TABLE `showroom_customerregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `showroom_installmentcollection`
--
ALTER TABLE `showroom_installmentcollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `showroom_saleproducts`
--
ALTER TABLE `showroom_saleproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `showroom_area`
--
ALTER TABLE `showroom_area`
  ADD CONSTRAINT `showroom_area_branch_id_bf99a7d1_fk_showroom_branches_id` FOREIGN KEY (`branch_id`) REFERENCES `showroom_branches` (`id`);

--
-- Constraints for table `showroom_customerregistration`
--
ALTER TABLE `showroom_customerregistration`
  ADD CONSTRAINT `showroom_customerreg_area_id_90c2aef1_fk_showroom_` FOREIGN KEY (`area_id`) REFERENCES `showroom_area` (`id`),
  ADD CONSTRAINT `showroom_customerreg_branch_id_2ba27329_fk_showroom_` FOREIGN KEY (`branch_id`) REFERENCES `showroom_branches` (`id`);

--
-- Constraints for table `showroom_installmentcollection`
--
ALTER TABLE `showroom_installmentcollection`
  ADD CONSTRAINT `showroom_installment_branch_id_1af2474f_fk_showroom_` FOREIGN KEY (`branch_id`) REFERENCES `showroom_branches` (`id`),
  ADD CONSTRAINT `showroom_installment_customer_id_9aa16a5b_fk_showroom_` FOREIGN KEY (`customer_id`) REFERENCES `showroom_customerregistration` (`id`),
  ADD CONSTRAINT `showroom_installment_product_id_eb06d27a_fk_showroom_` FOREIGN KEY (`product_id`) REFERENCES `showroom_saleproducts` (`id`);

--
-- Constraints for table `showroom_saleproducts`
--
ALTER TABLE `showroom_saleproducts`
  ADD CONSTRAINT `showroom_saleproduct_customer_id_edb406bb_fk_showroom_` FOREIGN KEY (`customer_id`) REFERENCES `showroom_customerregistration` (`id`),
  ADD CONSTRAINT `showroom_saleproducts_branch_id_4bd54304_fk_showroom_branches_id` FOREIGN KEY (`branch_id`) REFERENCES `showroom_branches` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
