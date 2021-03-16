-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 27 jan. 2021 à 08:40
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ppe`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartement`
--

DROP TABLE IF EXISTS `appartement`;
CREATE TABLE IF NOT EXISTS `appartement` (
  `numA` varchar(50) NOT NULL,
  PRIMARY KEY (`numA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chalet`
--

DROP TABLE IF EXISTS `chalet`;
CREATE TABLE IF NOT EXISTS `chalet` (
  `numA` varchar(50) NOT NULL,
  PRIMARY KEY (`numA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(10) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) DEFAULT NULL,
  `prenomClient` varchar(50) DEFAULT NULL,
  `telClient` int(12) DEFAULT NULL,
  `mailClient` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `Id_Contrat` int(10) NOT NULL AUTO_INCREMENT,
  `idResa` int(10) NOT NULL,
  PRIMARY KEY (`Id_Contrat`),
  UNIQUE KEY `idResa` (`idResa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contrat_proprietaire`
--

DROP TABLE IF EXISTS `contrat_proprietaire`;
CREATE TABLE IF NOT EXISTS `contrat_proprietaire` (
  `IDContratP` int(10) NOT NULL AUTO_INCREMENT,
  `numA` varchar(50) NOT NULL,
  `IdP` int(10) NOT NULL,
  PRIMARY KEY (`IDContratP`),
  KEY `numA` (`numA`),
  KEY `IdP` (`IdP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `habitation`
--

DROP TABLE IF EXISTS `habitation`;
CREATE TABLE IF NOT EXISTS `habitation` (
  `numA` varchar(50) NOT NULL AUTO_INCREMENT,
  `adresseH` varchar(50) DEFAULT NULL,
  `villeH` varchar(50) DEFAULT NULL,
  `codepostalH` varchar(50) DEFAULT NULL,
  `nbdechambre` varchar(50) DEFAULT NULL,
  `superficieH` varchar(50) DEFAULT NULL,
  `idR` int(10) NOT NULL,
  PRIMARY KEY (`numA`),
  KEY `idR` (`idR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `maison`
--

DROP TABLE IF EXISTS `maison`;
CREATE TABLE IF NOT EXISTS `maison` (
  `numA` varchar(50) NOT NULL,
  PRIMARY KEY (`numA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `proprietaire`
--

DROP TABLE IF EXISTS `proprietaire`;
CREATE TABLE IF NOT EXISTS `proprietaire` (
  `IdP` int(10) NOT NULL AUTO_INCREMENT,
  `nomP` varchar(50) DEFAULT NULL,
  `prenomP` varchar(50) DEFAULT NULL,
  `adresseP` varchar(100) DEFAULT NULL,
  `telP` int(12) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `idR` int(10) NOT NULL AUTO_INCREMENT,
  `NomR` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `idResa` int(10) NOT NULL AUTO_INCREMENT,
  `DateD` date NOT NULL,
  `DateF` date NOT NULL,
  `numA` varchar(50) NOT NULL,
  `idClient` int(10) NOT NULL,
  PRIMARY KEY (`idResa`),
  KEY `numA` (`numA`),
  KEY `idClient` (`idClient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `stationdeski`
--

DROP TABLE IF EXISTS `stationdeski`;
CREATE TABLE IF NOT EXISTS `stationdeski` (
  `IDSDS` int(10) NOT NULL AUTO_INCREMENT,
  `NomSDS` varchar(50) DEFAULT NULL,
  `idR` int(10) NOT NULL,
  PRIMARY KEY (`IDSDS`),
  KEY `idR` (`idR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
