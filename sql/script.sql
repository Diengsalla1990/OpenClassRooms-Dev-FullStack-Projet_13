-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 15 Août 2025 à 23:15
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `yourwayyourcar`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE IF NOT EXISTS `adresse` (
  `num_voie` int(11) NOT NULL,
  `nom_voie` varchar(255) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `bis_ter` varchar(100) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `pays_etat` varchar(100) NOT NULL,
  PRIMARY KEY (`num_voie`,`nom_voie`,`code_postal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adresse`
--

INSERT INTO `adresse` (`num_voie`, `nom_voie`, `code_postal`, `bis_ter`, `ville`, `pays_etat`) VALUES
(3, 'Place de la Concorde', 75008, '', 'Paris', 'France'),
(5, 'Boulevard Haussmann', 75009, 'bis', 'Paris', 'France'),
(7, 'Rue de Castiglione', 75001, '', 'Paris', 'France'),
(12, 'Rue de la Paix', 75002, '', 'Paris', 'France'),
(15, 'Rue de la Pompe', 75116, '', 'Paris', 'France'),
(18, 'Rue du Faubourg Saint-Honoré', 75008, '', 'Paris', 'France'),
(22, 'Avenue George V', 75008, '', 'Paris', 'France'),
(25, 'Avenue des Champs-Élysées', 75008, '', 'Paris', 'France'),
(30, 'Rue de Rivoli', 75004, '', 'Paris', 'France'),
(42, 'Avenue Montaigne', 75008, '', 'Paris', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE IF NOT EXISTS `agence` (
  `idagence` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `num_voie` int(11) NOT NULL,
  `nom_voie` varchar(255) NOT NULL,
  `code_postal` int(11) NOT NULL,
  PRIMARY KEY (`idagence`),
  KEY `num_voie` (`num_voie`,`nom_voie`,`code_postal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `agence`
--

INSERT INTO `agence` (`idagence`, `nom`, `mail`, `telephone`, `num_voie`, `nom_voie`, `code_postal`) VALUES
(1, 'Agence Paris Centre', 'pariscentre@yourwayyourcar.com', '0142567890', 12, 'Rue de la Paix', 75002),
(2, 'Agence Champs-Élysées', 'champselysees@yourwayyourcar.com', '0142567891', 25, 'Avenue des Champs-Élysées', 75008),
(3, 'Agence Haussmann', 'haussmann@yourwayyourcar.com', '0142567892', 5, 'Boulevard Haussmann', 75009),
(4, 'Agence Rivoli', 'rivoli@yourwayyourcar.com', '0142567893', 30, 'Rue de Rivoli', 75004),
(5, 'Agence Montaigne', 'montaigne@yourwayyourcar.com', '0142567894', 42, 'Avenue Montaigne', 75008);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `telephone` varchar(100) NOT NULL,
  `num_voie` int(11) NOT NULL,
  `nom_voie` varchar(255) NOT NULL,
  `code_postal` int(11) NOT NULL,
  PRIMARY KEY (`idclient`),
  KEY `num_voie` (`num_voie`,`nom_voie`,`code_postal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `mail`, `password`, `date_naissance`, `date_inscription`, `telephone`, `num_voie`, `nom_voie`, `code_postal`) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1985-05-15', '2025-01-10 09:30:00', '0612345678', 18, 'Rue du Faubourg Saint-Honoré', 75008),
(2, 'Martin', 'Sophie', 'sophie.martin@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1990-08-22', '2025-02-15 14:45:00', '0623456789', 3, 'Place de la Concorde', 75008),
(3, 'Bernard', 'Pierre', 'pierre.bernard@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1978-11-30', '2025-03-05 11:20:00', '0634567890', 7, 'Rue de Castiglione', 75001),
(4, 'Petit', 'Marie', 'marie.petit@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1995-04-18', '2025-04-20 16:10:00', '0645678901', 15, 'Rue de la Pompe', 75116),
(5, 'Leroy', 'Thomas', 'thomas.leroy@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1982-07-25', '2025-05-12 10:05:00', '0656789012', 22, 'Avenue George V', 75008);

-- --------------------------------------------------------

--
-- Structure de la table `discussion`
--

CREATE TABLE IF NOT EXISTS `discussion` (
  `iddiscussion` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `objet` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`iddiscussion`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `discussion`
--

INSERT INTO `discussion` (`iddiscussion`, `client_id`, `objet`, `type`) VALUES
(1, 1, 'Problème de réservation', 'support'),
(2, 2, 'Question sur les options', 'information'),
(3, 3, 'Réclamation', 'reclamation'),
(4, 4, 'Demande spéciale', 'demande'),
(5, 5, 'Feedback', 'feedback');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `idlocation` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicule_id` int(11) NOT NULL,
  `agence_depart_id` int(11) NOT NULL,
  `agence_arrivee_id` int(11) NOT NULL,
  `date_prise_reservation` datetime NOT NULL,
  `date_depart` datetime NOT NULL,
  `date_arrivee` datetime NOT NULL,
  `statut` enum('reservee','en_cours','terminee','annulee') NOT NULL DEFAULT 'reservee',
  `tarif_id` int(11) NOT NULL,
  PRIMARY KEY (`idlocation`),
  KEY `client_id` (`client_id`),
  KEY `user_id` (`user_id`),
  KEY `vehicule_id` (`vehicule_id`),
  KEY `agence_depart_id` (`agence_depart_id`),
  KEY `agence_arrivee_id` (`agence_arrivee_id`),
  KEY `tarif_id` (`tarif_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`idlocation`, `client_id`, `user_id`, `vehicule_id`, `agence_depart_id`, `agence_arrivee_id`, `date_prise_reservation`, `date_depart`, `date_arrivee`, `statut`, `tarif_id`) VALUES
(1, 1, 3, 1, 1, 1, '2025-06-01 10:00:00', '2025-06-15 09:00:00', '2025-06-20 17:00:00', 'terminee', 1),
(2, 2, 4, 3, 2, 2, '2025-06-05 14:30:00', '2025-06-18 10:00:00', '2025-06-25 15:00:00', 'terminee', 2),
(3, 3, 5, 5, 3, 3, '2025-06-10 11:15:00', '2025-06-22 08:00:00', '2025-06-28 18:00:00', 'terminee', 3),
(4, 4, 3, 7, 4, 4, '2025-07-01 09:45:00', '2025-07-10 10:00:00', '2025-07-15 16:00:00', 'reservee', 4),
(5, 5, 4, 9, 5, 5, '2025-07-05 16:20:00', '2025-07-12 11:00:00', '2025-07-19 14:00:00', 'reservee', 5),
(6, 1, 5, 11, 1, 2, '2025-07-10 13:10:00', '2025-07-20 09:00:00', '2025-07-25 17:00:00', 'reservee', 6),
(7, 2, 3, 2, 1, 3, '2025-08-01 10:30:00', '2025-08-10 08:00:00', '2025-08-15 19:00:00', 'reservee', 7),
(8, 3, 4, 4, 2, 4, '2025-08-05 15:45:00', '2025-08-12 10:00:00', '2025-08-18 16:00:00', 'reservee', 8),
(9, 4, 5, 6, 3, 5, '2025-08-10 11:20:00', '2025-08-15 09:00:00', '2025-08-22 18:00:00', 'reservee', 9),
(10, 5, 3, 8, 4, 1, '2025-08-15 14:00:00', '2025-08-20 10:00:00', '2025-08-25 17:00:00', 'reservee', 10);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE IF NOT EXISTS `marque` (
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `marque`
--

INSERT INTO `marque` (`nom`) VALUES
('Audi'),
('BMW'),
('Citroën'),
('Ford'),
('Mercedes'),
('Nissan'),
('Peugeot'),
('Renault'),
('Toyota'),
('Volkswagen');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `idmessage` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date_envoi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmessage`),
  KEY `discussion_id` (`discussion_id`),
  KEY `client_id` (`client_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `nom` varchar(100) NOT NULL,
  `marque_nom` varchar(100) NOT NULL,
  `model_categorie_code` char(1) NOT NULL,
  `model_type_code` char(1) NOT NULL,
  `model_transmission_code` char(1) NOT NULL,
  `model_fuel_code` char(1) NOT NULL,
  `model_van_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nom`,`marque_nom`),
  KEY `marque_nom` (`marque_nom`),
  KEY `model_categorie_code` (`model_categorie_code`),
  KEY `model_type_code` (`model_type_code`),
  KEY `model_transmission_code` (`model_transmission_code`),
  KEY `model_fuel_code` (`model_fuel_code`),
  KEY `model_van_id` (`model_van_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `model`
--

INSERT INTO `model` (`nom`, `marque_nom`, `model_categorie_code`, `model_type_code`, `model_transmission_code`, `model_fuel_code`, `model_van_id`) VALUES
('208', 'Peugeot', 'A', 'C', 'M', 'G', NULL),
('3 Series', 'BMW', 'C', 'S', 'A', 'G', NULL),
('3008', 'Peugeot', 'F', 'F', 'A', 'D', 3),
('308', 'Peugeot', 'B', 'F', 'A', 'D', NULL),
('5 Series', 'BMW', 'D', 'L', 'A', 'G', NULL),
('508', 'Peugeot', 'C', 'F', 'A', 'D', NULL),
('A-Class', 'Mercedes', 'B', 'C', 'A', 'G', NULL),
('A3', 'Audi', 'B', 'C', 'A', 'G', NULL),
('A4', 'Audi', 'C', 'F', 'A', 'D', NULL),
('C-Class', 'Mercedes', 'C', 'F', 'A', 'D', NULL),
('C3', 'Citroën', 'A', 'C', 'M', 'G', NULL),
('C4', 'Citroën', 'B', 'F', 'A', 'D', NULL),
('Clio', 'Renault', 'A', 'C', 'M', 'G', NULL),
('Corolla', 'Toyota', 'B', 'F', 'A', 'H', NULL),
('E-Class', 'Mercedes', 'D', 'L', 'A', 'D', NULL),
('Focus', 'Ford', 'B', 'F', 'M', 'G', NULL),
('Golf', 'Volkswagen', 'B', 'F', 'M', 'G', NULL),
('Kangoo', 'Renault', 'E', 'U', 'M', 'D', 1),
('Megane', 'Renault', 'B', 'F', 'A', 'D', NULL),
('Qashqai', 'Nissan', 'F', 'F', 'A', 'D', NULL),
('Tiguan', 'Volkswagen', 'F', 'F', 'A', 'D', NULL),
('Trafic', 'Renault', 'E', 'U', 'M', 'D', 2);

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

CREATE TABLE IF NOT EXISTS `tarif` (
  `idtarif` int(11) NOT NULL AUTO_INCREMENT,
  `prix_ht` decimal(10,0) NOT NULL,
  `montant_tva` decimal(10,0) NOT NULL,
  `prix_ttc` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idtarif`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `tarif`
--

INSERT INTO `tarif` (`idtarif`, `prix_ht`, `montant_tva`, `prix_ttc`) VALUES
(1, '50', '10', '60'),
(2, '70', '14', '84'),
(3, '90', '18', '108'),
(4, '120', '24', '144'),
(5, '150', '30', '180'),
(6, '80', '16', '96'),
(7, '100', '20', '120'),
(8, '130', '26', '156'),
(9, '60', '12', '72'),
(10, '110', '22', '132');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','support','agent') NOT NULL DEFAULT 'agent',
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`iduser`, `nom`, `prenom`, `mail`, `password`, `role`, `date_creation`) VALUES
(1, 'Admin', 'System', 'admin@yourwayyourcar.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '2025-01-01 00:00:00'),
(2, 'Support', 'Team', 'support@yourwayyourcar.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'support', '2025-01-01 00:00:00'),
(3, 'Agent', 'Paris1', 'agent1@yourwayyourcar.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'agent', '2025-01-01 00:00:00'),
(4, 'Agent', 'Paris2', 'agent2@yourwayyourcar.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'agent', '2025-01-01 00:00:00'),
(5, 'Agent', 'Paris3', 'agent3@yourwayyourcar.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'agent', '2025-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `van`
--

CREATE TABLE IF NOT EXISTS `van` (
  `idvan` int(11) NOT NULL AUTO_INCREMENT,
  `van_categorie_code` char(1) NOT NULL,
  `van_type_code` char(1) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`idvan`),
  KEY `van_categorie_code` (`van_categorie_code`),
  KEY `van_type_code` (`van_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `van`
--

INSERT INTO `van` (`idvan`, `van_categorie_code`, `van_type_code`, `designation`) VALUES
(1, 'E', 'U', 'Petit utilitaire'),
(2, 'E', 'U', 'Grand utilitaire'),
(3, 'F', 'F', 'SUV familial');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `idvehicule` int(11) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(100) DEFAULT NULL,
  `agence_id` int(11) DEFAULT NULL,
  `model_nom` varchar(100) NOT NULL,
  `marque_nom` varchar(100) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `photo_secondaire1` varchar(255) NOT NULL,
  `photo_secondaire2` varchar(255) NOT NULL,
  PRIMARY KEY (`idvehicule`),
  UNIQUE KEY `immatriculation` (`immatriculation`),
  KEY `agence_id` (`agence_id`),
  KEY `model_nom` (`model_nom`,`marque_nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`idvehicule`, `immatriculation`, `agence_id`, `model_nom`, `marque_nom`, `photo`, `photo_secondaire1`, `photo_secondaire2`) VALUES
(1, 'AA-123-AA', 1, '208', 'Peugeot', 'peugeot208_1.jpg', 'peugeot208_2.jpg', 'peugeot208_3.jpg'),
(2, 'BB-456-BB', 1, '308', 'Peugeot', 'peugeot308_1.jpg', 'peugeot308_2.jpg', 'peugeot308_3.jpg'),
(3, 'CC-789-CC', 2, 'Clio', 'Renault', 'renaultclio_1.jpg', 'renaultclio_2.jpg', 'renaultclio_3.jpg'),
(4, 'DD-012-DD', 2, 'Megane', 'Renault', 'renaultmegane_1.jpg', 'renaultmegane_2.jpg', 'renaultmegane_3.jpg'),
(5, 'EE-345-EE', 3, 'C3', 'Citroën', 'citroenc3_1.jpg', 'citroenc3_2.jpg', 'citroenc3_3.jpg'),
(6, 'FF-678-FF', 3, 'C4', 'Citroën', 'citroenc4_1.jpg', 'citroenc4_2.jpg', 'citroenc4_3.jpg'),
(7, 'GG-901-GG', 4, '3 Series', 'BMW', 'bmw3series_1.jpg', 'bmw3series_2.jpg', 'bmw3series_3.jpg'),
(8, 'HH-234-HH', 4, '5 Series', 'BMW', 'bmw5series_1.jpg', 'bmw5series_2.jpg', 'bmw5series_3.jpg'),
(9, 'II-567-II', 5, 'A-Class', 'Mercedes', 'mercedesa_1.jpg', 'mercedesa_2.jpg', 'mercedesa_3.jpg'),
(10, 'JJ-890-JJ', 5, 'C-Class', 'Mercedes', 'mercedesc_1.jpg', 'mercedesc_2.jpg', 'mercedesc_3.jpg'),
(11, 'KK-123-KK', 1, 'Kangoo', 'Renault', 'renaultkangoo_1.jpg', 'renaultkangoo_2.jpg', 'renaultkangoo_3.jpg'),
(12, 'LL-456-LL', 2, 'Trafic', 'Renault', 'renaulttrafic_1.jpg', 'renaulttrafic_2.jpg', 'renaulttrafic_3.jpg'),
(13, 'MM-789-MM', 3, '3008', 'Peugeot', 'peugeot3008_1.jpg', 'peugeot3008_2.jpg', 'peugeot3008_3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule_categorie`
--

CREATE TABLE IF NOT EXISTS `vehicule_categorie` (
  `categorie_code` char(1) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`categorie_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule_categorie`
--

INSERT INTO `vehicule_categorie` (`categorie_code`, `designation`) VALUES
('A', 'Mini'),
('B', 'Compacte'),
('C', 'Berline'),
('D', 'Luxe'),
('E', 'Utilitaire'),
('F', 'SUV');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule_fuel`
--

CREATE TABLE IF NOT EXISTS `vehicule_fuel` (
  `fuel_code` char(1) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`fuel_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule_fuel`
--

INSERT INTO `vehicule_fuel` (`fuel_code`, `designation`) VALUES
('D', 'Diesel'),
('E', 'Électrique'),
('G', 'Essence'),
('H', 'Hybride');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule_transmission`
--

CREATE TABLE IF NOT EXISTS `vehicule_transmission` (
  `transmission_code` char(1) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`transmission_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule_transmission`
--

INSERT INTO `vehicule_transmission` (`transmission_code`, `designation`) VALUES
('A', 'Automatique'),
('M', 'Manuelle');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule_type`
--

CREATE TABLE IF NOT EXISTS `vehicule_type` (
  `type_code` char(1) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule_type`
--

INSERT INTO `vehicule_type` (`type_code`, `designation`) VALUES
('C', 'Citadine'),
('F', 'Familiale'),
('L', 'Luxe'),
('S', 'Sportive'),
('U', 'Utilitaire');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `agence`
--
ALTER TABLE `agence`
  ADD CONSTRAINT `agence_ibfk_1` FOREIGN KEY (`num_voie`, `nom_voie`, `code_postal`) REFERENCES `adresse` (`num_voie`, `nom_voie`, `code_postal`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`num_voie`, `nom_voie`, `code_postal`) REFERENCES `adresse` (`num_voie`, `nom_voie`, `code_postal`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `discussion`
--
ALTER TABLE `discussion`
  ADD CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`idclient`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`idclient`) ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`iduser`) ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_3` FOREIGN KEY (`vehicule_id`) REFERENCES `vehicule` (`idvehicule`) ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_4` FOREIGN KEY (`agence_depart_id`) REFERENCES `agence` (`idagence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_5` FOREIGN KEY (`agence_arrivee_id`) REFERENCES `agence` (`idagence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_6` FOREIGN KEY (`tarif_id`) REFERENCES `tarif` (`idtarif`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`discussion_id`) REFERENCES `discussion` (`iddiscussion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`idclient`) ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`iduser`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`marque_nom`) REFERENCES `marque` (`nom`) ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_2` FOREIGN KEY (`model_categorie_code`) REFERENCES `vehicule_categorie` (`categorie_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_3` FOREIGN KEY (`model_type_code`) REFERENCES `vehicule_type` (`type_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_4` FOREIGN KEY (`model_transmission_code`) REFERENCES `vehicule_transmission` (`transmission_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_5` FOREIGN KEY (`model_fuel_code`) REFERENCES `vehicule_fuel` (`fuel_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `model_ibfk_6` FOREIGN KEY (`model_van_id`) REFERENCES `van` (`idvan`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `van`
--
ALTER TABLE `van`
  ADD CONSTRAINT `van_ibfk_1` FOREIGN KEY (`van_categorie_code`) REFERENCES `vehicule_categorie` (`categorie_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `van_ibfk_2` FOREIGN KEY (`van_type_code`) REFERENCES `vehicule_type` (`type_code`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `vehicule_ibfk_1` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`idagence`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vehicule_ibfk_2` FOREIGN KEY (`model_nom`, `marque_nom`) REFERENCES `model` (`nom`, `marque_nom`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
