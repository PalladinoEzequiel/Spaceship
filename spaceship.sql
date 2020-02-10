-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 03:27 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spaceship`
--

-- --------------------------------------------------------

--
-- Table structure for table `favoritos`
--

CREATE TABLE `favoritos` (
  `favnum` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `link` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favoritos`
--

INSERT INTO `favoritos` (`favnum`, `username`, `link`, `name`, `img`) VALUES
(21, 'erik', 'http://erik.games/spaceship/musica/y2mate.com - grannate_realidades_YrNSdn4m7d8.mp3', 'Grannate - Realidades', 'http://erik.games/spaceship/i/re.jpg'),
(23, 'erik', 'http://erik.games/spaceship/musica/y2mate.com - grannate_etapas_NkrGEtcA58A.mp3', 'Grannate - Etapas', 'http://erik.games/spaceship/i/et.jpg'),
(24, 'erik', 'https://cf-media.sndcdn.com/JaZpIYnjBMUB.128.mp3?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiKjovL2NmLW1lZGlhLnNuZGNkbi5jb20vSmFacElZbmpCTVVCLjEyOC5tcD', 'TomÃ¡s Yaciura - Red', 'https://i1.sndcdn.com/avatars-LizmjoziQYARve1k-eN7mYg-t500x500.jpg'),
(26, 'erik', 'https://cf-media.sndcdn.com/SpCsgdnEouV6.128.mp3?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiKjovL2NmLW1lZGlhLnNuZGNkbi5jb20vU3BDc2dkbkVvdVY2LjEyOC5tcD', 'Ezequiel Palladino - DiÃ³s del Shawarma', 'https://i.ibb.co/BnVCkjK/a2421215502-10.jpg'),
(27, 'erik', 'https://cf-media.sndcdn.com/wpQpoJ8wggZ0.128.mp3?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiKjovL2NmLW1lZGlhLnNuZGNkbi5jb20vd3BRcG9KOHdnZ1owLjEyOC5tcD', 'Kalus Guerano - Yeah, I\'m a Stray, Who Cares', 'https://i1.sndcdn.com/avatars-000606873204-8xodwr-t500x500.jpg'),
(28, 'erik', 'https://cf-media.sndcdn.com/XkFWoYj4i3ga.128.mp3?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiKjovL2NmLW1lZGlhLnNuZGNkbi5jb20vWGtGV29ZajRpM2dhLjEyOC5tcD', 'King Gizzard & The Lizard Wizard - Crumbling Castle', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Polygondwanaland.jpg/220px-Polygondwanaland.jpg'),
(29, 'erik', 'http://erik.games/spaceship/musica/Doomed.mp3', 'Kalus Guerano - Doomed', 'https://i1.sndcdn.com/avatars-000606873204-8xodwr-t500x500.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `musica`
--

CREATE TABLE `musica` (
  `id` int(11) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `artista` varchar(140) NOT NULL,
  `nombre` varchar(140) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musica`
--

INSERT INTO `musica` (`id`, `url`, `artista`, `nombre`, `foto`) VALUES
(1, 'http://erik.games/spaceship/musica/y2mate.com%20-%20grannate_nunca_mas_bbiIPeQx6i4.mp3', 'Grannate', 'Nunca Más', 'http://erik.games/spaceship/i/nm.jpg'),
(2, 'http://erik.games/spaceship/musica/y2mate.com - grannate_complejos_kuVPqL-3nPg.mp3', 'Grannate', 'Complejos', 'http://erik.games/spaceship/i/co.jpg'),
(3, 'http://erik.games/spaceship/musica/y2mate.com - grannate_realidades_YrNSdn4m7d8.mp3', 'Grannate', 'Realidades', 'http://erik.games/spaceship/i/re.jpg'),
(4, 'http://erik.games/spaceship/musica/y2mate.com - grannate_etapas_NkrGEtcA58A.mp3', 'Grannate', 'Etapas', 'http://erik.games/spaceship/i/et.jpg'),
(5, 'http://erik.games/spaceship/musica/duiliobobo.mp3', 'Ezequiel Palladino', 'Diós del Shawarma', 'https://i.ibb.co/BnVCkjK/a2421215502-10.jpg'),
(6, 'http://erik.games/spaceship/musica/blow.mp3', 'Tomás Yaciura', 'Blow Down', 'https://i1.sndcdn.com/avatars-LizmjoziQYARve1k-eN7mYg-t500x500.jpg'),
(7, 'http://erik.games/spaceship/musica/broken.mp3', 'Tomás Yaciura', 'Broken', 'https://i1.sndcdn.com/avatars-LizmjoziQYARve1k-eN7mYg-t500x500.jpg'),
(8, 'http://erik.games/spaceship/musica/fix.mp3', 'Tomás Yaciura', 'Fix', 'https://i1.sndcdn.com/avatars-LizmjoziQYARve1k-eN7mYg-t500x500.jpg'),
(9, 'http://erik.games/spaceship/musica/red.mp3', 'Tomás Yaciura', 'Red', 'https://i1.sndcdn.com/avatars-LizmjoziQYARve1k-eN7mYg-t500x500.jpg'),
(10, 'http://erik.games/spaceship/musica/tin.mp3', 'Tomás Yaciura', 'Tin Box', 'https://i1.sndcdn.com/avatars-LizmjoziQYARve1k-eN7mYg-t500x500.jpg'),
(11, 'http://erik.games/spaceship/musica/noise.mp3', 'Kalus Guerano', 'Noisy Boi', 'https://i1.sndcdn.com/artworks-000588035066-bmhvoz-t500x500.jpg'),
(12, 'http://erik.games/spaceship/musica/Snow.mp3', 'Kalus Guerano', 'Snowy Day', 'https://i1.sndcdn.com/artworks-000512642622-jq7949-t500x500.jpg'),
(13, 'http://erik.games/spaceship/musica/stray.mp3', 'Kalus Guerano', 'Yeah, I\'m a Stray, Who Cares', 'https://i1.sndcdn.com/avatars-000606873204-8xodwr-t500x500.jpg'),
(14, 'http://erik.games/spaceship/musica/ice.mp3', 'Kalus Guerano', 'Icy Jungle', ''),
(15, 'http://erik.games/spaceship/musica/otoño.mp3', 'Kalus Guerano', 'Otoño (Improvisación 1)', 'https://i1.sndcdn.com/artworks-000538110918-deajnk-t500x500.jpg'),
(16, 'http://erik.games/spaceship/musica/Crumbling Castle.mp3', 'King Gizzard & The Lizard Wizard', 'Crumbling Castle', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Polygondwanaland.jpg/220px-Polygondwanaland.jpg'),
(17, 'http://erik.games/spaceship/musica/Morsa\'s Bass.mp3', 'Kalus Guerano', 'Morsa\'s Bass', 'https://i1.sndcdn.com/avatars-000606873204-8xodwr-t500x500.jpg'),
(18, 'http://erik.games/spaceship/musica/Didn\'t Suicide (yet).mp3', 'Kalus Guerano', 'Didn\'t Suicide (yet)', 'https://i1.sndcdn.com/avatars-000606873204-8xodwr-t500x500.jpg'),
(19, 'http://erik.games/spaceship/musica/Locrian.mp3', 'Kalus Guerano', 'Locrian', 'https://i1.sndcdn.com/avatars-000606873204-8xodwr-t500x500.jpg'),
(20, 'http://erik.games/spaceship/musica/Doomed.mp3', 'Kalus Guerano', 'Doomed', 'https://i1.sndcdn.com/avatars-000606873204-8xodwr-t500x500.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usernum` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(99) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usernum`, `username`, `password`, `email`) VALUES
(4, 'fandelamusica', '7f99bef877271bf7dd4a', 'escuch@dor.es'),
(5, 'dou', '7db82fb77e715b3cdbd2', 'dou@c.om'),
(6, 'h', 'h', 'h@co.m'),
(7, 'aver', '9b86dcf988d58143b44ebb49b33faf2d', 'ca@p.o'),
(8, 'erik', '6a42dd6e7ca9a813693714b0d9aa1ad8', 'er@i.k'),
(9, 'Ezequiel015', '19621fb51464e1da187c09c5c4b20ae9', '42232395eze@gmail.co'),
(10, 'bruh', '2e315dcaa77983999bf11106c65229dc', 'b@ru.h'),
(11, 'altogaymer', '202cb962ac59075b964b07152d234b70', '123@12.3'),
(12, 'Hola, Profe!', '19621fb51464e1da187c09c5c4b20ae9', 'Quetal?@gmail.com'),
(13, 'nah', '19621fb51464e1da187c09c5c4b20ae9', 'altogam@er.com'),
(14, 'ultragamer', '19621fb51464e1da187c09c5c4b20ae9', 'hi@erik.games');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`favnum`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usernum`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `favnum` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `musica`
--
ALTER TABLE `musica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usernum` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`username`) REFERENCES `usuarios` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
