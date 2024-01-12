-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2024 pada 03.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimbel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Adela Setiabudi Prawibowo', 'setiabudiq@gmail.com', 'e19d5cd5af0378da05f63f891c7467af', 'admin'),
(2, 'Alvaro', 'Alvaro@gmail.com', 'd0e46158db756016f8c42700c6bb1a89', 'user'),
(3, 'Bella Adha', 'bella@gmail.com', '993acec11ef1a181f9ac78f9a5b824ab', 'admin'),
(4, 'Ramanda', 'ramandayuliana36@gmail.com', '25642eba8e2d094264e954f746b8282a', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detil_paket`
--

CREATE TABLE `detil_paket` (
  `id_detil_paket` int(11) NOT NULL,
  `paket_belajar_id_paket_belajar` int(11) NOT NULL,
  `mata_pelajaran_id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `detil_paket`
--

INSERT INTO `detil_paket` (`id_detil_paket`, `paket_belajar_id_paket_belajar`, `mata_pelajaran_id_mapel`) VALUES
(231, 10228, 1),
(232, 10227, 3),
(233, 10224, 4),
(234, 10225, 5),
(235, 10226, 5),
(236, 10229, 6),
(237, 10220, 7),
(238, 10221, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gender`
--

INSERT INTO `gender` (`id_gender`, `gender`) VALUES
(0, 'perempuan'),
(1, 'laki-laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `no_kontak` int(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `speasialisasi` varchar(15) NOT NULL,
  `gender_id_gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `no_kontak`, `alamat`, `speasialisasi`, `gender_id_gender`) VALUES
(1, 'Dimas Evan Rivaldi', 2147483647, 'Tegal', 'Bahasa Inggris', 1),
(2, 'Bambang', 2147483647, 'Tegal', 'Bahasa Indonesi', 1),
(3, 'Shearen rike hasnita', 2147483647, 'Pemalang', 'Matematika', 0),
(4, 'Jheslin anastasya', 2147483647, 'Brebes', 'Fisika', 0),
(5, 'M.Heru setiadi', 2147483647, 'Brebes', 'Kimia', 1),
(6, 'Abadilah', 2147483647, 'Tegal', 'Agama Islam', 1),
(7, 'Iin nafisatun hayat', 2147483647, 'Brebes', 'PKN', 0),
(8, 'Filla abdilah hernaen', 2147483647, 'Brebes', 'Ekonomi', 1),
(9, 'Jihan farah audy', 2147483647, 'Tegal', 'Sosiologi', 0),
(10, 'Nur isti komah', 2147483647, 'Pemalang', 'Matematika', 0),
(11, 'Rafel', 2147483647, 'Pemalang', 'Bahasa Inggris', 1),
(12, 'Della claudia', 2147483647, 'Tegal', 'Bahasa Indonesi', 0),
(13, 'Anne ajeng', 2147483647, 'Brebes', 'Bahasa Jawa', 0),
(14, 'Desvita maharani', 2147483647, 'Tegal', 'Kimia', 0),
(15, 'Refi ananda', 2147483647, 'Brebes', 'Fisika', 1),
(16, 'Fakih agusta', 2147483647, 'Tegal', 'Ekonomi', 1),
(17, 'Mirzan pradani', 2147483647, 'Pemalang', 'Sosiologi', 1),
(18, 'Jeje', 2147483647, 'Tegal', 'PKN', 1),
(19, 'Abella', 2147483647, 'Tegal', 'Bahasa Inggris', 0),
(20, 'Rudi', 2147483647, 'Tegal', 'Bahasa Jawa', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kbm`
--

CREATE TABLE `kbm` (
  `id_kbm` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `GURU_id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kbm`
--

INSERT INTO `kbm` (`id_kbm`, `tanggal`, `GURU_id_guru`) VALUES
(101, '2022-03-01', 1),
(102, '2022-03-02', 2),
(103, '2022-03-03', 3),
(104, '2022-03-04', 4),
(105, '2022-03-05', 5),
(106, '2022-03-06', 6),
(107, '2022-03-07', 7),
(108, '2022-03-08', 8),
(109, '2022-03-09', 9),
(110, '2022-03-10', 10),
(111, '2022-03-11', 11),
(112, '2022-03-12', 12),
(113, '2022-03-13', 13),
(114, '2022-03-14', 14),
(115, '2022-03-15', 15),
(116, '2022-03-16', 16),
(117, '2022-03-17', 17),
(118, '2022-03-18', 18),
(119, '2022-03-19', 19),
(120, '2022-03-20', 20),
(121, '2022-03-21', 1),
(122, '2022-03-22', 2),
(123, '2022-03-23', 3),
(124, '2022-03-24', 4),
(125, '2022-03-25', 5),
(126, '2022-03-26', 6),
(127, '2022-03-27', 7),
(128, '2022-03-28', 8),
(129, '2022-03-29', 9),
(130, '2022-03-30', 10),
(131, '2022-03-31', 11),
(132, '2022-04-01', 12),
(133, '2022-04-02', 13),
(134, '2022-04-03', 14),
(135, '2022-04-04', 15),
(136, '2022-04-05', 16),
(137, '2022-04-06', 17),
(138, '2022-04-07', 18),
(139, '2022-04-08', 19),
(140, '2022-04-09', 20),
(141, '2022-04-10', 1),
(142, '2022-04-11', 2),
(143, '2022-04-12', 3),
(144, '2022-04-13', 4),
(145, '2022-04-14', 5),
(146, '2022-04-15', 6),
(147, '2022-04-16', 7),
(148, '2022-04-17', 8),
(149, '2022-04-18', 9),
(150, '2022-04-19', 10),
(151, '2022-04-20', 11),
(152, '2022-04-21', 12),
(153, '2022-04-22', 13),
(154, '2022-04-23', 14),
(155, '2022-04-24', 15),
(156, '2022-04-25', 16),
(157, '2022-04-26', 17),
(158, '2022-04-27', 18),
(159, '2022-04-28', 19),
(160, '2022-04-29', 20),
(161, '2022-04-30', 1),
(162, '2022-05-01', 2),
(163, '2022-05-02', 3),
(164, '2022-05-03', 4),
(165, '2022-05-04', 5),
(166, '2022-05-05', 6),
(167, '2022-05-06', 7),
(168, '2022-05-07', 8),
(169, '2022-05-08', 9),
(170, '2022-05-09', 10),
(171, '2022-05-10', 11),
(172, '2022-05-11', 12),
(173, '2022-05-12', 13),
(174, '2022-05-13', 14),
(175, '2022-05-14', 15),
(176, '2022-05-15', 16),
(177, '2022-05-16', 17),
(178, '2022-05-17', 18),
(179, '2022-05-18', 19),
(180, '2022-05-19', 20),
(181, '2022-05-20', 1),
(182, '2022-05-21', 2),
(183, '2022-05-22', 3),
(184, '2022-05-23', 4),
(185, '2022-05-24', 5),
(186, '2022-05-25', 6),
(187, '2022-05-26', 7),
(188, '2022-05-27', 8),
(189, '2022-05-28', 9),
(190, '2022-05-29', 10),
(191, '2022-05-30', 11),
(192, '2022-05-31', 12),
(193, '2022-06-01', 13),
(194, '2022-06-02', 14),
(195, '2022-06-03', 15),
(196, '2022-06-04', 16),
(197, '2022-06-05', 17),
(198, '2022-06-06', 18),
(199, '2022-06-07', 19),
(200, '2022-06-08', 20),
(201, '2022-06-09', 1),
(202, '2022-06-10', 2),
(203, '2022-06-11', 3),
(204, '2022-06-12', 4),
(205, '2022-06-13', 5),
(206, '2022-06-14', 6),
(207, '2022-06-15', 7),
(208, '2022-06-16', 8),
(209, '2022-06-17', 9),
(210, '2022-06-18', 10),
(211, '2022-06-19', 11),
(212, '2022-06-20', 12),
(213, '2022-06-21', 13),
(214, '2022-06-22', 14),
(215, '2022-06-23', 15),
(216, '2022-06-24', 16),
(217, '2022-06-25', 17),
(218, '2022-06-26', 18),
(219, '2022-06-27', 19),
(220, '2022-06-28', 20),
(221, '2022-06-29', 1),
(222, '2022-06-30', 2),
(223, '2022-07-01', 3),
(224, '2022-07-02', 4),
(225, '2022-07-03', 5),
(226, '2022-07-04', 6),
(227, '2022-07-05', 7),
(228, '2022-07-06', 8),
(229, '2022-07-07', 9),
(230, '2022-07-08', 10),
(231, '2022-07-09', 11),
(232, '2022-07-10', 12),
(233, '2022-07-11', 13),
(234, '2022-07-12', 14),
(235, '2022-07-13', 15),
(236, '2022-07-14', 16),
(237, '2022-07-15', 17),
(238, '2022-07-16', 18),
(239, '2022-07-17', 19),
(240, '2022-07-18', 20),
(241, '2022-07-19', 1),
(242, '2022-07-20', 2),
(243, '2022-07-21', 3),
(244, '2022-07-22', 4),
(245, '2022-07-23', 5),
(246, '2022-07-24', 6),
(247, '2022-07-25', 7),
(248, '2022-07-26', 8),
(249, '2022-07-27', 9),
(250, '2022-07-28', 10),
(251, '2022-07-29', 11),
(252, '2022-07-30', 12),
(253, '2022-07-31', 13),
(254, '2022-08-01', 14),
(255, '2022-08-02', 15),
(256, '2022-08-03', 16),
(257, '2022-08-04', 17),
(258, '2022-08-05', 18),
(259, '2022-08-06', 19),
(260, '2022-08-07', 20),
(261, '2022-08-08', 1),
(262, '2022-08-09', 2),
(263, '2022-08-10', 3),
(264, '2022-08-11', 4),
(265, '2022-08-12', 5),
(266, '2022-08-13', 6),
(267, '2022-08-14', 7),
(268, '2022-08-15', 8),
(269, '2022-08-16', 9),
(270, '2022-08-17', 10),
(271, '2022-08-18', 11),
(272, '2022-08-19', 12),
(273, '2022-08-20', 13),
(274, '2022-08-21', 14),
(275, '2022-08-22', 15),
(276, '2022-08-23', 16),
(277, '2022-08-24', 17),
(278, '2022-08-25', 18),
(279, '2022-08-26', 19),
(280, '2022-08-27', 20),
(281, '2022-08-28', 1),
(282, '2022-08-29', 2),
(283, '2022-08-30', 3),
(284, '2022-08-31', 4),
(285, '2022-09-01', 5),
(286, '2022-09-02', 6),
(287, '2022-09-03', 7),
(288, '2022-09-04', 8),
(289, '2022-09-05', 9),
(290, '2022-09-06', 10),
(291, '2022-09-07', 11),
(292, '2022-09-08', 12),
(293, '2022-09-09', 13),
(294, '2022-09-10', 14),
(295, '2022-09-11', 15),
(296, '2022-09-12', 16),
(297, '2022-09-13', 17),
(298, '2022-09-14', 18),
(299, '2022-09-15', 19),
(300, '2022-09-16', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `status_kehadiran` varchar(15) NOT NULL,
  `Kbm_id_kbm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id_kehadiran`, `status_kehadiran`, `Kbm_id_kbm`) VALUES
(1, 'hadir', 101),
(2, 'alfa', 102),
(3, 'izin', 103),
(4, 'sakit', 104),
(5, 'hadir', 105),
(6, 'alfa', 106),
(7, 'hadir', 107),
(8, 'alfa', 108),
(9, 'izin', 109),
(10, 'sakit', 110),
(11, 'hadir', 111),
(12, 'alfa', 112),
(13, 'hadir', 113),
(14, 'alfa', 114),
(15, 'izin', 115),
(16, 'sakit', 116),
(17, 'hadir', 117),
(18, 'hadir', 118),
(19, 'alfa', 119),
(20, 'izin', 120),
(21, 'sakit', 121),
(22, 'hadir', 122),
(23, 'alfa', 123),
(24, 'hadir', 124),
(25, 'alfa', 125),
(26, 'izin', 126),
(27, 'sakit', 127),
(28, 'hadir', 128),
(29, 'alfa', 129),
(30, 'hadir', 130),
(31, 'alfa', 131),
(32, 'izin', 132),
(33, 'sakit', 133),
(34, 'hadir', 134),
(35, 'hadir', 135),
(36, 'alfa', 136),
(37, 'izin', 137),
(38, 'sakit', 138),
(39, 'hadir', 139),
(40, 'alfa', 140),
(41, 'hadir', 141),
(42, 'alfa', 142),
(43, 'izin', 143),
(44, 'sakit', 144),
(45, 'hadir', 145),
(47, 'sakit', 147),
(50, 'sakit', 150),
(51, 'hadir', 151),
(52, 'hadir', 152);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(15) NOT NULL,
  `GURU_id_guru` int(11) NOT NULL,
  `tingkatan_id_tingkatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `nama_mapel`, `GURU_id_guru`, `tingkatan_id_tingkatan`) VALUES
(1, 'Bahasa Inggris', 1, 1),
(2, 'Bahasa Indonesi', 2, 1),
(3, 'Matematika', 4, 1),
(4, 'Fisika', 5, 3),
(5, 'Kimia', 6, 3),
(6, 'Agama Islam', 7, 1),
(7, 'PKN', 8, 1),
(8, 'Ekonomi', 9, 3),
(9, 'Sosiologi', 10, 3),
(10, 'Matematika', 11, 1),
(11, 'Bahasa Inggris', 12, 1),
(12, 'Bahasa Indonesi', 13, 1),
(13, 'Bahasa Jawa', 14, 1),
(14, 'Kimia', 15, 3),
(15, 'Fisika', 16, 3),
(16, 'Ekonomi', 17, 3),
(17, 'Sosiologi', 18, 3),
(18, 'PKN', 19, 1),
(19, 'Bahasa Inggris', 20, 1),
(20, 'Bahasa jawa', 21, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_belajar`
--

CREATE TABLE `paket_belajar` (
  `id_paket_belajar` int(11) NOT NULL,
  `nama_paket` varchar(20) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `biaya_pendidikan` int(11) NOT NULL,
  `tahun_kurikulum` date NOT NULL,
  `lama_studi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `paket_belajar`
--

INSERT INTO `paket_belajar` (`id_paket_belajar`, `nama_paket`, `deskripsi`, `biaya_pendidikan`, `tahun_kurikulum`, `lama_studi`) VALUES
(10220, 'paket Double', 'Yuk belajar lebih banyak materi', 275000, '2022-06-19', 3),
(10221, 'paket hemat', 'Yuk belajar dengan harga lebih murah', 1000000, '2020-07-09', 2),
(10223, 'paket Hore', 'Yuk belajar senang dengan cara yang lebih mudah', 200000, '2020-06-09', 4),
(10224, 'Paket StudiFun', 'Belajar dengan beberapa mapel lebih menyenangkan', 150000, '2020-06-09', 3),
(10225, 'Paket MathFun', 'Yuk belajar matematika dengan cara yang lebih muda', 200000, '2020-06-09', 4),
(10227, 'paket UN', 'Yuk belajar lebih awal untuk persiapan Ujian Nasio', 450000, '2013-05-06', 12),
(10228, 'paket welcome school', 'Dalam rangka menyambut hari pertama sekolah ,kita ', 250000, '2012-02-12', 5),
(10229, 'paket Special', 'Yuk dapatkan paket spesial segera', 350000, '2022-06-11', 4),
(10230, 'paket lebaran', 'spesial hari lebaran', 170000, '2021-07-19', 2),
(10231, 'Paket puasa', 'selamat berpuasa', 140000, '2022-04-09', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilih_paket`
--

CREATE TABLE `pilih_paket` (
  `id_pilih_paket` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `SISWA_id_siswa` int(11) NOT NULL,
  `PAKET_BELAJAR_id_paket_belajar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pilih_paket`
--

INSERT INTO `pilih_paket` (`id_pilih_paket`, `tanggal`, `SISWA_id_siswa`, `PAKET_BELAJAR_id_paket_belajar`) VALUES
(12049, '2023-01-14', 2147483647, 10228),
(12149, '2023-01-14', 2147483647, 10228),
(12150, '2023-01-14', 2147483647, 10228),
(12151, '2023-01-14', 2147483647, 10228),
(12152, '2023-01-14', 2147483647, 10228),
(12154, '2023-01-14', 2147483647, 10228),
(12155, '2023-01-14', 2147483647, 10228),
(12156, '2023-01-14', 2147483647, 10228),
(12157, '2023-01-14', 2147483647, 10228),
(12158, '2023-01-14', 2147483647, 10228),
(12159, '2023-01-14', 2147483647, 10225),
(12160, '2023-01-14', 2147483647, 10225),
(12161, '2023-01-14', 2147483647, 10225),
(12162, '2023-01-14', 2147483647, 10225),
(12163, '2023-01-14', 2147483647, 10225),
(12164, '2023-01-14', 2147483647, 10225),
(12165, '2023-01-14', 2147483647, 10225),
(12166, '2023-01-14', 2147483647, 10225),
(12167, '2023-01-14', 2147483647, 10225),
(12168, '2023-01-14', 2147483647, 10225),
(12169, '2023-01-14', 2147483647, 10225),
(12170, '2023-01-14', 2147483647, 10225),
(12171, '2023-01-14', 2147483647, 10225),
(12173, '2022-06-13', 2147483647, 10220),
(12174, '2022-06-13', 2147483647, 10225),
(12181, '2022-06-13', 2147483647, 10225),
(12182, '2022-06-13', 2147483647, 10220),
(12183, '2022-06-13', 2147483647, 10220),
(12184, '2022-06-13', 2147483647, 10225),
(12185, '2022-10-19', 2147483647, 10225),
(12186, '2022-10-19', 2147483647, 10229),
(12187, '2022-10-19', 2147483647, 10229),
(12188, '2022-10-19', 2147483647, 10230),
(12189, '2022-10-19', 2147483647, 10225),
(12190, '2022-10-19', 2147483647, 10225),
(12191, '2022-10-19', 2147483647, 10225),
(12192, '2022-10-19', 2147483647, 10225),
(12193, '2022-10-19', 2147483647, 10225),
(12194, '2022-10-19', 2147483647, 10225),
(12195, '2022-10-19', 2147483647, 10230),
(12196, '2022-10-19', 2147483647, 10231),
(12215, '2021-11-13', 1002956182, 10225),
(12217, '2023-09-11', 1313738002, 10225),
(12225, '2022-04-26', 1184728433, 10227),
(12232, '2022-03-22', 2147483647, 10227),
(12233, '2019-01-12', 2147483647, 10227),
(12234, '2022-10-25', 1384727481, 10225),
(12235, '2019-01-12', 2147483647, 10227),
(12236, '2022-03-28', 2147483647, 10227),
(12237, '2019-01-12', 2147483647, 10227),
(12238, '2019-01-12', 2147483647, 10227),
(12240, '2022-03-28', 2147483647, 10227),
(12242, '2022-03-28', 2147483647, 10227),
(12243, '2022-08-19', 1109579010, 10225),
(12244, '2022-03-28', 2147483647, 10227),
(12245, '2022-03-28', 2147483647, 10228),
(12246, '2022-03-28', 2147483647, 10228),
(12247, '2023-01-14', 2147483647, 10228),
(12248, '2023-01-14', 2147483647, 10228),
(12249, '2023-01-14', 2147483647, 10228),
(12250, '2023-01-14', 2147483647, 10228),
(12251, '2023-01-14', 2147483647, 10228),
(12252, '2023-01-14', 2147483647, 10228),
(12253, '2023-01-14', 2147483647, 10228),
(12254, '2023-01-14', 2147483647, 10228),
(12255, '2023-01-14', 2147483647, 10228),
(12256, '2023-01-14', 2147483647, 10228),
(12257, '2023-01-14', 1309519031, 10225),
(12258, '2023-01-14', 2147483647, 10228),
(12259, '2023-01-14', 2147483647, 10225),
(12260, '2023-01-14', 2147483647, 10225),
(12261, '2023-01-14', 2147483647, 10225),
(12262, '2023-01-14', 2147483647, 10225),
(12263, '2023-01-14', 2147483647, 10225),
(12265, '2021-09-12', 1809509019, 10225),
(12270, '2022-10-25', 1809469129, 10225),
(12272, '2023-02-11', 1409559015, 10225),
(12273, '2022-06-13', 2147483647, 10220),
(12274, '2022-04-15', 1895220012, 10225),
(12275, '2022-10-05', 1809549015, 10225),
(12277, '2021-11-12', 1609529028, 10225),
(12280, '2022-06-13', 1104577102, 10225),
(12281, '2023-05-29', 1184727400, 10225),
(12283, '2022-10-19', 1609529028, 10225),
(12286, '2022-10-07', 1209599000, 10225),
(12289, '2023-03-10', 1109529006, 10225),
(12291, '2022-10-19', 2147483647, 10225),
(12292, '2022-10-19', 2147483647, 10225),
(12293, '2022-10-19', 2147483647, 10225),
(12294, '2022-10-19', 2147483647, 10225),
(12295, '2022-10-19', 2147483647, 10230),
(12296, '2022-06-13', 1184728433, 10227);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_kontak` int(15) NOT NULL,
  `gender_id_gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `alamat`, `no_kontak`, `gender_id_gender`) VALUES
(1184727437, 'Moh Gilang', 'Cirebon', 2147483647, 1),
(1184727457, 'Moh Guntur', 'Cirebon', 2147483647, 1),
(1184727477, 'Moh Tama', 'Cirebon', 2147483647, 1),
(1184728214, 'Yanuar Galih', 'Karanganyar', 2147483647, 1),
(1184728433, 'Yanuar Galih', 'Karanganyar', 2147483647, 1),
(1184728440, 'Galih', 'Karanganyar', 2147483647, 1),
(1184728460, 'Yayan Galih', 'Karanganyar', 2147483647, 1),
(1184728480, 'Yanuar Tengku', 'Karanganyar', 2147483647, 1),
(1204577102, 'Pitaloka Wati', 'Kebumen', 2147483647, 0),
(1209599000, 'Dimas Anggara', 'Semarang', 2147483647, 1),
(1209599049, 'Anggara', 'Semarang', 2147483647, 1),
(1209599069, 'Dimas Saputra', 'Semarang', 2147483647, 1),
(1209599089, 'Dimas Aditya', 'Semarang', 2147483647, 1),
(1234567890, 'Ilham', 'Semarang', 2147483647, 1),
(1309519031, 'Cantika', 'Karanganyar', 2147483647, 0),
(1309519047, 'Cantik', 'Karanganyar', 2147483647, 0),
(1309519067, 'Tika', 'Karanganyar', 2147483647, 0),
(1309519087, 'Khusnul', 'Karanganyar', 2147483647, 0),
(1313738002, 'Sandi Wagara', 'Karanganyar', 2147483647, 1),
(1313738039, 'Sandi Segara', 'Karanganyar', 2147483647, 1),
(1313738059, 'Sandi', 'Karanganyar', 2147483647, 1),
(1313738079, 'Fathur Agara', 'Karanganyar', 2147483647, 1),
(1313738213, 'Sandi Wagara', 'Karanganyar', 2147483647, 1),
(1384727212, 'Muhammad Ainul Yaqin', 'Cirebon', 2147483647, 1),
(1384727438, 'Muhammad Azmil Yaqin', 'Cirebon', 2147483647, 1),
(1384727458, 'Muhammad Yaqin', 'Cirebon', 2147483647, 1),
(1384727478, 'Muhammad Fadli', 'Cirebon', 2147483647, 1),
(1384727481, 'Muhammad Ainul Yaqin', 'Cirebon', 2147483647, 1),
(1409559015, 'Birli Rahmawati', 'Karanganyar', 2147483647, 0),
(1409559046, 'Rahmawati', 'Karanganyar', 2147483647, 0),
(1409559066, 'Irli Wati', 'Karanganyar', 2147483647, 0),
(1409559086, 'Afifah Wati', 'Karanganyar', 2147483647, 0),
(1495220012, 'Haura Rahma', 'Purwokerto', 2147483647, 0),
(1609529028, 'Dewi Inayah', 'Karanganyar', 2147483647, 0),
(1609529048, 'Dewi', 'Karanganyar', 2147483647, 0),
(1609529068, 'Dewi Ina', 'Karanganyar', 2147483647, 0),
(1709549015, 'Deski Andriwan', 'Kebumen', 2147483647, 1),
(1789519064, 'Adi Saputra', 'Tegal', 2147483647, 1),
(1809469129, 'Intan Sari', 'Brebes', 2147483647, 0),
(1809469136, 'Intan Naya', 'Brebes', 2147483647, 0),
(1809469156, 'Sari', 'Brebes', 2147483647, 0),
(1809469176, 'Ara Sari', 'Brebes', 2147483647, 0),
(1809509019, 'Isrinatul Jannah', 'Tegal', 2147483647, 0),
(1809509035, 'Isnatul Jarro', 'Tegal', 2147483647, 0),
(1809509055, 'Isrin', 'Tegal', 2147483647, 0),
(1809509075, 'Rinatul', 'Tegal', 2147483647, 0),
(1809509095, 'Uswatun', 'Tegal', 2147483647, 0),
(1809519003, 'Aji Saputra', 'Tegal', 2147483647, 1),
(1809519084, 'Arifin', 'Tegal', 2147483647, 1),
(1809549015, 'Gilang Setiawan', 'Kebumen', 2147483647, 1),
(1809549030, 'Galang Setia', 'Kebumen', 2147483647, 1),
(1809549050, 'Gilang', 'Kebumen', 2147483647, 1),
(1809549090, 'Rizki Putra', 'Kebumen', 2147483647, 1),
(1809599001, 'Agung Adi Saputra', 'Brebes', 2147483647, 1),
(1809599042, 'Saputra', 'Brebes', 2147483647, 1),
(1809599062, 'Agung', 'Brebes', 2147483647, 1),
(1809599082, 'Erfianto', 'Brebes', 2147483647, 1),
(1895220012, 'Haura Ganasya', 'Purwokerto', 2147483647, 0),
(1895220033, 'Aura Nasya', 'Purwokerto', 2147483647, 0),
(1895220053, 'Haura', 'Purwokerto', 2147483647, 0),
(1895220073, 'Aura Ganaya', 'Purwokerto', 2147483647, 0),
(1895220093, 'Sulistiawati', 'Purwokerto', 2147483647, 0),
(1909529009, 'Bastian Ramadani', 'Brebes', 2147483647, 1),
(1909529045, 'Ramadani', 'Brebes', 2147483647, 1),
(1909529065, 'Bastian', 'Brebes', 2147483647, 1),
(1909529085, 'Fauzan Hadi', 'Brebes', 2147483647, 1),
(2136256266, 'Defa Tito', 'Batang', 2147483647, 1),
(2147483647, 'Dimas Ilham', 'Semarang', 2147483647, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tingkatan`
--

CREATE TABLE `tingkatan` (
  `id_tingkatan` int(11) NOT NULL,
  `nama_tingkatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tingkatan`
--

INSERT INTO `tingkatan` (`id_tingkatan`, `nama_tingkatan`) VALUES
(1, 'SD/MI'),
(2, 'SMP/MTS'),
(3, 'SMA/SMK');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `GURU_gender_FK` (`gender_id_gender`);

--
-- Indeks untuk tabel `kbm`
--
ALTER TABLE `kbm`
  ADD PRIMARY KEY (`id_kbm`),
  ADD KEY `Kbm_GURU_FK` (`GURU_id_guru`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`),
  ADD KEY `Kehadiran_Kbm_FK` (`Kbm_id_kbm`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `MATA_PELAJARAN_GURU_FK` (`GURU_id_guru`),
  ADD KEY `MATA_PELAJARAN_tingkatan_FK` (`tingkatan_id_tingkatan`);

--
-- Indeks untuk tabel `paket_belajar`
--
ALTER TABLE `paket_belajar`
  ADD PRIMARY KEY (`id_paket_belajar`);

--
-- Indeks untuk tabel `pilih_paket`
--
ALTER TABLE `pilih_paket`
  ADD PRIMARY KEY (`id_pilih_paket`),
  ADD KEY `Pilih_paket_PAKET_BELAJAR_FK` (`PAKET_BELAJAR_id_paket_belajar`),
  ADD KEY `Pilih_paket_SISWA_FK` (`SISWA_id_siswa`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tingkatan`
--
ALTER TABLE `tingkatan`
  ADD PRIMARY KEY (`id_tingkatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `GURU_gender_FK` FOREIGN KEY (`gender_id_gender`) REFERENCES `gender` (`id_gender`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kbm`
--
ALTER TABLE `kbm`
  ADD CONSTRAINT `Kbm_GURU_FK` FOREIGN KEY (`GURU_id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `Kehadiran_Kbm_FK` FOREIGN KEY (`Kbm_id_kbm`) REFERENCES `kbm` (`id_kbm`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD CONSTRAINT `MATA_PELAJARAN_GURU_FK` FOREIGN KEY (`GURU_id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MATA_PELAJARAN_tingkatan_FK` FOREIGN KEY (`tingkatan_id_tingkatan`) REFERENCES `tingkatan` (`id_tingkatan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pilih_paket`
--
ALTER TABLE `pilih_paket`
  ADD CONSTRAINT `Pilih_paket_PAKET_BELAJAR_FK` FOREIGN KEY (`PAKET_BELAJAR_id_paket_belajar`) REFERENCES `paket_belajar` (`id_paket_belajar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Pilih_paket_SISWA_FK` FOREIGN KEY (`SISWA_id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
