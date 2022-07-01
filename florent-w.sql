-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 31 Janvier 2022 à 08:45
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fweltma`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE `adherents` (
  `numAdherent` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`numAdherent`, `nom`, `prenom`) VALUES
(191, 'Weltmann', 'Florent'),
(213, 'Lodbrok', 'Ragnar'),
(218, 'Weasley', 'Ron'),
(220, 'Malefoy', 'Draco'),
(221, 'Allen', 'Barry');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id_genre` int(11) NOT NULL,
  `nom_genre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `genres`
--

INSERT INTO `genres` (`id_genre`, `nom_genre`) VALUES
(1, 'Aventure'),
(2, 'Fantastique'),
(3, 'Historique'),
(4, 'Policier'),
(5, 'Science-Fiction'),
(6, 'Manga'),
(7, 'Bande dessinée'),
(8, 'Théâtre'),
(9, 'Scientifique');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `numLivre` int(11) NOT NULL,
  `titre` text NOT NULL,
  `auteur` varchar(100) NOT NULL,
  `numEmprunteur` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`numLivre`, `titre`, `auteur`, `numEmprunteur`, `id_genre`) VALUES
(46, 'Le Seigneur des Anneaux : La Communauté de l\'Anneau', 'J.R.R. Tolkien', 191, 1),
(48, 'Harry Potter à l\'école des sorciers', 'J.K. Rowling', 213, 2),
(49, 'Le Seigneur des Anneaux : Les Deux Tours', 'J.R.R. Tolkien', NULL, 1),
(50, 'Le Seigneur des Anneaux : Le Retour du Roi', 'J.R.R. Tolkien', 220, 1),
(52, 'The Witcher', 'Andrzej Sapkowski', NULL, 2),
(55, 'Détective Conan', 'Gōshō Aoyama', 213, 6),
(56, 'Olive et Tom', 'Yōichi Takahashi', NULL, 6),
(57, 'His Dark Materials', 'Philip Pullman', NULL, 1),
(71, 'Dune', 'Frank Herbert', 213, 5),
(73, 'Le bourgeois gentilhomme', 'Molière', NULL, 8),
(74, 'Astérix', 'René Goscinny', NULL, 7),
(75, 'Yu-Gi-Oh!', 'Kazuki Takahashi', 219, 6);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherents`
--
ALTER TABLE `adherents`
  ADD PRIMARY KEY (`numAdherent`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`numLivre`),
  ADD KEY `numEmprunteur` (`numEmprunteur`),
  ADD KEY `id_genre` (`id_genre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adherents`
--
ALTER TABLE `adherents`
  MODIFY `numAdherent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `numLivre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id_genre`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
