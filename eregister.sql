-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 07:04 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `uname` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pswd` varchar(32) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`uname`, `pswd`) VALUES
('admin', '6a73f78adfb05448583c7e876439d896');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id_izin` int(11) NOT NULL,
  `pegawaiID` int(11) NOT NULL,
  `jenis_izin` varchar(255) NOT NULL,
  `tanggal_mulai_izin` date NOT NULL,
  `tanggal_akhir_izin` date NOT NULL,
  `jam_mulai_izin` time NOT NULL,
  `jam_akhir_izin` time NOT NULL,
  `keperluan` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id_izin`, `pegawaiID`, `jenis_izin`, `tanggal_mulai_izin`, `tanggal_akhir_izin`, `jam_mulai_izin`, `jam_akhir_izin`, `keperluan`, `status`, `created_at`, `updated_at`) VALUES
(1, 24, 'Izin Kurang Dari 1 Hari', '2018-08-28', '2018-08-28', '14:45:00', '15:00:00', 'coba', 'Selesai', '2018-08-28 14:46:15', '');

-- --------------------------------------------------------

--
-- Table structure for table `kepuasan`
--

CREATE TABLE `kepuasan` (
  `id_kepuasan` int(11) NOT NULL,
  `tamuID` int(11) NOT NULL,
  `puas` int(11) NOT NULL,
  `tidakpuas` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `last_login`
--

CREATE TABLE `last_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `last_login`
--

INSERT INTO `last_login` (`id`, `username`, `date`) VALUES
(1, 'admin', '2020-04-20 02:29:30'),
(2, 'cintami', '2020-04-20 02:30:05'),
(3, 'admin', '2020-04-20 04:36:47'),
(4, 'admin', '2020-04-20 04:36:55'),
(5, 'admin', '2020-04-20 04:37:24'),
(6, 'admin', '2020-04-20 06:08:57'),
(7, 'admin', '2020-04-29 02:27:51'),
(8, 'admin', '2020-04-29 06:52:24'),
(9, 'admin', '2020-05-14 07:02:26'),
(10, 'admin', '2020-05-14 07:02:33'),
(11, 'admin', '2020-05-14 07:03:15'),
(12, 'admin', '2020-05-27 04:49:34'),
(13, 'admin', '2020-05-27 04:49:41'),
(14, 'admin', '2020-05-27 06:06:46'),
(15, 'admin', '2020-05-27 06:06:49'),
(16, 'admin', '2020-05-27 06:06:56'),
(17, 'admin', '2020-06-11 06:41:38'),
(18, 'admin', '2020-08-07 02:27:29'),
(19, 'admin', '2020-08-07 02:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `link_ID` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `teks` varchar(255) NOT NULL,
  `link` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`link_ID`, `judul`, `teks`, `link`) VALUES
(1, 'Departemen Pertanian', 'Situs resmi Departemen Pertanain yang berisi informasi dan ebrita tentang pertanian serta link ke unit kerja dibawahnya', 'http://www.deptan.go.id'),
(2, 'Badan Penelitian dan Pengembangan Pertanian', 'Situs resmi Badan Litbang PErtanian yang berisi inforamsi terbaru tentang teknologi pertanian, highlight dan link ke Unit kerja dibawahnya', 'http://www.litbang.deptan.go.id'),
(3, 'Pusat Perpustakaan dan Penyebaran Teknologi Pertanian', 'Situs resmi Pustaka yang berisi inforamsi tentang Publikasi, teknologi tepat guna serta informasi bagi Pustakawan', 'http://www.pustaka-deptan.go.id'),
(4, 'BPS', 'Situs resmi Badan Pusat Statistik ', 'http://www.bps.go.id'),
(5, 'GOOGLE', 'Situs penelusur infomasi nomor wahid di Dunia', 'http://www.google.go.id'),
(6, 'Mail Server Badan Litbang Pertanian', 'Webmail bagi lembaga dan staff di lingkungan Badan litbang Pertanian, untuk informasi lebih lanjut bisa menghubungi administrator maildi sekretariat Badan Litbang Pertanian', 'http://mail.litbang.deptan.go.id');

-- --------------------------------------------------------

--
-- Table structure for table `login_session`
--

CREATE TABLE `login_session` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_session`
--

INSERT INTO `login_session` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'admin', 'perpustakaan', 'admin'),
(2, 'User', 'user', 'user', 'user'),
(8, 'Andhika Maulana Effendi', 'Ezio', 'mantul', 'admin'),
(10, 'Zaki Adyatma', 'zaki', 'mantap', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menuadmin`
--

