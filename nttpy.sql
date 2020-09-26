-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 06:10 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nttpy`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add route', 1, 'add_route'),
(2, 'Can change route', 1, 'change_route'),
(3, 'Can delete route', 1, 'delete_route'),
(4, 'Can view route', 1, 'view_route'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add Token', 8, 'add_token'),
(30, 'Can change Token', 8, 'change_token'),
(31, 'Can delete Token', 8, 'delete_token'),
(32, 'Can view Token', 8, 'view_token'),
(33, 'Can add router', 1, 'add_router'),
(34, 'Can change router', 1, 'change_router'),
(35, 'Can delete router', 1, 'delete_router'),
(36, 'Can view router', 1, 'view_router');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$McDmCSyPqrgY$rRygTq8lvkNbyD2REBgivKs/bEInQ2W8rvfG209lITA=', '2020-09-26 08:50:02.692150', 1, 'user1234', '', '', 'user@123.com', 1, 1, '2020-09-26 08:49:37.177207');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-26 08:51:37.401071', '1', 'Route object (1)', 1, '[{\"added\": {}}]', 1, 1),
(2, '2020-09-26 14:22:20.736322', '5', 'fjewhguirg', 3, '', 1, 1),
(3, '2020-09-26 14:22:21.136703', '4', 'alpha3', 3, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(8, 'authtoken', 'token'),
(6, 'contenttypes', 'contenttype'),
(1, 'route', 'router'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-26 08:45:02.284098'),
(2, 'auth', '0001_initial', '2020-09-26 08:45:05.214315'),
(3, 'admin', '0001_initial', '2020-09-26 08:45:14.979899'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-26 08:45:18.048577'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-26 08:45:18.146015'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-26 08:45:19.921528'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-26 08:45:20.915908'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-26 08:45:22.325327'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-26 08:45:22.385416'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-26 08:45:23.160988'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-26 08:45:23.207840'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-26 08:45:23.279036'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-26 08:45:24.269819'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-26 08:45:25.263626'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-26 08:45:26.354526'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-26 08:45:26.416027'),
(17, 'authtoken', '0001_initial', '2020-09-26 08:45:26.902836'),
(18, 'authtoken', '0002_auto_20160226_1747', '2020-09-26 08:45:29.206623'),
(19, 'route', '0001_initial', '2020-09-26 08:45:29.934872'),
(20, 'sessions', '0001_initial', '2020-09-26 08:45:31.211134'),
(21, 'route', '0002_auto_20200926_1448', '2020-09-26 09:18:41.135914'),
(22, 'route', '0003_auto_20200926_1953', '2020-09-26 14:24:00.166470');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('t6pvayc1e6p3loro4m0de3ktoryruwzn', 'YzU2ZTY4MDM0NmFlYzZkYjE1YjAyNjZkNDM5ZjA5MDI5MzgzNTNhYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOTlkZWE5NTk4NjYyMjQ1ZWQzNDk3MzQwZGEwYTM2ZmRiOTFmZDNhIn0=', '2020-10-10 08:50:02.761182');

-- --------------------------------------------------------

--
-- Table structure for table `route_router`
--

CREATE TABLE `route_router` (
  `id` int(11) NOT NULL,
  `sapId` varchar(18) NOT NULL,
  `hostname` varchar(14) NOT NULL,
  `loopback` char(39) NOT NULL,
  `macAddress` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_router`
--

