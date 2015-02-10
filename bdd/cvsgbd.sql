-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 14 Octobre 2014 à 14:23
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `cvsgbd`
--

-- --------------------------------------------------------

--
-- Structure de la table `centresinteret`
--

CREATE TABLE IF NOT EXISTS `centresinteret` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sport` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `centresinteret`
--

INSERT INTO `centresinteret` (`id`, `sport`) VALUES
(1, 'sport'),
(2, 'voyage');

-- --------------------------------------------------------

--
-- Structure de la table `infopersonne`
--

CREATE TABLE IF NOT EXISTS `infopersonne` (
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `adresse` varchar(70) NOT NULL,
  `tel` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `infopersonne`
--

INSERT INTO `infopersonne` (`nom`, `prenom`, `age`, `sexe`, `adresse`, `tel`, `email`) VALUES
('HMESSAR', 'Abdelali', 25, 'Célibataire', 'N°3 Avenue Maurice de Vlamick Pavillon 11 77680 Roissy-en-Brie \r\n', 652321564, 'ali.hmessar@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE IF NOT EXISTS `langues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langue` varchar(30) NOT NULL,
  `niveau` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `langues`
--

INSERT INTO `langues` (`id`, `langue`, `niveau`) VALUES
(1, 'Arabe', 'langue  maternelle'),
(2, 'Français ', 'Maîtrise'),
(3, 'Anglais ', 'Débutant');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
