-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 12:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movierev`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) UNSIGNED NOT NULL,
  `movie_name` varchar(255) NOT NULL DEFAULT '',
  `movie_year` int(4) NOT NULL,
  `movie_rating` varchar(10) NOT NULL DEFAULT '',
  `movie_bio` varchar(255) DEFAULT NULL,
  `movie_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_year`, `movie_rating`, `movie_bio`, `movie_img`) VALUES
(1, 'Lord of the Rings: The Fellowship of the Ring', 2001, 'PG-13', 'A battle between good and evil in which a Hobbit must deliver a ring into a volcano.', 'assets/img/lordOfRings.jpg'),
(2, 'Pacific Rim', 2013, 'PG-13', 'Giant robots fight giant monsters in Japan.', 'assets/img/pacificRim.jpg'),
(3, 'Dazed and Confused', 1993, 'PG-13', 'A bunch friends enjoy their last day of highschool.', 'assets/img/dazedConfused.jpg'),
(4, 'Batman & Robin', 1997, 'PG', 'The worst Batman movie, ever...', 'assets/img/batmanRobin.jpg'),
(5, 'District 9', 2009, 'R', 'A man has an unexpected surprise when he visits an alien slum in Johannesburg, South Africa.', 'assets/img/district9.jpg'),
(6, 'Arcane : League Of Legends', 2021, 'Remaja 13+', 'Berada di kota Utopis Piltover dan di daerah bawah tanah yang tertindas di Zaun, kisah ini mengikuti asal-usul dua juara ikonis dari League of Legends dan kekuatan yang akan memisahkan mereka.', 'https://m.media-amazon.com/images/M/MV5BYmU5OWM5ZTAtNjUzOC00NmUyLTgyOWMtMjlkNjdlMDAzMzU1XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg'),
(8, 'Puss in Boots: The Last Wish', 2022, 'Remaja 13+', 'Ketika Puss in Boots menemukan bahwa gairah petualangannya telah memberikan dampak buruk dan dia telah menghabiskan delapan dari sembilan nyawanya, dia memulai perjalanan epik untuk mengembalikannya dengan menemukan Permintaan Terakhir yang legendaris.', 'assets/img/pib.jpg'),
(9, 'Turning Red', 2022, 'Remaja 13+', 'Berlatar di Toronto, Kanada pada tahun 2002, Meilin \"Mei\" Lee adalah seorang anak muda berusia 13 tahun yang berprestasi tinggi yang menganggap dirinya sempurna dengan menguasai kelasnya sebagai siswa A+ dan selalu mendapatkan nilai 100', 'assets/img/tr.jpeg'),
(10, 'Minions: The Rise of Gru', 2022, 'Dewasa 21+', 'Kisah yang tak terungkap dari impian seorang anak berusia dua belas tahun untuk menjadi penjahat super terhebat di dunia.', 'assets/img/m.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `review_movie_id` int(11) UNSIGNED NOT NULL,
  `review_user_id` int(11) UNSIGNED NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_content` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `review_movie_id`, `review_user_id`, `review_rating`, `review_content`) VALUES
