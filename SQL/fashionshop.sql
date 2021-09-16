-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 10:10 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_account`
--

CREATE TABLE `accounts_account` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts_account`
--

INSERT INTO `accounts_account` (`id`, `password`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `date_joined`, `last_login`, `is_admin`, `is_staff`, `is_active`, `is_superadmin`) VALUES
(1, 'pbkdf2_sha256$216000$AjNuZLVvQRGY$u/jPcRyRuLwqSV4x/vJmsJG4SKFDDrsTQUMA1MJoJLo=', 'Tran', 'Van Hanh', 'vincentvn2005', 'vincentvn2005@gmail.com', '+33783433558', '2021-08-28 20:49:13.664837', '2021-08-28 20:49:37.359885', 0, 0, 1, 0),
(2, 'pbkdf2_sha256$216000$DVShEOfJ8qdL$l8pjdgdMuXGj/62oVAj34ZF3URDdrXly65nOXg/cAPk=', 'VAN HANH', 'TRAN', 'TRANHANH', 'moncodeit@gmail.com', '', '2021-08-28 21:04:20.668804', '2021-09-09 17:53:30.614358', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofile`
--

CREATE TABLE `accounts_userprofile` (
  `id` int(11) NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts_userprofile`
--

INSERT INTO `accounts_userprofile` (`id`, `address_line_1`, `address_line_2`, `profile_picture`, `city`, `state`, `country`, `user_id`) VALUES
(1, '', '', 'default/default-user.png', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_honeypot_loginattempt`
--

CREATE TABLE `admin_honeypot_loginattempt` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` char(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add account', 7, 'add_account'),
(26, 'Can change account', 7, 'change_account'),
(27, 'Can delete account', 7, 'delete_account'),
(28, 'Can view account', 7, 'view_account'),
(29, 'Can add user profile', 8, 'add_userprofile'),
(30, 'Can change user profile', 8, 'change_userprofile'),
(31, 'Can delete user profile', 8, 'delete_userprofile'),
(32, 'Can view user profile', 8, 'view_userprofile'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add variation', 10, 'add_variation'),
(38, 'Can change variation', 10, 'change_variation'),
(39, 'Can delete variation', 10, 'delete_variation'),
(40, 'Can view variation', 10, 'view_variation'),
(41, 'Can add review rating', 11, 'add_reviewrating'),
(42, 'Can change review rating', 11, 'change_reviewrating'),
(43, 'Can delete review rating', 11, 'delete_reviewrating'),
(44, 'Can view review rating', 11, 'view_reviewrating'),
(45, 'Can add productgallery', 12, 'add_productgallery'),
(46, 'Can change productgallery', 12, 'change_productgallery'),
(47, 'Can delete productgallery', 12, 'delete_productgallery'),
(48, 'Can view productgallery', 12, 'view_productgallery'),
(49, 'Can add cart', 13, 'add_cart'),
(50, 'Can change cart', 13, 'change_cart'),
(51, 'Can delete cart', 13, 'delete_cart'),
(52, 'Can view cart', 13, 'view_cart'),
(53, 'Can add cart item', 14, 'add_cartitem'),
(54, 'Can change cart item', 14, 'change_cartitem'),
(55, 'Can delete cart item', 14, 'delete_cartitem'),
(56, 'Can view cart item', 14, 'view_cartitem'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order'),
(61, 'Can add payment', 16, 'add_payment'),
(62, 'Can change payment', 16, 'change_payment'),
(63, 'Can delete payment', 16, 'delete_payment'),
(64, 'Can view payment', 16, 'view_payment'),
(65, 'Can add order product', 17, 'add_orderproduct'),
(66, 'Can change order product', 17, 'change_orderproduct'),
(67, 'Can delete order product', 17, 'delete_orderproduct'),
(68, 'Can view order product', 17, 'view_orderproduct'),
(69, 'Can add login attempt', 18, 'add_loginattempt'),
(70, 'Can change login attempt', 18, 'change_loginattempt'),
(71, 'Can delete login attempt', 18, 'delete_loginattempt'),
(72, 'Can view login attempt', 18, 'view_loginattempt');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem`
--

CREATE TABLE `carts_cartitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem_variations`
--

CREATE TABLE `carts_cartitem_variations` (
  `id` int(11) NOT NULL,
  `cartitem_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE `category_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cat_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_category`
--

INSERT INTO `category_category` (`id`, `category_name`, `slug`, `description`, `cat_image`) VALUES
(1, 'Homme', 'homme', 'La mode pour Homme', ''),
(2, 'Femme', 'femme', '', ''),
(3, 'Enfant', 'enfant', '', ''),
(4, 'Chaussures', 'chaussures', '', ''),
(5, 'Sport', 'sport', '', ''),
(6, 'Contact', 'contact', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-08-28 21:05:36.785637', '1', 'Homme', 1, '[{\"added\": {}}]', 6, 2),
(2, '2021-08-28 21:05:47.677142', '2', 'Femme', 1, '[{\"added\": {}}]', 6, 2),
(3, '2021-08-28 21:05:56.563507', '3', 'Enfant', 1, '[{\"added\": {}}]', 6, 2),
(4, '2021-08-28 21:06:06.873504', '4', 'Chaussures', 1, '[{\"added\": {}}]', 6, 2),
(5, '2021-08-28 21:06:15.579934', '5', 'Sport', 1, '[{\"added\": {}}]', 6, 2),
(6, '2021-08-28 21:21:14.360163', '6', 'Contact', 1, '[{\"added\": {}}]', 6, 2),
(7, '2021-08-28 21:38:38.102719', '1', 'kapsul-t-shirt-adulte-pas-le-temps-davoir-le-temps', 1, '[{\"added\": {}}]', 9, 2),
(8, '2021-08-28 21:39:42.313410', '2', 'kapsul-t-shirt-adulte-hot-dog', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"kapsul-t-shirt-adulte-hot-dog\"}}]', 9, 2),
(9, '2021-08-28 21:43:22.894743', '3', 'Chemise slim unie satin - Blanc', 1, '[{\"added\": {}}]', 9, 2),
(10, '2021-08-28 21:45:12.044323', '4', 'Chemise H2pli droite coton', 1, '[{\"added\": {}}]', 9, 2),
(11, '2021-09-09 09:32:13.386702', '5', 'NIKE MAILLOT FFF STRIKE', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE MAILLOT FFF STRIKE\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE MAILLOT FFF STRIKE\"}}]', 9, 2),
(12, '2021-09-09 09:35:19.588583', '6', 'NIKE TSHIRT LOGO PREHEAT AOP', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE TSHIRT LOGO PREHEAT AOP\"}}]', 9, 2),
(13, '2021-09-09 09:43:33.445116', '7', 'NIKE MAILLOT PSG/JORDAN', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE MAILLOT PSG/JORDAN\"}}]', 9, 2),
(14, '2021-09-09 09:44:45.963099', '8', 'NIKE ML JORDAN DNA AV0044', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE ML JORDAN DNA AV0044\"}}]', 9, 2),
(15, '2021-09-09 09:45:52.124698', '9', 'NIKE ML JORDAN DNA', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE ML JORDAN DNA\"}}]', 9, 2),
(16, '2021-09-09 09:47:37.887259', '10', 'NIKE HAUT ENTRAINEMENT JR PSG', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE HAUT ENTRAINEMENT JR PSG\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE HAUT ENTRAINEMENT JR PSG\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE HAUT ENTRAINEMENT JR PSG\"}}]', 9, 2),
(17, '2021-09-09 09:48:58.980836', '11', 'NIKE PULL WILD RUN BV5603', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE PULL WILD RUN BV5603\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE PULL WILD RUN BV5603\"}}]', 9, 2),
(18, '2021-09-09 09:50:05.321887', '12', 'NIKE TSHIRT AIR', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE TSHIRT AIR\"}}]', 9, 2),
(19, '2021-09-09 09:51:02.799935', '13', 'NIKE TEE JDI', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE TEE JDI\"}}]', 9, 2),
(20, '2021-09-09 09:52:12.750746', '14', 'PUMA T-SHIRT OM TRAINING JERSEY', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"PUMA T-SHIRT OM TRAINING JERSEY\"}}]', 9, 2),
(21, '2021-09-09 13:09:47.667821', '15', 'NIKE ROBE DRI-FIT', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE ROBE DRI-FIT\"}}]', 9, 2),
(22, '2021-09-09 13:10:59.187046', '16', 'NIKE ROBE DRI-FIT AQ5115', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE ROBE DRI-FIT AQ5115\"}}]', 9, 2),
(23, '2021-09-09 13:12:48.355413', '17', 'NIKE SPORTSWEAR NIKE SPORT PACK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE SPORTSWEAR NIKE SPORT PACK\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE SPORTSWEAR NIKE SPORT PACK\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE SPORTSWEAR NIKE SPORT PACK\"}}]', 9, 2),
(24, '2021-09-09 13:13:54.236885', '18', 'NIKE AIR LEGGING', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE AIR LEGGING\"}}]', 9, 2),
(25, '2021-09-09 13:15:14.702700', '19', 'NIKE VESTE SYNT WMN FILL ICON', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE VESTE SYNT WMN FILL ICON\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE VESTE SYNT WMN FILL ICON\"}}]', 9, 2),
(26, '2021-09-09 13:16:19.670870', '20', 'NIKE AIR PULL FEMME LOGO', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE AIR PULL FEMME LOGO\"}}]', 9, 2),
(27, '2021-09-09 13:17:22.604541', '21', 'NIKE LEGGING FEMME', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE LEGGING FEMME\"}}]', 9, 2),
(28, '2021-09-09 13:20:01.434013', '22', 'NIKE LEGGING FEMME CJ4061', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE LEGGING FEMME CJ4061\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE LEGGING FEMME CJ4061\"}}]', 9, 2),
(29, '2021-09-09 13:21:20.050012', '23', 'NIKE BLUSAO SWEAT', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE BLUSAO SWEAT\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE BLUSAO SWEAT\"}}]', 9, 2),
(30, '2021-09-09 13:22:21.108593', '24', 'NIKE HOODIE WOMEN FT GX', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE HOODIE WOMEN FT GX\"}}]', 9, 2),
(31, '2021-09-09 13:23:26.320285', '25', 'NIKE JACKET AIR FEMME SATIN', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"NIKE JACKET AIR FEMME SATIN\"}}]', 9, 2),
(32, '2021-09-09 14:53:14.249180', '26', 'Gilet à capuche zippé en molleton pour enfant fille', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet \\u00e0 capuche zipp\\u00e9 en molleton pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet \\u00e0 capuche zipp\\u00e9 en molleton pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet \\u00e0 capuche zipp\\u00e9 en molleton pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet \\u00e0 capuche zipp\\u00e9 en molleton pour enfant fille\"}}]', 9, 2),
(33, '2021-09-09 14:56:25.214398', '27', 'Parka en gomme doublée sherpa', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Parka en gomme doubl\\u00e9e sherpa\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Parka en gomme doubl\\u00e9e sherpa\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Parka en gomme doubl\\u00e9e sherpa\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Parka en gomme doubl\\u00e9e sherpa\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Parka en gomme doubl\\u00e9e sherpa\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Parka en gomme doubl\\u00e9e sherpa\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Parka en gomme doubl\\u00e9e sherpa\"}}]', 9, 2),
(34, '2021-09-09 14:59:49.240377', '28', 'Gilet en tricot à motifs en sequins pour enfant fille', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Gilet en tricot \\u00e0 motifs en sequins pour enfant fille\"}}]', 9, 2),
(35, '2021-09-09 15:02:00.961981', '29', 'Teddy en molleton rouge à coeurs en jacquard pour enfant fille', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Teddy en molleton rouge \\u00e0 coeurs en jacquard pour enfant fille\"}}]', 9, 2),
(36, '2021-09-09 15:04:25.107983', '30', 'Tunique manches longues imprimée à bandes latérales pour enfant fille', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Tunique manches longues imprim\\u00e9e \\u00e0 bandes lat\\u00e9rales pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Tunique manches longues imprim\\u00e9e \\u00e0 bandes lat\\u00e9rales pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Tunique manches longues imprim\\u00e9e \\u00e0 bandes lat\\u00e9rales pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Tunique manches longues imprim\\u00e9e \\u00e0 bandes lat\\u00e9rales pour enfant fille\"}}]', 9, 2),
(37, '2021-09-09 15:09:24.268726', '31', 'Lot de 2 leggings en jersey print fantaisie pour enfant fille', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Lot de 2 leggings en jersey print fantaisie pour enfant fille\"}}]', 9, 2),
(38, '2021-09-09 15:11:13.119847', '32', 'Pantalon de jogging pour enfant fille en molleton', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Pantalon de jogging pour enfant fille en molleton\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Pantalon de jogging pour enfant fille en molleton\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Pantalon de jogging pour enfant fille en molleton\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Pantalon de jogging pour enfant fille en molleton\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Pantalon de jogging pour enfant fille en molleton\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Pantalon de jogging pour enfant fille en molleton\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Pantalon de jogging pour enfant fille en molleton\"}}]', 9, 2),
(39, '2021-09-09 15:46:42.339827', '1', 'White', 1, '[{\"added\": {}}]', 10, 2),
(40, '2021-09-09 15:47:01.088448', '2', 'White', 1, '[{\"added\": {}}]', 10, 2),
(41, '2021-09-09 15:47:14.119017', '3', 'White', 1, '[{\"added\": {}}]', 10, 2),
(42, '2021-09-09 15:47:29.862360', '4', 'White', 1, '[{\"added\": {}}]', 10, 2),
(43, '2021-09-09 15:47:43.800577', '5', 'White', 1, '[{\"added\": {}}]', 10, 2),
(44, '2021-09-09 15:47:56.342893', '6', 'White', 1, '[{\"added\": {}}]', 10, 2),
(45, '2021-09-09 15:48:06.417025', '7', 'White', 1, '[{\"added\": {}}]', 10, 2),
(46, '2021-09-09 15:48:33.019655', '8', 'White', 1, '[{\"added\": {}}]', 10, 2),
(47, '2021-09-09 15:48:48.053307', '9', 'White', 1, '[{\"added\": {}}]', 10, 2),
(48, '2021-09-09 15:49:05.429895', '10', 'White', 1, '[{\"added\": {}}]', 10, 2),
(49, '2021-09-09 15:49:26.152377', '11', 'White', 1, '[{\"added\": {}}]', 10, 2),
(50, '2021-09-09 15:49:59.654020', '12', 'White', 1, '[{\"added\": {}}]', 10, 2),
(51, '2021-09-09 15:50:23.714088', '13', 'White', 1, '[{\"added\": {}}]', 10, 2),
(52, '2021-09-09 15:50:43.895127', '14', 'White', 1, '[{\"added\": {}}]', 10, 2),
(53, '2021-09-09 15:50:59.494336', '15', 'White', 1, '[{\"added\": {}}]', 10, 2),
(54, '2021-09-09 15:51:16.197978', '16', 'White', 1, '[{\"added\": {}}]', 10, 2),
(55, '2021-09-09 15:51:30.498827', '17', 'White', 1, '[{\"added\": {}}]', 10, 2),
(56, '2021-09-09 15:51:51.972429', '18', 'White', 1, '[{\"added\": {}}]', 10, 2),
(57, '2021-09-09 15:52:16.058728', '19', 'White', 1, '[{\"added\": {}}]', 10, 2),
(58, '2021-09-09 15:53:27.136169', '20', 'White', 1, '[{\"added\": {}}]', 10, 2),
(59, '2021-09-09 15:53:41.042778', '21', 'White', 1, '[{\"added\": {}}]', 10, 2),
(60, '2021-09-09 15:53:58.232746', '22', 'White', 1, '[{\"added\": {}}]', 10, 2),
(61, '2021-09-09 15:54:41.818253', '23', 'White', 1, '[{\"added\": {}}]', 10, 2),
(62, '2021-09-09 15:54:55.582019', '24', 'White', 1, '[{\"added\": {}}]', 10, 2),
(63, '2021-09-09 15:55:14.662639', '25', 'White', 1, '[{\"added\": {}}]', 10, 2),
(64, '2021-09-09 15:55:40.957094', '26', 'White', 1, '[{\"added\": {}}]', 10, 2),
(65, '2021-09-09 15:55:59.704376', '27', 'White', 1, '[{\"added\": {}}]', 10, 2),
(66, '2021-09-09 15:56:11.433529', '28', 'White', 1, '[{\"added\": {}}]', 10, 2),
(67, '2021-09-09 15:56:29.450066', '29', 'White', 1, '[{\"added\": {}}]', 10, 2),
(68, '2021-09-09 15:56:44.173142', '30', 'White', 1, '[{\"added\": {}}]', 10, 2),
(69, '2021-09-09 15:57:03.560234', '31', 'White', 1, '[{\"added\": {}}]', 10, 2),
(70, '2021-09-09 15:57:15.548677', '32', 'White', 1, '[{\"added\": {}}]', 10, 2),
(71, '2021-09-09 15:57:27.205140', '33', 'White', 1, '[{\"added\": {}}]', 10, 2),
(72, '2021-09-09 15:58:15.086760', '34', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(73, '2021-09-09 15:58:27.407164', '35', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(74, '2021-09-09 15:58:38.080589', '36', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(75, '2021-09-09 15:58:50.007730', '37', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(76, '2021-09-09 15:59:01.643492', '38', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(77, '2021-09-09 15:59:12.816859', '39', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(78, '2021-09-09 15:59:23.382046', '40', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(79, '2021-09-09 15:59:34.282157', '41', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(80, '2021-09-09 15:59:46.572498', '42', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(81, '2021-09-09 15:59:57.148401', '43', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(82, '2021-09-09 16:00:10.072411', '44', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(83, '2021-09-09 16:01:30.503230', '45', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(84, '2021-09-09 16:01:41.186474', '46', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(85, '2021-09-09 16:01:57.161545', '47', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(86, '2021-09-09 16:02:09.421583', '48', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(87, '2021-09-09 16:02:19.491764', '49', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(88, '2021-09-09 16:03:28.827468', '50', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(89, '2021-09-09 16:03:42.291036', '51', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(90, '2021-09-09 16:03:57.670156', '52', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(91, '2021-09-09 16:07:56.551103', '53', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(92, '2021-09-09 16:08:14.323868', '54', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(93, '2021-09-09 16:08:26.567769', '55', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(94, '2021-09-09 16:08:39.026294', '56', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(95, '2021-09-09 16:08:52.491572', '57', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(96, '2021-09-09 16:09:06.912341', '58', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(97, '2021-09-09 16:09:28.515886', '58', 'Silver', 3, '', 10, 2),
(98, '2021-09-09 16:09:45.246420', '59', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(99, '2021-09-09 16:10:03.057130', '60', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(100, '2021-09-09 16:10:14.857022', '61', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(101, '2021-09-09 16:10:25.937450', '62', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(102, '2021-09-09 16:10:38.682920', '63', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(103, '2021-09-09 16:10:50.540712', '64', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(104, '2021-09-09 16:11:01.242210', '65', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(105, '2021-09-09 16:11:14.159251', '66', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(106, '2021-09-09 16:11:24.262412', '67', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(107, '2021-09-09 16:11:34.420282', '68', 'Silver', 1, '[{\"added\": {}}]', 10, 2),
(108, '2021-09-09 16:11:54.049165', '69', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(109, '2021-09-09 16:12:19.353915', '70', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(110, '2021-09-09 16:12:46.472243', '71', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(111, '2021-09-09 16:12:58.756138', '72', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(112, '2021-09-09 16:13:11.620704', '73', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(113, '2021-09-09 16:13:19.304170', '73', 'Small', 3, '', 10, 2),
(114, '2021-09-09 16:13:33.840308', '74', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(115, '2021-09-09 16:13:46.161331', '75', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(116, '2021-09-09 16:13:56.034968', '76', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(117, '2021-09-09 16:14:06.773997', '77', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(118, '2021-09-09 16:14:18.360300', '78', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(119, '2021-09-09 16:14:32.728972', '79', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(120, '2021-09-09 16:14:44.735066', '80', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(121, '2021-09-09 16:14:55.780947', '81', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(122, '2021-09-09 16:15:07.368757', '82', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(123, '2021-09-09 16:15:22.962436', '83', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(124, '2021-09-09 16:15:37.419496', '84', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(125, '2021-09-09 16:15:52.246702', '85', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(126, '2021-09-09 16:16:04.120396', '86', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(127, '2021-09-09 16:16:15.409922', '87', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(128, '2021-09-09 16:16:26.317916', '88', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(129, '2021-09-09 16:16:26.413206', '89', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(130, '2021-09-09 16:16:39.418818', '89', 'Small', 3, '', 10, 2),
(131, '2021-09-09 16:16:50.475219', '90', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(132, '2021-09-09 16:17:08.148288', '91', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(133, '2021-09-09 16:17:20.601419', '92', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(134, '2021-09-09 16:17:31.153396', '93', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(135, '2021-09-09 16:17:44.283841', '94', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(136, '2021-09-09 16:17:57.348414', '95', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(137, '2021-09-09 16:18:11.714792', '96', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(138, '2021-09-09 16:18:22.803706', '97', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(139, '2021-09-09 16:18:41.944794', '98', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(140, '2021-09-09 16:18:53.337090', '99', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(141, '2021-09-09 16:19:08.061695', '100', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(142, '2021-09-09 16:19:24.030130', '101', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(143, '2021-09-09 16:19:37.984701', '102', 'Small', 1, '[{\"added\": {}}]', 10, 2),
(144, '2021-09-09 16:20:11.463439', '103', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(145, '2021-09-09 16:20:22.438253', '104', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(146, '2021-09-09 16:20:33.564599', '105', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(147, '2021-09-09 16:20:44.809314', '106', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(148, '2021-09-09 16:20:55.937354', '107', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(149, '2021-09-09 16:21:06.149953', '108', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(150, '2021-09-09 16:21:16.259461', '109', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(151, '2021-09-09 16:21:27.997333', '110', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(152, '2021-09-09 16:21:41.165734', '111', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(153, '2021-09-09 16:21:58.476394', '112', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(154, '2021-09-09 16:22:11.472724', '113', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(155, '2021-09-09 16:22:25.364328', '114', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(156, '2021-09-09 16:22:38.435311', '115', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(157, '2021-09-09 16:22:55.935395', '116', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(158, '2021-09-09 16:23:07.583873', '117', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(159, '2021-09-09 16:23:19.615357', '118', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(160, '2021-09-09 16:23:34.840209', '119', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(161, '2021-09-09 16:23:59.493707', '120', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(162, '2021-09-09 16:24:11.277145', '121', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(163, '2021-09-09 16:24:24.015420', '122', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(164, '2021-09-09 16:24:36.723469', '123', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(165, '2021-09-09 16:24:57.676999', '124', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(166, '2021-09-09 16:25:09.760765', '125', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(167, '2021-09-09 16:25:27.528900', '126', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(168, '2021-09-09 16:25:43.959821', '127', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(169, '2021-09-09 16:25:57.997195', '128', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(170, '2021-09-09 16:26:15.733713', '129', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(171, '2021-09-09 16:26:30.013967', '130', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(172, '2021-09-09 16:26:42.703004', '131', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(173, '2021-09-09 16:26:53.957814', '132', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(174, '2021-09-09 16:27:07.446044', '133', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(175, '2021-09-09 16:27:30.280811', '133', 'Midium', 3, '', 10, 2),
(176, '2021-09-09 16:27:30.284808', '129', 'Midium', 3, '', 10, 2),
(177, '2021-09-09 16:27:30.287806', '126', 'Midium', 3, '', 10, 2),
(178, '2021-09-09 16:27:42.613329', '134', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(179, '2021-09-09 16:27:59.663653', '135', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(180, '2021-09-09 16:28:10.610647', '136', 'Midium', 1, '[{\"added\": {}}]', 10, 2),
(181, '2021-09-09 16:28:31.460304', '111', 'Midium', 3, '', 10, 2),
(182, '2021-09-09 16:28:53.138071', '137', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(183, '2021-09-09 16:29:03.655613', '138', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(184, '2021-09-09 16:29:21.117199', '139', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(185, '2021-09-09 16:29:30.906885', '140', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(186, '2021-09-09 16:29:41.235705', '141', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(187, '2021-09-09 16:29:50.901842', '142', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(188, '2021-09-09 16:30:04.260853', '143', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(189, '2021-09-09 16:30:14.453545', '144', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(190, '2021-09-09 16:30:31.902485', '145', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(191, '2021-09-09 16:30:43.872005', '146', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(192, '2021-09-09 16:31:00.662149', '147', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(193, '2021-09-09 16:31:11.609370', '148', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(194, '2021-09-09 16:31:22.016546', '149', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(195, '2021-09-09 16:31:37.282460', '150', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(196, '2021-09-09 16:31:48.813182', '151', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(197, '2021-09-09 16:32:01.050393', '152', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(198, '2021-09-09 16:32:23.244430', '153', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(199, '2021-09-09 16:32:36.378905', '154', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(200, '2021-09-09 16:32:49.731552', '155', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(201, '2021-09-09 16:33:01.606067', '156', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(202, '2021-09-09 16:33:12.639983', '157', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(203, '2021-09-09 16:33:26.384503', '158', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(204, '2021-09-09 16:33:40.821369', '159', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(205, '2021-09-09 16:33:53.344831', '160', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(206, '2021-09-09 16:34:04.909083', '161', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(207, '2021-09-09 16:34:16.971173', '162', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(208, '2021-09-09 16:34:31.205495', '163', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(209, '2021-09-09 16:34:44.458753', '164', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(210, '2021-09-09 16:34:56.309159', '165', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(211, '2021-09-09 16:35:09.800195', '166', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(212, '2021-09-09 16:35:23.593948', '167', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(213, '2021-09-09 16:35:35.572784', '168', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(214, '2021-09-09 16:35:46.341243', '169', 'Big', 1, '[{\"added\": {}}]', 10, 2),
(215, '2021-09-09 16:36:53.359826', '145', 'Big', 3, '', 10, 2),
(216, '2021-09-09 16:44:12.342915', '49', 'Silver', 3, '', 10, 2),
(217, '2021-09-09 16:44:12.349910', '42', 'Silver', 3, '', 10, 2),
(218, '2021-09-09 16:44:12.352909', '13', 'White', 3, '', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'account'),
(8, 'accounts', 'userprofile'),
(1, 'admin', 'logentry'),
(18, 'admin_honeypot', 'loginattempt'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(13, 'carts', 'cart'),
(14, 'carts', 'cartitem'),
(6, 'category', 'category'),
(4, 'contenttypes', 'contenttype'),
(15, 'orders', 'order'),
(17, 'orders', 'orderproduct'),
(16, 'orders', 'payment'),
(5, 'sessions', 'session'),
(9, 'store', 'product'),
(12, 'store', 'productgallery'),
(11, 'store', 'reviewrating'),
(10, 'store', 'variation');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2021-08-28 20:44:50.589891'),
(2, 'accounts', '0002_userprofile', '2021-08-28 20:44:50.635621'),
(3, 'contenttypes', '0001_initial', '2021-08-28 20:44:50.741685'),
(4, 'admin', '0001_initial', '2021-08-28 20:44:50.774211'),
(5, 'admin', '0002_logentry_remove_auto_add', '2021-08-28 20:44:51.005151'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-28 20:44:51.022139'),
(7, 'admin_honeypot', '0001_initial', '2021-08-28 20:44:51.062145'),
(8, 'admin_honeypot', '0002_auto_20160208_0854', '2021-08-28 20:44:51.132752'),
(9, 'contenttypes', '0002_remove_content_type_name', '2021-08-28 20:44:51.221699'),
(10, 'auth', '0001_initial', '2021-08-28 20:44:51.347148'),
(11, 'auth', '0002_alter_permission_name_max_length', '2021-08-28 20:44:51.599504'),
(12, 'auth', '0003_alter_user_email_max_length', '2021-08-28 20:44:51.609532'),
(13, 'auth', '0004_alter_user_username_opts', '2021-08-28 20:44:51.620523'),
(14, 'auth', '0005_alter_user_last_login_null', '2021-08-28 20:44:51.629520'),
(15, 'auth', '0006_require_contenttypes_0002', '2021-08-28 20:44:51.633554'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2021-08-28 20:44:51.644054'),
(17, 'auth', '0008_alter_user_username_max_length', '2021-08-28 20:44:51.652435'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2021-08-28 20:44:51.662058'),
(19, 'auth', '0010_alter_group_name_max_length', '2021-08-28 20:44:51.718039'),
(20, 'auth', '0011_update_proxy_permissions', '2021-08-28 20:44:51.731032'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2021-08-28 20:44:51.739427'),
(22, 'category', '0001_initial', '2021-08-28 20:44:51.767426'),
(23, 'store', '0001_initial', '2021-08-28 20:44:51.802068'),
(24, 'store', '0002_variation', '2021-08-28 20:44:52.012747'),
(25, 'carts', '0001_initial', '2021-08-28 20:44:52.186848'),
(26, 'orders', '0001_initial', '2021-08-28 20:44:52.929745'),
(27, 'sessions', '0001_initial', '2021-08-28 20:44:53.654704'),
(28, 'store', '0003_productgallery_reviewrating', '2021-08-28 20:44:53.779758');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('99bwrjfo9q72gr4rjfz0o01t5vcxdq6d', 'eyJfc2Vzc2lvbl9pbml0X3RpbWVzdGFtcF8iOjE2MzEyMTYwNDkuODUwODg1OX0:1mOPoI:ACup8pnhiDfvMZrIU6kgLtwqidpGbUs9NZAObwSUCfQ', '2021-09-23 19:34:10.253637'),
('hznjqvaomerr3nx1diwc877p88i9txjx', '.eJxVjssOwiAURP-FtSFcKC106d5vIBcutfgAU-jK-O9a04Vu55yZzJM5XNvs1hoXl4iNTLLDb-YxXGPeAF0wnwsPJbcleb4pfKeVnwrF23F3_wZmrPOnPaFVEeRghRdWEwojPGAngtJEAAYl6DjRoPvYCxKTJOllAK86DYT4fVVjralkl3JqrqV7rA3vD8dG6JUAM4AGrhVY3ZnXG1iaRiU:1mK699:2KAwaqi4sspzfEy4BzRQiMQey2Z2cdvT4ntr0GEEFSA', '2021-09-11 21:45:51.582921');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL,
  `order_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order_total` double NOT NULL,
  `tax` double NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct`
--

CREATE TABLE `orders_orderproduct` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct_variations`
--

CREATE TABLE `orders_orderproduct_variations` (
  `id` int(11) NOT NULL,
  `orderproduct_id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_payment`
--

CREATE TABLE `orders_payment` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `amount_paid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `product_name`, `slug`, `description`, `price`, `images`, `stock`, `is_available`, `created_date`, `modified_date`, `category_id`) VALUES
(1, 'kapsul-t-shirt-adulte-pas-le-temps-davoir-le-temps', 'kapsul-t-shirt-adulte-pas-le-temps-davoir-le-temps', 'Collection :  Printemps/Été 2021\r\nComposition : 100% Coton\r\nNom du fournisseur :', 50, 'photos/products/kapsul-t-shirt-adulte-hot-dog.jpg', 20, 1, '2021-08-28 21:38:38.099720', '2021-08-28 21:38:38.099720', 1),
(2, 'kapsul-t-shirt-adulte-hot-dog', 'kapsul-t-shirt-adulte-hot-dog', 'Collection :  Printemps/Été 2021\r\nComposition : 100% Coton\r\nNom du fournisseur :', 60, 'photos/products/kapsul-t-shirt-adulte-pas-le-temps-davoir-le-temps.jpg', 30, 1, '2021-08-28 21:39:42.304416', '2021-08-28 21:39:42.304416', 1),
(3, 'Chemise slim unie satin - Blanc', 'chemise-slim-unie-satin-blanc', 'Chemise slim unie satin - Blanc', 36, 'photos/products/Chemise_slim_unie_satin_-_Blanc.jpg', 20, 1, '2021-08-28 21:43:22.892740', '2021-08-28 21:43:22.892740', 1),
(4, 'Chemise H2pli droite coton', 'chemise-h2pli-droite-coton', 'Chemise H2pli droite coton', 69, 'photos/products/Chemise_H2pli_droite_coton.webp', 30, 1, '2021-08-28 21:45:12.042324', '2021-08-28 21:45:12.042324', 1),
(5, 'NIKE MAILLOT FFF STRIKE', 'nike-maillot-fff-strike', 'NIKE MAILLOT FFF STRIKE', 4500, 'photos/products/nike-maillot-fff-strike-cd2177-400.jpg', 50, 1, '2021-09-09 09:32:13.374709', '2021-09-09 09:32:13.374709', 1),
(6, 'NIKE TSHIRT LOGO PREHEAT AOP', 'nike-tshirt-logo-preheat-aop', 'NIKE TSHIRT LOGO PREHEAT AOP', 29, 'photos/products/nike-tshirt-logo-preheat-aop-ct6556-063_441.jpg', 60, 1, '2021-09-09 09:35:19.579586', '2021-09-09 09:35:19.579586', 1),
(7, 'NIKE MAILLOT PSG/JORDAN', 'nike-maillot-psgjordan', 'NIKE MAILLOT PSG/JORDAN', 55, 'photos/products/nike-maillot-psg-jordan-ct3539-010.jpg', 20, 1, '2021-09-09 09:43:33.439120', '2021-09-09 09:43:33.439120', 1),
(8, 'NIKE ML JORDAN DNA AV0044', 'nike-ml-jordan-dna-av0044', 'NIKE ML JORDAN DNA AV0044', 70, 'photos/products/nike-ml-jordan-dna-av0044-100.jpg', 30, 1, '2021-09-09 09:44:45.955024', '2021-09-09 09:44:45.955024', 1),
(9, 'NIKE ML JORDAN DNA', 'nike-ml-jordan-dna', 'NIKE ML JORDAN DNA', 60, 'photos/products/nike-ml-jordan-dna-av0044-010.jpg', 40, 1, '2021-09-09 09:45:52.120700', '2021-09-09 09:45:52.120700', 1),
(10, 'NIKE HAUT ENTRAINEMENT JR PSG', 'nike-haut-entrainement-jr-psg', 'NIKE HAUT ENTRAINEMENT JR PSG', 55, 'photos/products/nike-haut-entrainement-jr-psg-ck9692-100.jpg', 56, 1, '2021-09-09 09:47:37.875267', '2021-09-09 09:47:37.875267', 1),
(11, 'NIKE PULL WILD RUN BV5603', 'nike-pull-wild-run-bv5603', 'NIKE PULL WILD RUN BV5603', 80, 'photos/products/nike-pull-wild-run-bv5603-010.jpg', 56, 1, '2021-09-09 09:48:58.971841', '2021-09-09 09:48:58.971841', 1),
(12, 'NIKE TSHIRT AIR', 'nike-tshirt-air', 'NIKE TSHIRT AIR', 30, 'photos/products/nike-tshirt-air-bv7639-480.jpg', 20, 1, '2021-09-09 09:50:05.316889', '2021-09-09 09:50:05.316889', 1),
(13, 'NIKE TEE JDI', 'nike-tee-jdi', 'NIKE TEE JDI', 30, 'photos/products/nike-tee-jdi-cd9598-010.jpg', 45, 1, '2021-09-09 09:51:02.795934', '2021-09-09 09:51:02.795934', 1),
(14, 'PUMA T-SHIRT OM TRAINING JERSEY', 'puma-t-shirt-om-training-jersey', 'PUMA T-SHIRT OM TRAINING JERSEY', 50, 'photos/products/puma-t-shirt-om-training-jersey-755828-03.jpg', 45, 1, '2021-09-09 09:52:12.738754', '2021-09-09 09:52:12.738754', 1),
(15, 'NIKE ROBE DRI-FIT', 'nike-robe-dri-fit', 'NIKE ROBE DRI-FIT', 55, 'photos/products/nike-robe-dri-fit-aq5115-623.jpg', 25, 1, '2021-09-09 13:09:47.662824', '2021-09-09 13:09:47.662824', 2),
(16, 'NIKE ROBE DRI-FIT AQ5115', 'nike-robe-dri-fit-aq5115', 'NIKE ROBE DRI-FIT AQ5115', 56, 'photos/products/nike-robe-dri-fit-aq5115-010.jpg', 56, 1, '2021-09-09 13:10:59.181049', '2021-09-09 13:10:59.182046', 2),
(17, 'NIKE SPORTSWEAR NIKE SPORT PACK', 'nike-sportswear-nike-sport-pack', 'NIKE SPORTSWEAR NIKE SPORT PACK', 75, 'photos/products/nike-sportswear-nike-sport-pack-cj6256-010.jpg', 56, 1, '2021-09-09 13:12:48.338424', '2021-09-09 13:12:48.338424', 2),
(18, 'NIKE AIR LEGGING', 'nike-air-legging', 'NIKE AIR LEGGING', 35, 'photos/products/nike-air-legging-bv4773-010.jpg', 58, 1, '2021-09-09 13:13:54.231888', '2021-09-09 13:13:54.231888', 2),
(19, 'NIKE VESTE SYNT WMN FILL ICON', 'nike-veste-synt-wmn-fill-icon', 'NIKE VESTE SYNT WMN FILL ICON', 120, 'photos/products/nike-veste-synt-wmn-fill-icon-ci9996-010.jpg', 12, 1, '2021-09-09 13:15:14.690710', '2021-09-09 13:15:14.690710', 2),
(20, 'NIKE AIR PULL FEMME LOGO', 'nike-air-pull-femme-logo', 'NIKE AIR PULL FEMME LOGO', 50, 'photos/products/nike-air-pull-femme-logo-bv3443-610.jpg', 45, 1, '2021-09-09 13:16:19.667871', '2021-09-09 13:16:19.667871', 2),
(21, 'NIKE LEGGING FEMME', 'nike-legging-femme', 'NIKE LEGGING FEMME', 38, 'photos/products/nike-legging-femme-bv3364-100.jpg', 25, 1, '2021-09-09 13:17:22.597545', '2021-09-09 13:17:22.597545', 2),
(22, 'NIKE LEGGING FEMME CJ4061', 'nike-legging-femme-cj4061', 'NIKE LEGGING FEMME CJ4061', 40, 'photos/products/nike-legging-femme-cj4061-010.jpg', 36, 1, '2021-09-09 13:20:01.424021', '2021-09-09 13:20:01.424021', 2),
(23, 'NIKE BLUSAO SWEAT', 'nike-blusao-sweat', 'NIKE BLUSAO SWEAT', 65, 'photos/products/nike-blusao-sweat-wnm-bv5358-010.jpg', 56, 1, '2021-09-09 13:21:20.044013', '2021-09-09 13:21:20.044013', 2),
(24, 'NIKE HOODIE WOMEN FT GX', 'nike-hoodie-women-ft-gx', 'NIKE HOODIE WOMEN FT GX', 65, 'photos/products/nike-hoodie-women-ft-gx-bv3344-100.jpg', 56, 1, '2021-09-09 13:22:21.103594', '2021-09-09 13:22:21.103594', 2),
(25, 'NIKE JACKET AIR FEMME SATIN', 'nike-jacket-air-femme-satin', 'NIKE JACKET AIR FEMME SATIN', 75, 'photos/products/nike-jacket-air-femme-satin-bv4779-610.jpg', 56, 1, '2021-09-09 13:23:26.312291', '2021-09-09 13:23:26.312291', 2),
(26, 'Gilet à capuche zippé en molleton pour enfant fille', 'gilet-capuche-zippe-en-molleton-pour-enfant-fille', 'Gilet à capuche zippé en molleton pour enfant fille', 39, 'photos/products/HFINZC_BLF_1_X.jpg', 23, 1, '2021-09-09 14:53:14.233188', '2021-09-09 14:53:14.233188', 3),
(27, 'Parka en gomme doublée sherpa', 'parka-en-gomme-doublee-sherpa', 'Parka en gomme doublée sherpa', 38, 'photos/products/HFINZC_ECR_1_X.jpg', 23, 1, '2021-09-09 14:56:25.193413', '2021-09-09 14:56:25.193413', 3),
(28, 'Gilet en tricot à motifs en sequins pour enfant fille', 'gilet-en-tricot-motifs-en-sequins-pour-enfant-fille', 'Gilet en tricot à motifs en sequins pour enfant fille', 20, 'photos/products/HFIOZB_BLF_1_X.jpg', 52, 1, '2021-09-09 14:59:49.215392', '2021-09-09 14:59:49.215392', 3),
(29, 'Teddy en molleton rouge à coeurs en jacquard pour enfant fille', 'teddy-en-molleton-rouge-coeurs-en-jacquard-pour-enfant-fille', 'Teddy en molleton rouge à coeurs en jacquard pour enfant fille', 25, 'photos/products/HFIP3D_RGM_1_X.jpg', 45, 1, '2021-09-09 15:02:00.921006', '2021-09-09 15:02:00.921006', 3),
(30, 'Tunique manches longues imprimée à bandes latérales pour enfant fille', 'tunique-manches-longues-imprimee-bandes-laterales-pour-enfant-fille', 'Tunique manches longues imprimée à bandes latérales pour enfant fille', 30, 'photos/products/HFIP22_NOI_1_X.jpg', 45, 1, '2021-09-09 15:04:25.094991', '2021-09-09 15:04:25.094991', 3),
(31, 'Lot de 2 leggings en jersey print fantaisie pour enfant fille', 'lot-de-2-leggings-en-jersey-print-fantaisie-pour-enfant-fille', 'Lot de 2 leggings en jersey print fantaisie pour enfant fille', 11, 'photos/products/HFINQN_GRC_1_X.jpg', 12, 1, '2021-09-09 15:09:24.248737', '2021-09-09 15:09:24.248737', 3),
(32, 'Pantalon de jogging pour enfant fille en molleton', 'pantalon-de-jogging-pour-enfant-fille-en-molleton', 'Pantalon de jogging pour enfant fille en molleton', 12, 'photos/products/HFIP5Z_GRF_1_X.jpg', 56, 1, '2021-09-09 15:11:12.792051', '2021-09-09 15:11:12.792051', 3);

-- --------------------------------------------------------

--
-- Table structure for table `store_productgallery`
--

CREATE TABLE `store_productgallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store_productgallery`
--

INSERT INTO `store_productgallery` (`id`, `image`, `product_id`) VALUES
(1, 'store/products/kapsul-t-shirt-adulte-pas-le-temps-davoir-le-temps.jpg', 2),
(2, 'store/products/nike-maillot-fff-strike-cd2177-400.jpg', 5),
(3, 'store/products/nike-maillot-fff-strike-cd2177-1400.jpg', 5),
(4, 'store/products/nike-tshirt-logo-preheat-aop-ct6556-063.jpg', 6),
(5, 'store/products/nike-maillot-psg-jordan-ct3539-010_1.jpg', 7),
(6, 'store/products/nike-ml-jordan-dna-av0044-100_1.jpg', 8),
(7, 'store/products/nike-ml-jordan-dna-av0044-010_1.jpg', 9),
(8, 'store/products/nike-haut-entrainement-jr-psg-ck9692-100_1.jpg', 10),
(9, 'store/products/nike-haut-entrainement-jr-psg-ck9692-100_2.jpg', 10),
(10, 'store/products/nike-haut-entrainement-jr-psg-ck9692-100_3.jpg', 10),
(11, 'store/products/nike-pull-wild-run-bv5603-010_1.jpg', 11),
(12, 'store/products/nike-pull-wild-run-bv5603-010_2.jpg', 11),
(13, 'store/products/nike-tshirt-air-bv7639-480_1.jpg', 12),
(14, 'store/products/nike-tee-jdi-cd9598-010_1.jpg', 13),
(15, 'store/products/puma-t-shirt-om-training-jersey-755828-03.jpg', 14),
(16, 'store/products/nike-robe-dri-fit-aq5115-623_1.jpg', 15),
(17, 'store/products/nike-robe-dri-fit-aq5115-010_1.jpg', 16),
(18, 'store/products/nike-sportswear-nike-sport-pack-cj6256-010_1.jpg', 17),
(19, 'store/products/nike-sportswear-nike-sport-pack-cj6256-010_2.jpg', 17),
(20, 'store/products/nike-sportswear-nike-sport-pack-cj6256-010_3.jpg', 17),
(21, 'store/products/nike-air-legging-bv4773-010_1.jpg', 18),
(22, 'store/products/nike-veste-synt-wmn-fill-icon-ci9996-010_1.jpg', 19),
(23, 'store/products/nike-veste-synt-wmn-fill-icon-ci9996-010_2.jpg', 19),
(24, 'store/products/nike-air-pull-femme-logo-bv3443-610_1.jpg', 20),
(25, 'store/products/nike-legging-femme-bv3364-100_1.jpg', 21),
(26, 'store/products/nike-legging-femme-cj4061-010.jpg', 22),
(27, 'store/products/nike-legging-femme-cj4061-010_2.jpg', 22),
(28, 'store/products/nike-blusao-sweat-wnm-bv5358-010_1.jpg', 23),
(29, 'store/products/nike-blusao-sweat-wnm-bv5358-010_2.jpg', 23),
(30, 'store/products/nike-hoodie-women-ft-gx-bv3344-100_1.jpg', 24),
(31, 'store/products/nike-jacket-air-femme-satin-bv4779-610_1.jpg', 25),
(32, 'store/products/HFINZC_BLF_2_X.jpg', 26),
(33, 'store/products/HFINZC_BLF_3_X.jpg', 26),
(34, 'store/products/HFINZC_BLF_4_X.jpg', 26),
(35, 'store/products/HFINZC_BLF_5_X.jpg', 26),
(36, 'store/products/HFINZC_ECR_2_X.jpg', 27),
(37, 'store/products/HFINZC_ECR_3_X.jpg', 27),
(38, 'store/products/HFINZC_ECR_4_X.jpg', 27),
(39, 'store/products/HFINZC_ECR_10_X.jpg', 27),
(40, 'store/products/HFINZC_ECR_15_X.jpg', 27),
(41, 'store/products/HFINZC_ECR_16_X.jpg', 27),
(42, 'store/products/HFINZC_ECR_17_X.jpg', 27),
(43, 'store/products/HFIOZB_BLF_2_X.jpg', 28),
(44, 'store/products/HFIOZB_BLF_3_X.jpg', 28),
(45, 'store/products/HFIOZB_GRM_1_X.jpg', 28),
(46, 'store/products/HFIOZB_GRM_2_X.jpg', 28),
(47, 'store/products/HFIOZB_GRM_3_X.jpg', 28),
(48, 'store/products/HFIOZB_ROM_1_X.jpg', 28),
(49, 'store/products/HFIOZB_ROM_2_X.jpg', 28),
(50, 'store/products/HFIOZB_ROM_3_X.jpg', 28),
(51, 'store/products/HFIP3D_RGM_2_X.jpg', 29),
(52, 'store/products/HFIP3D_RGM_3_X.jpg', 29),
(53, 'store/products/HFIP3D_RGM_10_X.jpg', 29),
(54, 'store/products/HFIP3D_RGM_11_X.jpg', 29),
(55, 'store/products/HFIP3D_RGM_12_X.jpg', 29),
(56, 'store/products/HFIP3D_RGM_13_X.jpg', 29),
(57, 'store/products/HFIP3D_RGM_14_X.jpg', 29),
(58, 'store/products/HFIP3D_RGM_15_X.jpg', 29),
(59, 'store/products/HFIP3D_RGM_16_X.jpg', 29),
(60, 'store/products/HFIP22_NOI_2_X.jpg', 30),
(61, 'store/products/HFIP22_NOI_3_X.jpg', 30),
(62, 'store/products/HFIP22_NOI_4_X.jpg', 30),
(63, 'store/products/HFIP22_NOI_12_X.jpg', 30),
(64, 'store/products/HFINQN_GRC_2_X.jpg', 31),
(65, 'store/products/HFINQN_GRC_3_X.jpg', 31),
(66, 'store/products/HFINQN_GRF_1_X.jpg', 31),
(67, 'store/products/HFINQN_GRM_1_X.jpg', 31),
(68, 'store/products/HFINQN_NOI_1_X_1.jpg', 31),
(69, 'store/products/HFINQN_NOI_3_X.jpg', 31),
(70, 'store/products/HFINQN_NOI_10_X.jpg', 31),
(71, 'store/products/HFINQN_NOI_11_X.jpg', 31),
(72, 'store/products/HFIP5Z_GRF_2_X.jpg', 32),
(73, 'store/products/HFIP5Z_GRF_3_X.jpg', 32),
(74, 'store/products/HFIP5Z_ROC_1_X.jpg', 32),
(75, 'store/products/HFIP5Z_ROC_2_X.jpg', 32),
(76, 'store/products/HFIP5Z_ROC_3_X.jpg', 32),
(77, 'store/products/HFIP5Z_ROC_13_X.jpg', 32),
(78, 'store/products/HFIP5Z_ROC_14_X.jpg', 32);

-- --------------------------------------------------------

--
-- Table structure for table `store_reviewrating`
--

CREATE TABLE `store_reviewrating` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `review` longtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` double NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_variation`
--

CREATE TABLE `store_variation` (
  `id` int(11) NOT NULL,
  `variation_category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `variation_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store_variation`
--

INSERT INTO `store_variation` (`id`, `variation_category`, `variation_value`, `is_active`, `created_date`, `product_id`) VALUES
(1, 'color', 'White', 1, '2021-09-09 15:46:42.336829', 1),
(2, 'color', 'White', 1, '2021-09-09 15:47:01.086447', 2),
(3, 'color', 'White', 1, '2021-09-09 15:47:14.117019', 3),
(4, 'color', 'White', 1, '2021-09-09 15:47:29.860361', 4),
(5, 'color', 'White', 1, '2021-09-09 15:47:43.798581', 5),
(6, 'color', 'White', 1, '2021-09-09 15:47:56.340702', 6),
(7, 'color', 'White', 1, '2021-09-09 15:48:06.416028', 7),
(8, 'color', 'White', 1, '2021-09-09 15:48:33.018639', 8),
(9, 'color', 'White', 1, '2021-09-09 15:48:48.051312', 9),
(10, 'color', 'White', 1, '2021-09-09 15:49:05.427899', 10),
(11, 'color', 'White', 1, '2021-09-09 15:49:26.151376', 11),
(12, 'color', 'White', 1, '2021-09-09 15:49:59.653021', 12),
(14, 'color', 'White', 1, '2021-09-09 15:50:43.893131', 13),
(15, 'color', 'White', 1, '2021-09-09 15:50:59.493247', 14),
(16, 'color', 'White', 1, '2021-09-09 15:51:16.195980', 15),
(17, 'color', 'White', 1, '2021-09-09 15:51:30.496831', 16),
(18, 'color', 'White', 1, '2021-09-09 15:51:51.969426', 17),
(19, 'color', 'White', 1, '2021-09-09 15:52:16.056720', 18),
(20, 'color', 'White', 1, '2021-09-09 15:53:27.134168', 19),
(21, 'color', 'White', 1, '2021-09-09 15:53:41.041772', 20),
(22, 'color', 'White', 1, '2021-09-09 15:53:58.230740', 21),
(23, 'color', 'White', 1, '2021-09-09 15:54:41.817242', 22),
(24, 'color', 'White', 1, '2021-09-09 15:54:55.581022', 23),
(25, 'color', 'White', 1, '2021-09-09 15:55:14.661639', 24),
(26, 'color', 'White', 1, '2021-09-09 15:55:40.955096', 25),
(27, 'color', 'White', 1, '2021-09-09 15:55:59.703376', 26),
(28, 'color', 'White', 1, '2021-09-09 15:56:11.432527', 27),
(29, 'color', 'White', 1, '2021-09-09 15:56:29.440785', 28),
(30, 'color', 'White', 1, '2021-09-09 15:56:44.172125', 29),
(31, 'color', 'White', 1, '2021-09-09 15:57:03.558234', 30),
(32, 'color', 'White', 1, '2021-09-09 15:57:15.535265', 31),
(33, 'color', 'White', 1, '2021-09-09 15:57:27.205140', 32),
(34, 'color', 'Silver', 1, '2021-09-09 15:58:15.085659', 1),
(35, 'color', 'Silver', 1, '2021-09-09 15:58:27.406164', 2),
(36, 'color', 'Silver', 1, '2021-09-09 15:58:38.077492', 3),
(37, 'color', 'Silver', 1, '2021-09-09 15:58:50.005732', 4),
(38, 'color', 'Silver', 1, '2021-09-09 15:59:01.641493', 5),
(39, 'color', 'Silver', 1, '2021-09-09 15:59:12.815854', 6),
(40, 'color', 'Silver', 1, '2021-09-09 15:59:23.381048', 7),
(41, 'color', 'Silver', 1, '2021-09-09 15:59:34.281159', 8),
(43, 'color', 'Silver', 1, '2021-09-09 15:59:57.147398', 9),
(44, 'color', 'Silver', 1, '2021-09-09 16:00:10.070412', 10),
(45, 'color', 'Silver', 1, '2021-09-09 16:01:30.502207', 11),
(46, 'color', 'Silver', 1, '2021-09-09 16:01:41.185468', 12),
(47, 'color', 'Silver', 1, '2021-09-09 16:01:57.160544', 13),
(48, 'color', 'Silver', 1, '2021-09-09 16:02:09.420585', 14),
(50, 'color', 'Silver', 1, '2021-09-09 16:03:28.825469', 15),
(51, 'color', 'Silver', 1, '2021-09-09 16:03:42.289038', 16),
(52, 'color', 'Silver', 1, '2021-09-09 16:03:57.668154', 17),
(53, 'color', 'Silver', 1, '2021-09-09 16:07:56.548102', 18),
(54, 'color', 'Silver', 1, '2021-09-09 16:08:14.322868', 19),
(55, 'color', 'Silver', 1, '2021-09-09 16:08:26.565770', 20),
(56, 'color', 'Silver', 1, '2021-09-09 16:08:39.024296', 21),
(57, 'color', 'Silver', 1, '2021-09-09 16:08:52.489575', 22),
(59, 'color', 'Silver', 1, '2021-09-09 16:09:45.245416', 23),
(60, 'color', 'Silver', 1, '2021-09-09 16:10:03.056122', 24),
(61, 'color', 'Silver', 1, '2021-09-09 16:10:14.855012', 25),
(62, 'color', 'Silver', 1, '2021-09-09 16:10:25.935452', 26),
(63, 'color', 'Silver', 1, '2021-09-09 16:10:38.681906', 27),
(64, 'color', 'Silver', 1, '2021-09-09 16:10:50.535714', 28),
(65, 'color', 'Silver', 1, '2021-09-09 16:11:01.240210', 29),
(66, 'color', 'Silver', 1, '2021-09-09 16:11:14.157251', 30),
(67, 'color', 'Silver', 1, '2021-09-09 16:11:24.261407', 31),
(68, 'color', 'Silver', 1, '2021-09-09 16:11:34.418283', 32),
(69, 'size', 'Small', 1, '2021-09-09 16:11:54.044169', 1),
(70, 'size', 'Small', 1, '2021-09-09 16:12:19.350841', 2),
(71, 'size', 'Small', 1, '2021-09-09 16:12:46.458835', 3),
(72, 'size', 'Small', 1, '2021-09-09 16:12:58.754140', 4),
(74, 'size', 'Small', 1, '2021-09-09 16:13:33.839302', 5),
(75, 'size', 'Small', 1, '2021-09-09 16:13:46.160332', 6),
(76, 'size', 'Small', 1, '2021-09-09 16:13:56.033967', 7),
(77, 'size', 'Small', 1, '2021-09-09 16:14:06.772997', 8),
(78, 'size', 'Small', 1, '2021-09-09 16:14:18.359296', 9),
(79, 'size', 'Small', 1, '2021-09-09 16:14:32.726972', 10),
(80, 'size', 'Small', 1, '2021-09-09 16:14:44.733067', 11),
(81, 'size', 'Small', 1, '2021-09-09 16:14:55.778949', 12),
(82, 'size', 'Small', 1, '2021-09-09 16:15:07.367739', 13),
(83, 'size', 'Small', 1, '2021-09-09 16:15:22.961430', 14),
(84, 'size', 'Small', 1, '2021-09-09 16:15:37.417497', 15),
(85, 'size', 'Small', 1, '2021-09-09 16:15:52.244708', 16),
(86, 'size', 'Small', 1, '2021-09-09 16:16:04.119379', 17),
(87, 'size', 'Small', 1, '2021-09-09 16:16:15.408912', 18),
(88, 'size', 'Small', 1, '2021-09-09 16:16:26.315917', 19),
(90, 'size', 'Small', 1, '2021-09-09 16:16:50.473220', 20),
(91, 'size', 'Small', 1, '2021-09-09 16:17:08.147290', 21),
(92, 'size', 'Small', 1, '2021-09-09 16:17:20.600413', 22),
(93, 'size', 'Small', 1, '2021-09-09 16:17:31.151400', 23),
(94, 'size', 'Small', 1, '2021-09-09 16:17:44.282836', 24),
(95, 'size', 'Small', 1, '2021-09-09 16:17:57.346415', 25),
(96, 'size', 'Small', 1, '2021-09-09 16:18:11.713791', 26),
(97, 'size', 'Small', 1, '2021-09-09 16:18:22.801709', 27),
(98, 'size', 'Small', 1, '2021-09-09 16:18:41.943794', 28),
(99, 'size', 'Small', 1, '2021-09-09 16:18:53.335093', 29),
(100, 'size', 'Small', 1, '2021-09-09 16:19:08.061695', 30),
(101, 'size', 'Small', 1, '2021-09-09 16:19:24.030130', 31),
(102, 'size', 'Small', 1, '2021-09-09 16:19:37.983703', 32),
(103, 'size', 'Midium', 1, '2021-09-09 16:20:11.461444', 1),
(104, 'size', 'Midium', 1, '2021-09-09 16:20:22.437254', 2),
(105, 'size', 'Midium', 1, '2021-09-09 16:20:33.563601', 3),
(106, 'size', 'Midium', 1, '2021-09-09 16:20:44.808314', 4),
(107, 'size', 'Midium', 1, '2021-09-09 16:20:55.934353', 5),
(108, 'size', 'Midium', 1, '2021-09-09 16:21:06.147954', 6),
(109, 'size', 'Midium', 1, '2021-09-09 16:21:16.257458', 7),
(110, 'size', 'Midium', 1, '2021-09-09 16:21:27.995335', 8),
(112, 'size', 'Midium', 1, '2021-09-09 16:21:58.475375', 9),
(113, 'size', 'Midium', 1, '2021-09-09 16:22:11.471725', 10),
(114, 'size', 'Midium', 1, '2021-09-09 16:22:25.363312', 11),
(115, 'size', 'Midium', 1, '2021-09-09 16:22:38.434223', 12),
(116, 'size', 'Midium', 1, '2021-09-09 16:22:55.924403', 13),
(117, 'size', 'Midium', 1, '2021-09-09 16:23:07.581877', 14),
(118, 'size', 'Midium', 1, '2021-09-09 16:23:19.613254', 15),
(119, 'size', 'Midium', 1, '2021-09-09 16:23:34.837210', 16),
(120, 'size', 'Midium', 1, '2021-09-09 16:23:59.491708', 17),
(121, 'size', 'Midium', 1, '2021-09-09 16:24:11.275145', 18),
(122, 'size', 'Midium', 1, '2021-09-09 16:24:24.014423', 19),
(123, 'size', 'Midium', 1, '2021-09-09 16:24:36.722459', 20),
(124, 'size', 'Midium', 1, '2021-09-09 16:24:57.674983', 21),
(125, 'size', 'Midium', 1, '2021-09-09 16:25:09.759767', 22),
(127, 'size', 'Midium', 1, '2021-09-09 16:25:43.958824', 23),
(128, 'size', 'Midium', 1, '2021-09-09 16:25:57.996197', 24),
(130, 'size', 'Midium', 1, '2021-09-09 16:26:30.012967', 25),
(131, 'size', 'Midium', 1, '2021-09-09 16:26:42.697913', 26),
(132, 'size', 'Midium', 1, '2021-09-09 16:26:53.944529', 29),
(134, 'size', 'Midium', 1, '2021-09-09 16:27:42.612322', 30),
(135, 'size', 'Midium', 1, '2021-09-09 16:27:59.660654', 31),
(136, 'size', 'Midium', 1, '2021-09-09 16:28:10.609651', 32),
(137, 'size', 'Big', 1, '2021-09-09 16:28:53.137073', 1),
(138, 'size', 'Big', 1, '2021-09-09 16:29:03.649528', 2),
(139, 'size', 'Big', 1, '2021-09-09 16:29:21.115200', 3),
(140, 'size', 'Big', 1, '2021-09-09 16:29:30.904888', 4),
(141, 'size', 'Big', 1, '2021-09-09 16:29:41.233706', 5),
(142, 'size', 'Big', 1, '2021-09-09 16:29:50.899846', 6),
(143, 'size', 'Big', 1, '2021-09-09 16:30:04.258854', 7),
(144, 'size', 'Big', 1, '2021-09-09 16:30:14.452529', 8),
(146, 'size', 'Big', 1, '2021-09-09 16:30:43.871005', 9),
(147, 'size', 'Big', 1, '2021-09-09 16:31:00.661151', 10),
(148, 'size', 'Big', 1, '2021-09-09 16:31:11.607365', 11),
(149, 'size', 'Big', 1, '2021-09-09 16:31:22.014545', 12),
(150, 'size', 'Big', 1, '2021-09-09 16:31:37.279303', 13),
(151, 'size', 'Big', 1, '2021-09-09 16:31:48.811184', 14),
(152, 'size', 'Big', 1, '2021-09-09 16:32:01.048395', 15),
(153, 'size', 'Big', 1, '2021-09-09 16:32:23.242430', 16),
(154, 'size', 'Big', 1, '2021-09-09 16:32:36.371913', 17),
(155, 'size', 'Big', 1, '2021-09-09 16:32:49.729552', 18),
(156, 'size', 'Big', 1, '2021-09-09 16:33:01.604069', 19),
(157, 'size', 'Big', 1, '2021-09-09 16:33:12.638982', 20),
(158, 'size', 'Big', 1, '2021-09-09 16:33:26.383488', 21),
(159, 'size', 'Big', 1, '2021-09-09 16:33:40.820370', 22),
(160, 'size', 'Big', 1, '2021-09-09 16:33:53.343831', 23),
(161, 'size', 'Big', 1, '2021-09-09 16:34:04.908081', 24),
(162, 'size', 'Big', 1, '2021-09-09 16:34:16.970167', 25),
(163, 'size', 'Big', 1, '2021-09-09 16:34:31.204496', 26),
(164, 'size', 'Big', 1, '2021-09-09 16:34:44.456756', 27),
(165, 'size', 'Big', 1, '2021-09-09 16:34:56.308155', 28),
(166, 'size', 'Big', 1, '2021-09-09 16:35:09.792203', 30),
(167, 'size', 'Big', 1, '2021-09-09 16:35:23.592952', 29),
(168, 'size', 'Big', 1, '2021-09-09 16:35:35.570786', 31),
(169, 'size', 'Big', 1, '2021-09-09 16:35:46.340242', 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_account`
--
ALTER TABLE `accounts_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admin_honeypot_loginattempt`
--
ALTER TABLE `admin_honeypot_loginattempt`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` (`cart_id`),
  ADD KEY `carts_cartitem_product_id_acd010e4_fk_store_product_id` (`product_id`),
  ADD KEY `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq` (`cartitem_id`,`variation_id`),
  ADD KEY `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` (`variation_id`);

--
-- Indexes for table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`);

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
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_payment_id_46928ccc_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` (`product_id`),
  ADD KEY `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderproduct_vari_orderproduct_id_variatio_8c028ee7_uniq` (`orderproduct_id`,`variation_id`),
  ADD KEY `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` (`variation_id`);

--
-- Indexes for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_user_id_cfa9f321_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_category_category_id` (`category_id`);

--
-- Indexes for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_productgallery_product_id_f2821a49_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviewrating_product_id_2e1974d6_fk_store_product_id` (`product_id`),
  ADD KEY `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_variation_product_id_e4f08cbc_fk_store_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_account`
--
ALTER TABLE `accounts_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_honeypot_loginattempt`
--
ALTER TABLE `admin_honeypot_loginattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_payment`
--
ALTER TABLE `orders_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_variation`
--
ALTER TABLE `store_variation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD CONSTRAINT `accounts_userprofile_user_id_92240672_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

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
-- Constraints for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD CONSTRAINT `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cartitem_product_id_acd010e4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD CONSTRAINT `carts_cartitem_varia_cartitem_id_8be23372_fk_carts_car` FOREIGN KEY (`cartitem_id`) REFERENCES `carts_cartitem` (`id`),
  ADD CONSTRAINT `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_payment_id_46928ccc_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD CONSTRAINT `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD CONSTRAINT `orders_orderproduct__orderproduct_id_0f116a3b_fk_orders_or` FOREIGN KEY (`orderproduct_id`) REFERENCES `orders_orderproduct` (`id`),
  ADD CONSTRAINT `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD CONSTRAINT `orders_payment_user_id_cfa9f321_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  ADD CONSTRAINT `store_productgallery_product_id_f2821a49_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD CONSTRAINT `store_reviewrating_product_id_2e1974d6_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD CONSTRAINT `store_variation_product_id_e4f08cbc_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
