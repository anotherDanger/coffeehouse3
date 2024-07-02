-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 01 Jul 2024 pada 14.39
-- Versi server: 8.4.0
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeehouse_backup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `join_date`) VALUES
(1, 'root', '123', NULL),
(2, 'main', '123', '2024-06-28 05:56:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `cart_id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `message_id` int NOT NULL,
  `user_id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_general_ci,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` int NOT NULL,
  `product_stock` int NOT NULL,
  `product_desc` text COLLATE utf8mb4_general_ci,
  `product_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_stock`, `product_desc`, `product_image`) VALUES
('AR001', 'Arabika', 1499999, 150, 'Kopi Arabika adalah salah satu jenis kopi yang paling populer dan dihargai di dunia. Biji kopi Arabika berasal dari pohon kopi Arabika (Coffee Arabica) yang tumbuh di ketinggian antara 600 hingga 2000 meter di atas permukaan laut. Kopi Arabika memiliki rasa yang kompleks, dengan berbagai nuansa mulai dari manis hingga asam, serta aroma yang bervariasi dari buah-buahan, bunga, hingga rempah-rempah. Biji kopi Arabika memiliki kandungan kafein yang lebih rendah dibandingkan dengan kopi jenis lainnya seperti Robusta, tetapi memiliki kualitas yang lebih tinggi dan sering kali dianggap lebih halus dan lembut dalam rasa. Kopi Arabika biasanya dipilih untuk kopi kelas atas dan kopi spesialitas karena profil rasanya yang unik dan kompleks.\r\n', '667170eb7f2c1.png'),
('BL001', 'Bali', 1500000, 150, 'Biji kopi Bali, tumbuh di dataran tinggi pulau Bali, Indonesia. Dikenal dengan cita rasa halus, kompleks, dan rendah asam. Terinspirasi dari faktor seperti lokasi tumbuh, metode pengolahan, dan iklim. Dijelaskan dengan nuansa seperti coklat, buah tropis, bunga, atau rempah-rempah. Cocok bagi penggemar kopi yang mencari pengalaman yang tenang dan terimbangi.', '6671589cea782.png'),
('GY001', 'Gayo', 1500000, 150, 'Biji kopi Gayo merupakan varietas kopi Arabika yang ditanam di dataran tinggi Gayo, Aceh, Indonesia. Terkenal akan kualitasnya yang superior, kopi Gayo tumbuh pada ketinggian sekitar 1.200 hingga 1.500 meter di atas permukaan laut. Kopi Gayo dikenal akan cita rasa halus dengan sentuhan buah-buahan, coklat, dan rempah-rempah yang khas. Proses pengolahannya sering dilakukan secara tradisional, baik dengan metode kering maupun basah, memberikan karakteristik rasa yang unik dan kompleks. Dengan tingkat keasaman yang rendah dan kehalusan rasanya, kopi Gayo sering dianggap sebagai salah satu kopi terbaik di Indonesia, serta memiliki dampak sosial dan ekonomi yang signifikan bagi masyarakat setempat di Aceh.', '66715925890cd.png'),
('LW001', 'Luwak', 1500000, 150, 'Biji kopi Luwak merupakan hasil dari proses unik di mana biji kopi yang telah dimakan oleh musang luwak kemudian dikeluarkan melalui pencernaan mereka. Proses ini memberikan kopi Luwak cita rasa yang halus dan kaya dengan sedikit keasaman. Kopi Luwak sering digambarkan memiliki nuansa yang unik dan kompleks, dengan sentuhan cokelat, buah-buahan, dan rempah-rempah. Meskipun produksinya terbatas dan harganya tinggi, kopi Luwak telah menjadi lambang kemewahan bagi para pecinta kopi di seluruh dunia.', '6671593d95f8a.png'),
('RB001', 'Robusta', 1500000, 150, 'Biji kopi Robusta berasal dari pohon kopi jenis Coffea canephora, yang tumbuh di wilayah-wilayah tropis di sebagian besar Afrika, Asia, dan Amerika. Berbeda dengan kopi Arabika, kopi Robusta memiliki cita rasa yang lebih kuat dan beraroma, dengan tingkat keasaman yang lebih rendah. Kopi Robusta cenderung memiliki rasa yang lebih pahit dan kurang kompleks daripada kopi Arabika. Meskipun begitu, biji kopi Robusta memiliki kandungan kafein yang lebih tinggi, sehingga sering digunakan dalam campuran kopi atau sebagai bahan baku untuk kopi instan dan kopi espress.', '6671596b5676e.png'),
('T001', 'Test', 1500000, 100, 'Test', NULL),
('TR001', 'Toraja', 1500000, 150, 'Biji kopi Toraja berasal dari wilayah Toraja, Sulawesi Selatan, Indonesia. Kopi ini tumbuh di dataran tinggi dengan ketinggian sekitar 1.000 hingga 1.800 meter di atas permukaan laut. Kopi Toraja dikenal karena rasa yang kompleks dengan nuansa buah-buahan, rempah-rempah, dan cokelat, serta memiliki keasaman yang seimbang.', '66715990f20c6.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `total` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Trigger `transactions`
--
DELIMITER $$
CREATE TRIGGER `before_insert_calculate_total` BEFORE INSERT ON `transactions` FOR EACH ROW BEGIN
    SET NEW.total = NEW.quantity * NEW.price;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_generate_transaction_id` BEFORE INSERT ON `transactions` FOR EACH ROW BEGIN
    DECLARE prefix VARCHAR(10);
    SET prefix = 'TRX';
    SET NEW.transaction_id = CONCAT(prefix, '_', UNIX_TIMESTAMP(NOW()));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_calculate_total` BEFORE UPDATE ON `transactions` FOR EACH ROW BEGIN
    SET NEW.total = NEW.quantity * NEW.price;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `join_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_image`, `join_date`) VALUES
(1, 'root', '$2y$10$AfdlfjJHT0JM1MaGy1DrieG/rPFrbhfxRLaIxxQCJfFQg1l0wLERG', NULL, '2024-06-28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_name_UNIQUE` (`product_name`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `product_name` (`product_name`),
  ADD KEY `transactions_ibfk_2` (`product_id`),
  ADD KEY `fk_username_transaction` (`username`);

--
-- Indeks untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_name` (`product_name`),
  ADD KEY `fk_username` (`username`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Ketidakleluasaan untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_username_transaction` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`product_name`) REFERENCES `products` (`product_name`);

--
-- Ketidakleluasaan untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `transaction_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `transaction_detail_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `transaction_detail_ibfk_3` FOREIGN KEY (`product_name`) REFERENCES `products` (`product_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
