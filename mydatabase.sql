-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 02 mars 2022 à 12:00
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydatabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `cleint_id` int(4) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`cleint_id`, `first_name`, `last_name`, `address`, `email`, `password`, `phone`) VALUES
(1, 'alal', 'el majdoub', 'bni mlal', 'bnimlal1975@gmail.com', 'alal', 690461322),
(2, 'issam', 'alali', 'rabat', 'issam-paris@yahoo.fr', 'isasam', 615108804),
(3, 'malak', 'hassan', 'cairo', 'malak_hassan@gamil.com', '12345', 2147483647),
(4, 'marry', 'smith', 'london', 'marry-love@hotmail.com', '2009-summer', 2047262);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

CREATE TABLE `command` (
  `command_id` int(4) NOT NULL,
  `command_date` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `command_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`command_id`, `command_date`, `address`, `command_fk`) VALUES
(1, '2022-02-01', 'bni mlal', 1),
(2, '2022-02-02', 'rabat', 2),
(3, '2022-02-03', 'cairo', 3),
(4, '2022-02-04', 'london', 4),
(5, '2022-02-02', 'cairo', 3),
(6, '2022-02-02', 'cairo', 3);

-- --------------------------------------------------------

--
-- Structure de la table `command_details`
--

CREATE TABLE `command_details` (
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `product_id` int(4) NOT NULL,
  `lable` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `quantity_in_stock` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `lable`, `description`, `price`, `quantity_in_stock`) VALUES
(1, 'samsung j8', 'hadi fi khatar drari del 7awma', 1500, 10),
(2, 'iphone 7s', 'fi khatar taxista de bni makada', 2500, 0),
(3, 'infinex hot 5', 'akfas charika fl existing', 200, 10),
(4, 'nokia hhhh', 'ina lilahi wa ina ilayhi raji3on ;(', 500, 0),
(5, 'oppo apah', 'awa apah apha pah pa pah', 999, 10),
(6, 'sony', 'the best phone company in the world', 9000, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cleint_id`);

--
-- Index pour la table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`command_id`),
  ADD KEY `FK_CommandClient` (`command_fk`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `FK_CommandClient` FOREIGN KEY (`command_fk`) REFERENCES `client` (`cleint_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