CREATE TABLE `menuadmin` (
  `menuID` int(11) NOT NULL,
  `menu` varchar(75) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `teks` text NOT NULL,
  `gambar` varchar(75) NOT NULL,
  `link` varchar(75) NOT NULL,
  `add` varchar(75) NOT NULL,
  `edit` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuadmin`
--

INSERT INTO `menuadmin` (`menuID`, `menu`, `judul`, `teks`, `gambar`, `link`, `add`, `edit`) VALUES
(1, 'Home', 'Home', 'home', 'images/opac.jpg', 'admin.php', '', ''),
(2, 'Menu Utama', 'Menu Utama', 'Halaman administrator untuk mengelola informasi pada menu utama layanan elektronis Perpustakaan UK/UPT lingkup Badan litbang Pertanian', 'images/menuutama.jpg', 'menuutama.php', 'menuutama-add.php', 'menuutama-edit.php'),
(5, 'Jurnal Dilanggan', 'Jurnal Dilanggan', 'informasi dan link ke jurnal yang dilanggan oleh PUSTAKA baik secara online maupun offline', 'images/online.jpg', 'adminonline.php', 'adminonline-add.php', 'adminonline-edit.php'),
(6, 'VCD Teknologi Pertanian', 'KOLEKSI VCD TEKNOLOGI PERTANIAN', 'Kumpulan koleksi VCD teknologi pertanian tepat guna', 'images/vcd.jpg', 'adminvcd.php', 'adminvcd-add.php', 'adminvcd-edit.php'),
(7, 'Daftar Link', 'DAFTAR LINK KE SITUS WEB TERKAIT', 'Berisi daftar link situs web ke sejumlah unit kerja terkait', 'images/link.jpg', 'adminlink.php', 'adminlink-add.php', 'adminlink-edit.php'),
(9, 'Data Pengunjung', 'Data Pengunjung', 'Halaamn untuk melihat rekapitulasi pengunjung layanan elektronis perpustakaan', 'images/bukutamu.jpg', 'bukutamu.php', '', ''),
(10, 'Logout', 'Logout', 'Keluar dari halaman administrator layanan elektronis Perpustakaan', 'images/logout.jpg', 'logout.php', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `onlineID` int(11) NOT NULL,
  `Online` varchar(150) NOT NULL,
  `text` text NOT NULL,
  `gambar` varchar(75) NOT NULL,
  `link` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`onlineID`, `Online`, `text`, `gambar`, `link`) VALUES
(1, 'Science Direct', 'ScienceDirect merupakan penyedia jurnal elektronis yang dilanggan oleh PUSTAKA mulai tahun 2007. Penambahan penyedia jurnal elektronis ini dimaksudkan untuk memperkaya referensi pengguna khususnya peneliti litbang pertanian dengan jurnal-jurnal yang berkualitas.\r\n\r\nUntuk dapat mengakses informasi yang tersedia di PUSTAKA, pengguna disediakan dua jenis layanan, yaitu layanan dengan langsung ke PUSTAKA kemudian melakukan penelusuran sendiri ataupun dengan mengunjungi perpustakaan salah satu UK/UPT lingkup Badan Litbang Pertanian yang menyediakan fasilitas penelusuran lewat internet.', 'images/sciencedirect.jpg', 'http://www.sciencedirect.com'),
(2, 'Proquest', 'Proquest merupakan salah satu penyedia publikasi elektronis yang dilanggan PUSTAKA .\r\n\r\nUntuk dapat mengakses informasi yang tersedia di PUSTAKA, pengguna disediakan dua jenis layanan, yaitu layanan dengan langsung ke PUSTAKA kemudian melakukan penelusuran sendiri ataupun dengan mengunjungi perpustakaan salah satu UK/UPT lingkup Badan Litbang Pertanian yang menydiakan fasilitas penelusuran lewat internet.', 'images/proquest.jpg', 'http://www.proquest.com/pqdweb'),
(3, 'LanTEEAL', 'TEEAL (The Essential Electronic Agricultural Library) adalah salah satu penyedia jurnal ilmiah dalam bidang pertanian baik dalam bentuk dokumen bibliografis maupun dokumen lengkap yang dikemas dalam media CD ROM dan harddisk (LanTEEAL).\r\n\r\nDalam mengakses dokumen lengkap yang ada dalam TEEAL pengguna harus datang ke PUSTAKA, karena sesuai dengan lisensi yang ada, dokumen lengkap hanya bisa diakses melalui jaringan lokal yang ada.', 'images/lanteeal.jpg', 'http://www.lanteeal.org');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawaiID` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `NIP` varchar(255) NOT NULL,
  `tempat_tanggal_lahir` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawaiID`, `nama`, `NIP`, `tempat_tanggal_lahir`, `agama`, `jabatan`, `status`, `keterangan`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'PROF. DR. DRS. SUBIYAKTO, MP', '195902151985031002/080072279', 'BANTUL, 15-02-1959', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'PROF. DR. DRS. SUBIYAKTO, MP_jpg', '2018-08-13 15:00:58', ''),
(2, 'IR. BUDI SANTOSO, MP', '195712121985031003/080071898', 'KERTOSONO, 12-12-1957', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'IR. BUDI SANTOSO, MP_jpg', '2018-08-13 15:00:58', ''),
(4, 'PROF.IR. NURINDAH, PHD                            ', '196106231986032001/080079343', 'BONDOWOSO, 23-06-1961              ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'PROF.IR. NURINDAH, PHD                            _jpg', '2018-08-15 14:10:35', ''),
(5, 'IR. I GUSTI AG AYU INDRAYANI, MP                  ', '195911201986032002/080079591', 'DENPASAR, 20-11-1959               ', 'Hindu', 'PENELITI UTAMA                          ', 'Hadir', '', 'IR. I GUSTI AG AYU INDRAYANI, MP                  _jpg', '2018-08-15 14:10:35', ''),
(6, 'DR. IR. BAMBANG HELIYANTO, MSC                    ', '196206131986031003/         ', 'SURABAYA, 13-06-1962               ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'DR. IR. BAMBANG HELIYANTO, MSC                    _jpg', '2018-08-15 14:10:35', ''),
(7, 'IR. FITRININGDYAH TK., MS                         ', '195904241984032001/080069912', 'MADIUN, 24-04-1959                 ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'IR. FITRININGDYAH TK., MS                         _jpg', '2018-08-15 14:10:35', ''),
(8, 'IR. JOKO HARTONO                                  ', '195901311983031002/080067222', 'JEMBER, 31-01-1959                 ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'IR. JOKO HARTONO                                  _jpg', '2018-08-15 14:10:35', ''),
(9, 'DR. IR. RULLY DYAH PURWATI, MPHIL                 ', '195805021985032002/080072489', 'TULUNGAGUNG, 02-05-1958            ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'DR. IR. RULLY DYAH PURWATI, MPHIL                 _jpg', '2018-08-15 14:10:35', ''),
(10, 'IR. ANIK HERWATI, MP                              ', '196201171986032001/080078190', 'MALANG, 17-01-1962                 ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'IR. ANIK HERWATI, MP                              _jpg', '2018-08-15 14:10:35', ''),
(11, 'IR. DJAJADI, M.SC.PHD                             ', '196102141986031001/080079032', 'MALANG, 14-02-1961                 ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'IR. DJAJADI, M.SC.PHD                             _jpg', '2018-08-15 14:10:35', ''),
(12, 'DRS. DWI ADI SUNARTO, MP                          ', '196510221993031001/080113922', 'MALANG, 22-10-1965                 ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'DRS. DWI ADI SUNARTO, MP                          _jpg', '2018-08-15 14:10:35', ''),
(13, 'IR. TITIEK YULIANTI, MAG,SC.PHD                   ', '196107201985032002/080072280', 'PASURUAN, 20-07-1961               ', 'Islam', 'PENELITI UTAMA                          ', 'Hadir', '', 'IR. TITIEK YULIANTI, MAG,SC.PHD                   _jpg', '2018-08-15 14:10:35', ''),
(14, 'DR.IR. DJUMALI, MP                                ', '196211261987031001/080084847', 'LAMONGAN, 26-11-1962               ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'DR.IR. DJUMALI, MP                                _jpg', '2018-08-15 14:10:36', ''),
(15, 'IR. UNTUNG SETYOBUDI, MP                          ', '195604121989031002/080098190', 'CILACAP, 12-04-1956                ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR. UNTUNG SETYOBUDI, MP                          _jpg', '2018-08-15 14:10:36', ''),
(16, 'IR. PRIMA DIARINI RIAJAYA, M.PHIL                 ', '196308161989032001/080099330', 'SUMENEP, 16-08-1963                ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR. PRIMA DIARINI RIAJAYA, M.PHIL                 _jpg', '2018-08-15 14:10:36', ''),
(17, 'IR. MOCHAMMAD SHOLEH                              ', '196304171989031002/080099328', 'PASURUAN, 17-04-1963               ', 'Islam', 'PENGUMPUL DAN PENGOLAH DATA             ', 'Hadir', '', '', '2018-08-15 14:10:36', ''),
(18, 'DR.IR. BUDI HARIYONO, MP                          ', '196309121989031001/080098175', 'JAKARTA TIMUR, 12-09-1963          ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'DR.IR. BUDI HARIYONO, MP                          _jpg', '2018-08-15 14:10:36', ''),
(19, 'IR. TEGER BASUKI, MP                              ', '195502191982031002/080056918', 'SIDOARJO, 19-02-1955               ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR. TEGER BASUKI, MP                              _jpg', '2018-08-15 14:10:36', ''),
(20, 'IR. FATKHUR ROCHMAN                               ', '196202021985031004/080071239', 'MALANG, 02-02-1962                 ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR. FATKHUR ROCHMAN                               _jpg', '2018-08-15 14:10:36', ''),
(21, 'IR. RR. ERNA NURDJAJATI, M.SC                     ', '196409031990032001/080101538', 'YOGYAKARTA, 03-09-1964             ', 'Islam', 'KEPALA SUB BAGIAN TATA USAHA            ', 'Hadir', '', 'IR. RR. ERNA NURDJAJATI, M.SC                     _jpg', '2018-08-15 14:10:36', ''),
(22, 'DR.IR. SESANTI BASUKI, M.PHIL                     ', '196305231989032001/080098387', 'SURABAYA, 23-05-1963               ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'DR.IR. SESANTI BASUKI, M.PHIL                     _jpg', '2018-08-15 14:10:36', ''),
(23, 'DR. DRS. MARJANI, MP                              ', '196208181987031001/080083344', 'BLITAR, 18-08-1962                 ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'DR. DRS. MARJANI, MP                              _jpg', '2018-08-15 14:10:36', ''),
(24, 'IR. CECE SUHARA, MP                               ', '196401231992031002/080109622', 'CIAMIS, 23-01-1964                 ', 'Islam', 'KEPALA SEKSI PELAYANAN TEKNIK           ', 'Hadir', '', 'IR. CECE SUHARA, MP                               _jpg', '2018-08-15 14:10:36', ''),
(25, 'IR GATOT SUHARTO ABDUL FATAH, MP                  ', '196512191994031001/         ', 'MALANG, 19-12-1965                 ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR GATOT SUHARTO ABDUL FATAH, MP                  _jpg', '2018-08-15 14:10:36', ''),
(26, 'MOCHAMMAD MACHFUD, S.IP                           ', '196112061985031004/080070939', 'MALANG, 06-12-1961                 ', 'Islam', 'ARSIPARIS AHLI MADYA                    ', 'Hadir', '', 'MOCHAMMAD MACHFUD, S.IP                           _jpg', '2018-08-15 14:10:36', ''),
(27, 'SUJAK, SP                                         ', '196409111992031001/080107600', 'MALANG, 11-09-1964                 ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'SUJAK, SP                                         _jpg', '2018-08-15 14:10:36', ''),
(28, 'IR. LESTARI                                       ', '196109221987031002/080084537', 'MALANG, 22-09-1961                 ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR. LESTARI                                       _jpg', '2018-08-15 14:10:36', ''),
(29, 'DR. IR. MOHAMMAD CHOLID, M.SC                     ', '196312161989031003/080100280', 'PROBOLINGGO, 16-12-1963            ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'DR. IR. MOHAMMAD CHOLID, M.SC                     _jpg', '2018-08-15 14:10:36', ''),
(30, 'IR. SRI YULAIKAH                                  ', '196106171993032002/080112421', 'BLITAR, 17-06-1961                 ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR. SRI YULAIKAH                                  _jpg', '2018-08-15 14:10:36', ''),
(31, 'IR. MOCH. MACHFUD, MP                             ', '196005251989031001/080099331', 'SURABAYA, 25-05-1960               ', 'Islam', 'KEPALA SEKSI JASA PENELITIAN            ', 'Hadir', '', 'IR. MOCH. MACHFUD, MP                             _jpg', '2018-08-15 14:10:36', ''),
(32, 'DRA. ESTI SUNARYUNI                               ', '196206171985032001/080072382', 'BANYUMAS, 17-06-1962               ', 'Islam', 'PENGELOLA BAHAN PUBLIKASI HASIL LITBANG ', 'Hadir', '', 'DRA. ESTI SUNARYUNI                               _jpg', '2018-08-15 14:10:36', ''),
(33, 'IR. SRI MULYANINGSIH                              ', '196305131992032001/080109683', 'MALANG, 13-05-1963                 ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'IR. SRI MULYANINGSIH                              _jpg', '2018-08-15 14:10:36', ''),
(34, 'IR. NUNUNG SUDIBYO                                ', '196408091992031001/080110586', 'BOYOLALI, 09-08-1964               ', 'Islam', 'PENGADMINISTRASI KEUANGAN               ', 'Hadir', '', 'IR. NUNUNG SUDIBYO                                _jpg', '2018-08-15 14:10:36', ''),
(35, 'PRIYONO, SP                                       ', '196312011991021001/080103596', 'BOJONEGORO, 01-12-1963             ', 'Islam', 'PENGELOLA LAHAN PRAKTEK                 ', 'Hadir', '', 'PRIYONO, SP                                       _jpg', '2018-08-15 14:10:36', ''),
(36, 'SUNARNO, S.IP                                     ', '196008161983031004/080067221', 'KEDIRI, 16-08-1960                 ', 'Islam', 'PENGADMINISTRASI SARANA DAN PRASARANA PE', 'Hadir', '', '', '2018-08-15 14:10:36', ''),
(37, 'SUHARTONO, SP                                     ', '196107171983031003/080066094', 'MALANG, 17-07-1961                 ', 'Islam', 'PENYIAP BAHAN RENCANA KEBUTUHAN SARANA D', 'Hadir', '', '', '2018-08-15 14:10:36', ''),
(38, 'SUWONO                                            ', '196210031986031001/080076479', 'PATI, 03-10-1962                   ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', '', '2018-08-15 14:10:36', ''),
(39, 'LIA VERONA, SE, MP                                ', '197807282001122001/080130750', 'PALEMBANG, 28-07-1978              ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'LIA VERONA, SE, MP                                _jpg', '2018-08-15 14:10:36', ''),
(40, 'EDI PURLANI, SP                                   ', '196206221987031002/080084845', 'TULUNGAGUNG, 22-06-1962            ', 'Islam', 'PENGELOLA LAHAN PRAKTEK                 ', 'Hadir', '', '', '2018-08-15 14:10:36', ''),
(41, 'SARTANA, S.SOS                                    ', '196305061985091001/260005302', 'KULON PROGO, 06-05-1963            ', 'Islam', 'PENGELOLA DATA KEPEGAWAIAN              ', 'Hadir', '', 'SARTANA, S.SOS                                    _jpg', '2018-08-15 14:10:36', ''),
(42, 'MUCHAMAD RIFA\'I, SP                               ', '196307171992031002/080107598', 'MALANG, 17-07-1963                 ', 'Islam', 'KOORDINATOR LAPANGAN                    ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(43, 'IR. SUPRIYONO                                     ', '196605131993031001/080114868', 'JATIREJO, 13-05-1966               ', 'Islam', 'PENELITI MADYA                          ', 'Hadir', '', 'IR. SUPRIYONO                                     _jpg', '2018-08-15 14:10:37', ''),
(44, 'NURUL HIDAYAH, SP. MSI                            ', '197912302003122001/080133891', 'REMBANG, 30-12-1979                ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'NURUL HIDAYAH, SP. MSI                            _jpg', '2018-08-15 14:10:37', ''),
(45, 'HADI SANTOSO                                      ', '196111021983031003/080066098', 'MALANG, 02-11-1961                 ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(46, 'SADTA YOGA, SE                                    ', '196110091986031002/080074908', 'SEMARANG, 09-10-1961               ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(47, 'HERI ISTIANA, SP                                  ', '196503121991021001/080103599', 'BLITAR, 12-03-1965                 ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', 'HERI ISTIANA, SP                                  _jpg', '2018-08-15 14:10:37', ''),
(48, 'HADI SUNARKO, SE                                  ', '196612251993031002/080113066', 'MALANG, 25-12-1966                 ', 'Islam', 'BENDAHARAWAN GAJI                       ', 'Hadir', '', 'HADI SUNARKO, SE                                  _jpg', '2018-08-15 14:10:37', ''),
(49, 'SUHADI, SP                                        ', '196609301992031001/080107601', 'SEMPU-BANYUWANGI, 30-09-1966       ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', 'SUHADI, SP                                        _jpg', '2018-08-15 14:10:37', ''),
(50, 'SRI MULYANI                                       ', '196811201996022001/080120167', 'MADIUN, 20-11-1968                 ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', 'SRI MULYANI                                       _jpg', '2018-08-15 14:10:37', ''),
(51, 'DUDUT SUNARDI, SP                                 ', '196303311989031001/080098865', 'MALANG, 31-03-1963                 ', 'Islam', 'PENGELOLA LAHAN PRAKTEK                 ', 'Hadir', '', 'DUDUT SUNARDI, SP                                 _jpg', '2018-08-15 14:10:37', ''),
(52, 'SUTRISNO, SP                                      ', '196107061998031001/080122489', 'SITUBONDO, 06-07-1961              ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(53, 'EKA SETYAWATI, SE                                 ', '196512252006042007/080136295', 'MALANG, 25-12-1965                 ', 'Islam', 'PENATA USAHA PENERIMAAN BARANG          ', 'Hadir', '', 'EKA SETYAWATI, SE                                 _jpg', '2018-08-15 14:10:37', ''),
(54, 'BAMBANG SWASSONO WIDODO, SH                       ', '196512192006041008/080136296', 'MALANG, 19-12-1965                 ', 'Islam', 'PENGADMINISTRASI UMUM KEPEGAWAIAN       ', 'Hadir', '', 'BAMBANG SWASSONO WIDODO, SH                       _jpg', '2018-08-15 14:10:37', ''),
(55, 'SRI MUNTIASIH, S.SOS                              ', '197004012006042006/080136149', 'KEDIRI, 01-04-1970                 ', 'Islam', 'PENGADMINISTRASI KEUANGAN               ', 'Hadir', '', 'SRI MUNTIASIH, S.SOS                              _jpg', '2018-08-15 14:10:37', ''),
(56, 'DWI WAHYU PRIHATI, BA                             ', '196010291986032002/080079345', 'MALANG, 29-10-1960                 ', 'Islam', 'PENGADMINISTRASI KEPEGAWAIAN UMUM       ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(57, 'NUR ASBANI, SP.MSI                                ', '197107051999031001/710031791', 'YOGYAKARTA, 05-07-1971             ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'NUR ASBANI, SP.MSI                                _jpg', '2018-08-15 14:10:37', ''),
(58, 'SRI ADIKADARSIH, SP.MSC                           ', '198007292005012001/080134785', 'BANTUL, 29-07-1980                 ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'SRI ADIKADARSIH, SP.MSC                           _jpg', '2018-08-15 14:10:37', ''),
(59, 'MUDAWI                                            ', '196212311991031003/080104388', 'SITUBONDO, 31-12-1962              ', 'Islam', 'PEMEGANG KAS                            ', 'Hadir', '', 'MUDAWI                                            _jpg', '2018-08-15 14:10:37', ''),
(60, 'DEWI UTARI, SP                                    ', '197209132006042015/080136150', 'NGANJUK, 13-09-1972                ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'DEWI UTARI, SP                                    _jpg', '2018-08-15 14:10:37', ''),
(61, 'INDRIATI, SP                                      ', '196509111994022001/080115306', 'MALANGSARI, 11-09-1965             ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(62, 'WIDJI PURWANTO, SE                                ', '196110171991031002/080107166', 'PASURUAN, 17-10-1961               ', 'Islam', 'PENGADMINISTRASI KEUANGAN               ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(63, 'RULY HAMIDA, SSI.MSC                              ', '198409182011012013/         ', 'SURABAYA, 18-09-1984               ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'RULY HAMIDA, SSI.MSC                              _jpg', '2018-08-15 14:10:37', ''),
(64, 'SULIS NUR HIDAYATI, SP.MP                         ', '197406042008012009/080138545', 'KEDIRI, 04-06-1974                 ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'SULIS NUR HIDAYATI, SP.MP                         _jpg', '2018-08-15 14:10:37', ''),
(65, 'MOHAMAD SAFI\'I                                    ', '196306091994031001/080117408', 'SITUBONDO, 09-06-1963              ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(66, 'IMAM SANTOSO, SP                                  ', '196608291998031001/080122488', 'GRESIK, 29-08-1966                 ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', 'IMAM SANTOSO, SP                                  _jpg', '2018-08-15 14:10:37', ''),
(67, 'ABDURRAKHMAN, SP                                  ', '196507032001121001/080130434', 'TULUNGAGUNG, 03-07-1965            ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'ABDURRAKHMAN, SP                                  _jpg', '2018-08-15 14:10:37', ''),
(68, 'MOCHAMAD SOHRI, SP                                ', '197502152005011001/080135076', 'LUMAJANG, 15-02-1975               ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', 'MOCHAMAD SOHRI, SP                                _jpg', '2018-08-15 14:10:37', ''),
(69, 'ELDA NURNASARI, S.SI.MP                           ', '198211222008012019/080138694', 'SURABAYA, 22-11-1982               ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'ELDA NURNASARI, S.SI.MP                           _jpg', '2018-08-15 14:10:37', ''),
(70, 'AHMAD DHIAUL KHULUQ, S.TP. MP                     ', '198307202011011008/         ', 'JOMBANG, 20-07-1983                ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'AHMAD DHIAUL KHULUQ, S.TP. MP                     _jpg', '2018-08-15 14:10:37', ''),
(71, 'IMPRON SADIKIN, SP                                ', '196904262005011001/080135115', 'TULUNGAGUNG, 26-04-1969            ', 'Islam', 'TEKNISI LITKAYASA PENYELIA              ', 'Hadir', '', 'IMPRON SADIKIN, SP                                _jpg', '2018-08-15 14:10:37', ''),
(72, 'HERI PRABOWO, S.SI.MSC                            ', '198402162008011006/080138561', 'SLEMAN, 16-02-1984                 ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'HERI PRABOWO, S.SI.MSC                            _jpg', '2018-08-15 14:10:37', ''),
(73, 'TANTRI DYAH AYU ANGGRAENI, SP.MSC                 ', '198010022009012003/         ', 'MALANG, 02-10-1980                 ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'TANTRI DYAH AYU ANGGRAENI, SP.MSC                 _jpg', '2018-08-15 14:10:37', ''),
(74, 'TITIK DARMIATI                                    ', '196306021986032022/080075338', 'KEDIRI, 02-06-1963                 ', 'Islam', 'VERIFIKATOR KEUANGAN                    ', 'Hadir', '', 'TITIK DARMIATI                                    _jpg', '2018-08-15 14:10:37', ''),
(75, 'KUKUH SUDIARTO                                    ', '196202111985031003/080072672', 'PATI, 11-02-1962                   ', 'Katholik', 'TEKNISI PENELITIAN DAN PEREKAYASAAN     ', 'Hadir', '', '', '2018-08-15 14:10:37', ''),
(76, 'FARIDA RAHAYU, MP                                 ', '197704222008012010/080138313', 'SURABAYA, 22-04-1977               ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'FARIDA RAHAYU, MP                                 _jpg', '2018-08-15 14:10:37', ''),
(77, 'AGUS SALIM                                        ', '196302201988031001/080095682', 'MALANG, 20-02-1963                 ', 'Islam', 'BENDAHARAWAN KHUSUS PENERIMAAN          ', 'Hadir', '', 'AGUS SALIM                                        _jpg', '2018-08-15 14:10:38', ''),
(78, 'MOCHAMAD NURKHOLIM                                ', '196010111990031002/080102423', 'MALANG, 11-10-1960                 ', 'Islam', 'PENGELOLA PERALATAN DAN PERLENGKAPAN    ', 'Hadir', '', '', '2018-08-15 14:10:38', ''),
(79, 'SRI MARTINI RAHAYUNINGSIH                         ', '196303181991022001/080103600', 'MAGETAN, 18-03-1963                ', 'Islam', 'PEMBUAT DAFTAR GAJI                     ', 'Hadir', '', 'SRI MARTINI RAHAYUNINGSIH                         _jpg', '2018-08-15 14:10:38', ''),
(80, 'PARNIDI, M.SI                                     ', '198203042011011011/         ', 'NGAWI, 04-03-1982                  ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'PARNIDI, M.SI                                     _jpg', '2018-08-15 14:10:38', ''),
(81, 'ASIYATI                                           ', '196406281992032002/080111244', 'SITUBONDO, 28-06-1964              ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', 'ASIYATI                                           _jpg', '2018-08-15 14:10:38', ''),
(82, 'YUSNU HARYONO                                     ', '196106141993031001/080112219', 'MALANG, 14-06-1961                 ', 'Islam', 'PENGELOLA BAHAN PUBLIKASI HASIL LITBANG ', 'Hadir', '', '', '2018-08-15 14:10:38', ''),
(83, 'RONI SYAPUTRA, SP                                 ', '198009172008011006/080138381', 'GANTING, 17-09-1980                ', 'Islam', 'PENELITI MUDA                           ', 'Hadir', '', 'RONI SYAPUTRA, SP                                 _jpg', '2018-08-15 14:10:38', ''),
(84, 'ENDANG FATMAWATI                                  ', '196107111993032001/080112217', 'BOJONEGORO, 11-07-1961             ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', '', '2018-08-15 14:10:38', ''),
(85, 'SUDIRAN                                           ', '196206111993031001/080112216', 'BOJONEGORO, 11-06-1962             ', 'Islam', 'PENGADMINISTRASI KEPEGAWAIAN UMUM       ', 'Hadir', '', 'SUDIRAN                                           _jpg', '2018-08-15 14:10:38', ''),
(86, 'DIWANG HADI PARMONO                               ', '196507091991021001/080103602', 'BLITAR, 09-07-1965                 ', 'Islam', 'PENGELOLA LAHAN PRAKTEK                 ', 'Hadir', '', 'DIWANG HADI PARMONO                               _jpg', '2018-08-15 14:10:38', ''),
(87, 'SUCIPTO                                           ', '196306011993031001/080113067', 'MALANG, 01-06-1963                 ', 'Islam', 'PENGUMPUL DAN PENGOLAH DATA             ', 'Hadir', '', '', '2018-08-15 14:10:38', ''),
(88, 'ANDRIAS SUGIANTORO                                ', '196806151994021001/080115304', 'MALANG, 15-06-1968                 ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', 'ANDRIAS SUGIANTORO                                _jpg', '2018-08-15 14:10:38', ''),
(89, 'KURNIA                                            ', '196802101993031002/080114875', 'SUMEDANG, 10-02-1968               ', 'Islam', 'TEKNISI PENELITIAN DAN PEREKAYASAAN     ', 'Hadir', '', 'KURNIA                                            _jpg', '2018-08-15 14:10:38', ''),
(90, 'APRILIA RIDHAWATI, MP                             ', '198304182014032001/         ', 'MALANG, 18-04-1983                 ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'APRILIA RIDHAWATI, MP                             _jpg', '2018-08-15 14:10:38', ''),
(91, 'TRI SETYOWATI                                     ', '196410181994032002/080115844', 'PATI, 18-10-1964                   ', 'Islam', 'PEMEGANG KAS                            ', 'Hadir', '', 'TRI SETYOWATI                                     _jpg', '2018-08-15 14:10:38', ''),
(92, 'ISNI TRI LESTARI, S.I.KOM                         ', '198503112009122003/         ', 'KLATEN, 11-03-1985                 ', 'Islam', 'PRANATA HUMAS PERTAMA                   ', 'Hadir', '', 'ISNI TRI LESTARI, S.I.KOM                         _jpg', '2018-08-15 14:10:38', ''),
(93, 'YOGA ANGANGGA YOGI, S.TP                          ', '198509212009121003/         ', 'TUBAN, 21-09-1985                  ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'YOGA ANGANGGA YOGI, S.TP                          _jpg', '2018-08-15 14:10:38', ''),
(94, 'AGNESTIYAN PUTRI ILMAWATI, SE                     ', '198708082009122003/198708082', 'MADIUN, 08-08-1987                 ', 'Islam', 'ANALIS KEPEGAWAIAN AHLI PERTAMA         ', 'Hadir', '', 'AGNESTIYAN PUTRI ILMAWATI, SE                     _jpg', '2018-08-15 14:10:38', ''),
(95, 'ZAINUL ARIFIN, DRS                                ', '196704112007011001/080137175', 'MALANG, 11-04-1967                 ', 'Islam', 'PENGADMINISTRASI KEUANGAN               ', 'Hadir', '', 'ZAINUL ARIFIN, DRS                                _jpg', '2018-08-15 14:10:38', ''),
(96, 'MIATUN, SP                                        ', '197210212007012001/080137173', 'BLITAR, 21-10-1972                 ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'MIATUN, SP                                        _jpg', '2018-08-15 14:10:38', ''),
(97, 'MAT SIRAT                                         ', '196412061986031001/080075978', 'MALANG, 06-12-1964                 ', 'Islam', 'PRAMU GUDANG                            ', 'Hadir', '', 'MAT SIRAT                                         _jpg', '2018-08-15 14:10:38', ''),
(98, 'TAUFIQ HIDAYAT RS, M.SI                           ', '198710292015031001/         ', 'BANTAENG, 29-10-1987               ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'TAUFIQ HIDAYAT RS, M.SI                           _jpg', '2018-08-15 14:10:38', ''),
(99, 'MOH. ZAINI                                        ', '196606041997031001/080121023', 'MALANG, 04-06-1966                 ', 'Islam', 'SEKRETARIS                              ', 'Hadir', '', 'MOH. ZAINI                                        _jpg', '2018-08-15 14:10:38', ''),
(100, 'SLAMET                                            ', '196904262006041006/080136156', 'NGANJUK, 26-04-1969                ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'SLAMET                                            _jpg', '2018-08-15 14:10:38', ''),
(101, 'NUNIK EKA DIANA, SP                               ', '197802192008012010/080138574', 'MALANG, 19-02-1978                 ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'NUNIK EKA DIANA, SP                               _jpg', '2018-08-15 14:10:38', ''),
(102, 'KRISTIANA SRI WIJAYANTI, SP.MP                    ', '198212102009122006/         ', 'BLITAR, 10-12-1982                 ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'KRISTIANA SRI WIJAYANTI, SP.MP                    _jpg', '2018-08-15 14:10:38', ''),
(103, 'MALA MURIANINGRUM, SP                             ', '197810042011012007/         ', 'CIREBON, 04-10-1978                ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'MALA MURIANINGRUM, SP                             _jpg', '2018-08-15 14:10:38', ''),
(104, 'SUPRIYADI, SP                                     ', '197908252011011003/         ', 'BANJARNEGARA, 25-08-1979           ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'SUPRIYADI, SP                                     _jpg', '2018-08-15 14:10:38', ''),
(105, 'SUMINAR DIYAH NUGRAHENI, S.TP                     ', '198304112011012009/         ', 'TEMANGGUNG, 11-04-1983             ', 'Islam', 'PENELITI PERTAMA                        ', 'Hadir', '', 'SUMINAR DIYAH NUGRAHENI, S.TP                     _jpg', '2018-08-15 14:10:38', ''),
(106, 'ARINI HIDAYATI JAMIL, SP                          ', '198902242014032001/         ', 'KEBUMEN, 24-02-1989                ', 'Islam', 'PENELITI                                ', 'Hadir', '', 'ARINI HIDAYATI JAMIL, SP                          _jpg', '2018-08-15 14:10:38', ''),
(107, 'DWI SULISTYOWATI, S.AP                            ', '197008112006042011/080136006', 'MALANG, 11-08-1970                 ', 'Islam', 'PENGADMINISTRASI KEUANGAN               ', 'Hadir', '', 'DWI SULISTYOWATI, S.AP                            _jpg', '2018-08-15 14:10:38', ''),
(108, 'SUYATNO                                           ', '196406152006041013/080136163', 'BOJONEGORO, 15-06-1964             ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'SUYATNO                                           _jpg', '2018-08-15 14:10:38', ''),
(109, 'STEPANIA KRISTIANI DA SILVA                       ', '196508141998032001/080125067', 'SIKKA, 14-08-1965                  ', 'Islam', 'OPERATOR TEKOMUNIKASI                   ', 'Hadir', '', 'STEPANIA KRISTIANI DA SILVA                       _jpg', '2018-08-15 14:10:38', ''),
(110, 'DIAN HARIYANTO                                    ', '196808072006041025/080136005', 'MEDAN, 07-08-1968                  ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'DIAN HARIYANTO                                    _jpg', '2018-08-15 14:10:38', ''),
(111, 'SUBAKAT                                           ', '196304121998031001/080122424', 'TUBAN, 12-04-1963                  ', 'Islam', 'CARAKA                                  ', 'Hadir', '', 'SUBAKAT                                           _jpg', '2018-08-15 14:10:38', ''),
(112, 'FITRI SETIA PUSPARINI, A.MD                       ', '198402232009122003/         ', 'JOMBANG, 23-02-1984                ', 'Islam', 'ARSIPARIS TERAMPIL PELAKSANA LANJUT     ', 'Hadir', '', 'FITRI SETIA PUSPARINI, A.MD                       _jpg', '2018-08-15 14:10:38', ''),
(113, 'LAILI RACHMAWATI, SP                              ', '197012242006042009/080136356', 'MALANG, 24-12-1970                 ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', 'LAILI RACHMAWATI, SP                              _jpg', '2018-08-15 14:10:38', ''),
(114, 'DEWI RAHAYU, SP                                   ', '197504032007012001/080137179', 'KARANGPLOSO, MALANG, 03-04-1975    ', 'Islam', 'BENDAHARAWAN RUTIN                      ', 'Hadir', '', 'DEWI RAHAYU, SP                                   _jpg', '2018-08-15 14:10:38', ''),
(115, 'GARUSTI, S.TP                                     ', '199010052018012001/         ', 'BANTUL, 05-10-1990                 ', 'Islam', 'CALON PENELITI                          ', 'Hadir', '', 'GARUSTI, S.TP                                     _jpeg', '2018-08-15 14:10:38', ''),
(116, 'SUHADI                                            ', '196505022007011001/080137168', 'TRENGGALEK, 02-05-1965             ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'SUHADI                                            _jpg', '2018-08-15 14:10:38', ''),
(117, 'MOCHAMAD UNTUNG                                   ', '196202091993031001/080115033', 'MALANG, 09-02-1962                 ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', '', '2018-08-15 14:10:38', ''),
(118, 'WIWIK RAHAYU                                      ', '196305272007012006/080137569', 'SITUBONDO, 27-05-1963              ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'WIWIK RAHAYU                                      _jpg', '2018-08-15 14:10:39', ''),
(119, 'ABDUL HARIS                                       ', '197006042006041012/080136157', 'BOJONEGORO, 04-06-1970             ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'ABDUL HARIS                                       _jpg', '2018-08-15 14:10:39', ''),
(120, 'HARIYANTO                                         ', '196906272007011001/080137188', 'TRIGONCO, SITUBONDO, 27-06-1969    ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA             ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(121, 'HARIYANTO                                         ', '196804102007011001/080137200', 'SUMBERANYAR, 10-04-1968            ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(122, 'SUCIPTO                                           ', '196809252007011001/080137577', 'PAL.,KANOR,BOJONEGORO, 25-09-1968  ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(123, 'SYAMSUL ARIFIN                                    ', '197312202007011002/080137800', 'ASEMBAGUS, SITUBONDO, 20-12-1973   ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(124, 'NURIL HIDAYAH                                     ', '197801142007012001/080137164', 'LUMAJANG, 14-01-1978               ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA LANJUTA     ', 'Hadir', '', 'NURIL HIDAYAH                                     _jpg', '2018-08-15 14:10:39', ''),
(125, 'NUR MUSTOFA                                       ', '196309232002121001/080132594', 'MALANG, 23-09-1963                 ', 'Islam', 'PENGEMUDI (SUPIR)                       ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(126, 'BACHTIAR ACHMAD RUDIYANTO                         ', '196206132006041003/080136057', 'SITUBONDO, 13-06-1962              ', 'Islam', 'PENGEMUDI (SUPIR)                       ', 'Hadir', '', 'BACHTIAR ACHMAD RUDIYANTO                         _jpg', '2018-08-15 14:10:39', ''),
(127, 'SETYO HEROWATI                                    ', '196701172006042009/080136167', 'PURWOREJO, 17-01-1967              ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', 'SETYO HEROWATI                                    _jpg', '2018-08-15 14:10:39', ''),
(128, 'SITI MARIYAH                                      ', '196801052006042015/080136164', 'PATI, 05-01-1968                   ', 'Islam', 'PENGADMINISTRASI KEPEGAWAIAN UMUM       ', 'Hadir', '', 'SITI MARIYAH                                      _jpg', '2018-08-15 14:10:39', ''),
(129, 'AGUS SUWISNU                                      ', '196401032006041006/080136361', 'MALANG, 03-01-1964                 ', 'Islam', 'PENGEMUDI (SUPIR)                       ', 'Hadir', '', 'AGUS SUWISNU                                      _jpg', '2018-08-15 14:10:39', ''),
(130, 'SUTOMO                                            ', '196604012007011001/080137166', 'PASIRIAN, 01-04-1966               ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA             ', 'Hadir', '', 'SUTOMO                                            _jpg', '2018-08-15 14:10:39', ''),
(131, 'SOKEH                                             ', '197004142006041019/080136653', 'MALANG, 14-04-1970                 ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'SOKEH                                             _jpg', '2018-08-15 14:10:39', ''),
(132, 'UMI KULSUM                                        ', '196704262006042009/080136652', 'JATIROTO, 26-04-1967               ', 'Islam', 'PRAMU DOKUMEN                           ', 'Hadir', '', 'UMI KULSUM                                        _jpg', '2018-08-15 14:10:39', ''),
(133, 'HASANNUDIN, AMD                                   ', '198911152014031001/         ', 'BOGOR, 15-11-1989                  ', 'Islam', 'PENGELOLA LABORATORIUM                  ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(134, 'RIBUN                                             ', '196411071993031002/080114785', 'PATI, 07-11-1964                   ', 'Islam', 'OPERATOR TRAKTOR                        ', 'Hadir', '', 'RIBUN                                             _jpg', '2018-08-15 14:10:39', ''),
(135, 'MOCHAMMAD AFIFUDIN, A.MD                          ', '198602162015031001/         ', 'MALANG, 16-02-1986                 ', 'Islam', 'PENGELOLA LABORATORIUM                  ', 'Hadir', '', 'MOCHAMMAD AFIFUDIN, A.MD                          _jpg', '2018-08-15 14:10:39', ''),
(136, 'SYAIFUL BAHRI                                     ', '197412062007011001/080137648', 'ASEMBAGUS,SITUBONDO, 06-12-1974    ', 'Islam', 'PENGELOLA TEKNOLOGI INFORMASI           ', 'Hadir', '', 'SYAIFUL BAHRI                                     _jpg', '2018-08-15 14:10:39', ''),
(137, 'SRI HARDONO                                       ', '197111152007011002/080137830', 'MALANG, 15-11-1971                 ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'SRI HARDONO                                       _jpg', '2018-08-15 14:10:39', ''),
(138, 'ARIES SUNARTO                                     ', '197410242007011001/080137196', 'MALANG, 24-10-1974                 ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'ARIES SUNARTO                                     _jpg', '2018-08-15 14:10:39', ''),
(139, 'ERFAN DWI WAHYUDI                                 ', '197707122007011001/080137177', 'MALANG, 12-07-1977                 ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'ERFAN DWI WAHYUDI                                 _jpg', '2018-08-15 14:10:39', ''),
(140, 'ADI SUPOMO                                        ', '197706162007011001/080137181', 'MALANG, 16-06-1977                 ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'ADI SUPOMO                                        _jpg', '2018-08-15 14:10:39', ''),
(141, 'ANDI SUGMANA                                      ', '197501262007101001/080138730', 'BANYUPUTIH, SITUBONDO, 26-01-1975  ', 'Islam', 'PENGADMINISTRASI UMUM                   ', 'Hadir', '', 'ANDI SUGMANA                                      _jpg', '2018-08-15 14:10:39', ''),
(142, 'PURYONO                                           ', '196704042000031001/080128333', 'PATI, 04-04-1967                   ', 'Islam', 'TEKNISI PENELITIAN DAN PEREKAYASAAN     ', 'Hadir', '', 'PURYONO                                           _jpg', '2018-08-15 14:10:39', ''),
(143, 'MUNIR                                             ', '196904272006041009/080136173', 'MALANG, 27-04-1969                 ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'MUNIR                                             _jpg', '2018-08-15 14:10:39', ''),
(144, 'SUKARMAN                                          ', '196308262006041005/080136176', 'PROBOLINGGO, 26-08-1963            ', 'Islam', 'PEKARYA KEBUN RUMPUT PERTANIAN          ', 'Hadir', '', 'SUKARMAN                                          _jpg', '2018-08-15 14:10:39', ''),
(145, 'SUMADI                                            ', '196801092007011002/080138029', 'BOJONEGORO, 09-01-1968             ', 'Islam', 'TEKNISI LITKAYASA PELAKSANA             ', 'Hadir', '', 'SUMADI                                            _jpg', '2018-08-15 14:10:39', ''),
(146, 'RUSTAM                                            ', '196202101999031001/080128007', 'PATI, 10-02-1962                   ', 'Islam', 'PEKARYA KEBUN RUMPUT PERTANIAN          ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(147, 'TUKIMAN                                           ', '196304072007011001/080137351', 'TUBAN, 07-04-1963                  ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'TUKIMAN                                           _jpg', '2018-08-15 14:10:39', ''),
(148, 'MOCHAMAD MUCHDOR                                  ', '196406112007011001/080137308', 'PASURUAN, 11-06-1964               ', 'Islam', 'PENGEMUDI (SUPIR)                       ', 'Hadir', '', 'MOCHAMAD MUCHDOR                                  _jpg', '2018-08-15 14:10:39', ''),
(149, 'BUDI LASIYANTO                                    ', '198203172007011001/080137322', 'MALANG, 17-03-1982                 ', 'Islam', 'PEMEGANG KAS                            ', 'Hadir', '', 'BUDI LASIYANTO                                    _jpg', '2018-08-15 14:10:39', ''),
(150, 'SUJONO                                            ', '196108121998031001/080122425', 'BOJONEGORO, 12-08-1961             ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(151, 'SUWARTO                                           ', '196203052006041010/080136313', 'PROBOLINGGO, 05-03-1962            ', 'Islam', 'PEKARYA KEBUN RUMPUT PERTANIAN          ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(152, 'SUKARJO                                           ', '196808202007011001/080137317', 'SUMBEREJO, 20-08-1968              ', 'Islam', 'PENJAGA KEAMANAN                        ', 'Hadir', '', 'SUKARJO                                           _jpg', '2018-08-15 14:10:39', ''),
(153, 'SUNANDAR                                          ', '197510072007011001/080137318', 'SITUBONDO, 07-10-1975              ', 'Islam', 'PRAMU TAMU                              ', 'Hadir', '', 'SUNANDAR                                          _jpg', '2018-08-15 14:10:39', ''),
(154, 'SUNARDI                                           ', '196112062006041006/080135949', 'SITUBONDO, 06-12-1961              ', 'Islam', 'PEKARYA KEBUN RUMPUT PERTANIAN          ', 'Hadir', '', '', '2018-08-15 14:10:39', ''),
(155, 'SUJARI                                            ', '196503292006041005/080136182', 'MALANG, 29-03-1965                 ', 'Islam', 'PENGEMUDI (SUPIR)                       ', 'Hadir', '', 'SUJARI                                            _jpg', '2018-08-15 14:10:39', ''),
(156, 'MISENAN                                           ', '196511232006041004/080136395', 'LUMAJANG, 23-11-1965               ', 'Islam', 'PEKARYA KEBUN RUMPUT PERTANIAN          ', 'Hadir', '', '', '2018-08-15 14:10:40', ''),
(157, 'SUPRAB BANDARI                                    ', '197106032007011001/080137507', 'MALANG, 03-06-1971                 ', 'Islam', 'PEKARYA KEBUN RUMPUT PERTANIAN          ', 'Hadir', '', 'SUPRAB BANDARI                                    _jpg', '2018-08-15 14:10:40', ''),
(158, 'test', '', '', '', '', 'Cuti', 'Tidak Masuk', '', '2020-04-20 09:29:49', '');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `tamuID` int(11) NOT NULL,
  `pegawaiID` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `pekerjaan` varchar(75) DEFAULT NULL,
  `layanan` varchar(255) NOT NULL,
  `lembaga` text DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `topik` text DEFAULT NULL,
  `tanggal` varchar(75) DEFAULT NULL,
  `jam` varchar(75) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`tamuID`, `pegawaiID`, `nama`, `no_tlp`, `pekerjaan`, `layanan`, `lembaga`, `tujuan`, `topik`, `tanggal`, `jam`, `status`) VALUES
(2038, 58, 'abi', '1564566', 'PNS', 'Penyediaan Benih Sumber', 'balitkabi', 'test', 'test', '2021-07-28', '00:42:55', 'Sedang Berjalan'),
(2039, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-07-28', '00:22:38', 'Sedang Berjalan'),
(2040, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-07-28', '00:24:28', 'Sedang Berjalan'),
(2041, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-07-28', '00:27:49', 'Sedang Berjalan'),
(2042, 0, 'abi', 'bgkjgjk', 'PNS', 'Penyediaan Benih Sumber', 'balitkabi', 'beli benih', 'benih', '2021-07-28', '00:13:49', 'Sedang Berjalan'),
(2043, 0, 'shelly', '5235868', 'Mahasiswa', 'Konsultasi Teknologi', 'balitkabi', 'informasi PKL', 'PKL', '2021-08-10', '00:14:13', 'Sedang Berjalan'),
(2044, 0, 'shelly', '1564566', 'Mahasiswa', 'Konsultasi Teknologi', 'balitkabi', 'informasi PKL', 'PKL', '2021-08-23', '00:18:09', 'Sedang Berjalan'),
(2045, 0, 'shelly', '1564566', 'Mahasiswa', 'Konsultasi Teknologi', 'balitkabi', 'informasi PKL', 'PKL', '2021-08-23', '00:28:20', 'Sedang Berjalan'),
(2046, 1, 'Artdhe Nugroho', '082331877760', 'Swasta', 'Konsultasi Teknologi', 'ArtNation', 'Konsultasi', 'Budidaya Tembakau', '2021-08-23', '00:48:30', 'Sedang Berjalan'),
(2047, 1, 'riza amy ika aprilia', '085856840775', 'Mahasiswa', 'Konsultasi Teknologi', 'ArtNation', 'Konsultasi', 'Budidaya Tembakau', '2021-08-23', '00:40:13', 'Sedang Berjalan'),
(2048, 0, 'riza amy ika aprilia', '085856840775', 'Mahasiswa', 'Konsultasi Teknologi', 'balitkabi', 'meminta tanda tangan dan penyerahan skripsi', 'penyerahan skripsi', '2021-08-23', '00:41:23', 'Sedang Berjalan'),
(2049, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-08-25', '00:22:47', 'Sedang Berjalan'),
(2050, 0, 'Sinta Herian Pawestri', '085646785070', 'Swasta', 'Konsultasi Teknologi', 'Majalah Trubus', 'Liputan ubi jalar', 'Budidaya & teknologi ubi jalar', '2021-08-31', '00:48:44', 'Sedang Berjalan'),
(2051, 0, 'ferdianto eko wicaksono', '085334473533', 'Mahasiswa', 'Konsultasi Teknologi', 'balitkabi', 'informasi tentang kacang tanah ', 'informasi tentang kacang tanah ', '2021-08-31', '00:27:34', 'Sedang Berjalan'),
(2052, 0, 'imam rifai', '081994904433', 'Petani', 'Konsultasi Teknologi', 'balitkabi', 'bertemu ibu kepala balai', 'bertemu kepla balai', '2021-09-01', '00:53:15', 'Sedang Berjalan'),
(2053, 0, 'Dr. Suharyanto', '081239545311', 'Penyuluh', 'Konsultasi Teknologi', 'BPTP BANGKA BELITUNG', 'Kunjungan Ke Balitkabi', 'Kunjungan Ke Balitkabi', '2021-09-03', '00:08:37', 'Sedang Berjalan'),
(2054, 0, 'ninda silvia tri cahyani', '085159656677', 'Mahasiswa', 'Konsultasi Teknologi', 'universitas brawijaya', 'pkl', 'pkl', '2021-09-07', '00:43:28', 'Sedang Berjalan'),
(2055, 0, 'Noor Hudhia Krishna', '081555641976', 'Peneliti', 'Konsultasi Teknologi', 'Loka Penelitian Sapi Potong', 'Konsultasi dan diskusi konsevasi SDG', 'Sumber Daya Genetik', '2021-09-08', '00:14:12', 'Sedang Berjalan'),
(2056, 0, 'Ahmad Zamil Sa\'di Abu hanif', '087879633023', 'Mahasiswa', 'Konsultasi Teknologi', 'UPN \"Veteran\" Jawa Timur', 'Informasi Magang', 'Informasi Magang', '2021-09-14', '00:25:23', 'Sedang Berjalan'),
(2057, 0, 'anggara', '082244676730', 'Swasta', 'Lain-lain', 'pt ditek jaya', 'service instrument', 'service instrument', '2021-09-15', '00:55:55', 'Sedang Berjalan'),
(2058, 0, 'shelly', '1564566', 'Swasta', 'Konsultasi Teknologi', 'balitkabi', 'dddd', 'ddd', '2021-09-16', '00:49:55', 'Sedang Berjalan'),
(2059, 0, 'Syasa Oktalia', '082168508662', 'Dosen', 'Konsultasi Teknologi', 'universitas Muhammadiyah malang', 'testimoni video profil prodi teknologi pangan', 'testimoni video profil prodi teknologi pangan', '2021-09-17', '00:10:44', 'Sedang Berjalan'),
(2060, 0, 'dedy', '081235012581', 'Swasta', 'Konsultasi Teknologi', 'same hotel malang', 'penawaran hotel', 'penawaran hotel', '2021-09-20', '00:52:10', 'Sedang Berjalan'),
(2061, 0, 'arbai', '085105087771', 'Swasta', 'Konsultasi Teknologi', 'malang', 'melihat obyek lelang balitkabi', 'melihat obyek lelang balitkabi', '2021-09-20', '00:11:06', 'Sedang Berjalan'),
(2062, 0, 'darminto', '085235173907', 'Swasta', 'Konsultasi Teknologi', 'PT. Berkah Tirta Madiun', 'Penunjukkan Penyedia', 'Penunjukkan Penyedia', '2021-09-21', '00:03:35', 'Sedang Berjalan'),
(2063, 0, 'Hani Surya Wijaya', '081197911287', 'Swasta', 'Konsultasi Teknologi', 'Merck Chemicals & Life Sciences ', 'Bertemu Bapak Heru ', 'Agriculture Media & Biomolekular', '2021-09-21', '00:05:23', 'Sedang Berjalan'),
(2064, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-10-07', '00:38:47', 'Sedang Berjalan'),
(2065, 0, 'Emana \\paturohman', '081284835100', 'PNS', 'Lain-lain', 'Puslitbangtan', 'Koordinasi', 'KeTUan', '2021-10-07', '00:08:37', 'Sedang Berjalan'),
(2066, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-10-28', '00:14:53', 'Sedang Berjalan'),
(2067, 0, 'Nurlina Fauziani', '0815140634885', 'PNS', 'Lain-lain', 'Puslitbangtan', 'Koordinasi dan monitoring ABT TA 2021', '', '2021-10-28', '00:02:24', 'Sedang Berjalan'),
(2068, 0, 'Kanjeng Ratu Nuning Argosubekti', '081219521295', 'Peneliti', 'Lain-lain', 'Puslitbangtan', '', '', '2021-10-29', '00:46:07', 'Sedang Berjalan'),
(2069, 0, 'MARIA TERRY', '08113101234', 'Swasta', 'Konsultasi Teknologi', 'PT. NIHON NOVELICA FOOD', 'MENCARI UBI UNGU', 'MENCARI UBI UNGU', '2021-11-01', '00:04:24', 'Sedang Berjalan'),
(2070, 0, 'Sri Muntiasih', '081931852992', 'PNS', 'Lain-lain', 'Balittas', 'Konsultasi ', 'SAKTI', '2021-11-01', '00:46:45', 'Sedang Berjalan'),
(2071, 89, 'ahmad dhiaul khuluq', '081330900483', 'Peneliti', 'Lain-lain', 'Balittas', 'koordinasi penelitian', '', '2021-11-01', '00:08:15', 'Sedang Berjalan'),
(2072, 0, 'Muhammad Hadi Kurnia', '085227561811', 'Mahasiswa', 'Konsultasi Teknologi', 'universitas brawijaya', 'Konsultasi PKL', 'PKL', '2021-11-03', '00:53:38', 'Sedang Berjalan'),
(2073, 0, 'neneng', '081334100700', 'Swasta', 'Konsultasi Teknologi', 'CV Duta Jaya', 'pengadaan bahan kimia', 'pengadaan bahan kimia', '2021-11-05', '00:11:54', 'Sedang Berjalan'),
(2074, 0, 'Diana Amirawatie', '085646174744', 'Guru', 'Lain-lain', 'SMKN 7 Malang', '', 'Monitoring siswa PKL', '2021-11-08', '00:50:45', 'Sedang Berjalan'),
(2075, 0, '|Arief  Kurniawan, STP, MM', '081226938828', 'PNS', 'Konsultasi Teknologi', 'Itjen Kementan', 'SURVEI kinerja', 'Survei Kinerja', '2021-11-09', '00:44:54', 'Sedang Berjalan'),
(2076, 76, 'DR Mahendra Wahyu Dewangga ', '081227204161', 'Dosen', 'Layanan', 'UPN Veteran Jakarta', 'Bu Febri', 'ambil benih', '2021-11-10', '00:03:59', 'Sedang Berjalan'),
(2077, 0, 'Oria Alit Farisi', '081230294949', 'Dosen', 'Lain-lain', 'universitas jember', 'Visitasi Magang mahasiswa universitas jember', 'Visitasiu Magang fakultas pertanian UNEJ', '2021-11-11', '00:24:38', 'Sedang Berjalan'),
(2078, 0, 'nurdin', '081330017004', 'PNS', 'Konsultasi Teknologi', 'Dinas Pertanian dan Ketahanan Pangan Kab. Sampang', 'BUDIDAYA porang', 'Budidaya Porang', '2021-11-12', '00:01:27', 'Sedang Berjalan'),
(2079, 62, 'rike paramita', '082232388289', 'Umum', 'Lain-lain', 'BRI', 'SOSIALISASI', 'BRIMO', '2021-11-12', '00:37:21', 'Sedang Berjalan'),
(2080, 0, 'Dr.Muhammad Assagaf', '08114313624', 'Peneliti', 'Konsultasi Teknologi', 'BPTP Maluku Utara', 'Konsultasi tentang budidaya Porang', 'b udidaya porang', '2021-11-17', '00:05:27', 'Sedang Berjalan'),
(2081, 0, 'Kurniawan Muhammad Nur', '085232255256', 'Dosen', 'Lain-lain', 'Politeknik Negeri Banyuwangi', 'Supervisi Mahasiswa Magang Kerja Industri', '', '2021-11-18', '00:50:11', 'Sedang Berjalan'),
(2082, 0, 'handi widi', '08111070118', 'PNS', 'Lain-lain', 'SEkretariat badan litbang pertanian', 'Kepala Balai', '', '2021-11-18', '00:57:53', 'Sedang Berjalan'),
(2083, 0, 'Gatot Suroso', '0816555312', 'Swasta', 'Lain-lain', 'Optik Dharma Lensa', 'kunjungan untuk pelayanan kacamata/kir mata', '', '2021-11-19', '00:13:15', 'Sedang Berjalan'),
(2084, 0, 'mitro', '085235252288', 'PNS', 'Lain-lain', 'kpp pratama kepanjen', 'konfirmasi pajak', '-', '2021-11-25', '00:10:06', 'Sedang Berjalan'),
(2085, 0, 'Atikan Indar Wulandari', '085334364784', 'Mahasiswa', 'Lain-lain', '', 'ingin meminta tandatangan', '', '2021-11-25', '00:47:16', 'Sedang Berjalan'),
(2086, 0, 'sri purwati,SP', '081328506313', 'PNS', 'Konsultasi Teknologi', 'BALAI BENIH TANAMAN PERKEBUNAN DISTANBUN JATENG', 'STUDI PEMBELAJARAN KOMODITAS TANAMAN PORANG', '', '2021-11-26', '00:20:21', 'Sedang Berjalan'),
(2087, 0, 'Yuliarin Astutik Ningsih', '0822422908280', 'Swasta', 'Konsultasi Teknologi', '', 'Pinjam alat colour chart', '', '2021-11-29', '00:13:01', 'Sedang Berjalan'),
(2088, 0, 'Septi Anita', '08118168146', 'Swasta', 'Konsultasi Teknologi', 'PT plasma unitech global', 'Diskusi Kebutuhan Penelitian', '', '2021-11-29', '00:45:08', 'Sedang Berjalan'),
(2089, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-11-29', '00:48:53', 'Sedang Berjalan'),
(2090, 158, 'Winda Puspitasari', '081296420332', 'PNS', 'Lain-lain', 'BATAN', 'Mengurus proposal pelepasan', '', '2021-11-29', '00:13:58', 'Sedang Berjalan'),
(2091, 0, 'KIMIA FARMA 245 BATU', '08113279408', 'Umum', 'Lain-lain', 'FARMASI', 'BAGIAN PENGADAAN', 'KERJASAMA KESEHATAN', '2021-11-30', '00:55:03', 'Sedang Berjalan'),
(2092, 0, 'CHORIROTUN NUR ULIFAH, DKK (12 ORANG)', '082133177784', 'Peneliti', 'Lain-lain', 'PERHUTANI, DEPT RI', 'STUDI BANDING', '', '2021-11-30', '00:13:54', 'Sedang Berjalan'),
(2093, 0, 'Rudi Priono, SP', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-12-01', '00:41:53', 'Sedang Berjalan'),
(2094, 0, 'Rudei Priono, SP', '081217807860', 'PNS', 'Konsultasi Teknologi', 'Dinas Pertanian Kab. Jombang', 'Konsultasi Kostratani', '', '2021-12-01', '00:43:21', 'Sedang Berjalan'),
(2095, 79, 'Syaroful Azka', '081806484602', 'Swasta', 'Lain-lain', 'AIP PRISMA', 'Konsultasi dengan Bpk Rudi Iswanto', '', '2021-12-01', '00:34:36', 'Sedang Berjalan'),
(2096, 0, 'uliarin Astutik Ningsih', '082242298280', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-12-01', '00:34:47', 'Sedang Berjalan'),
(2097, 0, 'Yuliarin Astutik Ningsih', '082242298280', 'Swasta', 'Konsultasi Teknologi', 'PG Krebet Baru Bululawang', 'Pengembalian alat RHS  Colour chart ', '', '2021-12-01', '00:37:13', 'Sedang Berjalan'),
(2098, 0, 'iwan effendi', '081236090187', 'Umum', 'Konsultasi Teknologi', 'DPRD Sampang', 'Studi Banding', '', '2021-12-02', '00:56:26', 'Sedang Berjalan'),
(2099, 108, 'meita andadari', '0818575262', 'Swasta', 'Lain-lain', 'bank syariah indonesia', 'penawaran prapen', 'penawaran', '2021-12-03', '00:13:06', 'Sedang Berjalan'),
(2100, 0, 'Gatot Suwardiyono', '081391544488', 'PNS', 'Lain-lain', 'Bappeda Kab Malang', 'koordinasi', '', '2021-12-03', '00:22:03', 'Sedang Berjalan'),
(2101, 0, 'eny handayani', '00341 491914', 'PNS', 'Konsultasi Teknologi', 'dispangtan kota malang', 'audensi program', '', '2021-12-06', '00:42:51', 'Sedang Berjalan'),
(2102, 0, 'Sri Muntiasih', '081931852992', 'PNS', 'Lain-lain', 'Balittas', 'Yulius Samba', 'SAKTI', '2021-12-06', '00:14:39', 'Sedang Berjalan'),
(2103, 0, 'arif yanuar pribadi', '08883821180', 'Swasta', 'Lain-lain', 'mandiri taspen', 'pengurusan pensiun', 'pensiun', '2021-12-07', '00:57:49', 'Sedang Berjalan'),
(2104, 0, 'yudhistira nugraha', '082126253626', 'Peneliti', 'Lain-lain', 'Pusllitbangtan', 'monev', 'monev', '2021-12-08', '00:43:35', 'Sedang Berjalan'),
(2105, 0, 'Rian Priyo Hardi', '081334350780', 'Swasta', 'Lain-lain', 'Amazing Plus Indonesia', 'Meeting persiapan training pelayanan prima', '', '2021-12-08', '00:38:14', 'Sedang Berjalan'),
(2106, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-12-10', '00:17:36', 'Sedang Berjalan'),
(2107, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2021-12-10', '00:18:52', 'Sedang Berjalan'),
(2108, 0, 'Hasidah Rahmiwijayanti', '081230504121', 'PNS', 'Lain-lain', 'UPT PSMB-LT Surabaya ', 'Koordinasi terkait pengujian pupuk organik', '', '2021-12-13', '00:21:23', 'Sedang Berjalan'),
(2109, 0, 'Zahraeni Kumalawati', '085398308338', 'Dosen', 'Lain-lain', 'Politeknik Pertanian Negeri Pangkep', 'Penjajakan MoU dgn Balitkabi', '', '2021-12-14', '00:15:53', 'Sedang Berjalan'),
(2110, 0, 'Abdul Rahim', '082350882116', 'Dosen', 'Lain-lain', 'Universitas Borneo Tarakan', 'Konsultasi Kegiatan Magang, dll', '', '2021-12-17', '00:43:42', 'Sedang Berjalan'),
(2111, 0, 'Abdul Rahim', '082350882116', 'Dosen', 'Lain-lain', 'Universitas Borneo Tarakan', 'Konsultasi Kegiatan Magang, dll', '', '2021-12-17', '00:43:42', 'Sedang Berjalan'),
(2112, 0, 'noverita resya sintia', '085231618903', 'Mahasiswa', 'Layanan', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'menemui pak subarkah', 'konsultasi penelitian skripsi', '2021-12-20', '00:32:43', 'Sedang Berjalan'),
(2113, 0, 'darminto', '085233670551', 'Umum', 'Lain-lain', '', 'konsultasi', '', '2021-12-29', '00:32:18', 'Sedang Berjalan'),
(2114, 0, 'widhie pramono', '085204853006', 'Petani', 'Konsultasi Teknologi', 'lumajang', 'konsultasi tani', '', '2022-01-04', '00:40:59', 'Sedang Berjalan'),
(2115, 82, 'andreas widyo k', '08563300582', 'PNS', 'Layanan', 'Loka Penelitian Sapi Potong', 'konsulotasi e purchasing', '', '2022-01-05', '00:09:15', 'Sedang Berjalan'),
(2116, 0, 'Fardha Abidillah', '085891752989', 'Umum', 'Lain-lain', 'PT Indotech Scientific', 'Meeting dg bapak Eriyanto', '', '2022-01-06', '00:00:08', 'Sedang Berjalan'),
(2117, 0, 'Sinta Puspamega', '085103544004', 'Swasta', 'Perpustakaan', 'FENROSS Book', 'kunjungan', '', '2022-01-06', '00:13:11', 'Sedang Berjalan'),
(2118, 0, 'Hilda Sofi', '085730307846', 'Mahasiswa', 'Layanan', 'universitas brawijaya', 'meminta persetujuan skripsi', '', '2022-01-10', '00:07:17', 'Sedang Berjalan'),
(2119, 0, 'Intan Dwi Kurniawati', '087854613212', 'Mahasiswa', 'Lain-lain', 'ITS', 'Menanyakan penelitian yang dilakukan di balitkabi', '', '2022-01-10', '00:36:52', 'Sedang Berjalan'),
(2120, 0, 'andoyo dan duniarto', '081336488441', 'Swasta', 'Penyediaan Benih Sumber', 'PT NELINDO', 'KONSULTASI TTG BENIH UMBI2AN', '', '2022-01-10', '00:22:56', 'Sedang Berjalan'),
(2121, 0, 'Jumiah Ines Anisiah', '085707095872', 'Mahasiswa', 'Lain-lain', 'Universitas PGRI Kanjuruhan Malang', 'Magang', '', '2022-01-11', '00:03:37', 'Sedang Berjalan'),
(2122, 0, 'abian addy al hamawi', '082245883923', 'Mahasiswa', 'Konsultasi Teknologi', 'universitas gadjah mada', 'konsultasi', '', '2022-01-13', '00:56:24', 'Sedang Berjalan'),
(2123, 0, 'SMK 1 Turen', '', 'Guru', 'Lain-lain', 'SMKN 1 Turen', 'Menitipkan MoU', '', '2022-01-17', '00:46:57', 'Sedang Berjalan'),
(2124, 0, 'trisnani alif', '085647204959', 'Dosen', 'Lain-lain', 'universitas billfath', 'pkl', '', '2022-01-17', '00:26:27', 'Sedang Berjalan'),
(2125, 0, 'Muhammad Riahan Yassaar Praseno', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-01-17', '00:05:00', 'Sedang Berjalan'),
(2126, 0, 'Muhammad Riahan Yassaar Praseno', '087870236728', 'Mahasiswa', 'Konsultasi Teknologi', 'universitas brawijaya*', 'PKL', '', '2022-01-17', '00:05:40', 'Sedang Berjalan'),
(2127, 0, 'Batari Melyapuri Widarsiono', '081357885041', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Ingin meminta sertifikat Magang Kerja', '', '2022-01-17', '00:01:23', 'Sedang Berjalan'),
(2128, 0, 'bintang kerta wijaya', '082233458883', 'Peneliti', 'Lain-lain', 'PT HRL Internasional', 'Konsultasi', 'porang dan hasil bumi', '2022-01-18', '00:32:27', 'Sedang Berjalan'),
(2129, 0, 'DR. MULJADY MARIO', '0811435010', 'PNS', 'Konsultasi Teknologi', 'DINAS PERTANIAN PROV. GORONTALO', 'KONSULTASI', '', '2022-01-18', '00:18:22', 'Sedang Berjalan'),
(2130, 0, 'PARK YOUNG JOON', '081223344730', 'Umum', 'Lain-lain', 'CIREBON', 'PRODUKSI', '', '2022-01-18', '00:22:09', 'Sedang Berjalan'),
(2131, 0, 'RUKIADI', '082331301315', 'Umum', 'Konsultasi Teknologi', 'KEDOK TUREN', 'KONSULTASI TALAS BENIH', '', '2022-01-19', '00:51:33', 'Sedang Berjalan'),
(2132, 0, 'Donna Savira', '08119220055', 'Umum', 'Lain-lain', 'Saranalab Mandiri Analitika', 'meeting', '', '2022-01-19', '00:16:41', 'Sedang Berjalan'),
(2133, 0, 'Batari Melyapuri Widarsiono', '081357885041', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Mengambil sertifikat Magang Kerja', '', '2022-01-20', '00:27:55', 'Sedang Berjalan'),
(2134, 0, 'Dwija Putripertiwi', '081230377951', 'Mahasiswa', 'Konsultasi Teknologi', 'universitas brawijaya', 'Mencari informasi tentang macam varietas bengkuang', '', '2022-01-20', '00:00:59', 'Sedang Berjalan'),
(2135, 0, 'Taman kanak-kanak', '081231454493', 'Guru', 'Lain-lain', 'TAMAN kANAK KANAK MARDI UTAMA', 'KUNJUNGAN', '', '2022-01-20', '00:09:50', 'Sedang Berjalan'),
(2136, 0, 'M RIZQI AZIZ ', '082133902920', 'Mahasiswa', 'Konsultasi Teknologi', 'UNISMA', 'MENGAJUKAN PKL ', '', '2022-01-20', '00:29:35', 'Sedang Berjalan'),
(2137, 0, 'uswatun hasanah', '085852051745', 'Swasta', 'Konsultasi Teknologi', 'PT GMIT', 'konsultasi mengenai opt edamame, dan sharing teknologi', 'opt', '2022-01-21', '00:29:02', 'Sedang Berjalan'),
(2138, 0, 'Mohamad Akhsin Najib', '081232650086', 'Mahasiswa', 'Konsultasi Teknologi', 'Universitas Kanjuruhan', 'PKL', '', '2022-01-24', '00:43:52', 'Sedang Berjalan'),
(2139, 0, 'jafar', '083834262200', 'Swasta', 'Lain-lain', 'cleaning service', 'Survei pembersihan kaca', '', '2022-01-26', '00:37:55', 'Sedang Berjalan'),
(2140, 0, 'sifa yuni al fareza', '089525027474', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'tanda tangan Skripsi', '', '2022-01-26', '00:02:00', 'Sedang Berjalan'),
(2141, 0, 'Riwayati', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-01-27', '00:32:02', 'Sedang Berjalan'),
(2142, 0, 'Riwayati', '081386495600', 'Penyuluh', 'Konsultasi Teknologi', 'Bpp Kecamatan Tajinan', 'konsultasi benih kedelai', '', '2022-01-27', '00:33:10', 'Sedang Berjalan'),
(2143, 0, 'budi santoso', '081335780151', 'Swasta', 'Konsultasi Teknologi', 'PT BISI International', 'diskusi terkait tanaman aneka kacang', '', '2022-01-28', '00:24:05', 'Sedang Berjalan'),
(2144, 0, 'luki (royal atk )', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-01-28', '00:04:43', 'Sedang Berjalan'),
(2145, 0, 'luki (royal atk )', '081805098585', 'Swasta', 'Lain-lain', 'royal atk', 'bertemu bu ria', '', '2022-01-28', '00:06:08', 'Sedang Berjalan'),
(2146, 0, 'Batari Melyapuri Widarsiono', '081357885041', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Menemui Ibu irin untuk mengambil sertifikat magang kerja', '', '2022-01-28', '00:55:24', 'Sedang Berjalan'),
(2147, 0, 'Cindy Wiranti', '081224398296', 'Mahasiswa', 'Konsultasi Teknologi', 'Universitas Muhammadiyah Malang', 'Konsultasi varietas umbi sebgai tugas akhir', '', '2022-01-31', '00:08:42', 'Sedang Berjalan'),
(2148, 0, 'elysia dewi', '087865430982', 'Guru', 'Lain-lain', 'SMKN KABUH JOMBANG', 'pengajuan PKL', '', '2022-01-31', '00:08:22', 'Sedang Berjalan'),
(2149, 0, 'khusaeri', '081234492864', 'Umum', 'Lain-lain', 'amirta indah otsuka', 'ambil benih', '', '2022-02-02', '00:47:57', 'Sedang Berjalan'),
(2150, 0, 'dani detariadi', '081252586599', 'PNS', 'Lain-lain', 'polbangtan malang', 'konsultasi', '', '2022-02-03', '00:12:22', 'Sedang Berjalan'),
(2151, 0, 'Syaroful Azka', '081806484602', 'Swasta', 'Lain-lain', 'AIP PRISMA', 'Berdiskusi mengenai MoU dengan Balitkabi', 'MoU dengan Balitkabi ', '2022-02-03', '00:17:59', 'Sedang Berjalan'),
(2152, 0, 'Rima Agustin Widyayanti', '085645424667', 'Mahasiswa', 'Konsultasi Teknologi', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Konsultasi Umbi-umbian', '', '2022-02-07', '00:00:05', 'Sedang Berjalan'),
(2153, 0, 'Dinas Ketahanan pangan dan pertanian Kota malang', '0', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-02-14', '00:33:19', 'Sedang Berjalan'),
(2154, 0, 'PT. HRL INTERNASIONAL', '081216567519', 'Swasta', 'Lain-lain', 'PT. HRL INTERNASIONAL', 'penandatangan MoU ', '', '2022-02-16', '00:44:15', 'Sedang Berjalan'),
(2155, 0, 'sopyan', '082188009404', 'Umum', 'Konsultasi Teknologi', 'CV PUTRA', 'Terkait dengan kesehatan lingkungan', '', '2022-02-17', '00:34:54', 'Sedang Berjalan'),
(2156, 0, 'jafar', '083834262200', 'Pekerjaan Anda', 'Lain-lain', '', 'survei', '', '2022-02-17', '00:50:28', 'Sedang Berjalan'),
(2157, 0, 'Nadila Sekar Zahida', '081339052237', 'Mahasiswa', 'Lain-lain', 'Universitas Negeri Malang', 'Mengambil data skripsi', '', '2022-02-18', '00:13:17', 'Sedang Berjalan'),
(2158, 0, 'dedy', '081235012581', 'Swasta', 'Lain-lain', '', 'salescall', '', '2022-02-21', '00:37:08', 'Sedang Berjalan'),
(2159, 0, 'Benny Darmawan', '081286421914', 'Swasta', 'Lain-lain', 'Jakarta', 'Bertemu dengan pak Yusmani', '', '2022-02-23', '00:46:10', 'Sedang Berjalan'),
(2160, 0, 'nia', '081233333469', 'Pekerjaan Anda', 'Lain-lain', 'hotel grand mercure', 'Penawaran', '', '2022-02-23', '00:45:10', 'Sedang Berjalan'),
(2161, 0, 'Nova Izatul Khumairoh', '085101723919', 'Mahasiswa', 'Lain-lain', 'UIN MALANG', 'MENGETAHUI INFORMASI PKL BULAN JULI', '', '2022-02-24', '00:30:44', 'Sedang Berjalan'),
(2162, 0, 'nanda', '087857412122', 'Mahasiswa', 'Konsultasi Teknologi', 'UNIVERSITAS MUHAMMADIYAH MALANG', '', 'mencari tahu varietas umbi untuk tugas akhir', '2022-02-25', '00:24:01', 'Sedang Berjalan'),
(2163, 0, 'moch arief cahyono', '08111921639', 'PNS', 'Layanan', 'biro humas IP', 'liputan', 'kedelai', '2022-02-25', '00:00:27', 'Sedang Berjalan'),
(2164, 0, 'Aziziah Saloka', '085649136917', 'PNS', 'Konsultasi Teknologi', 'Direktorat Aneka Kacang dan Umbi', 'Konsultasi mengenai stok benih Bs dan FS', 'Konsultasi mengenai stok benih Bs dan FS', '2022-02-25', '00:33:00', 'Sedang Berjalan'),
(2165, 0, 'Yogi Sidik Prasojo, Ph.D', '08076527663', 'Dosen', 'Konsultasi Teknologi', 'UGM', 'Diskusi, Inisiasi Kerjasama', '', '2022-03-02', '00:15:43', 'Sedang Berjalan'),
(2166, 0, 'muhamad nursalim', '085815322251', 'Petani', 'Konsultasi Teknologi', 'wlingi', 'konsultasi benih', '', '2022-03-04', '00:03:01', 'Sedang Berjalan'),
(2167, 0, 'Yufra', '08123351543', 'Dosen', 'Lain-lain', 'Universitas Ma Chung', 'Diskusi pengembangan kedelai lokal ', '', '2022-03-04', '00:04:31', 'Sedang Berjalan'),
(2168, 0, 'hadi rahmanto', '08563596295', 'Swasta', 'Lain-lain', 'pt ditek jaya', 'check AAS', '', '2022-03-08', '00:07:22', 'Sedang Berjalan'),
(2169, 0, 'Ruben Ervenald Kaunang', '085232105286', 'Swasta', 'Lain-lain', 'PT Amtek', 'Setting Fingerprint', '', '2022-03-08', '00:17:03', 'Sedang Berjalan'),
(2170, 0, 'Ulya Wildaniyah', '085641247262', 'PNS', 'Lain-lain', 'BALAI BESAR UJI STANDAR KARANTINA PERTANIAN', 'Pengambilan sampel dalam rangka verifikasi dan koleksi OPTK Peronospora manshurica pada tanaman kedelai', '', '2022-03-09', '00:03:50', 'Sedang Berjalan'),
(2171, 0, 'ratna laeli ', '089620414117', 'Umum', 'Penyediaan Benih Sumber', '', 'pembelian benih kedelai di upbs', '', '2022-03-10', '00:45:32', 'Sedang Berjalan'),
(2172, 0, 'octa sriadhela damayanti', '088235986880', 'Mahasiswa', 'Layanan', 'institut teknologi dan sains nahdlatul ulama pasuruan', 'pengajuan proposal pkl/magang', '', '2022-03-11', '00:53:27', 'Sedang Berjalan'),
(2173, 0, 'Tiara Intan Pratiwi', '089679760848', 'Mahasiswa', 'Lain-lain', 'Institut Pertanian Bogor', 'Praktik Kerja Lapangan', 'Pengujian Benih', '2022-03-14', '00:28:33', 'Sedang Berjalan'),
(2174, 0, 'mery sulistiana', '081937230833', 'PNS', 'Lain-lain', 'Dinas Pertanian dan Ketahanan Pangan Kab. Sampang', 'Narasumber', '', '2022-03-14', '00:45:08', 'Sedang Berjalan'),
(2175, 0, 'zuma', '087701686795', 'Swasta', 'Lain-lain', 'garmen', 'pembuatan seragam', '', '2022-03-15', '00:01:00', 'Sedang Berjalan'),
(2176, 0, 'Zuraida Sagala', '0895364216550', 'Mahasiswa', 'Penyediaan Benih Sumber', 'IPB University', 'Diskusi dan meminta bibit umbi Garut', 'Umbi Garut', '2022-03-17', '00:55:05', 'Sedang Berjalan'),
(2177, 0, 'Titin Holisoh', '081380082521', 'PNS', 'Lain-lain', 'Puslitbangtan', 'Rapat SDM', '', '2022-03-17', '00:00:01', 'Sedang Berjalan'),
(2178, 0, 'NURUL KOMARIYAH', '081333316144', 'Penyuluh', 'Lain-lain', 'dispangtan kota malang', 'KONSULTASI TENTANG PELATIHAN BUDIDAYA UBI JALAR DI POLYBAG', '', '2022-03-17', '00:01:44', 'Sedang Berjalan'),
(2179, 0, 'Nadhira Yasmin Firras Amany', '082142365816', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Magang', '', '2022-03-21', '00:58:06', 'Sedang Berjalan'),
(2180, 0, 'lookh makhfudz', '081357194124', 'Dosen', 'Lain-lain', 'dewan perwakilan rakyat daerah kota malang', 'kunjungan kerja D:PRD Kota Malang', 'Konsep ketahanan [pangan', '2022-03-21', '00:20:45', 'Sedang Berjalan'),
(2181, 0, 'agus riyanto', '085330145350', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-03-21', '00:56:50', 'Sedang Berjalan'),
(2182, 0, 'nur fitriyah', '081252503636', 'Dosen', 'Layanan', 'universitas Islam Kadiri', 'untuk mengkonfimasi kberlanjutan rencana PKL ', '', '2022-03-21', '00:10:25', 'Sedang Berjalan'),
(2183, 0, 'HAEZY', '085714564568', 'Swasta', 'Lain-lain', 'WILMAR', 'meeting tentang kedelai', '', '2022-03-21', '00:57:30', 'Sedang Berjalan'),
(2184, 0, 'Septi Anita', '08118168146', 'Swasta', 'Lain-lain', 'PT plasma unitech global', 'Diskusi', '', '2022-03-22', '00:53:17', 'Sedang Berjalan'),
(2185, 0, 'Aditya H', '089682090790', 'Swasta', 'Lain-lain', 'PT ECOSAINS HAYATI', 'Diskusi alat laboratorium', '', '2022-03-22', '00:18:54', 'Sedang Berjalan'),
(2186, 0, 'savira medita virgian putri', '085855418278', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'konsultasi ', '', '2022-03-22', '00:51:01', 'Sedang Berjalan'),
(2187, 0, 'anang mashudi', '081333273175', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-03-24', '00:54:12', 'Sedang Berjalan'),
(2188, 0, 'anang mashudi', '081333273175', 'Pekerjaan Anda', 'Lain-lain', ' malang', 'ketwemu bu sumartini', '', '2022-03-24', '00:55:24', 'Sedang Berjalan'),
(2189, 0, 'REIGA', '085933005499', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'KONSULTASI LAB PUPUK', '', '2022-03-24', '00:25:13', 'Sedang Berjalan'),
(2190, 0, 'REGIN YOHAN', '082240321963', 'Swasta', 'Lain-lain', 'BRI', 'FOLLOW UP TERKAIT SISTEM ', '', '2022-03-25', '00:25:16', 'Sedang Berjalan'),
(2191, 0, 'ZHAFARIN', '08819494999', 'Swasta', 'Lain-lain', 'GRAND MIAMI HOTEL', 'Penawaran Paket Meeting ', '', '2022-03-25', '00:02:48', 'Sedang Berjalan'),
(2192, 0, 'Lia Kumalasari', '081331154041', 'PNS', 'Lain-lain', 'balai besar karantina pertanian surabaya', 'Koordinasi pemantauan OPTK Tahun 2022', '', '2022-03-28', '00:04:24', 'Sedang Berjalan'),
(2193, 0, 'dondik susanto', '081336008300', 'Umum', 'Lain-lain', 'the singhasari resort batu', 'penawaran hotel', '', '2022-03-28', '00:49:31', 'Sedang Berjalan'),
(2194, 0, 'Sri Budiarti,STP,MSc', '081380004566', 'PNS', 'Konsultasi Teknologi', 'BBPPMBTPH Cimanggis', 'Konsultasi berkaitan porang', '', '2022-03-28', '00:08:47', 'Sedang Berjalan'),
(2195, 0, 'vita', '082234025223', 'Swasta', 'Lain-lain', 'pt risky putra kasih', 'kunjungan', '', '2022-03-29', '00:01:08', 'Sedang Berjalan'),
(2196, 0, 'henry', '081231622400', 'Swasta', 'Layanan', '', 'bertemu dengan bu kartika', '', '2022-03-29', '00:05:30', 'Sedang Berjalan'),
(2197, 0, 'nofa prismawan ', '085236426187', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'bertemu dengan bu ratri  terkait laporan pkl', 'pkl', '2022-03-30', '00:23:18', 'Sedang Berjalan'),
(2198, 0, 'An nisa soliha', '085806148695', 'Mahasiswa', 'Lain-lain', 'UPN \"Veteran\" Jawa Timur', 'analisis kandungan tanah', '', '2022-04-01', '00:34:15', 'Sedang Berjalan'),
(2199, 0, 'Vicannisya Fairuz', '087836177735', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Menanyakan terkait greenhouse', '', '2022-04-04', '00:02:48', 'Sedang Berjalan'),
(2200, 0, 'junaidi', '081231984959', 'PNS', 'Lain-lain', 'binamarga', 'BERTEMU DENGAN BU EKMI', '', '2022-04-05', '00:15:25', 'Sedang Berjalan'),
(2201, 0, 'HENDRI BSI', '082232869802', 'Umum', 'Lain-lain', 'BSI', 'PENAWARAN', '', '2022-04-05', '00:08:22', 'Sedang Berjalan'),
(2202, 0, 'DRS. BOING INDRAWAN SUDIANTO, SE, MM', '085607817523', 'Dosen', 'Lain-lain', 'UNIVERSITAS WISNU WARDANA', 'PROMOSI PROGRAM DI KAMPUS', '', '2022-04-05', '00:45:03', 'Sedang Berjalan'),
(2203, 0, 'Rendio Rafliandika', '082330520667', 'Mahasiswa', 'Penyediaan Benih Sumber', 'universitas brawijaya', 'Untuk pengamatan dan penelitian mengenai penyediaan dan produksi benih', '', '2022-04-05', '00:41:04', 'Sedang Berjalan'),
(2204, 0, 'Muhammad Nur Khoirudin', '085726151066', 'Mahasiswa', 'Lain-lain', 'Univesitras Brawijaya', 'Wawancara mengenai teknologi produksi benih kedelai', '', '2022-04-06', '00:38:30', 'Sedang Berjalan'),
(2205, 0, 'Laksmana Adi Rama', '081944885626', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'menyerahkan hardfile skripsi', '', '2022-04-07', '00:50:46', 'Sedang Berjalan'),
(2206, 0, 'jaenal arifin', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-04-11', '00:36:36', 'Sedang Berjalan'),
(2207, 0, 'jaenal arifin', '087842337373', 'Swasta', 'Lain-lain', 'cv. HORTINDO AGROKENCANA FARM', 'KERJA SAMA', '', '2022-04-11', '00:37:52', 'Sedang Berjalan'),
(2208, 0, 'Abid Ar Rizal', '081334999397', 'Petani', 'Lain-lain', 'PT. Jamas Porang |Nusantara', 'Uji Lab Tanah', '', '2022-04-12', '00:50:59', 'Sedang Berjalan'),
(2209, 0, 'SIGIET PRASTIO UTOMO', '082143649083', 'Umum', 'Lain-lain', 'PT./ AKURASI KARYA INDONESIA ', 'Kalibrasi peralatan laboratoriun', 'Kalibrasi', '2022-04-12', '00:13:16', 'Sedang Berjalan'),
(2210, 0, 'RUDI', '085954479494', 'Umum', 'Lain-lain', 'SEVENCOLS', 'KIRIM SERAGAM', '', '2022-04-12', '00:20:36', 'Sedang Berjalan'),
(2211, 0, 'Naoko Kawasaki', '081319335157', 'Peneliti', 'Lain-lain', 'PT. Amerta Indah Otsuka', 'Meeting', '', '2022-04-13', '00:54:57', 'Sedang Berjalan'),
(2212, 0, 'Endah Sulistiani', '085258459292', 'Guru', 'Lain-lain', 'SMK Putra Indonesia Malang', 'Validasi Sertifikat', '', '2022-04-13', '00:04:16', 'Sedang Berjalan'),
(2213, 0, 'Rosalia Rachma Oktavianasari', '081353369281', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Mengirimkan Sampel', '', '2022-04-18', '00:46:48', 'Sedang Berjalan'),
(2214, 0, 'ahmad mirwan hidayatulloh', '081231189604', 'Swasta', 'Layanan', 'bank', 'silaturahmi', 'penawaran', '2022-04-20', '00:12:57', 'Sedang Berjalan'),
(2215, 0, 'Heri Prabowo', '081328273472', 'Peneliti', 'Lain-lain', 'Balittas', 'Konsultasi terkait layanan UPBS', '', '2022-04-21', '00:04:32', 'Sedang Berjalan'),
(2216, 0, 'yulitasari mila dewi', '081316098018', 'Umum', 'Lain-lain', 'bank syariah indonesia', 'informasi kerjasama kementan dgn bsi', '', '2022-04-21', '00:34:13', 'Sedang Berjalan'),
(2217, 0, 'edy prayitno', '081333986677', 'Swasta', 'Lain-lain', 'konsultan', 'Diskusi', '', '2022-04-22', '00:18:52', 'Sedang Berjalan'),
(2218, 0, 'Prof dr Muhammad azrai', '081318406553', 'Peneliti', 'Lain-lain', 'BALITSETREAL', 'KUNJUNGAN KERJA', '', '2022-04-25', '00:44:30', 'Sedang Berjalan'),
(2219, 0, 'ADIONO', '08214307436', 'Umum', 'Lain-lain', 'BATU', 'MENGANTAR SURAT', '', '2022-04-25', '00:07:03', 'Sedang Berjalan'),
(2220, 0, 'Rahmad Faizal', '0895328741158', 'Mahasiswa', 'Lain-lain', 'Universitas Negeri Malang', 'Untuk uji sampel tanah', '', '2022-04-26', '00:23:09', 'Sedang Berjalan'),
(2221, 0, 'arik abadi', '082141703322', 'Pekerjaan Anda', 'Lain-lain', 'hotel regent', 'PROMOSI HOTEL', '', '2022-04-27', '00:03:09', 'Sedang Berjalan'),
(2222, 0, 'Nur Sriwijayanti', '083834371145', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'meminta tanda tangan Pak Joko Susilo', '', '2022-04-28', '00:35:47', 'Sedang Berjalan'),
(2223, 44, 'mirwam', '081231189604', 'Pekerjaan Anda', 'Layanan', 'bank syariah indonesia', '', '', '2022-05-11', '00:58:26', 'Sedang Berjalan'),
(2224, 158, 'yulitasari mila dewi', '081316098018', 'Umum', 'Lain-lain', 'bank syariah indonesia', '', '', '2022-05-12', '00:34:01', 'Sedang Berjalan'),
(2225, 0, 'ARDY FAZRI MAULANA ', '082232258097', 'Swasta', 'Lain-lain', '', 'PENAWARAN PROMOSI', '', '2022-05-12', '00:38:33', 'Sedang Berjalan'),
(2226, 0, 'Siti Umi Solikah', '081333402729', 'Guru', 'Lain-lain', 'SMKN 1 TUREN', 'menjemput siswa', '', '2022-05-13', '00:07:23', 'Sedang Berjalan'),
(2227, 0, 'EKO SUDAMAR WIDODO', '081249741171', 'Swasta', 'Lain-lain', 'PT. YOSENKO - MALANG', 'MENAWARKAN JASA KONSULTASI ISO SISTEM MANAJEMEN ANTI PENYUAPANN - ISO SMAP 37001:2016', '', '2022-05-13', '00:23:52', 'Sedang Berjalan'),
(2228, 0, 'ROHMAT ILLAHI P', '081235644433', 'PNS', 'Lain-lain', 'KECAMATAN PAKISAJI', 'KOORDINASI PINJAM TEMPAT FGD', '', '2022-05-13', '00:08:50', 'Sedang Berjalan'),
(2229, 0, 'Diya Khoirun nisa', '082332565642', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'menanyakan benih kedelai varietas Dering 3', '', '2022-05-13', '00:25:48', 'Sedang Berjalan'),
(2230, 0, 'Nur Laely Novitasari', '081554602113', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Pendaftaran PKL', '', '2022-05-13', '00:01:19', 'Sedang Berjalan'),
(2231, 0, 'MUSLIMIN', '081252553077', 'Umum', 'Lain-lain', 'BRI', 'KOORDINASI TENTANG BRI LIFE', '', '2022-05-17', '00:08:02', 'Sedang Berjalan'),
(2232, 0, 'LUCKY ANGGARA SAPUTRA', '085779344328', 'Swasta', 'Lain-lain', '', 'MENGIRIM SURAT ', '', '2022-05-17', '00:01:22', 'Sedang Berjalan'),
(2233, 0, 'ARIES S', '081233741819', 'Peneliti', 'Konsultasi Teknologi', 'PT.ADRI MAKMUR PERTIWI', 'DISKUSI DG PROF MAde', '', '2022-05-17', '00:04:24', 'Sedang Berjalan'),
(2234, 0, 'SABRINA', '082245654714', 'Swasta', 'Lain-lain', 'LAB PARAHITA MLG', 'INFORMASI MCU UNTUK PEGAWAI ', '', '2022-05-17', '00:12:25', 'Sedang Berjalan'),
(2235, 0, 'Bayu Aji Pamungkas', '081327969451', 'Peneliti', 'Lain-lain', 'universitas brawijaya', 'Izin penelitian', 'Eksplorasi KUMBANG coccinelidae predator tanaman kedelai', '2022-05-18', '00:41:47', 'Sedang Berjalan'),
(2236, 0, 'muhammad fahmi', '08113660991', 'Swasta', 'Lain-lain', 'PT OCM', 'Bu ekmi', 'Kebersihan', '2022-05-18', '00:00:21', 'Sedang Berjalan'),
(2237, 0, 'budi setyo wijaya', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-05-19', '00:07:32', 'Sedang Berjalan'),
(2238, 0, 'budi setyo wijaya', '081334098901', 'PNS', 'Lain-lain', 'kodim o818', 'koordinasi tempat dg nuraini', '', '2022-05-19', '00:09:21', 'Sedang Berjalan'),
(2239, 0, 'Septi Anita', '08118168146', 'Swasta', 'Lain-lain', 'PT plasma unitech global', 'diskusi keperluan penelitian', '', '2022-05-19', '00:24:25', 'Sedang Berjalan'),
(2240, 0, 'ghea', '085236338138', 'Umum', 'Lain-lain', 'BRI KAWI', 'KUNJUNGAN INSTANSI', '', '2022-05-19', '00:14:59', 'Sedang Berjalan'),
(2241, 0, 'fatimah ratna wulandari', '081235828868', 'Mahasiswa', 'Lain-lain', 'UIN MALANG', 'Mengumpulkan laporan PKL', '', '2022-05-20', '00:09:58', 'Sedang Berjalan'),
(2242, 0, 'Ika Ferry Yunianti', '082226529045', 'Peneliti', 'Lain-lain', 'Balingtan', 'UPBS', 'Pengabilan benih', '2022-05-20', '00:39:00', 'Sedang Berjalan'),
(2243, 0, 'Susi Riyanti', '089521293555', 'PNS', 'Lain-lain', 'Balai Penelitian Ternak ', 'Uji banding sampel dan studi banding parameter uji', '', '2022-05-23', '00:37:39', 'Sedang Berjalan'),
(2244, 0, 'Titiek Purbiati', '0817384517', 'Peneliti', 'Lain-lain', 'bptp Jatim', 'Konsultasi', 'Tanaman pangan horti perkebunan', '2022-05-23', '00:13:37', 'Sedang Berjalan'),
(2245, 0, 'Deby Prestia Indah Oktavia', '081549639510', 'Mahasiswa', 'Lain-lain', 'Poltekkes Malang', 'Konsultasi', '', '2022-05-23', '00:17:16', 'Sedang Berjalan'),
(2246, 0, 'fatimah ratna wulandari', '081235828868', 'Mahasiswa', 'Lain-lain', 'UIN MALANG', 'mengambil surat keterangan selesai pkl', '', '2022-05-23', '00:25:58', 'Sedang Berjalan'),
(2247, 0, 'TYAS AYU OKTAVIANI', '082143159445', 'Swasta', 'Lain-lain', 'AYOOKLIK', 'kirim barang ke pak Yulius', '', '2022-05-23', '00:30:04', 'Sedang Berjalan'),
(2248, 0, 'marvita akhiri rimbasari', '081227148182', 'Penyuluh', 'Lain-lain', 'BPP BULULAWANG', 'ANALISIS BAHAN ORGANIK', '', '2022-05-24', '00:42:54', 'Sedang Berjalan'),
(2249, 0, 'ghea', '085236338138', 'Umum', 'Layanan', 'BRI KAWI', 'KUNJUNGAN INSTANSI', '', '2022-05-24', '00:18:20', 'Sedang Berjalan'),
(2250, 0, 'ANGGER', '082132566980', 'Umum', 'Lain-lain', 'ROYAL ATK', 'BU ESTA', '', '2022-05-24', '00:46:47', 'Sedang Berjalan'),
(2251, 0, 'RAHMAH AYU A', '087877108841', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', '', '', '2022-05-24', '00:14:45', 'Sedang Berjalan'),
(2252, 89, 'Grahita Retno ', '089601742031', 'Swasta', 'Lain-lain', 'PT MUTUAGUNG LESTARI', 'Meeting ISO 9001', 'Meeting ISO 9001', '2022-05-25', '00:38:36', 'Sedang Berjalan'),
(2253, 0, 'budi santoso', '081335780151', 'Peneliti', 'Konsultasi Teknologi', 'PT BISI International', 'konsultasi budidaya kedelai', '', '2022-05-27', '00:56:30', 'Sedang Berjalan'),
(2254, 0, 'Dr. Rajiman, SP.,MP ', '08121519757', 'Dosen', 'Lain-lain', 'Polbangtan Yoma', 'Melaksanakan Survey dalam rangka fieldtrip Mahasiswa Prodi Teknologi Benih Polbangtan Yoma', '', '2022-05-30', '00:39:07', 'Sedang Berjalan'),
(2255, 0, 'Isa Kekes Sukresna', '081358861823', 'Pustakawan', 'Layanan', 'Balittas', 'Konsultasi', '', '2022-05-31', '00:56:09', 'Sedang Berjalan'),
(2256, 0, 'edy prayitno', '081333986611', 'Swasta', 'Lain-lain', '', 'KONSULTASI', '', '2022-05-31', '00:11:05', 'Sedang Berjalan'),
(2257, 0, 'Ichsan Ashiddiqi', '089523894259', 'Umum', 'Lain-lain', 'Balittas', 'Mengambil Printer', '', '2022-05-31', '00:25:13', 'Sedang Berjalan'),
(2258, 0, 'tri agus abdi sholeh', '081334688877', 'PNS', 'Lain-lain', 'dinas pertanian dan ketahanan pangan kota batu', 'koordinasi', '', '2022-06-02', '00:52:33', 'Sedang Berjalan'),
(2259, 0, 'farida maryana', '081945111557', 'Swasta', 'Lain-lain', 'BeSS Resort Hotel Lawang', 'Penawaran dari BeSS Resort Lawang', '', '2022-06-02', '00:56:27', 'Sedang Berjalan'),
(2260, 0, 'Ahmad Haris Wahyudi', '085921259038', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'konsultasi pkl', '', '2022-06-02', '00:01:13', 'Sedang Berjalan'),
(2261, 0, 'teddy tambu', '08118253594', 'Umum', 'Lain-lain', 'yayasan agri sustineri indonesia', 'Bertemu pak muchlis adji ', '', '2022-06-02', '00:46:50', 'Sedang Berjalan'),
(2262, 0, 'Berlian Febrina Amir', '082137004921', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'untuk skripsi', '', '2022-06-02', '00:22:15', 'Sedang Berjalan'),
(2263, 0, 'Zulkarnaen', '087877108841', 'Mahasiswa', 'Layanan', 'universitas brawijaya', '', '', '2022-06-03', '00:06:52', 'Sedang Berjalan'),
(2264, 0, 'anang ashuri', '', 'Umum', 'Lain-lain', '', 'konsultasi', '', '2022-06-03', '00:10:54', 'Sedang Berjalan'),
(2265, 0, 'Suparno', '', 'Swasta', 'Lain-lain', 'Tambak rejo', 'Bertemu dengan Pak Sholihin\r\n', '', '2022-06-03', '00:18:11', 'Sedang Berjalan'),
(2266, 0, 'Atris Suyantohadi ', '081328612332', 'Dosen', 'Lain-lain', 'UGM', 'DISKUSI ', 'KEDELAI ', '2022-06-03', '00:26:41', 'Sedang Berjalan'),
(2267, 0, 'DWI KUSUMA ARDYANTI', '085851281608', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'UNTUK KERJASAMA MITRA PKM', '', '2022-06-03', '00:05:48', 'Sedang Berjalan'),
(2268, 0, 'Rudi Candra Aditama', '085259437758', 'Swasta', 'Lain-lain', 'PT. Medquest Mitra Global', 'Penawaran Alat Laboratorium', '', '2022-06-06', '00:03:11', 'Sedang Berjalan'),
(2269, 0, 'I GUSTI AGUNG AGUS SURYA DHARMA', '08980739622', 'Swasta', 'Lain-lain', 'HOTEL FAIRFIELD BY MARRIOTT BALI KUTA SUNSET ROAD', 'PENAWARAN HOTEL DAN PAKET MEETING ', '', '2022-06-06', '00:14:01', 'Sedang Berjalan'),
(2270, 0, 'WIDA ANGGA MAYRINA', '081331118712', 'Umum', 'Lain-lain', 'PT PEGADAIAN', 'PERMOHONAN SOSIALISAI PRODUK', '', '2022-06-06', '00:35:53', 'Sedang Berjalan'),
(2271, 0, 'JOVINA ADIBA', '089659757417', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'PENGAJUAN MAGANG', '', '2022-06-06', '00:55:01', 'Sedang Berjalan'),
(2272, 0, 'Afrianus Jemaru', '082144174689', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS TRIBHUWANA TUNGGADEWI MALANG', 'INFORMASI PENELITIAN', '', '2022-06-07', '00:16:10', 'Sedang Berjalan'),
(2273, 0, 'FACHRI ROSANDY', '082144956868', 'Swasta', 'Lain-lain', 'bank syariah indonesia', 'SILATURAHMI', '', '2022-06-07', '00:23:13', 'Sedang Berjalan'),
(2274, 0, 'Zulkarnaen', '087877108841', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'konsultasi magang', '', '2022-06-07', '00:32:35', 'Sedang Berjalan'),
(2275, 158, 'WIDA ANGGA MAYRINA', '081331118712', 'Umum', 'Lain-lain', 'PEGADAIAN', 'MENGANTAR SURAT', '', '2022-06-07', '00:28:25', 'Sedang Berjalan'),
(2276, 0, 'Muhammad Hilmi', '082143338638', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Magang', '', '2022-06-08', '00:42:20', 'Sedang Berjalan'),
(2277, 0, 'AHMAD JOHAN PRASETYO', '081617545051', 'Pelajar', 'Lain-lain', 'SMK WALISONGO', 'UNTUK MEMBERIKAN LAPORAN PRAKERIN DAN MENYERAHKAN SERTIFIKAT', '', '2022-06-08', '00:23:17', 'Sedang Berjalan'),
(2278, 0, 'Gayuh Bagas Nurdiansah', '085230956002', 'PNS', 'Konsultasi Teknologi', 'Dinas Pertanian dan Ketahanan Pangan Prov. Jawa Timur', 'Sebagai dasar realisasi program pembinaan budidaya aneka kacang dan umbi di seluruh kab/kota di jawa timur', '', '2022-06-09', '00:18:21', 'Sedang Berjalan'),
(2279, 0, 'M.LUKY ARYA FIRMANSYAH', '088224964667', 'Pelajar', 'Lain-lain', 'SMK N 1 PASURUAN ', 'MENGANTAR LAPORAN ', '', '2022-06-09', '00:04:35', 'Sedang Berjalan'),
(2280, 0, 'siti zahrok', '085855693818', 'Mahasiswa', 'Lain-lain', 'UIN MALANG', 'konsultasi', '', '2022-06-10', '00:29:15', 'Sedang Berjalan'),
(2281, 0, 'Nanda Ayu Sasmita', '085733825348', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Magang', '', '2022-06-13', '00:46:17', 'Sedang Berjalan'),
(2282, 0, 'AYU NUR PUSPITA SARI', '083852173732', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'KONSULTASI SKRIPSI', '', '2022-06-13', '00:16:59', 'Sedang Berjalan'),
(2283, 0, 'Donna Maria Berliana Duntana Lewoema', '082146237851', 'Mahasiswa', 'Lain-lain', 'Universitas Brawijaya', 'konsultasi magang-------', '', '2022-06-13', '00:59:41', 'Sedang Berjalan'),
(2284, 0, 'Yani Kurniawan ', '0895389391321', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Magang', '', '2022-06-13', '00:23:50', 'Sedang Berjalan'),
(2285, 0, 'Dimas ', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-06-15', '00:09:10', 'Sedang Berjalan'),
(2286, 0, 'Dimas', '081259268350', 'Mahasiswa', 'Lain-lain', 'Universitas Kanjuruhan', 'skripsi', '', '2022-06-15', '00:10:06', 'Sedang Berjalan'),
(2287, 0, 'hasby', '082144394837', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'pelayanan publik', '', '2022-06-16', '00:41:32', 'Sedang Berjalan'),
(2288, 0, 'HARIYANTO', '081336951733', 'Swasta', 'Lain-lain', 'LUMAJANG', 'KONSULTASI', '', '2022-06-16', '00:03:33', 'Sedang Berjalan'),
(2289, 0, 'SITI DIANAWATI', '085230790383', 'Swasta', 'Konsultasi Teknologi', 'PT. SEED ORIGIN INTERNATIONL', 'KONSULTASI UBI JALAR KE PAK YUSMANI DAN BU FEBRI', '', '2022-06-17', '00:31:36', 'Sedang Berjalan'),
(2290, 0, 'khoirunnurika', '085748379497', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'konsultasi skripsi', '', '2022-06-20', '00:33:12', 'Sedang Berjalan'),
(2291, 0, 'Annis Mulyani', '087754528787', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Konsultasi data skripsi', '', '2022-06-20', '00:53:57', 'Sedang Berjalan'),
(2292, 0, 'CICIEK PARIATMI', '087856853263', 'Guru', 'Lain-lain', 'SMK NEGERI 1 PASURUAN', 'PKL', '', '2022-06-20', '00:56:11', 'Sedang Berjalan'),
(2293, 0, 'Yun Sondang', '081267454027', 'Dosen', 'Lain-lain', 'Politeknik Pertanian Negeri Payakumbuh', 'Mengikuti pelatihan  ', '', '2022-06-21', '00:02:32', 'Sedang Berjalan'),
(2294, 0, 'Yun Sondang', '081267454027', 'Dosen', 'Lain-lain', 'Politeknik Pertanian Negeri Payakumbuh', 'PELATIHAN PRODUK BENIH TANAMAN', '', '2022-06-22', '00:15:28', 'Sedang Berjalan'),
(2295, 0, 'Nogi Ramadhani', '081937872669', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'konfirmasi magang', '', '2022-06-22', '00:18:08', 'Sedang Berjalan'),
(2296, 0, 'Lutfi Tri', '08977923392', 'PNS', 'Konsultasi Teknologi', 'BBPP ketindan', 'Konswultasi', '', '2022-06-22', '00:25:15', 'Sedang Berjalan'),
(2297, 0, 'POPPY BASLI', '08170101156', 'PNS', 'Lain-lain', 'BPATP BOGOR', 'KOORDINASI IJAS', '', '2022-06-22', '00:55:49', 'Sedang Berjalan'),
(2298, 0, 'jafar', '083834262200', 'Swasta', 'Lain-lain', 'ocm', '', '', '2022-06-23', '00:35:17', 'Sedang Berjalan'),
(2299, 0, 'Afandi', '0859185934847', 'Penyuluh', 'Layanan', 'pt risky putra kasih', '', '', '2022-06-23', '00:47:16', 'Sedang Berjalan'),
(2300, 0, 'risky dewantara', '081336664512', 'Swasta', 'Lain-lain', 'pt risky putra kasih', 'pemberkasan', '', '2022-06-24', '00:45:23', 'Sedang Berjalan'),
(2301, 0, 'andreas widyo k', '08563300582', 'PNS', 'Lain-lain', 'Loka Penelitian Sapi Potong', 'Diskusi MP PNBP', '', '2022-06-24', '00:49:24', 'Sedang Berjalan'),
(2302, 0, 'akhmad rizal alfibrianto', '082245392255', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'pengantaran surat magang', '', '2022-06-27', '00:59:10', 'Sedang Berjalan'),
(2303, 0, 'Zilva Mardhiyah', '082264227965', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Konsultasi skripsi', 'Skripsi', '2022-06-27', '00:21:03', 'Sedang Berjalan'),
(2304, 0, 'Dr. Sumarni Panikkai', '085240742418', 'PNS', 'Lain-lain', 'BPTP Gorontalo', 'KOORDINASI PENYEDIAAN VUB ', '', '2022-06-28', '00:57:52', 'Sedang Berjalan'),
(2305, 0, 'Zilva Mardhiyah', '082264227965', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Bimbingan skripsi', 'Skripsi', '2022-06-28', '00:10:19', 'Sedang Berjalan'),
(2306, 0, 'Nabila Almayda', '082331937346', 'Mahasiswa', 'Lain-lain', 'Universitas Brawijaya', 'PKL', '', '2022-06-28', '00:18:32', 'Sedang Berjalan'),
(2307, 0, 'NURJAHJA IDRIS', '085794941484', 'Umum', 'Konsultasi Teknologi', 'Atroba', 'Silaturrahmi', '', '2022-06-29', '00:58:33', 'Sedang Berjalan'),
(2308, 0, 'FACHRI ROSANDY', '082144956868', 'Umum', 'Lain-lain', 'bank syariah indonesia', 'SILATURAHMI INSTANSI', '', '2022-06-29', '00:58:40', 'Sedang Berjalan'),
(2309, 0, 'darminto', '085235173907', 'Umum', 'Lain-lain', 'pt.berkah tirta madiun ', 'konsultasi', '', '2022-07-01', '00:03:50', 'Sedang Berjalan'),
(2310, 0, 'Mohammad Busyro Jamil', '085707877621', 'Mahasiswa', 'Lain-lain', 'universitas billfath', 'Melengkapi laporan PKL', '', '2022-07-04', '00:26:59', 'Sedang Berjalan'),
(2311, 0, 'ADELIA DEVITA', '081359872586', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'UJIAN SKRIPSI', '', '2022-07-04', '00:20:24', 'Sedang Berjalan'),
(2312, 0, 'aldo leonardo.s', '085820800727', 'Mahasiswa', 'Lain-lain', 'unitri', 'konsultasi kacang-kacangan', '', '2022-07-06', '00:24:22', 'Sedang Berjalan'),
(2313, 0, 'crist', '08973921179', 'Umum', 'Lain-lain', 'GRAND MIAMI HOTEL', 'OFFERING', '', '2022-07-06', '00:31:56', 'Sedang Berjalan'),
(2314, 0, 'Radityo Utomo', '085755311444', 'PNS', 'Lain-lain', 'Kantor Pajak Kepanjen', 'Sosialisasi Perpajakan', 'Perpajakan Instansi Pemerintah', '2022-07-07', '00:07:25', 'Sedang Berjalan'),
(2315, 0, 'Annis Mulyani', '087754528787', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', '', '', '2022-07-07', '00:14:37', 'Sedang Berjalan'),
(2316, 0, 'RIRIN NATASIA', '082386617211', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'menanyakan stock ubi ungu', '', '2022-07-07', '00:23:48', 'Sedang Berjalan'),
(2317, 0, 'putu', '081230596977', 'Swasta', 'Lain-lain', 'shanaya resort malang', 'Penawaran ', '', '2022-07-11', '00:29:08', 'Sedang Berjalan'),
(2318, 0, 'desy', '081357441250', 'Swasta', 'Lain-lain', 'ibis Styles Malang', 'Penawaran Hotel', '', '2022-07-11', '00:30:21', 'Sedang Berjalan'),
(2319, 0, 'Nurul  Farida', '081358199589', 'Penyuluh', 'Lain-lain', 'BPP PAKISAJI', 'peminjaman tempat', '', '2022-07-12', '00:42:11', 'Sedang Berjalan'),
(2320, 0, 'eko widiastopo', '085257572142', 'Swasta', 'Lain-lain', 'PT. TABE', 'Koordinasi dan konsultasi', '', '2022-07-13', '00:15:03', 'Sedang Berjalan'),
(2321, 0, 'David Y', '081805144704', 'Swasta', 'Lain-lain', 'HOTEL GRAND MIAMI', 'Penawaran kamar dan paket meeting', '', '2022-07-14', '00:34:16', 'Sedang Berjalan'),
(2322, 0, 'Muhammad Aulia Rahman', '082153261334', 'Umum', 'Lain-lain', 'UPY.Balai Benih TPH Provinsi Kaalimantan Selatan', 'Adopsi Teknologi Perbanyakan Benih Sumber Palawija', '', '2022-07-14', '00:10:36', 'Sedang Berjalan'),
(2323, 0, 'akhmad muchlisin', '08561025250', 'Swasta', 'Konsultasi Teknologi', 'PT Dyriz Indonesia', 'konsultasi dengn Bpk. Abdullah Taufiq', '', '2022-07-15', '00:44:04', 'Sedang Berjalan'),
(2324, 0, 'Nabilla Eva S', '08155513277', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Konsultasi', '', '2022-07-18', '00:25:22', 'Sedang Berjalan'),
(2325, 0, 'Sulton', '0813541106765', 'PNS', 'Lain-lain', 'Dinas Tanaman Pangan Hortikultura dan Perkebunan', 'BIMTEK PORANG', '', '2022-07-19', '00:15:19', 'Sedang Berjalan'),
(2326, 0, 'SAMUEL', '081803820607', 'Swasta', 'Konsultasi Teknologi', 'PT Amtek', 'AMBIL LAPTOP UNTUK SERVICE', '', '2022-07-19', '00:33:48', 'Sedang Berjalan'),
(2327, 0, 'eko widiastopo', '085257572142', 'Swasta', 'Konsultasi Teknologi', 'PT. TABE', 'Konsultasi', '', '2022-07-19', '00:35:36', 'Sedang Berjalan'),
(2328, 0, 'AFANDI', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-07-19', '00:05:56', 'Sedang Berjalan'),
(2329, 0, 'AFANDI', '0859185934847', 'Pekerjaan Anda', 'Lain-lain', 'pt risky putra kasih', 'KIRIM BERKAS', '', '2022-07-19', '00:06:40', 'Sedang Berjalan'),
(2330, 0, 'EKO NUGROHO DHARMO PUTRO', '081392989683', 'PNS', 'Lain-lain', 'SETJEN', 'MONITORING', '', '2022-07-19', '00:43:13', 'Sedang Berjalan'),
(2331, 0, 'ari bowo swucipto', '081357860049', 'Umum', 'Lain-lain', 'antara', 'liputan', '', '2022-07-25', '00:16:04', 'Sedang Berjalan'),
(2332, 0, 'SONNY', '081340390042', 'Swasta', 'Lain-lain', 'JAKARTA', 'KONSULTASI', '', '2022-07-27', '00:13:50', 'Sedang Berjalan'),
(2333, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-08-01', '00:53:26', 'Sedang Berjalan'),
(2334, 59, 'jafar', '083834262200', 'Umum', 'Lain-lain', 'ocm', '', '', '2022-08-01', '00:06:29', 'Sedang Berjalan'),
(2335, 0, 'SUHARDI', '081233180846', 'Penyuluh', 'Lain-lain', 'DINAS KEHUTANAN CDK MALANG', 'Kordinasi Lembaga Pemerintah ', 'Pengembangan lebah trigona sp di area balitkabi', '2022-08-01', '00:37:53', 'Sedang Berjalan'),
(2336, 0, 'Nadha Rofiatul Fitria', '081234319395', 'Guru', 'Lain-lain', 'SD NEGERI 1 CURUNGREJO', 'Izin Kunjungan wisata edukasi', 'Pengelolaan lingkungan hidup', '2022-08-02', '00:17:28', 'Sedang Berjalan'),
(2337, 0, 'Kartika Nailatul Hidayah', '082257489838', 'Mahasiswa', 'Lain-lain', 'Universitas Negeri Malang', 'Wawancara Varietas Kacang Merah', 'Kacang Merah', '2022-08-03', '00:33:59', 'Sedang Berjalan');
INSERT INTO `tamu` (`tamuID`, `pegawaiID`, `nama`, `no_tlp`, `pekerjaan`, `layanan`, `lembaga`, `tujuan`, `topik`, `tanggal`, `jam`, `status`) VALUES
(2338, 89, 'ari bowo swucipto', '081357860049', 'Pekerjaan Anda', 'Lain-lain', 'balitkabi', 'liputan', 'liputan', '2022-08-03', '00:47:08', 'Sedang Berjalan'),
(2339, 0, 'Miptakhul Hudha', '085708187502', 'Swasta', 'Konsultasi Teknologi', 'AFCO Group', 'Konsultasi Potensi tanaman singkong/ubi kayu', 'Varietas, produktifitas ubi kayu unggul dan pengolahannya', '2022-08-03', '00:06:06', 'Sedang Berjalan'),
(2340, 0, 'Dadang Gusyana', '081320510980', 'Swasta', 'Lain-lain', '', '', '', '2022-08-03', '00:38:45', 'Sedang Berjalan'),
(2341, 0, 'Muhammad Rafi Darajat', '081252560008', 'Penyuluh', 'Lain-lain', 'Dinas Pertanian Kab. Jombang', 'Kunjungan ', 'Persiapan Sekolah |apang IPDMIP Kedelai', '2022-08-04', '00:11:02', 'Sedang Berjalan'),
(2342, 0, 'Novan', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-08-04', '00:29:42', 'Sedang Berjalan'),
(2343, 0, 'Novan', '082257227080', 'Swasta', 'Lain-lain', 'Hotel Ubud Malang', '', 'Penawaran Hotel', '2022-08-04', '00:30:49', 'Sedang Berjalan'),
(2344, 0, 'AGUS SUHADI, MP', '087856623838', 'Penyuluh', 'Konsultasi Teknologi', 'BPP TEMBELANG JOMBANG', 'Study Banding teknologi Kedelai', 'Study Banding', '2022-08-04', '00:45:23', 'Sedang Berjalan'),
(2345, 0, 'Zilva Mardhiyah', '082264227965', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Bimbingan Skripsi', 'Penyerahan Surat', '2022-08-04', '00:23:35', 'Sedang Berjalan'),
(2346, 0, 'Muhammad Surya Siddiq', '08113015702', 'Mahasiswa', 'Penyediaan Benih Sumber', 'FK UB - RS Saiful Anwar', '', 'Permohonan permintaan bahan penelitian kacang hitam (Phaseoulus vulgaris L.)', '2022-08-05', '00:01:03', 'Sedang Berjalan'),
(2347, 0, 'Warpin', '08123032624', 'Umum', 'Layanan', 'Bank Mandiri Taspen', 'Penawaran kerjasama', 'penawaran kerjasama', '2022-08-08', '00:00:20', 'Sedang Berjalan'),
(2348, 0, 'ALFRED TAGALU LADU', '081215057376', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS TRIBHUWANA TUNGGADEWI MALANG', 'PENELITIAN TANAMAN KACANG TANAH ', '', '2022-08-08', '00:13:55', 'Sedang Berjalan'),
(2349, 158, 'Yudi Prasetyo', '081210155155', 'PNS', 'Konsultasi Teknologi', 'Balai Pengelola Alih Teknologi Pertanian', 'Mengantarkan buku 700 Teknologi Balitbangtan', '', '2022-08-09', '00:20:33', 'Sedang Berjalan'),
(2350, 0, 'siti nur ramadhani', '087847093020', 'Mahasiswa', 'Layanan', 'poltek', '', '', '2022-08-09', '00:42:37', 'Sedang Berjalan'),
(2351, 0, 'siti nur ramadhani', '087847093020', 'Mahasiswa', 'Konsultasi Teknologi', 'Poltekkes Malang', 'konsultasi uji laboratorium', 'uji serat', '2022-08-09', '00:43:26', 'Sedang Berjalan'),
(2352, 0, 'Teo Pilus Priyo Wibisono', '081249475413', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'Konsultasi tentang Penelitian', 'Penelitian Benih', '2022-08-10', '00:31:18', 'Sedang Berjalan'),
(2353, 0, 'Rianzani Octavia', '081211793957', 'Swasta', 'Lain-lain', 'PT MAJA BINTANG INDONESIA', 'Diskusi terkait kebutuhan alat alat laboratorium', 'alat alat laboratorium', '2022-08-10', '00:51:05', 'Sedang Berjalan'),
(2354, 0, 'TUBAGUS M. RIFKI, SP.,MM.', '085357937033', 'PNS', 'Konsultasi Teknologi', 'UPTD BBI TP DAN ALSINTAN PROV. LAMPUNG', 'Peningkatan kualitas dan kompetensi SDM Perbenihan', '', '2022-08-10', '00:18:28', 'Sedang Berjalan'),
(2355, 0, 'risky dewantara', '081336664512', 'Umum', 'Lain-lain', 'pt risky putra kasih', 'kunjungan', 'servis alat lab', '2022-08-11', '00:00:45', 'Sedang Berjalan'),
(2356, 0, 'yudi siswamto', '089668472256', 'Umum', 'Lain-lain', 'kantor desa kendalpayak', 'mengambil pengajuan proposal pphbn desa kendalpayak', '', '2022-08-11', '00:25:10', 'Sedang Berjalan'),
(2357, 0, 'andryana', '082257422463', 'Swasta', 'Lain-lain', 'bank syariah indonesia', 'silaturahmi dg bu nila', '', '2022-08-18', '00:50:13', 'Sedang Berjalan'),
(2358, 0, 'sefrilia rahmawati', '085954377983', 'Umum', 'Lain-lain', 'advertising optimum', '', 'informasi katalog dan testimoni produk', '2022-08-18', '00:34:12', 'Sedang Berjalan'),
(2359, 0, 'Sarah', '081230700578', 'PNS', 'Lain-lain', 'BSPJI Surabaya', 'Kalibrasi', 'Kalibrasi', '2022-08-23', '00:36:15', 'Sedang Berjalan'),
(2360, 0, 'risky', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-08-25', '00:17:11', 'Sedang Berjalan'),
(2361, 0, 'risky dewantara', '081336664512', 'Umum', 'Lain-lain', 'pt risky putra kasih', 'servis alat lab', 'perbaikan alat ', '2022-08-25', '00:18:30', 'Sedang Berjalan'),
(2362, 0, 'Erika Putri Ika Cahyani', '082386375124', 'Mahasiswa', 'Perpustakaan', 'universitas brawijaya', 'Mencari literatur', 'Perbanyakan benih', '2022-08-29', '00:37:13', 'Sedang Berjalan'),
(2363, 0, '', '', 'Pekerjaan Anda', 'Layanan', '', '', '', '2022-08-29', '00:48:52', 'Sedang Berjalan'),
(2364, 0, 'muslimin', '081252553077', 'Swasta', 'Lain-lain', 'bri life', 'koordinassi kepala balitkabi', 'pelaksanaan presentasi', '2022-09-06', '00:05:21', 'Sedang Berjalan'),
(2365, 0, 'wenny rosalina', '', 'Penyuluh', 'Lain-lain', 'BPP NGORO', 'STUDY BANDING', 'KACANG DAN UMBI', '2022-09-07', '00:40:45', 'Sedang Berjalan'),
(2366, 0, 'HARUN', '', 'Swasta', 'Lain-lain', 'esq', 'audiensi', 'esq', '2022-09-07', '00:30:43', 'Sedang Berjalan'),
(2367, 0, 'LENI ANDJARWATI', '085732536609', 'Penyuluh', 'Lain-lain', 'DINAS PERTANIAN KAB JOMBANG', 'KUNJUNGAN', 'BUDIDAYA KEDELAI', '2022-09-13', '00:18:18', 'Sedang Berjalan'),
(2368, 0, 'dea bella ', '081216688282', 'Swasta', 'Lain-lain', 'pt indoraj arsip multiguna', 'konsultasi', 'arsip', '2022-09-14', '00:50:52', 'Sedang Berjalan'),
(2369, 0, 'edy prayitno', '081333986677', 'Swasta', 'Lain-lain', 'konsultan', '', 'konsultasi', '2022-09-19', '00:05:35', 'Sedang Berjalan'),
(2370, 0, 'MASYITA', '081214866768', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Pengujian sampel', 'Konsultasi', '2022-09-19', '00:47:47', 'Sedang Berjalan'),
(2371, 0, 'rike paramita', '082232388289', 'Umum', 'Lain-lain', 'BRI', 'koordinasi rekening', 'BRIN', '2022-09-20', '00:05:43', 'Sedang Berjalan'),
(2372, 0, 'TAUFIQ HIDAYATULLOH', '', 'Pelajar', 'Lain-lain', 'SMK WALISONGO', 'KONSULTASI PRAKRIN', '', '2022-09-22', '00:29:59', 'Sedang Berjalan'),
(2373, 0, 'FLAVIA AURELIA', '08158152111', 'Mahasiswa', 'Lain-lain', 'SWISS GERMAN UNIVERSITY', 'KUNJUNGAN ', 'KEDELAI', '2022-09-22', '00:05:15', 'Sedang Berjalan'),
(2374, 0, 'risky dewantara', '081336664512', 'Swasta', 'Lain-lain', 'pt risky putra kasih', 'SERVIS', '', '2022-09-22', '00:16:18', 'Sedang Berjalan'),
(2375, 0, 'risky dewantara', '081336664512', 'Swasta', 'Lain-lain', 'pt risky putra kasih', 'pemberkasan', '', '2022-09-23', '00:58:30', 'Sedang Berjalan'),
(2376, 0, 'Petrus Susilo H.S', '081259860862', 'Umum', 'Lain-lain', 'PT POS INDONESIA (persero)', 'silaturahmi dan maintenance pelanggan ', '', '2022-09-23', '00:35:38', 'Sedang Berjalan'),
(2377, 0, 'Margaretha Silitonga', '081248585106', 'PNS', 'Lain-lain', 'Dinas Tanaman Pangan Hortikultura dan Perkebunan Kab.Sorong', 'Kunjungan dan Pelatihan Kacang dan umbi2an', '', '2022-09-27', '00:07:05', 'Sedang Berjalan'),
(2378, 0, 'TAUFIQ HIDAYATULLOH', '', 'Pelajar', 'Lain-lain', 'SMK WALISONGO', 'PENGAJUAN PROPOSAL', 'PRAKRIN', '2022-09-27', '00:57:23', 'Sedang Berjalan'),
(2379, 0, 'SUSI PURWIYANTI', '081319683568', 'PNS', 'Penyediaan Benih Sumber', 'BALAI PENELITIAN TANAMAN REMPAH DAN OBAT', 'STUDI BANDING UPBS', 'PERBENIHAN', '2022-09-27', '00:56:12', 'Sedang Berjalan'),
(2380, 0, 'FACHRI ROSANDY', '', 'Umum', 'Lain-lain', 'bank syariah indonesia', 'kunjungan instansi', '', '2022-09-28', '00:13:07', 'Sedang Berjalan'),
(2381, 0, 'Esa Ayu Pratama', '082237961160', 'Swasta', 'Lain-lain', 'PT Bayer Indonesia', 'Rapat dengan Dr. Yusmani', 'Pengujian jagung PRG', '2022-09-29', '00:44:54', 'Sedang Berjalan'),
(2382, 0, 'TAUFIQ HIDAYATULLOH', '', 'Pelajar', 'Lain-lain', 'SMK WALISONGO', 'PENGAJUAN SURAT PERMOHONAN', 'PRAKRIN', '2022-09-29', '00:04:59', 'Sedang Berjalan'),
(2383, 0, 'ANITA S', '082257273939', 'Guru', 'Lain-lain', 'SMK N 1 PASURUAN ', 'MENGANTAR ANAK PRAKERIN', '', '2022-09-29', '00:22:31', 'Sedang Berjalan'),
(2384, 0, 'MOHAMMAD RIZKI RIDHANTO', '082324067795', 'PNS', 'Konsultasi Teknologi', 'DIT AKABI JKT', '', '', '2022-09-29', '00:30:50', 'Sedang Berjalan'),
(2385, 0, 'wardani', '082114319952', 'Mahasiswa', 'Lain-lain', 'universitas brawijaya', 'penelitian skripsi', 'kultur jaringan', '2022-09-30', '00:05:35', 'Sedang Berjalan'),
(2386, 0, 'arie widjaja hoo', '087851864158', 'Swasta', 'Konsultasi Teknologi', 'pt papakristo mitra indonesia', '', 'umbi', '2022-10-03', '00:47:38', 'Sedang Berjalan'),
(2387, 0, 'khoirunnurika', '085748379497', 'Mahasiswa', 'Lain-lain', 'UNIVERSITAS MUHAMMADIYAH MALANG', 'Bimbingan skipsi', '', '2022-10-04', '00:29:45', 'Sedang Berjalan'),
(2388, 0, 'SULAIMAN', '081233643121', 'Umum', 'Konsultasi Teknologi', 'DESA TAPANREJO - MUNCAR - BANYUWANGI', 'Pengembangan umbi', '-', '2022-10-04', '00:17:52', 'Sedang Berjalan'),
(2389, 0, 'MUHAMMAD RAMADHAN', '085271388890', 'Swasta', 'Lain-lain', 'bank syariah indonesia', 'SILATURRAHMI', '', '2022-10-04', '00:25:53', 'Sedang Berjalan'),
(2390, 0, '--', '-', 'Pekerjaan Anda', 'Layanan', '-', '', '', '2022-10-26', '00:52:13', 'Sedang Berjalan'),
(2391, 0, 'Fitri Fajriyah', '085733859908', 'Guru', 'Lain-lain', 'SMA Wachid Hasyim 1 Surabaya', 'Kunjungan Kegiatan Tengah Semester Kelas X MIPA dan IPS', '', '2022-10-27', '00:20:07', 'Sedang Berjalan'),
(2392, 0, 'ERRY JATI W', '081249686890', 'Umum', 'Lain-lain', 'DPRD KAB PASURUAN ', 'STUDI BANDING ', '', '2022-10-27', '00:05:46', 'Sedang Berjalan'),
(2393, 0, 'Mohammad Busyro Jamil', '085707877621', 'Mahasiswa', 'Lain-lain', 'universitas billfath', 'melengkapi berkas laporan PKL-', '', '2022-10-27', '00:40:15', 'Sedang Berjalan'),
(2394, 0, 'Yulis Mahardika', '085735739484', 'Swasta', 'Lain-lain', 'BSI KCP Malang Kepanjen 1', 'Silaturahmi ', 'Perkenalan layanan BSI', '2022-10-27', '00:24:12', 'Sedang Berjalan'),
(2395, 0, 'SS Antarlina', '081233704000', 'Peneliti', 'Konsultasi Teknologi', 'BRIN', 'Pengamatan tepung', '', '2022-10-28', '00:39:30', 'Sedang Berjalan'),
(2396, 101, 'kartika sari', '0819382576030', 'PNS', 'Lain-lain', 'kementerian PUPR', 'serah terima aset dan sertipikat', '', '2022-10-28', '00:31:01', 'Sedang Berjalan'),
(2397, 0, 'gunawan eko prasetyo', '081235022951', 'Swasta', 'Lain-lain', 'auto 2000 sukun', 'antar pks dan minta ttd', '', '2022-10-31', '00:36:11', 'Sedang Berjalan'),
(2398, 0, 'IGUSTI AYU MAYA KURNIA', '08123951815', 'PNS', 'Konsultasi Teknologi', 'DINAS PERTANIAN KAB. BULELENG', 'KONSULTASI UNTUK KEGIATAN ANEKA KACANG DAN UMBI (KEDELAI) DAN UBI KAYU', 'PENGEMBANGAN KEDELAI DI KAB. BULELENG, PROVINSI BALI', '2022-11-01', '00:33:06', 'Sedang Berjalan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_users` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `hak_akses` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_users`, `nama`, `username`, `password`, `avatar`, `hak_akses`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Balai', 'kepalabalai', '7897c6f26736480449f321f2a906e5a0', 'profil.png', 'Kepala Balai', '2018-08-13 16:22:07', ''),
(2, 'Kepala Unit', 'kepalaunit', '718580aad96351063deb03af2f12b7bf', 'profil.png', 'Kepala Unit', '2018-08-13 16:22:07', ''),
(7, 'Andhika Maulana Effendi', 'Maulazio', '$2y$10$q1NFQtqn02BqZx/sKbZCAeGhgTnT4SXgE/TndNLn8HEihs/NtoZG2', '', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `vcd`
--

CREATE TABLE `vcd` (
  `vcd_id` char(4) COLLATE latin1_general_ci NOT NULL,
  `vcd_judul` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `produksi` year(4) NOT NULL,
  `ringkasan` text COLLATE latin1_general_ci NOT NULL,
  `photo` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `vcd`
--

INSERT INTO `vcd` (`vcd_id`, `vcd_judul`, `produksi`, `ringkasan`, `photo`, `link`) VALUES
('cd05', 'Pemanfaatan Kulit Buah Kakao (KBK) sebagai pakan tambahan ternak ruminansia', 2007, 'Berisi uraian beberapa cara pemanfaatan limbah buah kakao menjadi beebrapa produk dengan aplikasi teknologi yang sederhana', 'vcd/kakao.jpg', 'vcd/kakao.dat'),
('cd07', 'Teknologi Pembuatan Keripik Kentang', 2006, 'Berisi metode instruktusional pembuatan Keripik Kentang dengan teknologi yang cukup sederhana', 'vcd/kentang.jpg', 'vcd/kentang.dat'),
('cd08', 'Teknologi Pembuatan Virgin Coconut Oil', 2006, 'Berisi metode instruktusional pembuatan Virgin Coconut Oil dengan teknologi dan peralatan yang cukup sederhana', 'vcd/vco.jpg', 'vcd/vco.dat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id_izin`);

--
-- Indexes for table `kepuasan`
--
ALTER TABLE `kepuasan`
  ADD PRIMARY KEY (`id_kepuasan`);

--
-- Indexes for table `last_login`
--
ALTER TABLE `last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`link_ID`);

--
-- Indexes for table `login_session`
--
ALTER TABLE `login_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuadmin`
--
ALTER TABLE `menuadmin`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`onlineID`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawaiID`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`tamuID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `vcd`
--
ALTER TABLE `vcd`
  ADD PRIMARY KEY (`vcd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id_izin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kepuasan`
--
ALTER TABLE `kepuasan`
  MODIFY `id_kepuasan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_login`
--
ALTER TABLE `last_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `link_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login_session`
--
ALTER TABLE `login_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menuadmin`
--
ALTER TABLE `menuadmin`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `onlineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawaiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `tamuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2399;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
