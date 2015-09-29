-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 17 Mai 2015 à 15:16
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `mfc`
--

-- --------------------------------------------------------

--
-- Structure de la table `centreformation`
--

CREATE TABLE IF NOT EXISTS `centreformation` (
`CODECENTRE` int(4) NOT NULL,
  `NOMCENTRE` varchar(32) NOT NULL,
  `ADRESSECENTRE` varchar(32) NOT NULL,
  `mailCenter` varchar(32) NOT NULL,
  `TELCENTRE` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `centreformation`
--

INSERT INTO `centreformation` (`CODECENTRE`, `NOMCENTRE`, `ADRESSECENTRE`, `mailCenter`, `TELCENTRE`) VALUES
(1, 'PARIS', '2 Rue Montmartre 75018', 'contact@mfc.fr', '0825079090'),
(2, 'BORDEAUX ', '33 Boulevard des Gens 33690 BORD', 'contact@mfc.fr', '0825079090'),
(3, 'LILLE', '20 Rue des Bois 59630 LILLE Cede', 'contact@mfc.fr', '0825079090');

-- --------------------------------------------------------

--
-- Structure de la table `consultant`
--

CREATE TABLE IF NOT EXISTS `consultant` (
`MatriculeConsultant` int(11) NOT NULL,
  `nomFormateur` varchar(100) NOT NULL,
  `prenomFormateur` varchar(100) NOT NULL,
  `tel` varchar(32) NOT NULL,
  `mail` varchar(32) NOT NULL,
  `adresseConsultant` varchar(100) NOT NULL,
  `qualificationConsultant` varchar(100) NOT NULL,
  `CODEFORMATION` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `consultant`
--

INSERT INTO `consultant` (`MatriculeConsultant`, `nomFormateur`, `prenomFormateur`, `tel`, `mail`, `adresseConsultant`, `qualificationConsultant`, `CODEFORMATION`) VALUES
(1, 'JEAN', 'Mathieu', '0600000001', 'Jean@mail.fr', '10 rue pasteur 75010', '', 'ACC'),
(2, 'MARRION', 'Félice', '0600000010', 'marrion@mail.fr', '1 avenue du général Leclerc 75010 Paris ', '', 'AL'),
(3, 'NELZY', 'Poup', '0702030416', 'poupouche@mail.fr', '24 allé Muscade 97200 Fort-de-France', '', 'PPHP5'),
(4, 'Janshen', 'luc1', '0625354897', 'luc@mail.fr', '49 boulevard de paris 75001', '', 'CPI');

-- --------------------------------------------------------

--
-- Structure de la table `correspondanceformationniveau`
--

CREATE TABLE IF NOT EXISTS `correspondanceformationniveau` (
`IdCorrespondance` int(11) NOT NULL,
  `CODEFORMATION` varchar(32) NOT NULL,
  `CODENIVEAU` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE IF NOT EXISTS `formation` (
  `CODEFORMATION` varchar(32) NOT NULL,
  `NOMFORMATION` varchar(100) NOT NULL,
  `DATEDEBUTFORMATION` date NOT NULL,
  `DATEFINFORMATION` date NOT NULL,
  `DUREE` int(11) NOT NULL,
  `PRIXFORMATION` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`CODEFORMATION`, `NOMFORMATION`, `DATEDEBUTFORMATION`, `DATEFINFORMATION`, `DUREE`, `PRIXFORMATION`) VALUES
('ACC', 'ACCESS 2007/2010 ', '0000-00-00', '0000-00-00', 5, 2200),
('AL', 'ADMINISTRATION LINUX ', '2015-01-01', '2016-01-01', 5, 2700),
('AMBDSS', 'ADMINISTRER ET MAINTENIR UNE BASE DE DONNÉES SQL SERVER ', '2015-01-01', '2016-01-01', 5, 2700),
('BMAGP', 'BÉNÉFICES DES MÉTHODES AGILES POUR LA GESTION DE PROJET ', '2015-01-01', '2015-01-01', 3, 2500),
('BUR', 'BUREAUTIQUE ', '2015-01-01', '2016-01-01', 15, 2000),
('CA', 'CURSUS ACCESS ', '2015-01-02', '2016-01-02', 16, 6000),
('CAL', 'CURSUS ADMINISTRATEUR LINUX ', '2015-01-01', '2016-01-01', 35, 15000),
('CAR', 'CURSUS ADMINISTRATEUR DE RÉSEAUX ', '2015-01-01', '2016-01-01', 30, 15000),
('CCARC', 'CURSUS CERTIFIANT ADMINISTRATEUR DE RÉSEAUX CISCO', '2015-01-01', '2016-01-01', 30, 17000),
('CCCI', 'CONCEVOIR UN CAHIER DES CHARGES INFORMATIQUE', '2015-01-01', '2016-01-01', 3, 1700),
('CCWS', 'CURSUS CERTIFIANT WINDOWS SERVER 2008', '2015-01-01', '2016-01-01', 25, 11000),
('CDWMN', 'CURSUS DÉVELOPPEUR WEB MICROSOFT .NET', '2015-01-01', '2016-01-01', 25, 12000),
('CGMSW', 'CONFIGURER, GÉRER ET MAINTENIR DES SERVEURS WINDOWS ', '2015-01-01', '2016-01-01', 5, 2700),
('CGPES', 'CONFIGURER, GÉRER ET DÉPANNER EXCHANGE SERVER 2010 ', '2015-01-01', '2016-01-01', 5, 2700),
('CIA', 'CONCEVOIR UNE INFRASTRUCTURE D''ANNUAIRE ', '2015-01-01', '2016-01-01', 5, 2700),
('CMCU', 'CURSUS MESSAGERIE & COMMUNICATIONS UNIFIÉES ', '2015-01-01', '2016-01-01', 15, 7000),
('CO', 'CURSUS OFFICE ', '2015-01-01', '2016-01-01', 20, 7700),
('CPI', 'CYCLES PROJETS INFORMATIQUES ', '2015-01-01', '2016-01-01', 15, 9000),
('CPI1', 'CONDUIRE UN PROJET INFORMATIQUE ', '2015-01-01', '2016-01-01', 5, 4500),
('CPW', 'CHEF DE PROJET WEB ', '2015-01-01', '2016-01-01', 10, 5000),
('CS', 'CURSUS SÉCURITÉ ', '2015-01-01', '2016-01-01', 20, 12000),
('CSAWHC', 'CRÉER DES SITES ET APPLICATIONS WEB AVEC HTML5 ET CSS3 ', '2015-01-01', '2016-01-01', 5, 2700),
('CSIM', 'Cycle Systèmes d''Information et Management', '2015-01-01', '2016-01-01', 15, 13000),
('CSST', 'CURSUS SPÉCIALISTE DU SUPPORT TECHNIQUE ', '2015-01-01', '2016-01-01', 13, 5000),
('CV', 'CURSUS VIRTUALISATION', '2015-01-01', '2016-01-01', 15, 7000),
('DAA', 'DÉVELOPPEZ VOS APPLICATIONS AVEC ANDROID ', '2015-01-01', '2016-01-01', 4, 2200),
('DRSSI', 'DEVENIR RESPONSABLE DE LA SÉCURITÉ DU SYSTÈME D''INFORMATION ', '2015-01-01', '2016-01-01', 5, 3500),
('EACRC', 'L''ESSENTIEL POUR ADMINISTRER ET CONFIGURER DES RÉSEAUX CISCO', '2015-01-01', '2016-01-01', 3, 1600),
('ETBDSI', 'ÉLABORER DES TABLEAUX DE BORD POUR LA DSI ', '2015-01-01', '2016-01-01', 2, 2500),
('ICTE', 'INTRODUCTION COMPLÈTE À LA TÉLÉPHONIE D''ENTREPRISE ', '2015-01-01', '2016-01-01', 7, 3000),
('IMI', 'S''INITIER À LA MICRO-INFORMATIQUE ', '0000-00-00', '0000-00-00', 5, 2000),
('ISI', 'INFRASTRUCTURE DES SYSTÈMES D''INFORMATION', '2015-01-01', '2016-01-01', 5, 5000),
('MEB', 'MAÎTRISER L''ESSENTIEL DE LA BUREAUTIQUE ', '0000-00-00', '0000-00-00', 10, 4000),
('MOAC', 'METTRE EN ŒUVRE ET ADMINISTRER CITRIX ', '2015-01-01', '2016-01-01', 3, 1700),
('MOI', 'METTRE EN ŒUVRE IPV6 ', '2015-01-01', '2016-01-01', 4, 2300),
('MOSVI', 'MISE EN ŒUVRE D’UNE SOLUTION DE VOIX SUR IP ', '2015-01-01', '2016-01-01', 2, 1200),
('OC', 'OUTILS COLLABORATIFS ', '2015-01-01', '2016-01-01', 0, 0),
('PCMNF', 'PROGRAMMATION C# AVEC MICROSOFT .NET FRAMEWORK 4.5', '2015-01-01', '2015-01-01', 5, 3000),
('PINI', 'PILOTER L''INFORMATIQUE POUR NON-INFORMATICIEN', '2015-01-01', '2016-01-01', 5, 3000),
('PPHP5', 'PROGRAMMEZ EN PHP 5 ', '2015-01-01', '2016-01-01', 3, 1800),
('SOAR', 'SOLUTIONS ET OUTILS D''ADMINISTRATION RÉSEAUX', '2015-01-01', '2016-01-01', 5, 2900),
('SR', 'SYNTHÈSE RÉSEAUX ', '2015-01-01', '2016-01-01', 5, 2700),
('TCPIP', 'TCP/IP ', '2015-01-01', '2016-01-01', 3, 1600),
('TRAI', 'TESTS ET RECETTE DES APPLICATIONS INFORMATIQUES ', '2015-01-01', '2015-01-01', 3, 1700),
('TSFWIFI', 'LA TECHNOLOGIE SANS-FIL WIFI ', '2015-01-01', '2016-01-01', 5, 3500),
('UAPPLE', 'L''UNIVERS APPLE DE A À Z ', '0000-00-00', '0000-00-00', 5, 2000),
('ULC', 'UNIX - LINUX, LES COMMANDES ', '2015-01-01', '2016-01-01', 5, 2700),
('VTIP', 'VOIX ET TÉLÉPHONIE SUR IP ', '2015-01-01', '2016-01-01', 5, 3500),
('WORD', 'WORD 2007/2010 ', '2015-01-01', '2016-01-01', 5, 2000),
('www', 'wwww', '2015-04-27', '2016-04-28', 5, 2000);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE IF NOT EXISTS `inscription` (
`NUMINSCRIPTION` int(4) NOT NULL,
  `MATRICULESTAGIAIRE` int(8) NOT NULL,
  `DATEINSCRIPTION` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inscription`
--

INSERT INTO `inscription` (`NUMINSCRIPTION`, `MATRICULESTAGIAIRE`, `DATEINSCRIPTION`) VALUES
(4, 6, '2015-04-22'),
(5, 14, '2015-04-22'),
(6, 14, '2015-04-22'),
(7, 15, '2015-03-06');

-- --------------------------------------------------------

--
-- Structure de la table `niveauformation`
--

CREATE TABLE IF NOT EXISTS `niveauformation` (
  `CODENIVEAU` int(4) NOT NULL,
  `DESCRIPTIF` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveauformation`
--

INSERT INTO `niveauformation` (`CODENIVEAU`, `DESCRIPTIF`) VALUES
(1, 'Débutant'),
(2, 'Intermédiaire'),
(3, 'Expert');

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

CREATE TABLE IF NOT EXISTS `planning` (
`CODEPLANNING` int(4) NOT NULL,
  `DATEPLANNING` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `planning`
--

INSERT INTO `planning` (`CODEPLANNING`, `DATEPLANNING`) VALUES
(1, '2015-03-06');

-- --------------------------------------------------------

--
-- Structure de la table `questionnaire`
--

CREATE TABLE IF NOT EXISTS `questionnaire` (
`NumQuestionnaire` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `CODESESSION` int(11) NOT NULL,
  `MATRICULESTAGIAIRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE IF NOT EXISTS `salle` (
`idSalle` int(11) NOT NULL,
  `nomSalle` varchar(32) NOT NULL,
  `capaciteSalle` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`idSalle`, `nomSalle`, `capaciteSalle`) VALUES
(1, 'Rouge', 50),
(2, 'Verte', 60);

-- --------------------------------------------------------

--
-- Structure de la table `sessionformation`
--

CREATE TABLE IF NOT EXISTS `sessionformation` (
`CODESESSION` int(11) NOT NULL,
  `CODEFORMATION` varchar(32) NOT NULL,
  `CODEPLANNING` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL,
  `DATESESSION` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sessionformation`
--

INSERT INTO `sessionformation` (`CODESESSION`, `CODEFORMATION`, `CODEPLANNING`, `idSalle`, `DATESESSION`) VALUES
(1, 'ACC', 1, 2, '2015-03-06'),
(2, 'AL', 1, 2, '2015-03-11'),
(3, 'AMBDSS', 1, 2, '0000-00-00'),
(5, 'ACC', 1, 1, '2015-04-25'),
(6, 'ACC', 1, 2, '2015-05-13');

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

CREATE TABLE IF NOT EXISTS `stagiaire` (
`MATRICULESTAGIAIRE` int(8) NOT NULL,
  `NOMSTAGIAIRE` varchar(32) NOT NULL,
  `PRENOMSTAGIAIRE` varchar(32) NOT NULL,
  `TELSTAGIAIRE` varchar(32) NOT NULL,
  `MAILSTAGIAIRE` varchar(32) NOT NULL,
  `ADRESSE` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `stagiaire`
--

INSERT INTO `stagiaire` (`MATRICULESTAGIAIRE`, `NOMSTAGIAIRE`, `PRENOMSTAGIAIRE`, `TELSTAGIAIRE`, `MAILSTAGIAIRE`, `ADRESSE`) VALUES
(3, 'ANDREW ', 'Prince', '0600000000', 'Prince@mail.fr', '23 avenue de paris 75002 Paris'),
(4, 'HENRY ', 'Jul', '0600000001', 'Jul@mail.fr', '24 avenue de paris 75001 Paris'),
(5, 'BROWN', 'Quentin', '0600000002', 'quentin@mail.fr', '26 avenue de paris 75003 Paris'),
(6, 'TREBEAU', 'Celine', '0600000003', 'celine@mail.fr', '30 avenue de paris 75005'),
(7, 'KALY', 'Fornie', '0600000004', 'fornie@mail.fr', '28 avenue de paris 75009 Paris'),
(8, 'Wash', 'John', '0600000005', 'john@mail.fr', '30 avenue de paris 75010 Paris'),
(9, 'Curry', 'Stephen', '0600000006', 'stephen@mail.fr', '24 allé Muscade 97200 Fort-de-France '),
(10, 'West', 'David', '0600000007', 'david@mail.fr', '24 allé Muscade 97200 Fort-de-France '),
(11, 'Nash', 'Andy', '0600000008', 'andy@mail.fr', '24 allé Muscade 97200 Fort-de-France'),
(12, 'Ying', 'Yang', '0600000006', 'yy@mail.fr', '24 allé Muscade 97200 Fort-de-France '),
(13, 'Gasol', 'paul', '0789205640', 'paul@mail.fr', '50 bouleavrd sebastopal 77500 chelles'),
(14, 'Raja', 'bell', '0789654210', 'bell@mail.fr', '50 bouleavrd sebastopal 77500 chelles'),
(15, 'Bosh', 'chris', '0123568974', 'chris@mail.fr', '48 boulevard de chatelet 75003 paris');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`IdUser` int(11) NOT NULL,
  `Pseudo` varchar(32) NOT NULL,
  `Pass` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`IdUser`, `Pseudo`, `Pass`) VALUES
(1, 'admin', 'admin@password'),
(2, 'secretaire', 'secretaire@password');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `centreformation`
--
ALTER TABLE `centreformation`
 ADD PRIMARY KEY (`CODECENTRE`);

--
-- Index pour la table `consultant`
--
ALTER TABLE `consultant`
 ADD PRIMARY KEY (`MatriculeConsultant`), ADD KEY `CODEFORMATION` (`CODEFORMATION`), ADD KEY `CODEFORMATION_2` (`CODEFORMATION`), ADD KEY `CODEFORMATION_3` (`CODEFORMATION`);

--
-- Index pour la table `correspondanceformationniveau`
--
ALTER TABLE `correspondanceformationniveau`
 ADD PRIMARY KEY (`IdCorrespondance`), ADD KEY `CODEFORMATION` (`CODEFORMATION`,`CODENIVEAU`), ADD KEY `CODENIVEAU` (`CODENIVEAU`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
 ADD PRIMARY KEY (`CODEFORMATION`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
 ADD PRIMARY KEY (`NUMINSCRIPTION`), ADD KEY `MATRICULESTAGIAIRE` (`MATRICULESTAGIAIRE`);

--
-- Index pour la table `niveauformation`
--
ALTER TABLE `niveauformation`
 ADD PRIMARY KEY (`CODENIVEAU`);

--
-- Index pour la table `planning`
--
ALTER TABLE `planning`
 ADD PRIMARY KEY (`CODEPLANNING`);

--
-- Index pour la table `questionnaire`
--
ALTER TABLE `questionnaire`
 ADD PRIMARY KEY (`NumQuestionnaire`), ADD KEY `CODESESSION` (`CODESESSION`,`MATRICULESTAGIAIRE`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
 ADD PRIMARY KEY (`idSalle`);

--
-- Index pour la table `sessionformation`
--
ALTER TABLE `sessionformation`
 ADD PRIMARY KEY (`CODESESSION`), ADD KEY `CODEPLANNING` (`CODEPLANNING`), ADD KEY `CODEFORMATION` (`CODEFORMATION`), ADD KEY `idSalle` (`idSalle`);

--
-- Index pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
 ADD PRIMARY KEY (`MATRICULESTAGIAIRE`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `centreformation`
--
ALTER TABLE `centreformation`
MODIFY `CODECENTRE` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `consultant`
--
ALTER TABLE `consultant`
MODIFY `MatriculeConsultant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `correspondanceformationniveau`
--
ALTER TABLE `correspondanceformationniveau`
MODIFY `IdCorrespondance` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
MODIFY `NUMINSCRIPTION` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `planning`
--
ALTER TABLE `planning`
MODIFY `CODEPLANNING` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `questionnaire`
--
ALTER TABLE `questionnaire`
MODIFY `NumQuestionnaire` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
MODIFY `idSalle` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `sessionformation`
--
ALTER TABLE `sessionformation`
MODIFY `CODESESSION` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
MODIFY `MATRICULESTAGIAIRE` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `consultant`
--
ALTER TABLE `consultant`
ADD CONSTRAINT `consultant_ibfk_1` FOREIGN KEY (`CODEFORMATION`) REFERENCES `formation` (`CODEFORMATION`);

--
-- Contraintes pour la table `correspondanceformationniveau`
--
ALTER TABLE `correspondanceformationniveau`
ADD CONSTRAINT `correspondanceformationniveau_ibfk_1` FOREIGN KEY (`CODEFORMATION`) REFERENCES `formation` (`CODEFORMATION`),
ADD CONSTRAINT `correspondanceformationniveau_ibfk_2` FOREIGN KEY (`CODENIVEAU`) REFERENCES `niveauformation` (`CODENIVEAU`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`MATRICULESTAGIAIRE`) REFERENCES `stagiaire` (`MATRICULESTAGIAIRE`);

--
-- Contraintes pour la table `sessionformation`
--
ALTER TABLE `sessionformation`
ADD CONSTRAINT `sessionformation_ibfk_1` FOREIGN KEY (`CODEFORMATION`) REFERENCES `formation` (`CODEFORMATION`),
ADD CONSTRAINT `sessionformation_ibfk_2` FOREIGN KEY (`CODEPLANNING`) REFERENCES `planning` (`CODEPLANNING`),
ADD CONSTRAINT `sessionformation_ibfk_3` FOREIGN KEY (`idSalle`) REFERENCES `salle` (`idSalle`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