(6, 1, 39, 4, 'This is one of my favorite movies of all time!'),
(7, 1, 39, 1, 'On second thought, this was awful.'),
(9, 1, 40, 5, '\"The Lord of the Rings\" adalah perjalanan spektakuler ke dunia fantasi yang memukau. Dengan sinematografi yang indah, karakter mendalam, dan perjuangan melawan kegelapan, film ini menciptakan pengalaman tak terlupakan. Setiap adegan penuh dengan keajaiban'),
(12, 2, 40, 10, '\"Pacific Rim\" menghadirkan pengalaman aksi epik dengan pertarungan robot dan monster yang menggemparkan. Efek visual yang menakjubkan, karakter kuat, dan skala pertarungan besar memberikan hiburan tak terlupakan. Setiap adegan penuh dengan kegembiraan dan'),
(13, 3, 40, 6, '\"Dazed and Confused\" mengecewakan dengan plot yang kacau dan karakter yang kurang memikat. Meskipun mencoba menangkap semangat era 1970-an, film ini gagal memberikan kedalaman atau arah yang jelas. Plot buntu dan pengembangan karakter yang dangkal membuat'),
(14, 4, 40, 7, '\"Batman & Robin\" mengecewakan dengan naskah yang lemah dan eksekusi yang tidak memikat. Plot yang berantakan dan karakter yang terlalu karikatural menghancurkan esensi gelapnya Batman. Kelebihan elemen visual dan kostum tidak dapat menyelamatkan film dari'),
(15, 5, 40, 9, '\"District 9\" memukau dengan cerita yang mendalam dan eksekusi yang brilian. Dari plot yang unik hingga pengembangan karakter yang kuat, film ini menghadirkan kisah fiksi ilmiah yang luar biasa. Sinematografi yang mencengangkan dan efek khusus yang menakju'),
(17, 6, 40, 10, '\"Arcane\" memukau dengan animasi luar biasa, narasi mendalam, dan karakter yang kompleks. Dari setiap adegan hingga alur cerita yang penuh kejutan, film ini tidak ada tandingannya. Kesempurnaan visual dan emosional membuatnya layak mendapatkan nilai 10'),
(18, 1, 41, 10, 'Karya agung \"The Fellowship of the Ring\" menghadirkan dunia Middle-earth dengan sempurna. Dari sinematografi yang memukau hingga karakter mendalam, setiap elemen disusun dengan cermat. Kesempurnaan visual, skenario, dan pengarahan menjadikannya pengalaman'),
(19, 2, 41, 6, '\"Pacific Rim\" memiliki aksi spektakuler, namun plotnya dangkal. Karakter-karakter terasa klise, dan dialognya sering dipaksakan. Meskipun efek visual mengesankan, keseluruhan pengalaman kurang memikat. Dengan kekurangan dalam pengembangan karakter dan alu'),
(21, 3, 41, 6, '\"Dazed and Confused\" mengecewakan dengan alur cerita yang kacau dan karakter yang kurang menarik. Plot yang terasa buntu dan stereotip yang klise membuatnya sulit dinikmati. Meskipun mencoba nostalgia, keseluruhan pengalaman terasa hambar.'),
(22, 4, 41, 4, '\"Batman & Robin\" mengecewakan dengan naskah yang lemah dan eksekusi yang kurang memikat. Karakter terasa terlalu karikatural, plot berantakan, dan dialog klise. Keputusan kreatif yang meragukan membuat film ini kurang serius.'),
(23, 5, 41, 9, '\"District 9\" memukau dengan cerita yang mendalam dan eksekusi yang brilian. Plot unik, pengembangan karakter kuat, dan visual yang menakjubkan menjadikannya karya fiksi ilmiah yang luar biasa.'),
(24, 6, 41, 10, 'Arcane adalah seri yang fantastis dengan cerita yang menarik, karakter yang menarik perhatian, dan animasi yang impresif. Visual dan musiknya juga indah untuk dipandang dan didengarkan, dan secara keseluruhan itu adalah karya media yang hebat. 10/10 yang '),
(25, 8, 38, 8, '\r\n\"Puss in Boots: The Last Wish delivers a captivating blend of humor and heart. The animation is visually stunning, and the quest for the mythical Last Wish keeps the audience engaged. A delightful adventure that adds depth to the beloved character\'s jou'),
(26, 9, 38, 7, '\r\n\"Turning Red enchants with its vibrant animation and relatable coming-of-age story. Pixar\'s heartfelt exploration of adolescence, friendship, and family dynamics, combined with endearing characters, makes it a delightful and emotionally resonant animate'),
(27, 10, 38, 4, '\r\n\"Minions: The Rise of Gru falls short of expectations, relying heavily on tired gags and predictable plotlines. The attempt to expand the franchise feels forced, lacking the charm of its predecessors. A lackluster addition that struggles to recapture th');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `user_full_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_full_name`, `user_email`, `user_password`, `user_role`) VALUES
(38, 'admin', 'Admin 1', 'admin@admin.com', 'admin', 1),
(39, 'test', 'Test', 'test@test.com', 'test', 2),
(40, 'Cupitan', 'cupitan1', 'cupitangbf@gmail.com', '1234', 2),
(41, 'Tristette', 'Tristette cup', 'Tristette1@gmail.com', '1234', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `users_foreign_key` (`review_user_id`),
  ADD KEY `movies_foreign_key` (`review_movie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `movies_foreign_key` FOREIGN KEY (`review_movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_foreign_key` FOREIGN KEY (`review_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
