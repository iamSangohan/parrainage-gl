-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 30 nov. 2021 à 14:05
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
-- Base de données : `parrainageDatabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `filleul`
--

DROP TABLE IF EXISTS `filleul`;
CREATE TABLE IF NOT EXISTS `filleul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomFilleul` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filleul`
--

INSERT INTO `filleul` (`id`, `nomFilleul`) VALUES
(1, 'Abe Adou Jean-loic Aurel'),
(2, 'Amani Kone Konan Yann'),
(3, 'Assi Diamba Hapya Flavius'),
(4, 'Bamba Aboubacar Kader'),
(5, 'Coulibaly Nagninpara Hippolyte'),
(6, 'Coulibaly Gombele Ahmed'),
(7, 'Diabate Nansegnougou Raissa'),
(8, 'Djaha Kouadjo Yves Martial'),
(9, 'Fofana Aboubacar Cyrille'),
(10, 'Kante Aichat'),
(11, 'Kegba Bodio Thierry Mathurin'),
(12, 'Keita Mariam'),
(13, 'Kone Ariel Christian Dany'),
(14, 'Kra Koffi Emmanuel'),
(15, 'Ouattara Bafetegue'),
(16, 'Ouattara Thiguissiet Aime Yohan'),
(17, 'Sanogo Tidiane'),
(18, 'Sehi Manhan David Gnomblehi'),
(19, 'Silue Douyeri Aboulaye'),
(20, 'Soro Watantcha Prosper'),
(21, 'Thea Guy Roger'),
(22, 'Yankine Aicha'),
(23, 'Yao Kouame Geoffroy Arnaud'),
(24, 'Yapi Monguet Christ Nemrod'),
(25, 'Yeo Fanigue Adama');

-- --------------------------------------------------------

--
-- Structure de la table `parrain`
--

DROP TABLE IF EXISTS `parrain`;
CREATE TABLE IF NOT EXISTS `parrain` (
  `idParrain` int(11) NOT NULL AUTO_INCREMENT,
  `nomParrain` varchar(150) NOT NULL,
  `numeroParrain` varchar(15) NOT NULL,
  `idFilleul` int(11) NOT NULL,
  PRIMARY KEY (`idParrain`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parrain`
--

INSERT INTO `parrain` (`idParrain`, `nomParrain`, `numeroParrain`, `idFilleul`) VALUES
(1, 'Ahmed Zeinabou Mint', '0586691851', 11),
(2, 'Atto Regis', '0151225529', 9),
(3, 'Barro Yaya', '0769079684', 19),
(4, 'Beugre Bawa Irvin', '0789883376', 22),
(5, 'Diakite Yacouba', '0575404497', 5),
(6, 'Doudou Nelly Venus Serena', '0101808645', 24),
(7, 'Gohi Henri Othniel', '0709374264', 25),
(8, 'Karimu Leila Roxane', '0101245692', 2),
(9, 'Kasse N\'guessan Mathilde', '0777401407', 8),
(11, 'Konan Eliud Nicanor', '0506683423', 20),
(12, 'Konan Kouame Aime Fabrice', '0747431748', 14),
(13, 'Konate Dotemin', '0556765524', 3),
(14, 'Kone Kignon Abdel', '0101945085', 17),
(15, 'Kone Donigue', '0788989214', 8),
(16, 'Kone Tokafolo', '0748340383', 15),
(17, 'Kouadio Kouassi Hyacinthe', '0758743425', 23),
(18, 'Kouassi Allou Auguste', '0759233726', 18),
(19, 'Make Gilles Chris ', '0757971540', 1),
(20, 'Manlan Ahoua Nathan', '0769982534', 12),
(21, 'Mensah Luc Germain', '0101874152', 4),
(22, 'N\'gbandaman Abel Noel', '0153480967', 21),
(23, 'Oguidan Michael', '0787721884', 16),
(24, 'Silue Samuel', '0788718510', 6),
(25, 'Sodara Christian Hamed', '0759401996', 13),
(26, 'Soumaila Geoffroy Evane', '0141947729', 15),
(27, 'Tape Kore Daniel', '0708858057', 7),
(28, 'Yebouet Richmond Junior', '0757548893', 17),
(29, 'Zante Antoine', '0140422041', 24);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
