-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 08:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studyportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcontent`
--

CREATE TABLE `addcontent` (
  `id` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `contitle` varchar(50) NOT NULL,
  `condes` varchar(5000) NOT NULL,
  `conlink` varchar(30) NOT NULL,
  `confile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcontent`
--

INSERT INTO `addcontent` (`id`, `cname`, `contitle`, `condes`, `conlink`, `confile`) VALUES
(21, 'Java', 'Unit 1', 'Features of Java, Byte-code, JVM, Java data types, variables and arrays, vector, control\r\nstatements, Introduction to Java class and object, main() function, garbage collection and\r\nfinalize() method, this, inheritance, method overriding, dynamic method dispatching, calling\r\nconstructor of super class, super, passing parameters to super class, final, package, interface,\r\nabstract class, class path, String and String Buffer Class.', '', 'upload/UNIT_I_Lecture_Notes_gPBDTvZ.pdf'),
(23, 'Java', 'Unit 3', 'I/O classes & Interfaces, FILE, The Stream Classes, the Byte stream (InputStream,\r\nOutputStream, FileInputStream, FileOutputStream), SERIALIZATION. Java networking:\r\nNetworking classes and Interfaces, InetAddress, TCP/IP Client/Server socket, URL,\r\nURLConnection, Datagram, distributed application development using Remote Method\r\nInvocation (RMI). ', '', 'upload/Unit-III_LectureNotes_StreamSocket.pdf'),
(24, 'Java', 'unit 4', 'Delegation event model, Event sources, Event classes, Event listener interface, Introduction to\r\nAWT, Layout managers: setLayout(), Swing: benefits of Swing over AWT, JFrames, JPanels,\r\nJLabels, JButtons , JTabbedPane, ,JSplitPane, JOptionPane, JComboBox, JListBox, JTextField,\r\nJTextArea, JScrollPane, JMenu, JToolbar, JDialog, JTable, JDesctopPane, JInternalFrame,\r\nJava Database Connectivity: JDBC, Connectivity with Oracle/MySQL/MS-Access RDBMS. ', '', 'upload/Java_Swing.pdf'),
(25, 'Java', 'Unit 5', ' Applet skeleton/Architecture,The HTML APPLET Tag ,Passing Parameters to Applets ,getDocumentBase( ) and getCodeBase( ) ,AppletContext and showDocument( ) ,A simple servlet and steps to execute ,Reading servlet parameter ,Session Tracking', '', 'upload/Unit-V_LectureNotes_UnitV_WebProgramming.pdf'),
(26, 'python', 'Variables, Data types and Keywords in python', 'Variables\r\n Data types \r\nKeywords', '', 'upload/3._Variables_Data_types_and_Keywords_in_python.pdf'),
(27, 'python', 'Operators in python', 'Operators and its types', '', 'upload/4._OPERATORS_IN_PYTHON.pdf'),
(28, 'cpp', 'C language notes ', ' Handwritten tones of C Language', '', 'upload/C_Handwritten_Notes.pdf'),
(29, 'python', 'List , Dictionary , Set , Tuples &Type Conversion', 'List\r\nDictionary\r\nSet\r\nTuples &Type Conversion', '', 'upload/Chapter_5_ListDictionarySet_Tuples_Type_Conversion.pdf'),
(30, 'React JS', 'Short notes', ' REact JS short notes', '', 'upload/Complete_React_JS_Short_Notes.pdf'),
(31, 'Html', 'HTML AND CSS Notes', ' HTML\r\nCSS', '', 'upload/html_and_css_with_w3school.pdf'),
(32, 'Html', 'Html Tags', 'Various tags available in html\r\n ', '', 'upload/HTML_Tags.pdf'),
(33, 'python', 'Python Introduction', ' Introduction of python', '', 'upload/Introduction_to_python_.pdf'),
(34, 'MYSQL', 'SQL Keys', ' Keys in SQL', '', 'upload/Keys_In_SQL.pdf'),
(35, 'MYSQL', 'Notes', ' SQL Notes', '', 'upload/SQL_Notes.pdf'),
(36, 'python', 'Python book', ' Python Ebook', '', 'upload/Python_Ebook_Final.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `addcource`
--

CREATE TABLE `addcource` (
  `id` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `cimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcource`
--

INSERT INTO `addcource` (`id`, `cname`, `cimg`) VALUES
(33, 'Java', 'upload/Java.png'),
(34, 'PHP', 'upload/php.png'),
(35, 'python', 'upload/Python.jpg'),
(36, 'Html', 'upload/HTML.webp'),
(37, 'cpp', 'upload/CPP.webp'),
(38, 'C#', 'upload/csharp.jpg'),
(40, 'node Js', 'upload/nodejs.jpg'),
(41, 'VB .net', 'upload/vbnet.jpg'),
(42, 'React JS', 'upload/reactjs..jpg'),
(44, 'MYSQL', 'upload/Mysql.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('Shubham', '1530'),
('xyz', '123');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add addco', 8, 'add_addco'),
(30, 'Can change addco', 8, 'change_addco'),
(31, 'Can delete addco', 8, 'delete_addco'),
(32, 'Can view addco', 8, 'view_addco'),
(33, 'Can add addcontent', 9, 'add_addcontent'),
(34, 'Can change addcontent', 9, 'change_addcontent'),
(35, 'Can delete addcontent', 9, 'delete_addcontent'),
(36, 'Can view addcontent', 9, 'view_addcontent'),
(37, 'Can add studentreg', 10, 'add_studentreg'),
(38, 'Can change studentreg', 10, 'change_studentreg'),
(39, 'Can delete studentreg', 10, 'delete_studentreg'),
(40, 'Can view studentreg', 10, 'view_studentreg');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'myapp', 'addco'),
(9, 'myapp', 'addcontent'),
(7, 'myapp', 'admin'),
(10, 'myapp', 'studentreg'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-24 06:20:50.883404'),
(2, 'auth', '0001_initial', '2024-04-24 06:20:51.527418'),
(3, 'admin', '0001_initial', '2024-04-24 06:20:51.680814'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-24 06:20:51.696445'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-24 06:20:51.710166'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-24 06:20:51.796153'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-24 06:20:51.869801'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-24 06:20:51.924624'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-24 06:20:51.933426'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-24 06:20:51.997430'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-24 06:20:51.997430'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-24 06:20:52.004232'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-24 06:20:52.029221'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-24 06:20:52.046289'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-24 06:20:52.065714'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-24 06:20:52.078491'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-24 06:20:52.095689'),
(18, 'myapp', '0001_initial', '2024-04-24 06:20:52.108735'),
(19, 'sessions', '0001_initial', '2024-04-24 06:20:52.347736'),
(20, 'myapp', '0002_addco', '2024-04-26 05:03:30.952011'),
(21, 'myapp', '0003_alter_addco_cimg', '2024-04-26 06:33:48.462812'),
(22, 'myapp', '0004_addcontent', '2024-04-26 09:24:03.124387'),
(23, 'myapp', '0005_studentreg', '2024-04-29 06:38:27.759710');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4n8wagtq3vdtcvvfe6gfqc69k25pwmoh', 'eyJlbWFpbCI6InNodWJoYW12ZXJtYTAzMDYyMDAxQGdtYWlsLmNvbSIsInNuMSI6IlNodWJoYW0gVmVybWEifQ:1sI06O:oRtFmh815Py85WPysGMqA4Sa3JHccWjwdBrIyp-lm0E', '2024-06-28 06:07:56.061976'),
('84m9q73dglbgnr8c5gmbchqgvvfmqd09', 'eyJlbWFpbCI6InNodWJoYW12ZXJtYTAzMDYyMDAxQGdtYWlsLmNvbSIsInNuMSI6IlNodWJoYW0gVmVybWEifQ:1s2pKP:ARKEBWuN9jTq25moIRFTVwmv0fMo-ywq1_GvUxbnr3A', '2024-05-17 09:35:41.335689');

-- --------------------------------------------------------

--
-- Table structure for table `studentreg`
--

CREATE TABLE `studentreg` (
  `id` int(11) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `sgen` varchar(10) NOT NULL,
  `sco` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sadd` varchar(40) NOT NULL,
  `date` varchar(30) NOT NULL,
  `cpass` varchar(30) NOT NULL,
  `simg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentreg`
--

INSERT INTO `studentreg` (`id`, `sname`, `sgen`, `sco`, `email`, `sadd`, `date`, `cpass`, `simg`) VALUES
(41, 'Shubham Verma', 'male', 7470384888, 'shubhamverma03062001@gmail.com', 'Raipur', '2024-04-29 13:59:36.462132', '1530', 'upload/bg_rcwNVS1.jpg'),
(44, 'Shubham Verma', 'male', 7470384888, 'rupx2001@gmail.com', 'Raipur', '2024-04-30 15:06:57.011890', '77268', 'upload/bg_Tcwi4LQ.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcontent`
--
ALTER TABLE `addcontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addcource`
--
ALTER TABLE `addcource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

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
-- Indexes for table `studentreg`
--
ALTER TABLE `studentreg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcontent`
--
ALTER TABLE `addcontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `addcource`
--
ALTER TABLE `addcource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `studentreg`
--
ALTER TABLE `studentreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
