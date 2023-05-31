-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 31 mai 2023 à 16:13
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `c218`
--

-- --------------------------------------------------------

--
-- Structure de la table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `icon` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(1, 'Bague', 'bague'),
(2, 'Bracelet', 'bracelet'),
(3, 'Boucles d\'oreilles', 'boucle'),
(4, 'Collier', 'collier'),
(5, 'Chaîne', 'chaine'),
(6, 'Médailles', 'medaille');

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

CREATE TABLE `command` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(1000) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`id`, `id_produit`, `quantity`, `dat`, `statut`, `id_user`) VALUES
(61, 11, 1, '2023-05-30 16:21:05', 'paid', 8),
(93, 12, 1, '2023-05-30 15:05:20', 'paid', 8),
(117, 13, 1, '2023-05-30 22:27:39', 'paid', 8);

-- --------------------------------------------------------

--
-- Structure de la table `details_command`
--

CREATE TABLE `details_command` (
  `id` int(11) NOT NULL,
  `product` varchar(1000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_command` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `statut` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `details_command`
--

INSERT INTO `details_command` (`id`, `product`, `quantity`, `price`, `id_command`, `id_user`, `user`, `address`, `country`, `city`, `statut`) VALUES
(28, 'Gopro Hero 5', 1, 450, 61, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Algeria', 'Cairo', 'done'),
(29, 'Amazon Echo', 1, 179, 93, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Algeria', 'Cairo', 'done'),
(30, 'Apple Watch', 1, 349, 117, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done');

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pictures`
--

INSERT INTO `pictures` (`id`, `picture`, `id_produit`) VALUES
(13, 'Samsung-Galaxy-S6-edge-Gold-Platinum..jpg', 2),
(14, 'samsung-galaxy-s7-edge.jpg', 2),
(15, 'galaxy-s7-edge-black.png', 2),
(16, 'MMY72_AV2.jpg', 8),
(17, 'iphone7-plus-rosegold-select-2016.jpg', 8),
(18, 'blue-iphone.jpg', 8),
(19, 'Hero5-Black-Carousel-3.png', 9),
(20, 'gopro-hero-5-release-date-price-frame.jpg', 9),
(21, 'gopro_hero_5_black_review_display.jpg', 9),
(25, 'oculus_rift_1.jpg', 10),
(26, 'OculusRift.jpg', 10),
(27, '61EsR4QA0PL._SL1500_.jpg', 10),
(28, 'five_pictures1_100259_201506200523405584885cedd68.png', 12),
(29, 'pi_ms-gp622qe-035za1.jpg', 12),
(30, 'pi_ms-gp622qe-035za3.jpg', 12),
(31, 'amazon_b00x4whp5e_echo_1187819.jpg', 13),
(32, 'amazonecho_4-100599473-orig.jpg', 13),
(33, 'amazon-echo-part-1-a-consumer-pr.jpg', 13),
(34, 'og-img.png', 14),
(35, 'h_51561794.jpg', 14),
(36, 'apple-watch-thumbnail-100571651-orig.jpg', 14),
(37, 'pixel.png', 15),
(38, 'GoogleBlue.jpg', 15),
(39, 'etui-diztronic-matte-tpu-google-pixel-xl-alloy-grey.jpg', 15),
(40, 'D3S_4695-1200.jpg', 16),
(41, 'highres-Canon-EOS-7D-MarkII-8_1417776370.jpg', 16),
(42, 'highres-Canon-EOS-7D-Mark-II-with-lens-1_1411133185.jpg', 16),
(43, 'nexus-6p-9444.0.jpg', 17),
(44, 'nexus-6p-9693.0.jpg', 17),
(45, 'Google-Nexus-6P-Review-Conc.jpg', 17);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `id_picture` int(11) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `promo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `description`, `price`, `id_picture`, `thumbnail`, `promo`) VALUES
(7, 1, 'Lord of ring', '5.50-inch 1440x2560 display powered by 1.6GHz octa-core processor alongside 4GB of RAM and 12-megapixel', 560, 2, 'bague-p.jpeg', ''),
(9, 3, 'Boucle d&apos;oreilles', ' GoPro HERO5 Black features Supports 4K30, 2.7K60, 1080p120 Video, Capture 12MP Photos at 30fps', 450, 9, 'boucle-p.jpeg', '1'),
(11, 4, 'Collier de la sagesse', 'The Oculus Rift is a virtual reality system that completely immerses you inside virtual worlds', 600, 10, 'collier-p.jpg', '1'),
(12, 5, 'Chaîne en diamant', 'In-depth review of the MSI GP62-2QEi781FD (Intel Core i7 5700HQ, NVIDIA GeForce GTX 950M, 15.6\", 2.3 kg) ... The MSI GE series is already the manufacturer\'s entry-level gaming series. ..... ', 839, 12, 'chaine-p.jpeg', ''),
(13, 6, 'M&eacute;daille ancienne', 'Amazon Echo is a hands-free speaker you control with your voice. Echo connects to the Alexa Voice Service to play music, provide information, news, sports ...', 179, 13, 'medaille-p.jpeg', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(1000) NOT NULL,
  `lastname` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `role` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `address`, `city`, `country`, `role`) VALUES
(5, 'diouf-cherif@live.fr', 'Cherif', 'Diouf', '21232f297a57a5a743894a0e4a801fc3', 'N 23 Dakar', 'Dakar', 'Senegal', 'admin'),
(8, 'jngoga82@gmail.com', 'Justin', 'Uwayo', 'ee11cbb19052e40b07aac0ca060c23ee', 'N 20 Thies', 'Thies', 'Senegal', 'client'),
(9, 'test@test.com', 'Cherif', 'Diouf', 'e7247759c1633c0f9f1485f3690294a9', 'HLM FASS', 'Dakar', 'Senegal', 'client');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details_command`
--
ALTER TABLE `details_command`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `command`
--
ALTER TABLE `command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT pour la table `details_command`
--
ALTER TABLE `details_command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
