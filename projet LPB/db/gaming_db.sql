-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 22 fév. 2023 à 04:44
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gaming_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_type`
--

DROP TABLE IF EXISTS `admin_type`;
CREATE TABLE IF NOT EXISTS `admin_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `admini_type` varchar(55) NOT NULL,
  `permissions` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `password` text NOT NULL,
  `first_name` decimal(10,0) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `type_id` int(11) NOT NULL,
  `last_login` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE IF NOT EXISTS `cart_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `desc` text NOT NULL,
  `discount_percent` decimal(10,0) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(55) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `payement_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `payement_details`
--

DROP TABLE IF EXISTS `payement_details`;
CREATE TABLE IF NOT EXISTS `payement_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `provider` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `desc` text NOT NULL,
  `SKU` varchar(55) NOT NULL,
  `category_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
CREATE TABLE IF NOT EXISTS `product_inventory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `shopping_session`
--

DROP TABLE IF EXISTS `shopping_session`;
CREATE TABLE IF NOT EXISTS `shopping_session` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(55) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `password` text NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL,
  `modified_at` timestamp NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `first_name`, `last_name`, `created_at`, `modified_at`) VALUES
(1, 'joël servais', 'password00', 'joël', 'servais', '2023-02-19 17:29:13', '2023-02-19 17:29:13'),
(2, 'adriano meledina', 'password01', 'adriano', 'meledina', '2023-02-19 17:36:49', '2023-02-19 17:36:49'),
(3, 'adrien soyeur', 'password02', 'adrien', 'soyeur', '2023-02-19 17:40:44', '2023-02-19 17:40:44'),
(4, 'alexandre roosens', 'password03', 'alexandre', 'roosens', '2023-02-19 17:41:49', '2023-02-19 17:41:49'),
(5, 'alister huysmans', 'password04', 'alister', 'huysmans', '2023-02-19 17:43:05', '2023-02-19 17:43:05'),
(6, 'frederic van overmeire', 'password05', 'frederic', 'van overmeire', '2023-02-19 17:44:12', '2023-02-19 17:44:12'),
(7, 'julien jacobs', 'password06', 'julien', 'jacobs', '2023-02-19 17:45:00', '2023-02-19 17:45:00'),
(8, 'laurent kapakoulakis', 'password07', 'laurent', 'kapakoulakis', '2023-02-19 17:45:42', '2023-02-19 17:45:42'),
(9, 'lenny besson', 'password08', 'lenny', 'besson', '2023-02-19 17:46:30', '2023-02-19 17:46:30'),
(10, 'marie berlemont', 'password09', 'marie', 'berlemont', '2023-02-19 17:47:03', '2023-02-19 17:47:03'),
(11, 'sumeyra altintop', 'password10', 'sumeyra', 'altintop', '2023-02-19 17:47:38', '2023-02-19 17:47:38'),
(12, 'thomas karl chardome', 'password11', 'thomas', 'karl chardome', '2023-02-19 17:48:40', '2023-02-19 17:48:40'),
(13, 'noah depireux', 'password12', 'noah', 'depireux', '2023-02-19 17:51:31', '2023-02-19 17:51:31');

-- --------------------------------------------------------

--
-- Structure de la table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE IF NOT EXISTS `user_address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `adress` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `postal_code` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL,
  `telephone_line1` varchar(55) NOT NULL,
  `telephone_line2` varchar(55) NOT NULL,
  `mobile` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_payement`
--

DROP TABLE IF EXISTS `user_payement`;
CREATE TABLE IF NOT EXISTS `user_payement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `payement_type` varchar(55) NOT NULL,
  `provider` varchar(55) NOT NULL,
  `account_number` int(11) NOT NULL,
  `expiry` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
