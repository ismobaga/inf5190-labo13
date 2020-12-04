-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `inf5190`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cours`;
CREATE TABLE `cours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `cours`;
INSERT INTO `cours` (`id`, `nom`) VALUES
(1,	'INF5190 - WEB '),
(2,	'INF3030 - Dev Soft'),
(3,	'lkdfncl ');

DROP TABLE IF EXISTS `iinscrit`;
CREATE TABLE `iinscrit` (
  `idcours` int(11) NOT NULL,
  `idusers` int(11) NOT NULL,
  KEY `idcours` (`idcours`),
  KEY `idusers` (`idusers`),
  CONSTRAINT `iinscrit_ibfk_1` FOREIGN KEY (`idcours`) REFERENCES `cours` (`id`),
  CONSTRAINT `iinscrit_ibfk_2` FOREIGN KEY (`idusers`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `iinscrit`;
INSERT INTO `iinscrit` (`idcours`, `idusers`) VALUES
(1,	1),
(1,	2);

DROP TABLE IF EXISTS `personnes`;
CREATE TABLE `personnes` (
  `personne_id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courriel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`personne_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `personnes`;
INSERT INTO `personnes` (`personne_id`, `prenom`, `nom`, `adresse`, `courriel`, `created_at`) VALUES
(1,	'Ismail',	'Bagayoko',	'12195 Rue Lachapelle',	'bagayoko.ismail@gmail.com',	'0000-00-00 00:00:00'),
(10,	'Abdoul',	'Baga',	'12195 Rue Lachapelle',	'abdoul.baga@gmail.com',	'0000-00-00 00:00:00'),
(12,	'Prenom',	'PPP',	'Quebec, Canada',	'gagga@hdjd.cif',	'0000-00-00 00:00:00'),
(13,	'Prenom',	'PPP',	'Quebec, Canada',	'gagga@hdjd.cif',	'0000-00-00 00:00:00'),
(14,	'Prenom',	'PPP',	'Quebec, Canada',	'gagga@hdjd.cif',	'0000-00-00 00:00:00'),
(15,	'Prenom',	'PPP',	'Quebec, Canada',	'gagga@hdjd.cif',	'0000-00-00 00:00:00'),
(16,	'Prenom',	'PPP',	'Quebec, Canada',	'gagga@hdjd.cif',	'0000-00-00 00:00:00'),
(17,	'ldfklk',	'kjhdk',	'zzzzz',	'zzzz@zzz',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1,	'admin',	'admin',	'ROLE_ADMIN'),
(2,	'user',	'user',	'ROLE_USER'),
(3,	'demo',	'demo',	'ROLE_USER');

-- 2020-12-04 23:20:45