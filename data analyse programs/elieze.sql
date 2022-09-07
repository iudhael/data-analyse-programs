-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 juil. 2022 à 16:15
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `elieze`
--

-- --------------------------------------------------------

--
-- Structure de la table `ajout`
--

CREATE TABLE `ajout` (
  `id_ajout` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_kilo` int(11) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `date_ajout` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ajout`
--

INSERT INTO `ajout` (`id_ajout`, `id_commande`, `id_prod`, `quantite`, `prix_kilo`, `prix_total`, `date_ajout`) VALUES
(1, 1, 1, 9, 300, 2700, '2022-07-16 18:05:39'),
(2, 1, 3, 5, 500, 2500, '2022-07-16 18:05:39'),
(3, 2, 1, 9, 300, 2700, '2022-07-16 18:06:17'),
(4, 3, 1, 11, 300, 3300, '2022-07-18 09:42:25'),
(5, 3, 3, 5, 500, 2500, '2022-07-18 09:42:25'),
(6, 3, 5, 10, 400, 4000, '2022-07-18 09:42:25'),
(7, 3, 4, 7, 1094, 7658, '2022-07-18 09:42:25'),
(8, 4, 3, 5, 500, 2500, '2022-07-18 09:42:37'),
(9, 4, 5, 10, 400, 4000, '2022-07-18 09:42:37'),
(10, 4, 4, 7, 1094, 7658, '2022-07-18 09:42:37'),
(11, 5, 3, 5, 500, 2500, '2022-07-18 09:42:52'),
(12, 5, 5, 10, 400, 4000, '2022-07-18 09:42:52'),
(13, 6, 3, 5, 500, 2500, '2022-07-18 09:43:05'),
(14, 7, 1, 9, 300, 2700, '2022-07-18 12:33:16'),
(15, 8, 1, 9, 300, 2700, '2022-07-18 12:34:44'),
(16, 8, 3, 5, 500, 2500, '2022-07-18 12:34:44'),
(17, 9, 3, 5, 500, 2500, '2022-07-18 12:34:55'),
(18, 10, 3, 5, 500, 2500, '2022-07-18 12:36:08');

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `img_blog` varchar(255) NOT NULL,
  `desc_blog` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id_blog`, `img_blog`, `desc_blog`) VALUES
(1, '../static/img/product/details/02.jpg', '\r\n The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of es'),
(2, '../static/img/product/details/04.jpg', ' Organizations everywhere are realizing the potential that Mac brings to their employees by giving them the freedom to use the tools they already know and love. Software and hardware made for each other. Because Apple designs both the software and hardwar'),
(3, '../static/img/product/details/03.jpg', 'In an effort to deliver the next generation of what Apple CEO Tim Cook called \"the most-loved phone in the world,\" the iPhone 6S has created the next generation of its industry-shattering multitouch screen: the 3D Touch, which Chief Design Officer Jony Iv'),
(4, '../static/img/product/details/06.jpg', 'Apple\'s Craig Federighi, senior vice president of software engineering, who conducted a live demo at the Apple event, also demonstrated how the new interactive interface eliminates going \"in and out\" of windows in certain apps, like mail apps – with 3D To');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(255) NOT NULL,
  `image_cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_cat`, `nom_cat`, `image_cat`) VALUES
(1, 'Produits tropicaux ju', '../static/img/image/Catégories/1657064893393.jpg'),
(2, 'Produits minéraux', '../static/img/product/details/thumb-1.jpg'),
(3, 'CAT', '../static/img/image/Catégories/cat.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `date_commande` datetime NOT NULL DEFAULT current_timestamp(),
  `prix` int(11) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `id_client` int(11) NOT NULL,
  `mode_payement` varchar(255) DEFAULT NULL,
  `valider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `date_commande`, `prix`, `destination`, `id_client`, `mode_payement`, `valider`) VALUES
(1, '2022-07-16 18:05:39', 5200, 'coutonou', 1, 'MoMo', 1),
(2, '2022-07-16 18:06:17', 2700, 'bb', 1, 'MoMo', 1),
(3, '2022-07-18 09:42:25', 17458, 'jjjjj', 1, 'MoMo', 1),
(4, '2022-07-18 09:42:37', 14158, 'jjjjjj', 1, 'MoMo', 1),
(5, '2022-07-18 09:42:52', 6500, 'jskxjlxxl', 1, 'MoMo', 1),
(6, '2022-07-18 09:43:05', 2500, 'jjkjkjlnù,', 1, 'MoMo', 1),
(7, '2022-07-18 12:33:16', 2700, 'cac', 1, 'MoMo', 1),
(8, '2022-07-18 12:34:44', 5200, 'c1', 1, 'MoMo', 0),
(9, '2022-07-18 12:34:55', 2500, 'c2', 1, 'MoMo', 0),
(10, '2022-07-18 12:36:08', 2500, 'C3', 2, 'MoMo', 0);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idc` int(11) NOT NULL,
  `nomc` varchar(255) NOT NULL,
  `emailc` varchar(255) NOT NULL,
  `messagec` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sous_cat`
--