INSERT INTO `route_router` (`id`, `sapId`, `hostname`, `loopback`, `macAddress`) VALUES
(7, '4893529580478', 'web-69.santos.', '92.240.171.39', '57:5A:46:2D:68:8A'),
(8, '3391571480500', 'desktop-05.cha', '3.183.145.114', 'C1:9C:FC:17:70:A8'),
(9, '7872966761756', 'db-54.morgan-b', '34.38.162.64', '37:11:F7:4E:62:BE'),
(10, '8140288326412', 'email-47.james', '119.103.80.166', 'D7:E9:BD:6B:FE:E9'),
(11, '4765667143690', 'web-52.little.', '190.204.58.163', '90:80:9E:7E:4C:21'),
(12, '0364745719769', 'lt-84.anderson', '181.240.119.182', 'D2:C5:94:89:CA:D4'),
(13, '7951919015449', 'desktop-02.bry', '2.190.140.165', '48:64:5F:0F:01:CD'),
(14, '5161175353953', 'email-08.field', '135.182.138.186', 'AF:17:AC:1D:0A:D7'),
(15, '2998283859691', 'db-98.lane.com', '180.198.88.25', '66:48:2A:5A:BE:77'),
(16, '1068483031223', 'email-61.chapm', '32.30.26.194', 'D4:DD:3B:2F:D0:8E'),
(17, '9684821528746', 'srv-67.howell.', '19.80.0.8', 'F4:57:2C:C4:AE:82'),
(18, '9526712488685', 'web-09.jackson', '24.104.92.91', '36:E4:2F:B0:31:00'),
(19, '0370622177701', 'laptop-73.tuck', '184.111.36.192', '6C:68:19:03:FC:AD'),
(20, '0373539774936', 'lt-93.williams', '28.220.158.43', 'BA:11:4B:E1:0A:CC'),
(21, '0467516364988', 'laptop-82.tayl', '164.4.239.204', 'E9:D3:D9:32:DE:70'),
(22, '7512790550767', 'email-21.chen.', '76.163.0.112', '63:C9:98:85:A3:C8'),
(23, '0111528806655', 'srv-38.boyd-mi', '38.100.206.133', '16:BC:6E:64:AA:A7'),
(24, '3879987817641', 'email-80.moral', '45.184.209.65', 'C0:C2:A0:C5:6A:E5'),
(25, '6286356338574', 'db-41.salazar.', '128.238.61.104', '88:D9:AF:81:53:01'),
(26, '3697729877386', 'laptop-78.hick', '208.16.104.94', '3C:B7:4D:B0:75:9A'),
(27, '7021271521243', 'lt-32.schneide', '78.219.45.89', '3C:11:22:BC:6E:C5'),
(28, '8778886178984', 'srv-18.william', '208.217.228.132', 'B1:B9:94:3B:D2:68'),
(29, '3343489417375', 'email-38.sanch', '211.157.32.202', '9B:77:74:3A:CB:AB'),
(30, '4907581037055', 'web-21.wilcox.', '206.203.17.21', '3F:97:E7:97:42:69'),
(31, '1839113331936', 'srv-73.william', '106.196.147.48', '37:09:E6:E6:C9:71'),
(32, '8311035755004', 'laptop-28.mann', '140.143.209.139', '1C:38:D6:3D:86:D0'),
(33, '3505317266606', 'srv-75.stewart', '10.176.50.110', '7E:75:98:6A:B6:3C'),
(34, '3390853121230', 'laptop-54.whit', '92.150.2.145', '3C:66:D9:82:DB:1E'),
(35, '2823175814595', 'web-55.miller.', '23.102.24.82', 'E1:A3:BB:E8:76:63'),
(36, '1822332987939', 'desktop-76.mcd', '115.10.177.161', '58:7D:45:AF:FF:7A'),
(37, '1221520777797', 'desktop-63.arm', '91.254.93.73', 'E1:85:6E:29:9D:7D'),
(38, '8845826605523', 'email-58.compt', '7.202.38.74', '3D:D5:98:04:9B:DA'),
(39, '3953722523804', 'srv-51.frazier', '65.57.24.1', '4D:19:3A:04:09:35'),
(40, '9660747179776', 'desktop-95.joh', '46.241.34.86', '71:DD:9B:1C:E7:42'),
(41, '5146274304884', 'db-97.walsh-mu', '219.105.180.215', '32:75:A5:EB:6E:F3'),
(42, '3352321760869', 'web-92.wallace', '124.207.213.70', '2D:AF:AD:FE:1B:88'),
(43, '3221025468578', 'srv-63.ballard', '185.158.12.140', '16:88:DB:02:9E:1E'),
(44, '4243022999591', 'desktop-33.sto', '168.20.129.236', 'EC:EB:54:09:BF:91'),
(45, '7308429882418', 'srv-73.lewis-c', '167.217.82.19', 'A1:C8:E4:71:0E:ED'),
(46, '6013370303097', 'desktop-20.mil', '171.34.197.4', 'A9:BD:07:B6:64:6F'),
(47, '0031094234186', 'web-97.bolton.', '110.139.18.84', '8D:92:7E:82:5F:E1'),
(48, '5823503564525', 'lt-60.macdonal', '16.127.62.232', '16:96:82:30:2D:51'),
(49, '7898613464781', 'lt-28.oconnor-', '79.99.109.61', '20:2F:99:F9:FE:B8'),
(50, '3790851726270', 'lt-51.maldonad', '40.164.145.162', '9D:6A:AC:8D:F8:10'),
(51, '1347925226515', 'email-84.salaz', '97.187.50.102', 'F0:33:47:47:D0:20'),
(52, '6593671533826', 'laptop-29.zimm', '144.13.230.67', 'F2:8E:44:34:41:C8'),
(53, '2718807896806', 'web-79.sparks.', '41.238.129.180', '2F:08:BD:4D:07:6F'),
(54, '0946834834799', 'lt-34.delgado.', '72.65.174.138', '1B:FA:C8:11:7F:09'),
(55, '5439211542482', 'lt-56.mendez-p', '220.39.17.41', 'B9:2F:F2:4C:0D:D7'),
(56, '2029746836240', 'desktop-07.jen', '173.39.175.94', '92:2B:27:E4:4B:84'),
(57, '5504740822265', 'lt-29.berry-sl', '157.129.173.250', '52:38:A8:50:9C:81'),
(58, '0875462087740', 'lt-98.mason-ta', '12.13.190.255', '65:5F:9F:B0:25:AD'),
(59, '6614154445397', 'db-82.ortiz.in', '218.111.131.8', '70:30:43:74:AA:D7'),
(60, '1092364141848', 'email-87.levy.', '24.80.77.21', 'AE:DB:7E:12:BB:A8'),
(61, '3498855717257', 'laptop-27.boyd', '9.129.87.69', 'D3:71:C5:F9:0D:1D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `route_router`
--
ALTER TABLE `route_router`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `route_router_hostname_965c562d_uniq` (`hostname`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `route_router`
--
ALTER TABLE `route_router`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
