-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 02:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ma_43ug1_13610`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP1` (`id_kerja` TINYINT, `jenis_pekerjaan` VARCHAR(255))   begin
INSERT INTO jenis_pekerjaan values(id_kerja, jenis_pekerjaan);
select*from jenis_pekerjaan;
end$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `form_tgl` (`tanggal` DATE) RETURNS CHAR(30) CHARSET utf8mb4 COLLATE utf8mb4_general_ci  begin
return DATE_FORMAT(tanggal, '%d/%m/%Y');
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id_agama` tinyint(4) NOT NULL,
  `agama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katholik'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `asal_sekolah`
--

CREATE TABLE `asal_sekolah` (
  `id_asal_sekolah` tinyint(4) NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `asal_sekolah`
--

INSERT INTO `asal_sekolah` (`id_asal_sekolah`, `asal_sekolah`) VALUES
(1, 'MA'),
(2, 'SMA'),
(3, 'Paket C'),
(4, 'Pondok Pesantren'),
(5, 'SMA di Luar Negeri'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `bahasa_asing`
--

CREATE TABLE `bahasa_asing` (
  `id_bahasa` tinyint(4) NOT NULL,
  `bahasa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bahasa_asing`
--

INSERT INTO `bahasa_asing` (`id_bahasa`, `bahasa`) VALUES
(1, 'Bahasa Arab'),
(2, 'Bahasa Mandarin'),
(3, 'Bahasa Jepang'),
(4, 'Bahasa Perancis'),
(5, 'Bahasa Jerman'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `citacita`
--

CREATE TABLE `citacita` (
  `id_citacita` tinyint(4) NOT NULL,
  `citacita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `citacita`
--

INSERT INTO `citacita` (`id_citacita`, `citacita`) VALUES
(1, 'PNS'),
(2, 'TNI/Polri'),
(3, 'Guru/Dosen'),
(4, 'Dokter'),
(5, 'Politikus'),
(6, 'Wiraswasta'),
(7, 'Pekerja Seni/Lukis/Artis/Sejenis'),
(8, 'Lainnya');

-- --------------------------------------------------------

--
-- Stand-in structure for view `datakeluarga`
-- (See below for the actual view)
--
CREATE TABLE `datakeluarga` (
`nisn` bigint(10) unsigned zerofill
,`nama_siswa` varchar(255)
,`no_kk` varchar(255)
,`nama_ayah` varchar(255)
,`nama_ibu` varchar(255)
,`nama_wali` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `hobi`
--

CREATE TABLE `hobi` (
  `id_hobi` tinyint(4) NOT NULL,
  `hobi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hobi`
--

INSERT INTO `hobi` (`id_hobi`, `hobi`) VALUES
(1, 'Olahraga'),
(2, 'Kesenian'),
(3, 'Membaca'),
(4, 'Menulis'),
(5, 'Travelling'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `jarak`
--

CREATE TABLE `jarak` (
  `id_jarak` tinyint(4) NOT NULL,
  `jarak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jarak`
--

INSERT INTO `jarak` (`id_jarak`, `jarak`) VALUES
(1, '< 1 Km'),
(2, '1 - 3 Km'),
(3, '3 - 5 Km'),
(4, '5 - 10 Km'),
(5, '> 10 Km');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pekerjaan`
--

CREATE TABLE `jenis_pekerjaan` (
  `id_kerja` tinyint(2) UNSIGNED ZEROFILL NOT NULL,
  `jenis_pkerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_pekerjaan`
--

INSERT INTO `jenis_pekerjaan` (`id_kerja`, `jenis_pkerjaan`) VALUES
(01, 'Tidak bekerja'),
(02, 'Pensiunan/Almarhum'),
(03, 'PNS (selain poin 05 dan 10)'),
(04, 'TNI/Polisi'),
(05, 'Guru/Dosen'),
(06, 'Pegawai Swasta'),
(07, 'Pengusaha/Wiraswasta'),
(08, 'Pengacara/Hakim/Jaksa/Notaris'),
(09, 'Seniman/Pelukis/Artis/Sejenis'),
(10, 'Dokter/Bidan/Perawat'),
(11, 'Pilot/Pramugari'),
(12, 'Pedagang'),
(13, 'Petani/Peternak'),
(14, 'Nelayan'),
(15, 'Buruh (Tani/Pabrik/Bangunan)'),
(16, 'Sopir/Masinis/Kondektur'),
(17, 'Politikus'),
(18, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sekolah`
--

CREATE TABLE `jenis_sekolah` (
  `id_jenis_sekolah` tinyint(4) NOT NULL,
  `jenis_sekolah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_sekolah`
--

INSERT INTO `jenis_sekolah` (`id_jenis_sekolah`, `jenis_sekolah`) VALUES
(1, 'SMP'),
(2, 'MTs'),
(3, 'SMP Terbuka'),
(4, 'SLB'),
(5, 'Paket B');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang_pendidikan`
--

CREATE TABLE `jenjang_pendidikan` (
  `id_jenjang_pendidikan` tinyint(4) NOT NULL,
  `jenjang_pendidikan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenjang_pendidikan`
--

INSERT INTO `jenjang_pendidikan` (`id_jenjang_pendidikan`, `jenjang_pendidikan`) VALUES
(0, 'Tidak berpendidikan formal'),
(1, '<= SLTP'),
(2, 'SLTA'),
(3, 'D1'),
(4, 'D2'),
(5, 'D3'),
(6, 'D4'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` tinyint(4) NOT NULL,
  `jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `jurusan`) VALUES
(0, 'Belum ada penjurusan'),
(1, 'Jurusan IPA'),
(2, 'Jurusan IPS'),
(3, 'Jurusan Bahasa'),
(4, 'Jurusan Agama');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_bid`
--

CREATE TABLE `prestasi_bid` (
  `id_bid_prest` tinyint(4) NOT NULL,
  `bidang_prestasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prestasi_bid`
--

INSERT INTO `prestasi_bid` (`id_bid_prest`, `bidang_prestasi`) VALUES
(1, 'Akademik'),
(2, 'Keagamaan'),
(3, 'Teknologi'),
(4, 'Olahraga'),
(5, 'Pramuka/Paskribaka'),
(6, 'Karya Ilmiah Remaja'),
(7, 'Kesenian'),
(8, 'Pidato Bahasa Asing'),
(9, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_peringkat`
--

CREATE TABLE `prestasi_peringkat` (
  `id_peringkat_prest` tinyint(4) NOT NULL,
  `peringkat_prestasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prestasi_peringkat`
--

INSERT INTO `prestasi_peringkat` (`id_peringkat_prest`, `peringkat_prestasi`) VALUES
(1, 'Juara I'),
(2, 'Juara II'),
(3, 'Juara II'),
(4, 'Juara Harapan I'),
(5, 'Juara Harapan II'),
(6, 'Juara Harapan III'),
(7, 'Juara Favorit');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_tingkat`
--

CREATE TABLE `prestasi_tingkat` (
  `id_tingkat_prest` tinyint(4) NOT NULL,
  `tingkat_prestasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prestasi_tingkat`
--

INSERT INTO `prestasi_tingkat` (`id_tingkat_prest`, `tingkat_prestasi`) VALUES
(1, 'Tingkat Kabupaten/Kota'),
(2, 'Tingkat Provinsi'),
(3, 'Tingkat Nasional'),
(4, 'Tingkat Internasional');

-- --------------------------------------------------------

--
-- Table structure for table `rerata_penghasilan`
--

CREATE TABLE `rerata_penghasilan` (
  `id_penghasilan` tinyint(4) NOT NULL,
  `penghasilan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rerata_penghasilan`
--

INSERT INTO `rerata_penghasilan` (`id_penghasilan`, `penghasilan`) VALUES
(1, '<=  Rp 500.000'),
(2, 'Rp 500.001 - Rp 1.000.000'),
(3, 'Rp. 1.000.001 - Rp 2.000.000'),
(4, 'Rp 2.000.001 - Rp 3.000.000'),
(5, 'Rp. 3.000.001 - Rp 5.000.000'),
(6, '> Rp 5.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `status_sekolah`
--

CREATE TABLE `status_sekolah` (
  `id_status_sekolah` tinyint(4) NOT NULL,
  `status_sekolah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_sekolah`
--

INSERT INTO `status_sekolah` (`id_status_sekolah`, `status_sekolah`) VALUES
(1, 'Negeri'),
(2, 'Swasta');

-- --------------------------------------------------------

--
-- Table structure for table `status_siswa`
--

CREATE TABLE `status_siswa` (
  `id_status_siswa` tinyint(4) NOT NULL,
  `status_siswa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_siswa`
--

INSERT INTO `status_siswa` (`id_status_siswa`, `status_siswa`) VALUES
(1, 'Naik dari tingkat sebelumnya'),
(2, 'Mengulang (tidak naik kelas)'),
(3, 'Siswa pindah/mutasi masuk'),
(4, 'Drop-out kembali'),
(5, 'Siswa baru tingkat 10');

-- --------------------------------------------------------

--
-- Table structure for table `status_tinggal`
--

CREATE TABLE `status_tinggal` (
  `id_status_tinggal` tinyint(4) NOT NULL,
  `status_tinggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_tinggal`
--

INSERT INTO `status_tinggal` (`id_status_tinggal`, `status_tinggal`) VALUES
(1, 'Rumah Orangtua'),
(2, 'Rumah Saudara/Kerabat'),
(3, 'Asrama Madrasah/Pesantren'),
(4, 'Rumah Sewa/Kontrak'),
(5, 'Panti Asuhan'),
(6, 'Rumah Singgah'),
(7, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_alamat_siswa`
--

CREATE TABLE `tb_alamat_siswa` (
  `id_alamat` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL,
  `alamat_siswa` varchar(255) NOT NULL,
  `provinsi_siswa` varchar(255) NOT NULL,
  `kabkota_siswa` varchar(255) NOT NULL,
  `kec_siswa` varchar(255) NOT NULL,
  `desa_siswa` varchar(255) NOT NULL,
  `kodepos_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_alamat_siswa`
--

INSERT INTO `tb_alamat_siswa` (`id_alamat`, `id_siswa`, `alamat_siswa`, `provinsi_siswa`, `kabkota_siswa`, `kec_siswa`, `desa_siswa`, `kodepos_siswa`) VALUES
(1, 0001, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Gajah Mungkur', 'Petompon', 50237),
(2, 0002, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Kudu', 50116),
(3, 0003, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Banjardowo', 50117),
(4, 0004, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Genuksari', 50134),
(5, 0005, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Karangroto', 50237),
(6, 0006, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Genuksari', 50237),
(7, 0007, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Genuksari', 50237),
(8, 0008, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Trimulyo', 50237),
(9, 0009, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Muktiharjo Lor', 50237),
(10, 0010, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Trimulyo', 50237),
(11, 0011, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Muktiharjo Lor', 50237),
(12, 0012, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Muktiharjo Lor', 50237),
(13, 0013, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Gerbangsari', 50237),
(14, 0014, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Muktiharjo Lor', 50237),
(15, 0015, 'Jl. Semarang', 'Jawa Tengah', 'Semarang', 'Genuk', 'Genuksari', 50237);

-- --------------------------------------------------------

--
-- Table structure for table `tb_domisili_transport`
--

CREATE TABLE `tb_domisili_transport` (
  `id_dom_trans` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL,
  `id_status_tinggal` tinyint(4) NOT NULL,
  `id_jarak` tinyint(4) NOT NULL,
  `id_transport` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_domisili_transport`
--

INSERT INTO `tb_domisili_transport` (`id_dom_trans`, `id_siswa`, `id_status_tinggal`, `id_jarak`, `id_transport`) VALUES
(1, 0001, 1, 2, 3),
(2, 0002, 1, 2, 3),
(3, 0003, 1, 2, 3),
(4, 0004, 1, 3, 3),
(5, 0005, 1, 1, 1),
(6, 0006, 1, 3, 3),
(7, 0007, 1, 2, 3),
(8, 0008, 1, 3, 3),
(9, 0009, 1, 3, 3),
(10, 0010, 1, 2, 3),
(11, 0011, 1, 2, 3),
(12, 0012, 1, 1, 1),
(13, 0013, 1, 3, 3),
(14, 0014, 1, 2, 2),
(15, 0015, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_identitas_ma`
--

CREATE TABLE `tb_identitas_ma` (
  `id_ma` int(11) NOT NULL,
  `nsm_ma` bigint(20) NOT NULL,
  `npsn` int(11) NOT NULL,
  `nama_ma` varchar(255) NOT NULL,
  `status_lembaga` enum('MAN','MAS') NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabkota` varchar(255) NOT NULL,
  `kec` varchar(255) NOT NULL,
  `desa_kelurahan` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_identitas_ma`
--

INSERT INTO `tb_identitas_ma` (`id_ma`, `nsm_ma`, `npsn`, `nama_ma`, `status_lembaga`, `provinsi`, `kabkota`, `kec`, `desa_kelurahan`, `kode_pos`) VALUES
(1, 131133740002, 20363038, '2 Semarang', 'MAN', 'Jawa Tengah', 'Semarang', 'Genuk', 'Bengetayu Kulon', 50115);

-- --------------------------------------------------------

--
-- Table structure for table `tb_informasi_siswa`
--

CREATE TABLE `tb_informasi_siswa` (
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL,
  `nis_lokal` bigint(20) NOT NULL,
  `nisn` bigint(10) UNSIGNED ZEROFILL NOT NULL,
  `nik_siswa` bigint(20) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_kelamin` enum('L','P') NOT NULL,
  `kelas` enum('10','11','12') NOT NULL,
  `id_jurusan` tinyint(4) NOT NULL,
  `kls_paralel` varchar(255) NOT NULL,
  `no_absen` int(11) NOT NULL,
  `th_masuk` year(4) NOT NULL,
  `id_ma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_informasi_siswa`
--

INSERT INTO `tb_informasi_siswa` (`id_siswa`, `nis_lokal`, `nisn`, `nik_siswa`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jns_kelamin`, `kelas`, `id_jurusan`, `kls_paralel`, `no_absen`, `th_masuk`, `id_ma`) VALUES
(0001, 131133740002180001, 0007624185, 3525013006500898, 'Joko', 'Semarang', '2000-01-01', 'L', '10', 1, '10A', 1, 2018, 1),
(0002, 131133740002180002, 0007624154, 3525013006500786, 'Slamet', 'Semarang', '2000-02-01', 'L', '10', 1, '10A', 2, 2018, 1),
(0003, 131133740002180003, 0007624176, 3525013006500997, 'Sri', 'Semarang', '2000-02-21', 'P', '10', 1, '10A', 3, 2018, 1),
(0004, 131133740002180004, 0007624134, 3525013006500245, 'Abdul', 'Semarang', '2000-05-01', 'L', '10', 1, '10A', 4, 2018, 1),
(0005, 131133740002180005, 0007624198, 3525013006500453, 'Widodo', 'Semarang', '2000-03-04', 'L', '10', 1, '10A', 5, 2018, 1),
(0006, 131133740002180006, 0007624154, 3525013006500656, 'Dewi', 'Semarang', '2000-07-06', 'P', '10', 2, '10B', 1, 2018, 1),
(0007, 131133740002180007, 0007624112, 3525013006500453, 'Atun', 'Semarang', '2000-08-01', 'P', '10', 2, '10B', 2, 2018, 1),
(0008, 131133740002180008, 0007624172, 3525013006500857, 'Darto', 'Semarang', '2000-12-03', 'L', '10', 2, '10B', 3, 2018, 1),
(0009, 131133740002180009, 0007624179, 3525013006500344, 'Rijal', 'Semarang', '2000-08-06', 'L', '10', 2, '10B', 4, 2018, 1),
(0010, 131133740002180010, 0007624145, 3525013006500866, 'Tika', 'Semarang', '2000-09-03', 'P', '10', 2, '10B', 5, 2018, 1),
(0011, 131133740002180011, 0007624134, 3525013006500876, 'Deni', 'Semarang', '2000-05-02', 'L', '10', 3, '10C', 1, 2018, 1),
(0012, 131133740002180012, 0007624112, 3525013006500453, 'Luhut', 'Semarang', '2000-09-01', 'L', '10', 3, '10C', 2, 2018, 1),
(0013, 131133740002180013, 0007624187, 3525013006500454, 'Ika', 'Semarang', '2000-02-19', 'P', '10', 3, '10C', 3, 2018, 1),
(0014, 131133740002180014, 0007624198, 3525013006500876, 'Guruh', 'Semarang', '2000-06-08', 'L', '10', 3, '10C', 4, 2018, 1),
(0015, 131133740002180015, 0007624134, 3525013006500454, 'Yanto', 'Semarang', '2000-08-06', 'L', '10', 3, '10C', 5, 2018, 1);

--
-- Triggers `tb_informasi_siswa`
--
DELIMITER $$
CREATE TRIGGER `nislok` BEFORE INSERT ON `tb_informasi_siswa` FOR EACH ROW set New.nis_lokal = concat((select nsm_ma from tb_identitas_ma where id_ma = New.id_ma),DATE_FORMAT(New.th_masuk, '%y'), New.id_siswa)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_info_tambah_siswa`
--

CREATE TABLE `tb_info_tambah_siswa` (
  `id_add_inf_siswa` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL,
  `rank` int(11) NOT NULL,
  `id_status_siswa` tinyint(4) NOT NULL,
  `id_asal_sekolah` tinyint(4) DEFAULT NULL,
  `id_hobi` tinyint(4) NOT NULL,
  `id_citacita` tinyint(4) NOT NULL,
  `id_bhs_asing_dikuasai` tinyint(4) DEFAULT NULL,
  `jml_saudara` int(11) NOT NULL,
  `id_agama` tinyint(4) NOT NULL,
  `wali_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_info_tambah_siswa`
--

INSERT INTO `tb_info_tambah_siswa` (`id_add_inf_siswa`, `id_siswa`, `rank`, `id_status_siswa`, `id_asal_sekolah`, `id_hobi`, `id_citacita`, `id_bhs_asing_dikuasai`, `jml_saudara`, `id_agama`, `wali_kelas`) VALUES
(1, 0001, 3, 1, NULL, 1, 3, 1, 3, 1, 'Fauzan'),
(2, 0002, 4, 1, NULL, 2, 2, NULL, 2, 1, 'Fauzan'),
(3, 0003, 2, 1, NULL, 1, 2, 1, 6, 1, 'Fauzan'),
(4, 0004, 5, 1, NULL, 2, 4, NULL, 3, 1, 'Faauzan'),
(5, 0005, 1, 1, NULL, 4, 3, NULL, 2, 1, 'Fauzan'),
(6, 0006, 4, 1, NULL, 5, 2, 1, 1, 1, 'Gigih'),
(7, 0007, 5, 1, NULL, 4, 1, NULL, 5, 1, 'Gigih'),
(8, 0008, 2, 1, NULL, 6, 7, NULL, 7, 1, 'Gigih'),
(9, 0009, 1, 1, NULL, 2, 1, 1, 3, 1, 'Gigih'),
(10, 0010, 3, 1, NULL, 5, 1, 1, 2, 1, 'Gigih'),
(11, 0011, 3, 1, NULL, 1, 2, 1, 3, 1, 'Kunaefi'),
(12, 0012, 2, 1, NULL, 3, 1, NULL, 4, 1, 'Kunaefi'),
(13, 0013, 1, 1, NULL, 3, 1, NULL, 2, 1, 'Kunaefi'),
(14, 0014, 5, 1, NULL, 6, 1, 1, 5, 1, 'Kunaefi'),
(15, 0015, 4, 1, NULL, 4, 1, NULL, 2, 1, 'Kunaefi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenjang_sebelumnya`
--

CREATE TABLE `tb_jenjang_sebelumnya` (
  `id_jenjang_sebelum` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL,
  `id_jenis_sekolah` tinyint(4) NOT NULL,
  `id_status_sekolah` tinyint(4) NOT NULL,
  `kabkota_sekolah` varchar(255) NOT NULL,
  `no_ujian_sebelumnya` varchar(255) NOT NULL,
  `npsn_sekolah` varchar(255) NOT NULL,
  `no_blanko_skhun` varchar(255) NOT NULL,
  `no_seri_ijazah` varchar(255) NOT NULL,
  `total_un` float NOT NULL,
  `tgl_lulus` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_jenjang_sebelumnya`
--

INSERT INTO `tb_jenjang_sebelumnya` (`id_jenjang_sebelum`, `id_siswa`, `id_jenis_sekolah`, `id_status_sekolah`, `kabkota_sekolah`, `no_ujian_sebelumnya`, `npsn_sekolah`, `no_blanko_skhun`, `no_seri_ijazah`, `total_un`, `tgl_lulus`) VALUES
(1, 0001, 1, 1, 'Semarang', '121365183618769', '40182649', '8271937', '9932499', 3.4, '2018-04-20'),
(2, 0002, 1, 1, 'Semarang', '121365123758769', '43242649', '8271943', '9932412', 3.7, '2018-04-20'),
(3, 0003, 1, 1, 'Semarang', '121365136898769', '32423649', '8271423', '9932454', 3.8, '2018-04-20'),
(4, 0004, 1, 1, 'Semarang', '121365112978769', '40321649', '8271422', '9932422', 3.5, '2018-04-20'),
(5, 0005, 1, 1, 'Semarang', '121365109758769', '44252649', '8271523', '9932465', 3.6, '2018-04-20'),
(6, 0006, 1, 1, 'Semarang', '121365133558769', '40543649', '8271523', '9932410', 3.8, '2018-04-20'),
(7, 0007, 1, 1, 'Semarang', '12136599968769', '34232649', '8271432', '99324543', 3.9, '2018-04-20'),
(8, 0008, 1, 1, 'Semarang', '121365124218769', '40182649', '8271430', '9932414', 3.5, '2018-04-20'),
(9, 0009, 1, 1, 'Semarang', '121365325218769', '40182649', '8271475', '9932421', 3.3, '2018-04-20'),
(10, 0010, 1, 1, 'Semarang', '121369742618769', '40322649', '8271735', '9932554', 3.5, '2018-04-20'),
(11, 0011, 1, 1, 'Semarang', '121369743618769', '40123549', '8271832', '9932314', 3.6, '2018-04-20'),
(12, 0012, 1, 1, 'Semarang', '12139764618769', '40182325', '8271713', '9932744', 3.7, '2018-04-20'),
(13, 0013, 1, 1, 'Semarang', '121395003618769', '40143349', '8271984', '9932888', 3.3, '2018-04-20'),
(14, 0014, 1, 1, 'Semarang', '121388623618769', '40234239', '8271749', '9932222', 3.8, '2018-04-20'),
(15, 0015, 1, 1, 'Semarang', '121300863618769', '40143649', '8271637', '9932333', 3.1, '2018-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ortu_siswa`
--

CREATE TABLE `tb_ortu_siswa` (
  `id_ortu` int(10) UNSIGNED NOT NULL,
  `no_kk` varchar(255) NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `nik_ayah` varchar(255) NOT NULL,
  `id_pendidikan_ayah` tinyint(4) NOT NULL,
  `id_pekerjaan_ayah` tinyint(2) UNSIGNED ZEROFILL NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `nik_ibu` varchar(255) NOT NULL,
  `id_pendidikan_ibu` tinyint(4) NOT NULL,
  `id_pekerjaan_ibu` tinyint(2) UNSIGNED ZEROFILL NOT NULL,
  `id_penghasilan` tinyint(4) NOT NULL,
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_ortu_siswa`
--

INSERT INTO `tb_ortu_siswa` (`id_ortu`, `no_kk`, `nama_ayah`, `nik_ayah`, `id_pendidikan_ayah`, `id_pekerjaan_ayah`, `nama_ibu`, `nik_ibu`, `id_pendidikan_ibu`, `id_pekerjaan_ibu`, `id_penghasilan`, `id_siswa`) VALUES
(1, '3525011711086058', 'Muhammad', '3525015201880002', 7, 03, 'Annisa', '3525010609510002', 7, 05, 6, 0001),
(2, '3525011711086059', 'Saputra', '3525015201880001', 2, 15, 'Nur', '3525010609510043', 2, 05, 6, 0002),
(3, '3525011711086059', 'Angga', '3525015201880099', 5, 06, 'Dian', '3525010609510054', 7, 05, 6, 0003),
(4, '3525011711086061', 'Surya', '3525015201880032', 2, 07, 'Putri', '3525010609510087', 2, 05, 6, 0004),
(5, '3525011711086062', 'Hidayat', '3525015201880065', 2, 07, 'Eka', '3525010609510098', 2, 05, 6, 0005),
(6, '3525011711086081', 'Hendra', '3525015201880075', 7, 08, 'Sari', '3525010609510054', 7, 05, 6, 0006),
(7, '3525011711086063', 'Setiawan', '3525015201880023', 7, 03, 'Ayu', '3525010609510023', 7, 05, 6, 0007),
(8, '3525011711086058 ', 'Abdul', '3525015201880023', 5, 03, 'Indah', '3525010609510076', 7, 05, 6, 0008),
(9, '3525011711086064', 'Nugroho', '3525015201880043', 5, 06, 'Siti', '3525010609510098', 7, 05, 6, 0009),
(10, '3525011711086065', 'Eko', '3525015201880045', 4, 06, 'Ika', '3525010609510043', 5, 05, 6, 0010),
(11, '3525011711086066', 'Hadi', '3525015201880054', 2, 06, 'Fitri', '3525010609510076', 2, 05, 6, 0011),
(12, '3525011711086067', 'Prima', '3525015201880087', 7, 06, 'Ratna', '3525010609510034', 7, 05, 6, 0012),
(13, '3525011711086068', 'Achmad', '3525015201880034', 7, 07, 'Nurul', '3525010609510076', 7, 05, 6, 0013),
(14, '3525011711086069', 'Bagus', '3525015201880024', 2, 13, 'Puspita', '3525010609510076', 2, 05, 6, 0014),
(15, '3525011711086070', 'Ade', '3525015201880078', 2, 12, 'Dyah', '3525010609510045', 2, 05, 6, 0015);

-- --------------------------------------------------------

--
-- Table structure for table `tb_prestasi_siswa`
--

CREATE TABLE `tb_prestasi_siswa` (
  `id_prest` int(10) UNSIGNED NOT NULL,
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL,
  `id_bid_prestasi` tinyint(4) NOT NULL,
  `id_tingk_prestasi` tinyint(4) NOT NULL,
  `id_peringkat_diraih` tinyint(4) NOT NULL,
  `th_prest` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_prestasi_siswa`
--

INSERT INTO `tb_prestasi_siswa` (`id_prest`, `id_siswa`, `id_bid_prestasi`, `id_tingk_prestasi`, `id_peringkat_diraih`, `th_prest`) VALUES
(1, 0005, 1, 2, 1, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wali_siswa`
--

CREATE TABLE `tb_wali_siswa` (
  `id_wali` int(10) UNSIGNED NOT NULL,
  `nama_wali` varchar(255) NOT NULL,
  `th_lahir_wali` year(4) NOT NULL,
  `nik_wali` varchar(255) NOT NULL,
  `id_pendidikan_wali` tinyint(4) NOT NULL,
  `id_pekerjaan_wali` tinyint(2) UNSIGNED ZEROFILL NOT NULL,
  `id_penghasilan_wali` tinyint(4) NOT NULL,
  `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_wali_siswa`
--

INSERT INTO `tb_wali_siswa` (`id_wali`, `nama_wali`, `th_lahir_wali`, `nik_wali`, `id_pendidikan_wali`, `id_pekerjaan_wali`, `id_penghasilan_wali`, `id_siswa`) VALUES
(1, 'Agus', 1989, '3525014305710345', 5, 06, 5, 0001),
(2, 'Andi', 1985, '3525014305710321', 2, 06, 5, 0002),
(3, 'Kurniawan', 1979, '3525014305710342', 2, 18, 4, 0003),
(4, 'Budi', 1988, '3525014305710312', 7, 07, 5, 0004),
(5, 'Adi', 1982, '3525014305710986', 5, 06, 4, 0005),
(6, 'Putra', 1983, '3525014305710738', 2, 06, 4, 0006),
(7, 'Ari', 1981, '3525014305710837', 2, 07, 5, 0007),
(8, 'Wulandari', 1986, '3525014305710276', 7, 06, 4, 0008),
(9, 'Bayu', 1987, '3525014305710386', 7, 06, 4, 0009),
(10, 'Novita', 1980, '3525014305710937', 5, 07, 4, 0010),
(11, 'Widya', 1978, '3525014305710734', 7, 06, 5, 0011),
(12, 'Agustina', 1982, '3525014305710324', 7, 12, 5, 0012),
(13, 'Rini', 1983, '3525014305710934', 5, 07, 4, 0013),
(14, 'Munaroh', 1987, '3525014305710937', 2, 06, 4, 0014),
(15, 'Raden', 1982, '3525014305710937', 5, 07, 4, 0015);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id_transport` tinyint(4) NOT NULL,
  `transport` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id_transport`, `transport`) VALUES
(1, 'Jalan Kaki'),
(2, 'Sepeda'),
(3, 'Sepeda Motor'),
(4, 'Mobil Pribadi'),
(5, 'Antar Jemput Sekolah'),
(6, 'Angkutan Umum'),
(7, 'Perahu/Sampan'),
(8, 'Lainnya');

-- --------------------------------------------------------

--
-- Structure for view `datakeluarga`
--
DROP TABLE IF EXISTS `datakeluarga`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `datakeluarga`  AS SELECT `s`.`nisn` AS `nisn`, `s`.`nama_siswa` AS `nama_siswa`, `o`.`no_kk` AS `no_kk`, `o`.`nama_ayah` AS `nama_ayah`, `o`.`nama_ibu` AS `nama_ibu`, `w`.`nama_wali` AS `nama_wali` FROM ((`tb_informasi_siswa` `s` join `tb_ortu_siswa` `o`) join `tb_wali_siswa` `w`) WHERE `o`.`id_siswa` = `s`.`id_siswa` AND `s`.`id_siswa` = `w`.`id_siswa``id_siswa`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_agama`) USING BTREE;

--
-- Indexes for table `asal_sekolah`
--
ALTER TABLE `asal_sekolah`
  ADD PRIMARY KEY (`id_asal_sekolah`) USING BTREE;

--
-- Indexes for table `bahasa_asing`
--
ALTER TABLE `bahasa_asing`
  ADD PRIMARY KEY (`id_bahasa`) USING BTREE;

--
-- Indexes for table `citacita`
--
ALTER TABLE `citacita`
  ADD PRIMARY KEY (`id_citacita`) USING BTREE;

--
-- Indexes for table `hobi`
--
ALTER TABLE `hobi`
  ADD PRIMARY KEY (`id_hobi`) USING BTREE;

--
-- Indexes for table `jarak`
--
ALTER TABLE `jarak`
  ADD PRIMARY KEY (`id_jarak`) USING BTREE;

--
-- Indexes for table `jenis_pekerjaan`
--
ALTER TABLE `jenis_pekerjaan`
  ADD PRIMARY KEY (`id_kerja`) USING BTREE;

--
-- Indexes for table `jenis_sekolah`
--
ALTER TABLE `jenis_sekolah`
  ADD PRIMARY KEY (`id_jenis_sekolah`) USING BTREE;

--
-- Indexes for table `jenjang_pendidikan`
--
ALTER TABLE `jenjang_pendidikan`
  ADD PRIMARY KEY (`id_jenjang_pendidikan`) USING BTREE;

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`) USING BTREE;

--
-- Indexes for table `prestasi_bid`
--
ALTER TABLE `prestasi_bid`
  ADD PRIMARY KEY (`id_bid_prest`) USING BTREE;

--
-- Indexes for table `prestasi_peringkat`
--
ALTER TABLE `prestasi_peringkat`
  ADD PRIMARY KEY (`id_peringkat_prest`) USING BTREE;

--
-- Indexes for table `prestasi_tingkat`
--
ALTER TABLE `prestasi_tingkat`
  ADD PRIMARY KEY (`id_tingkat_prest`) USING BTREE;

--
-- Indexes for table `rerata_penghasilan`
--
ALTER TABLE `rerata_penghasilan`
  ADD PRIMARY KEY (`id_penghasilan`) USING BTREE;

--
-- Indexes for table `status_sekolah`
--
ALTER TABLE `status_sekolah`
  ADD PRIMARY KEY (`id_status_sekolah`) USING BTREE;

--
-- Indexes for table `status_siswa`
--
ALTER TABLE `status_siswa`
  ADD PRIMARY KEY (`id_status_siswa`) USING BTREE;

--
-- Indexes for table `status_tinggal`
--
ALTER TABLE `status_tinggal`
  ADD PRIMARY KEY (`id_status_tinggal`) USING BTREE;

--
-- Indexes for table `tb_alamat_siswa`
--
ALTER TABLE `tb_alamat_siswa`
  ADD PRIMARY KEY (`id_alamat`) USING BTREE,
  ADD KEY `tb_alamat_siswa_relation_1` (`id_siswa`) USING BTREE;

--
-- Indexes for table `tb_domisili_transport`
--
ALTER TABLE `tb_domisili_transport`
  ADD PRIMARY KEY (`id_dom_trans`) USING BTREE,
  ADD KEY `tb_domisili_transport_relation_1` (`id_status_tinggal`) USING BTREE,
  ADD KEY `tb_domisili_transport_relation_2` (`id_jarak`) USING BTREE,
  ADD KEY `tb_domisili_transport_relation_3` (`id_transport`) USING BTREE,
  ADD KEY `tb_domisili_transport_relation_4` (`id_siswa`) USING BTREE;

--
-- Indexes for table `tb_identitas_ma`
--
ALTER TABLE `tb_identitas_ma`
  ADD PRIMARY KEY (`id_ma`) USING BTREE;

--
-- Indexes for table `tb_informasi_siswa`
--
ALTER TABLE `tb_informasi_siswa`
  ADD PRIMARY KEY (`id_siswa`) USING BTREE,
  ADD KEY `tb_informasi_siswa_relation_1` (`id_jurusan`) USING BTREE,
  ADD KEY `tb_informasi_siswa_relation_2` (`id_ma`) USING BTREE;

--
-- Indexes for table `tb_info_tambah_siswa`
--
ALTER TABLE `tb_info_tambah_siswa`
  ADD PRIMARY KEY (`id_add_inf_siswa`) USING BTREE,
  ADD KEY `tb_info_tambah_siswa_relation_1` (`id_status_siswa`) USING BTREE,
  ADD KEY `tb_info_tambah_siswa_relation_2` (`id_asal_sekolah`) USING BTREE,
  ADD KEY `tb_info_tambah_siswa_relation_3` (`id_hobi`) USING BTREE,
  ADD KEY `tb_info_tambah_siswa_relation_4` (`id_citacita`) USING BTREE,
  ADD KEY `tb_info_tambah_siswa_relation_5` (`id_bhs_asing_dikuasai`) USING BTREE,
  ADD KEY `tb_info_tambah_siswa_relation_6` (`id_agama`) USING BTREE,
  ADD KEY `tb_info_tambah_siswa_relation_7` (`id_siswa`) USING BTREE;

--
-- Indexes for table `tb_jenjang_sebelumnya`
--
ALTER TABLE `tb_jenjang_sebelumnya`
  ADD PRIMARY KEY (`id_jenjang_sebelum`) USING BTREE,
  ADD KEY `tb_jenjang_sebelumnya_relation_1` (`id_jenis_sekolah`) USING BTREE,
  ADD KEY `tb_jenjang_sebelumnya_relation_2` (`id_status_sekolah`) USING BTREE,
  ADD KEY `tb_jenjang_sebelumnya_relation_3` (`id_siswa`) USING BTREE;

--
-- Indexes for table `tb_ortu_siswa`
--
ALTER TABLE `tb_ortu_siswa`
  ADD PRIMARY KEY (`id_ortu`) USING BTREE,
  ADD KEY `tb_ortu_siswa_relation_1` (`id_pendidikan_ayah`) USING BTREE,
  ADD KEY `tb_ortu_siswa_relation_2` (`id_pekerjaan_ayah`) USING BTREE,
  ADD KEY `tb_ortu_siswa_relation_3` (`id_pendidikan_ibu`) USING BTREE,
  ADD KEY `tb_ortu_siswa_relation_4` (`id_pekerjaan_ibu`) USING BTREE,
  ADD KEY `tb_ortu_siswa_relation_5` (`id_penghasilan`) USING BTREE,
  ADD KEY `tb_ortu_siswa_relation_6` (`id_siswa`) USING BTREE;

--
-- Indexes for table `tb_prestasi_siswa`
--
ALTER TABLE `tb_prestasi_siswa`
  ADD PRIMARY KEY (`id_prest`) USING BTREE,
  ADD KEY `tb_prestasi_siswa_relation_1` (`id_bid_prestasi`) USING BTREE,
  ADD KEY `tb_prestasi_siswa_relation_2` (`id_tingk_prestasi`) USING BTREE,
  ADD KEY `tb_prestasi_siswa_relation_3` (`id_peringkat_diraih`) USING BTREE,
  ADD KEY `tb_prestasi_siswa_relation_4` (`id_siswa`) USING BTREE;

--
-- Indexes for table `tb_wali_siswa`
--
ALTER TABLE `tb_wali_siswa`
  ADD PRIMARY KEY (`id_wali`) USING BTREE,
  ADD KEY `tb_wali_siswa_relation_1` (`id_pendidikan_wali`) USING BTREE,
  ADD KEY `tb_wali_siswa_relation_2` (`id_pekerjaan_wali`) USING BTREE,
  ADD KEY `tb_wali_siswa_relation_3` (`id_penghasilan_wali`) USING BTREE,
  ADD KEY `tb_wali_siswa_relation_4` (`id_siswa`) USING BTREE;

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id_transport`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id_agama` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `asal_sekolah`
--
ALTER TABLE `asal_sekolah`
  MODIFY `id_asal_sekolah` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bahasa_asing`
--
ALTER TABLE `bahasa_asing`
  MODIFY `id_bahasa` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `citacita`
--
ALTER TABLE `citacita`
  MODIFY `id_citacita` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hobi`
--
ALTER TABLE `hobi`
  MODIFY `id_hobi` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jarak`
--
ALTER TABLE `jarak`
  MODIFY `id_jarak` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenis_pekerjaan`
--
ALTER TABLE `jenis_pekerjaan`
  MODIFY `id_kerja` tinyint(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `jenis_sekolah`
--
ALTER TABLE `jenis_sekolah`
  MODIFY `id_jenis_sekolah` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prestasi_bid`
--
ALTER TABLE `prestasi_bid`
  MODIFY `id_bid_prest` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prestasi_peringkat`
--
ALTER TABLE `prestasi_peringkat`
  MODIFY `id_peringkat_prest` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prestasi_tingkat`
--
ALTER TABLE `prestasi_tingkat`
  MODIFY `id_tingkat_prest` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status_sekolah`
--
ALTER TABLE `status_sekolah`
  MODIFY `id_status_sekolah` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_siswa`
--
ALTER TABLE `status_siswa`
  MODIFY `id_status_siswa` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status_tinggal`
--
ALTER TABLE `status_tinggal`
  MODIFY `id_status_tinggal` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_alamat_siswa`
--
ALTER TABLE `tb_alamat_siswa`
  MODIFY `id_alamat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_domisili_transport`
--
ALTER TABLE `tb_domisili_transport`
  MODIFY `id_dom_trans` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_identitas_ma`
--
ALTER TABLE `tb_identitas_ma`
  MODIFY `id_ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_informasi_siswa`
--
ALTER TABLE `tb_informasi_siswa`
  MODIFY `id_siswa` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_info_tambah_siswa`
--
ALTER TABLE `tb_info_tambah_siswa`
  MODIFY `id_add_inf_siswa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_jenjang_sebelumnya`
--
ALTER TABLE `tb_jenjang_sebelumnya`
  MODIFY `id_jenjang_sebelum` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_ortu_siswa`
--
ALTER TABLE `tb_ortu_siswa`
  MODIFY `id_ortu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_prestasi_siswa`
--
ALTER TABLE `tb_prestasi_siswa`
  MODIFY `id_prest` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_wali_siswa`
--
ALTER TABLE `tb_wali_siswa`
  MODIFY `id_wali` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id_transport` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_alamat_siswa`
--
ALTER TABLE `tb_alamat_siswa`
  ADD CONSTRAINT `tb_alamat_siswa_relation_1` FOREIGN KEY (`id_siswa`) REFERENCES `tb_informasi_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_domisili_transport`
--
ALTER TABLE `tb_domisili_transport`
  ADD CONSTRAINT `tb_domisili_transport_relation_1` FOREIGN KEY (`id_status_tinggal`) REFERENCES `status_tinggal` (`id_status_tinggal`),
  ADD CONSTRAINT `tb_domisili_transport_relation_2` FOREIGN KEY (`id_jarak`) REFERENCES `jarak` (`id_jarak`),
  ADD CONSTRAINT `tb_domisili_transport_relation_3` FOREIGN KEY (`id_transport`) REFERENCES `transport` (`id_transport`),
  ADD CONSTRAINT `tb_domisili_transport_relation_4` FOREIGN KEY (`id_siswa`) REFERENCES `tb_informasi_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_informasi_siswa`
--
ALTER TABLE `tb_informasi_siswa`
  ADD CONSTRAINT `tb_informasi_siswa_relation_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_informasi_siswa_relation_2` FOREIGN KEY (`id_ma`) REFERENCES `tb_identitas_ma` (`id_ma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_info_tambah_siswa`
--
ALTER TABLE `tb_info_tambah_siswa`
  ADD CONSTRAINT `tb_info_tambah_siswa_relation_1` FOREIGN KEY (`id_status_siswa`) REFERENCES `status_siswa` (`id_status_siswa`),
  ADD CONSTRAINT `tb_info_tambah_siswa_relation_2` FOREIGN KEY (`id_asal_sekolah`) REFERENCES `asal_sekolah` (`id_asal_sekolah`),
  ADD CONSTRAINT `tb_info_tambah_siswa_relation_3` FOREIGN KEY (`id_hobi`) REFERENCES `hobi` (`id_hobi`),
  ADD CONSTRAINT `tb_info_tambah_siswa_relation_4` FOREIGN KEY (`id_citacita`) REFERENCES `citacita` (`id_citacita`),
  ADD CONSTRAINT `tb_info_tambah_siswa_relation_5` FOREIGN KEY (`id_bhs_asing_dikuasai`) REFERENCES `bahasa_asing` (`id_bahasa`),
  ADD CONSTRAINT `tb_info_tambah_siswa_relation_6` FOREIGN KEY (`id_agama`) REFERENCES `agama` (`id_agama`),
  ADD CONSTRAINT `tb_info_tambah_siswa_relation_7` FOREIGN KEY (`id_siswa`) REFERENCES `tb_informasi_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_jenjang_sebelumnya`
--
ALTER TABLE `tb_jenjang_sebelumnya`
  ADD CONSTRAINT `tb_jenjang_sebelumnya_relation_1` FOREIGN KEY (`id_jenis_sekolah`) REFERENCES `jenis_sekolah` (`id_jenis_sekolah`),
  ADD CONSTRAINT `tb_jenjang_sebelumnya_relation_2` FOREIGN KEY (`id_status_sekolah`) REFERENCES `status_siswa` (`id_status_siswa`),
  ADD CONSTRAINT `tb_jenjang_sebelumnya_relation_3` FOREIGN KEY (`id_siswa`) REFERENCES `tb_informasi_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_ortu_siswa`
--
ALTER TABLE `tb_ortu_siswa`
  ADD CONSTRAINT `tb_ortu_siswa_relation_1` FOREIGN KEY (`id_pendidikan_ayah`) REFERENCES `jenjang_pendidikan` (`id_jenjang_pendidikan`),
  ADD CONSTRAINT `tb_ortu_siswa_relation_2` FOREIGN KEY (`id_pekerjaan_ayah`) REFERENCES `jenis_pekerjaan` (`id_kerja`),
  ADD CONSTRAINT `tb_ortu_siswa_relation_3` FOREIGN KEY (`id_pendidikan_ibu`) REFERENCES `jenjang_pendidikan` (`id_jenjang_pendidikan`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_ortu_siswa_relation_4` FOREIGN KEY (`id_pekerjaan_ibu`) REFERENCES `jenis_pekerjaan` (`id_kerja`),
  ADD CONSTRAINT `tb_ortu_siswa_relation_5` FOREIGN KEY (`id_penghasilan`) REFERENCES `rerata_penghasilan` (`id_penghasilan`),
  ADD CONSTRAINT `tb_ortu_siswa_relation_6` FOREIGN KEY (`id_siswa`) REFERENCES `tb_informasi_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_prestasi_siswa`
--
ALTER TABLE `tb_prestasi_siswa`
  ADD CONSTRAINT `tb_prestasi_siswa_relation_1` FOREIGN KEY (`id_bid_prestasi`) REFERENCES `prestasi_bid` (`id_bid_prest`),
  ADD CONSTRAINT `tb_prestasi_siswa_relation_2` FOREIGN KEY (`id_tingk_prestasi`) REFERENCES `prestasi_tingkat` (`id_tingkat_prest`),
  ADD CONSTRAINT `tb_prestasi_siswa_relation_3` FOREIGN KEY (`id_peringkat_diraih`) REFERENCES `prestasi_peringkat` (`id_peringkat_prest`),
  ADD CONSTRAINT `tb_prestasi_siswa_relation_4` FOREIGN KEY (`id_siswa`) REFERENCES `tb_informasi_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_wali_siswa`
--
ALTER TABLE `tb_wali_siswa`
  ADD CONSTRAINT `tb_wali_siswa_relation_1` FOREIGN KEY (`id_pendidikan_wali`) REFERENCES `jenjang_pendidikan` (`id_jenjang_pendidikan`),
  ADD CONSTRAINT `tb_wali_siswa_relation_2` FOREIGN KEY (`id_pekerjaan_wali`) REFERENCES `jenis_pekerjaan` (`id_kerja`),
  ADD CONSTRAINT `tb_wali_siswa_relation_3` FOREIGN KEY (`id_penghasilan_wali`) REFERENCES `rerata_penghasilan` (`id_penghasilan`),
  ADD CONSTRAINT `tb_wali_siswa_relation_4` FOREIGN KEY (`id_siswa`) REFERENCES `tb_informasi_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