CREATE TABLE `sous_cat` (
  `id_scat` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `image_scat` varchar(255) NOT NULL,
  `nom_scat` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sous_cat`
--

INSERT INTO `sous_cat` (`id_scat`, `id_cat`, `image_scat`, `nom_scat`, `description`) VALUES
(1, 2, '../static/img/product/details/thumb-1.jpg', 'OR', 'lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetu'),
(2, 1, '../static/img/product/details/thumb-2.jpg', 'Mais', 'Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia e'),
(3, 1, '../static/img/product/details/thumb-4.jpg', 'Cadjou', 'Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia e'),
(4, 2, '../static/img/product/details/thumb-3.jpg', 'calcaire', 'Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia e'),
(5, 1, '../static/img/product/details/product-details-4.jpg', 'Comcombre', 'Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia e'),
(6, 1, '../static/img/product/details/product-details-2.jpg', 'piment', 'Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia e'),
(7, 1, '../static/img/cart/cart-3.jpg', 'banane', 'Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia e');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `prenom_client` varchar(255) NOT NULL,
  `telephone_client` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `acces` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cle` varchar(255) NOT NULL,
  `confirm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_client`, `nom_client`, `prenom_client`, `telephone_client`, `adresse`, `email`, `acces`, `password`, `cle`, `confirm`) VALUES
(1, 'judi', 'cael', '+229 5665434', 'cffgdhhffff', 'j@gmail.com', 1, '$2y$12$4036pKvVPcSHb7nJa79IL.x7V4LmLEnPzQr4KelVBBfQUSTFI2OCO', '0', 0),
(2, 'lionel', 'adklionel', '+229 51476309', 'parakou', 'lionel@gmail.com', 0, '$2y$12$zSWeEzkfaqbUbL9M7//WM.uZm3ZkwBSPBJVHYpxESqwQts.03xa1O', '0', 0),
(8, 'prudhome', 'lionel', '+229 74154785', 'cotonou', 'belle@gmail.com', 0, '$2y$12$o.AP2QjIMqj9otPjv1J1ROKRWF8.zHaBRoPyF0gNH3Y6hlQ39oS.y', '2147483647', 0),
(10, 'kabir', 'koudpusee', '+229 78541245', 'parakoui', 'koudouse@gmail.com', 0, '$2y$12$Zbwk966Lg4Wre4mfPCvVaOfLpRX0gw1BMOidfjcQlKoVwsKH6ExQO', '2147483647', 0),
(11, 'pascal', 'robert', '+229 47144521', 'parakou', 'eamil@gmail.com', 0, '$2y$12$FeRtxq6NzjdgMZMnottYIeMwmzFdijRyUPZt2QGAycw4shK2LSCCe', '2147483647', 0),
(15, 'pipo', 'paul', '+229 42154785', 'popoiuy', 'mira@gmail.com', 0, '$2y$12$HCecFIb3hXrcw8dMbubgx.NgljoMvpaGkSi89EH4rhJiJ61jZI2H2', '210192823962d565deb1cc62.48701366', 0),
(16, 'ahmadou', 'abdoul koudousse', '+229 54785215', 'abdhdgyed', 'abdoul@gmail.com', 0, '$2y$12$FQkPXQ70meUhku9ktgm/QOQNkBjtAncps7D2oQBwyCl0ThF6J6f4G', '24934476662d567adb40cd5.21938130', 0);

-- --------------------------------------------------------

--
-- Structure de la table `variantes`
--

CREATE TABLE `variantes` (
  `id_prod` int(11) NOT NULL,
  `code_prod` varchar(255) NOT NULL,
  `nom_prod` varchar(255) NOT NULL,
  `qdispo` int(11) NOT NULL,
  `prix_kilo` int(11) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `id_scat` int(11) NOT NULL,
  `image_prod` varchar(255) NOT NULL,
  `v_min` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `variantes`
--

INSERT INTO `variantes` (`id_prod`, `code_prod`, `nom_prod`, `qdispo`, `prix_kilo`, `specification`, `id_scat`, `image_prod`, `v_min`) VALUES
(1, 'prod1', 'cadjou_sud', 100, 300, 'DUNORD', 2, '../static/img/product/product-2.jpg', 9),
(3, 'prod3', 'Cadjou_centre', 100, 500, 'Centre', 2, '../static/img/product/product-3.jpg', 5),
(4, 'prod4', 'Vrai_Or', 1000, 1094, 'VRAI', 1, '../static/img/product/product-3.jpg', 7),
(5, 'prod5', 'Faux_Or', 500, 400, 'Faux', 1, '../static/img/product/product-2.jpg', 10);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ajout`
--
ALTER TABLE `ajout`
  ADD PRIMARY KEY (`id_ajout`),
  ADD KEY `id_commande` (`id_commande`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idc`);

--
-- Index pour la table `sous_cat`
--
ALTER TABLE `sous_cat`
  ADD PRIMARY KEY (`id_scat`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `variantes`
--
ALTER TABLE `variantes`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `id_scat` (`id_scat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ajout`
--
ALTER TABLE `ajout`
  MODIFY `id_ajout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `sous_cat`
--
ALTER TABLE `sous_cat`
  MODIFY `id_scat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `variantes`
--
ALTER TABLE `variantes`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ajout`
--
ALTER TABLE `ajout`
  ADD CONSTRAINT `ajout_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ajout_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `variantes` (`id_prod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `user` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sous_cat`
--
ALTER TABLE `sous_cat`
  ADD CONSTRAINT `sous_cat_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categories` (`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `variantes`
--
ALTER TABLE `variantes`
  ADD CONSTRAINT `variantes_ibfk_1` FOREIGN KEY (`id_scat`) REFERENCES `sous_cat` (`id_scat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
