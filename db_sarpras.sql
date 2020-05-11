-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 10:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sarpras`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merek_barang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_barang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `merek_barang`, `harga_barang`, `lokasi_barang`, `qty`, `created_at`, `updated_at`) VALUES
(2, '13', 'asus', '13', '220 Bahasa Inggris', 50, '2020-04-05 16:36:52', '2020-04-06 02:55:08'),
(3, 'Printer', 'picaso', '5000000', '222 Bahasa Indonesia', 30, '2020-04-05 16:42:22', '2020-04-06 02:55:14'),
(4, '5', '5', '5000000', '220 Bahasa Inggris', 5, '2020-04-06 02:51:30', '2020-04-06 02:51:30'),
(5, 'Handphone', 'samsung', '5000000', 'Ruang TU', 1, '2020-04-06 16:40:18', '2020-04-06 16:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kehilangan`
--

CREATE TABLE `kehilangan` (
  `id` int(11) NOT NULL,
  `nama_peminjam` varchar(55) NOT NULL,
  `nama_barang` varchar(55) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kehilangan`
--

INSERT INTO `kehilangan` (`id`, `nama_peminjam`, `nama_barang`, `tanggal`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'sechan', 'Printer', '2020-04-02', 1, '2020-04-08 12:08:33', '2020-04-08 05:08:33'),
(2, 'sechan', 'Lap', '2020-04-09', 1, '2020-04-08 12:10:08', '2020-04-08 05:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas_siswa` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kapasitas_siswa`, `created_at`, `updated_at`) VALUES
(1, '220 Bahasa Inggris', '31 orang', NULL, '2020-04-06 02:30:30'),
(3, '222 Bahasa Indonesia', '31 orang', '2020-04-06 02:21:45', '2020-04-06 02:30:38'),
(4, '223 Matematika', '31 orang', '2020-04-06 16:04:17', '2020-04-06 16:04:27'),
(5, 'Ruang TU', '50 orang', '2020-04-06 16:10:47', '2020-04-06 16:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `kerusakan`
--

CREATE TABLE `kerusakan` (
  `id` int(11) NOT NULL,
  `nama_peminjam` varchar(55) NOT NULL,
  `nama_barang` varchar(55) NOT NULL,
  `kerusakan` varchar(99) NOT NULL,
  `lokasi_barang` varchar(55) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kerusakan`
--

INSERT INTO `kerusakan` (`id`, `nama_peminjam`, `nama_barang`, `kerusakan`, `lokasi_barang`, `tanggal`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'sechan', 'Laptop', 'rusak', '220 Bahasa Inggris', '2020-04-01', 1, '2020-04-08 08:42:52', '2020-04-08 01:42:52'),
(3, 'fahmi', 'Printer', 'ada yang hancur', '223 Matematika', '2020-04-09', 2, '2020-04-08 11:44:20', '2020-04-08 04:44:20');

-- --------------------------------------------------------

--
-- Stand-in structure for view `lokasikelas`
-- (See below for the actual view)
--
CREATE TABLE `lokasikelas` (
`nama_kelas` varchar(191)
,`nama_barang` varchar(191)
,`merek_barang` varchar(100)
,`harga_barang` varchar(191)
,`qty` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_05_024909_create_pinjams_table', 2),
(5, '2020_04_05_025934_create_barangs_table', 3),
(6, '2020_04_05_031716_add_paid_to_users', 4),
(7, '2020_04_05_033613_tambah_kolom_role', 5),
(8, '2020_04_05_192742_kelas', 6),
(9, '2020_04_05_193200_create_kelas_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjams`
--

CREATE TABLE `pinjams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merek_barang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_peminjam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis_peminjam` int(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pinjams`
--

INSERT INTO `pinjams` (`id`, `id_barang`, `nama_barang`, `merek_barang`, `nama_peminjam`, `nis_peminjam`, `qty`, `created_at`, `updated_at`) VALUES
(3, 3, 'Printer', 'picaso', 'ucok satria', 11809999, 1, '2020-04-05 18:45:35', '2020-04-05 18:45:35'),
(4, 2, '13', 'asus', 'popo', 9999, 40, '2020-04-10 17:46:43', '2020-04-10 17:46:43');

--
-- Triggers `pinjams`
--
DELIMITER $$
CREATE TRIGGER `kembali` AFTER DELETE ON `pinjams` FOR EACH ROW BEGIN
update barangs set qty = qty + OLD.qty
where id = OLD.id_barang;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pinjam` AFTER INSERT ON `pinjams` FOR EACH ROW BEGIN 
update barangs set qty = qty - new.qty
where id = new.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(10) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nis`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'akbar', 9999, 'akbar.yusuf1@gmail.com', NULL, '$2y$10$L2Ru4vXdMpTpVmzEhuC9uOKg/YUsTD/JbhbYT64dlcVoeD9UkOQ7K', 'admin', NULL, '2020-04-04 17:49:54', '2020-04-06 17:17:28'),
(2, 'ucoks', 0, 'ucok@gmail.com', NULL, '$2y$10$8.3/n/sdz0zcTn97RlEb2.sQUfZJ9vhEBjWtCdqAbord8iIeYf//O', 'pelanggan', NULL, '2020-04-04 20:37:18', '2020-04-04 20:37:18'),
(3, 'ucok satria', 11809999, '123@gmail.com', NULL, '$2y$10$RDvh1aioyOmT1SApEdQHuObXGXY3yFRGbiwsEYX6rQ6nkol36jyKa', 'pelanggan', NULL, '2020-04-05 18:10:02', '2020-04-05 18:10:02'),
(10, 'aa', 111, 'aa@gmail.com', NULL, '$2y$10$AJK.wOOL4eDGUFvxUIzR..8ynVbZkiiLCSg4lcXdVkt.Tl4yaR8nm', 'admin', NULL, '2020-04-06 17:45:03', '2020-04-06 17:45:03'),
(11, 'samba', 1188000, 'samba@gmail.com', NULL, '$2y$10$ZNHd1rMFGLvsu0JQczKYWeOPzLtchR4Xf4IWs/K7J1VE9.tK8pJaa', 'pelanggan', NULL, '2020-04-10 14:54:46', '2020-04-10 14:54:46'),
(12, 'popo', 9999, 'peminjam@gmail.com', NULL, '$2y$10$5zpJG4pJ7Luy70tgk2NxaO5C4rjiEXYVdb6G4UNIfUeBWKdKL5sa6', 'pelanggan', NULL, '2020-04-10 17:11:23', '2020-04-10 17:11:23'),
(13, 'percobaan', 0, 'coba@coba.com', NULL, '$2y$10$u9XIxOCd9h0C9vihtFVLo.308/QD.mKN7L7XDLN23RQc3OG7CLn2m', 'pelanggan', NULL, '2020-05-10 13:46:39', '2020-05-10 13:46:39');

-- --------------------------------------------------------

--
-- Structure for view `lokasikelas`
--
DROP TABLE IF EXISTS `lokasikelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lokasikelas`  AS  select `kelas`.`nama_kelas` AS `nama_kelas`,`barangs`.`nama_barang` AS `nama_barang`,`barangs`.`merek_barang` AS `merek_barang`,`barangs`.`harga_barang` AS `harga_barang`,`barangs`.`qty` AS `qty` from (`kelas` join `barangs` on((`kelas`.`nama_kelas` = `barangs`.`lokasi_barang`))) where (`kelas`.`id` = 1) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kehilangan`
--
ALTER TABLE `kehilangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pinjams`
--
ALTER TABLE `pinjams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kehilangan`
--
ALTER TABLE `kehilangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kerusakan`
--
ALTER TABLE `kerusakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pinjams`
--
ALTER TABLE `pinjams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
