-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 04:40 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelayanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`idaplikasi`, `nama`) VALUES
(1, 'eOffice (Tata Naskah Dinas Elektronik) TNDE'),
(2, 'eAbsensi'),
(3, 'LPSE SPSE'),
(4, 'eDokumen'),
(5, 'SysDoc');

-- --------------------------------------------------------

--
-- Table structure for table `pemohon`
--

CREATE TABLE `pemohon` (
  `idpemohon` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `idsatminkal` int(11) NOT NULL,
  `idunker` int(11) NOT NULL,
  `ideselon3` varchar(11) NOT NULL,
  `idpropinsi` int(11) NOT NULL,
  `idaplikasi` int(11) NOT NULL,
  `masalah` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `hp` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pemohon`
--

INSERT INTO `pemohon` (`idpemohon`, `nama`, `nip`, `idsatminkal`, `idunker`, `ideselon3`, `idpropinsi`, `idaplikasi`, `masalah`, `keterangan`, `email`, `hp`, `tanggal`, `file`) VALUES
(93, 'terd', '232', 0, 0, '', 0, 0, '', '', '', '', '2017-07-18 14:18:49', ''),
(107, 'asssdf', '123123', 5, 38, 'afadfaf', 14, 4, 'sadfasdfa', 'asdfsadfsadf', 'asdfsdf', '423423423', '2017-07-21 16:41:43', 'pp7.jpg'),
(108, 'danang', '198903042014011001', 7, 92, 'kabag', 11, 1, 'tdk bs upload inbox', 'berkali-kali', 'hanungfebrianto@gmail.com', '081328260178', '2017-07-21 17:08:14', 'pp8.jpg'),
(109, 'danang', '198903042014011001', 6, 77, 'TU', 7, 1, 'tdk bs upload inbox', 'pdf', 'han@gm.com', '081328260178', '2017-07-24 15:25:06', '2017-07-12trx39560.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `propinsi`
--

CREATE TABLE `propinsi` (
  `idpropinsi` int(11) NOT NULL,
  `pulau` int(1) NOT NULL,
  `uraipropinsi` varchar(25) DEFAULT NULL,
  `singkat` varchar(20) NOT NULL,
  `wilayah` int(1) NOT NULL,
  `lokasi` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propinsi`
--

INSERT INTO `propinsi` (`idpropinsi`, `pulau`, `uraipropinsi`, `singkat`, `wilayah`, `lokasi`) VALUES
(1, 1, 'NANGGRO ACEH DARUSSALAM', 'NAD', 1, 1),
(2, 1, 'SUMATERA UTARA', 'SUMUT', 1, 1),
(3, 1, 'SUMATERA BARAT', 'SUMBAR', 1, 1),
(4, 1, 'RIAU', 'RIAU', 1, 1),
(5, 1, 'JAMBI', 'JAMBI', 1, 1),
(6, 1, 'SUMATERA SELATAN', 'SUMSEL', 1, 2),
(7, 1, 'BENGKULU', 'BENGKULU', 1, 1),
(8, 1, 'LAMPUNG', 'LAMPUNG', 1, 2),
(9, 1, 'KEP. BANGKA BELITUNG', 'BABEL', 1, 1),
(10, 1, 'KEP. RIAU', 'KEPRI', 1, 1),
(11, 2, 'DKI JAKARTA', 'DKI', 1, 2),
(12, 2, 'JAWA BARAT', 'JABAR', 1, 6),
(13, 2, 'JAWA TENGAH', 'JATENG', 1, 2),
(14, 2, 'BANTEN', 'BANTEN', 1, 2),
(15, 2, 'JAWA TIMUR', 'JATIM', 2, 3),
(16, 2, 'D.I. YOGYAKARTA', 'DIY', 1, 2),
(17, 3, 'BALI', 'BALI', 2, 3),
(18, 3, 'NUSA TENGGARA BARAT', 'NTB', 2, 3),
(19, 3, 'NUSA TENGGARA TIMUR', 'NTT', 2, 3),
(20, 4, 'KALIMANTAN BARAT', 'KALBAR', 2, 2),
(21, 4, 'KALIMANTAN TENGAH', 'KALTENG', 2, 7),
(22, 4, 'KALIMANTAN SELATAN', 'KALSEL', 2, 7),
(23, 4, 'KALIMANTAN TIMUR', 'KALTIM', 2, 7),
(24, 5, 'SULAWESI UTARA', 'SULUT', 2, 4),
(25, 5, 'SULAWESI TENGAH', 'SULTENG', 2, 4),
(26, 5, 'SULAWESI SELATAN', 'SULSEL', 2, 4),
(27, 5, 'SULAWESI TENGGARA', 'SULTRA', 2, 4),
(28, 5, 'SULAWESI BARAT', 'SULBAR', 2, 4),
(29, 5, 'GORONTALO', 'GORONTALO', 2, 4),
(30, 6, 'MALUKU', 'MALUKU', 2, 4),
(31, 6, 'MALUKU UTARA', 'MALUT', 2, 4),
(32, 7, 'PAPUA', 'PAPUA', 2, 4),
(33, 7, 'PAPUA BARAT', 'PAPUA BRT', 2, 4),
(34, 7, 'TELUK CENDRAWASIH', 'TELUK CDR', 2, 4),
(0, 0, 'Silahkan Pilih Propinsi', 'Propinsi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `satminkal`
--

CREATE TABLE `satminkal` (
  `idsatminkal` int(11) NOT NULL,
  `parunker` int(1) NOT NULL,
  `uraiunker` varchar(100) NOT NULL,
  `singkat` varchar(10) NOT NULL,
  `kodesat` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satminkal`
--

INSERT INTO `satminkal` (`idsatminkal`, `parunker`, `uraiunker`, `singkat`, `kodesat`) VALUES
(1, 0, 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'PUPR', '00'),
(2, 1, 'Sekretariat Jenderal', 'SETJEN', '01'),
(3, 1, 'Inspektorat Jenderal', 'ITJEN', '02'),
(5, 1, 'Direktorat Jenderal Sumber Daya Air', 'SDA', '04'),
(6, 1, 'Direktorat Jenderal Bina Marga', 'BM', '05'),
(7, 1, 'Direktorat Jenderal Cipta Karya', 'CK', '06'),
(8, 1, 'Direktorat Jenderal Bina Konstruksi', 'DJBK', '07'),
(11, 1, 'Badan Pengembangan Infrastruktur Wilayah', 'BPIW', '10'),
(9, 1, 'Badan Penelitian dan Pengembangan', 'BALITBANG', '08'),
(10, 1, 'Badan Pengembangan Sumber Daya Manusia', 'BPSDM', '09'),
(12, 1, 'Direktorat Jenderal Pembiayaan Perumahan', 'DJPP', '11'),
(13, 1, 'Direktorat Jenderal Penyediaan Perumahan', 'DJPP', '12');

-- --------------------------------------------------------

--
-- Table structure for table `unker`
--

CREATE TABLE `unker` (
  `idunker` int(11) NOT NULL,
  `parunker` int(1) NOT NULL,
  `uraiunker` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unker`
--

INSERT INTO `unker` (`idunker`, `parunker`, `uraiunker`) VALUES
(1, 0, 'Kementerian Pekerjaan Umum dan Perumahan Rakyat'),
(2, 1, 'Sekretariat Jenderal'),
(3, 1, 'Inspektorat Jenderal'),
(5, 1, 'Direktorat Jenderal Sumber Daya Air'),
(6, 1, 'Direktorat Jenderal Bina Marga'),
(7, 1, 'Direktorat Jenderal Cipta Karya'),
(8, 1, 'Badan Pembinaan Konstruksi'),
(9, 1, 'Badan Penelitian dan Pengembangan'),
(10, 2, 'Biro Perencanaan dan Kerja Sama Luar Negeri'),
(11, 2, 'Biro Kepegawaian dan Ortala'),
(12, 2, 'Biro Keuangan'),
(13, 2, 'Biro Umum'),
(14, 2, 'Biro Hukum'),
(15, 2, 'Pusat Data dan Teknologi Informasi'),
(16, 2, 'Pusat Pendidikan dan Pelatihan'),
(17, 2, 'Biro Komunikasi Publik'),
(18, 2, 'Pusat Kajian Strategis'),
(19, 2, 'Biro Pengelolaan BMN dan Layanan Pengadaan'),
(20, 3, 'Sekretariat Inspektorat Jenderal'),
(21, 3, 'Inspektorat Wilayah I'),
(22, 3, 'Inspektorat Wilayah II'),
(23, 3, 'Inspektorat Wilayah III'),
(24, 3, 'Inspektorat Wilayah IV'),
(25, 3, 'Inspektorat V'),
(26, 4, 'Sekretariat Direktorat Jenderal'),
(27, 4, 'Direktorat Bina Program dan Kemitraan'),
(28, 4, 'Direktorat Penataan Ruang Wilayah Nasional'),
(29, 4, 'Direktorat Perkotaan'),
(30, 4, 'Direktorat Pembinaan Penataan Ruang Daerah Wilayah I'),
(31, 4, 'Direktorat Pembinaan Penataan Ruang Daerah Wilayah II'),
(32, 4, 'Balai Informasi Penataan Ruang'),
(33, 5, 'Sekretariat Direktorat Jenderal'),
(34, 5, 'DIREKTORAT PENGEMBANGAN JARINGAN\r\nSUMBER DAYA AIR'),
(35, 5, 'Direktorat Bina Penatagunaan Sumber Daya Air'),
(36, 5, 'Direktorat Sungai dan Pantai'),
(37, 5, 'Direktorat Irigasi dan Rawa'),
(38, 5, 'Direktorat Bina Operasi dan Pemeliharaan'),
(39, 5, 'Sekretariat Dewan Sumber Daya Air'),
(40, 5, 'BBWS Sumatera VIII'),
(41, 5, 'BBWS Mesuji-Sekampung'),
(42, 5, 'BBWS Cidanau-Ciujung-Cidurian'),
(43, 5, 'BBWS Ciliwung-Cisadane'),
(44, 5, 'BBWS Citarum'),
(45, 5, 'BBWS Cimanuk-Cisanggarung'),
(46, 5, 'BBWS Citanduy'),
(47, 5, 'BBWS Serayu-Opak'),
(48, 5, 'BBWS Bengawan Solo'),
(49, 5, 'BBWS Pemali Juana'),
(50, 5, 'BBWS Brantas'),
(51, 5, 'BBWS Pompengan-Jeneberang'),
(52, 5, 'BWS Sumatera I'),
(53, 5, 'BWS Sumatera II'),
(54, 5, 'BWS Sumatera III'),
(55, 5, 'BWS Sumatera IV'),
(56, 5, 'BWS Sumatera V'),
(57, 5, 'BWS Sumatera VI'),
(58, 5, 'BWS Sumatera VII'),
(59, 5, 'BWS Kalimantan I'),
(60, 5, 'BWS Kalimantan II'),
(61, 5, 'BWS Kalimantan III'),
(62, 5, 'BWS Sulawesi I'),
(63, 5, 'BWS Sulawesi II'),
(64, 5, 'BWS Sulawesi III'),
(65, 5, 'BWS Sulawesi IV'),
(66, 5, 'BWS Maluku'),
(67, 5, 'BWS Maluku Utara'),
(68, 5, 'BWS Bali-Penida'),
(69, 5, 'BWS Nusa Tenggara I'),
(70, 5, 'BWS Nusa Tenggara II'),
(71, 5, 'BWS Papua'),
(72, 5, 'BWS Papua Barat'),
(73, 5, 'Balai Bendungan'),
(74, 6, 'Sekretariat Direktorat Jenderal'),
(75, 6, 'Direktorat Bina Program'),
(76, 6, 'Direktorat Bina Teknik'),
(77, 6, 'Direktorat Bina Pelaksanaan Wilayah I'),
(78, 6, 'Direktorat Bina Pelaksanaan Wilayah II'),
(79, 6, 'Direktorat Bina Pelaksanaan Wilayah III'),
(80, 6, 'Sekretariat BPJT'),
(81, 6, 'BPJN VIII'),
(82, 6, 'BPJN IX'),
(83, 6, 'BPJN XI'),
(84, 6, 'BBPJN I'),
(85, 6, 'BBPJN II'),
(86, 6, 'BBPJN III'),
(87, 6, 'BBPJN IV'),
(88, 6, 'BBPJN V'),
(89, 6, 'BBPJN VI'),
(90, 6, 'BBPJN VII'),
(91, 6, 'BBPJN X'),
(92, 7, 'Sekretariat Direktorat Jenderal'),
(93, 7, 'Direktorat Keterpaduan Infrastruktur Permukiman'),
(94, 7, 'Direktorat Pengembangan Kawasan Permukiman'),
(95, 7, 'Direktorat Bina Penataan Bangunan'),
(96, 7, 'Direktorat Pengembangan Sistem Air Minum'),
(97, 7, 'Direktorat Pengembangan Penyehatan Lingkungan Permukiman'),
(98, 7, 'Sekretariat BPPSPAM'),
(99, 7, 'Balai Teknik Air Minum dan Sanitasi Wilayah I'),
(100, 7, 'Balai Teknik Air Minum dan Sanitasi Wilayah II'),
(101, 8, 'Sekretariat Direktorat Jenderal'),
(102, 8, 'DIREKTORAT BINA KELEMBAGAAN DAN\r\nSUMBER DAYA JASA KONSTRUKSI'),
(103, 8, 'DIREKTORAT BINA PENYELENGGARAAN\r\nJASA KONSTRUKSI'),
(104, 8, 'DIREKTORAT BINA INVESTASI INFRASTRUKTUR'),
(105, 8, 'DIREKTORAT BINA KOMPETENSI DAN\r\nPRODUKTIVITAS KONSTRUKSI'),
(106, 9, 'Sekretariat Badan'),
(107, 9, 'Pusat Penelitan dan Pengembangan Sumber Daya Air'),
(108, 9, 'Pusat Penelitan dan Pengembangan Jalan dan Jembatan'),
(109, 9, 'Pusat Penelitan dan Pengembangan Perumahan dan Permukiman'),
(110, 9, 'Pusat Penelitan dan Pengembangan Kebijakan dan Penerapan Teknologi'),
(111, 14, 'Instansi Lain'),
(112, 8, 'DIREKTORAT KERJA SAMA DAN PEMBERDAYAAN'),
(113, 10, 'SEKRETARIAT BADAN'),
(114, 10, 'PUSAT PENILAIAN KOMPETENSI DAN\r\nPEMANTAUAN KINERJA'),
(115, 10, 'PUSAT PENDIDIKAN DAN PELATIHAN SUMBER DAYA AIR\r\nDAN JASA KONSTRUKSI'),
(116, 10, 'PUSAT PENDIDIKAN DAN PELATIHAN JALAN, PERUMAHAN,\r\nPERMUKIMAN, DAN PENGEMBANGAN WILAYAH'),
(117, 10, 'PUSAT PENDIDIKAN DAN PELATIHAN MANAJEMEN DAN\r\nPENGEMBANGAN JABATAN FUNGSIONAL'),
(118, 11, 'SEKRETARIAT BADAN'),
(119, 11, 'PUSAT PERENCANAAN INFRASTRUKTUR PEKERJAAN\r\nUMUM DAN PERUMAHAN RAKYAT'),
(120, 11, 'PUSAT PEMROGRAMAN DAN EVALUASI KETERPADUAN\r\nINFRASTRUKTUR PEKERJAAN UMUM DAN\r\nPERUMAHAN RAKYAT'),
(121, 11, 'PUSAT PENGEMBANGAN KAWASAN STRATEGIS'),
(122, 11, 'PUSAT PENGEMBANGAN KAWASAN PERKOTAAN'),
(123, 12, 'SEKRETARIAT DIREKTORAT JENDERAL'),
(124, 12, 'DIREKTORAT PERENCANAAN PEMBIAYAAN\r\nPERUMAHAN'),
(125, 12, 'DIREKTORAT POLA PEMBIAYAAN PERUMAHAN'),
(126, 12, 'DIREKTORAT PENDAYAGUNAAN SUMBER\r\nPEMBIAYAAN PERUMAHAN'),
(127, 12, 'DIREKTORAT BINA SISTEM PEMBIAYAAN\r\nPERUMAHAN'),
(128, 12, 'DIREKTORAT EVALUASI BANTUAN\r\nPEMBIAYAAN PERUMAHAN'),
(129, 13, 'SEKRETARIAT DIREKTORAT JENDERAL'),
(130, 13, 'DIREKTORAT PERENCANAAN PENYEDIAAN\r\nPERUMAHAN'),
(131, 13, 'DIREKTORAT RUMAH SUSUN'),
(132, 13, 'DIREKTORAT RUMAH KHUSUS'),
(133, 13, 'DIREKTORAT RUMAH SWADAYA'),
(134, 13, 'DIREKTORAT RUMAH UMUM DAN KOMERSIAL'),
(135, 2, 'PUSAT PENGELOLAAN DANA\r\nPEMBIAYAAN PERUMAHAN'),
(136, 5, 'PUSAT BENDUNGAN'),
(137, 5, 'PUSAT AIR TANAH DAN AIR BAKU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`idaplikasi`);

--
-- Indexes for table `pemohon`
--
ALTER TABLE `pemohon`
  ADD PRIMARY KEY (`idpemohon`);

--
-- Indexes for table `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`idpropinsi`);

--
-- Indexes for table `satminkal`
--
ALTER TABLE `satminkal`
  ADD PRIMARY KEY (`idsatminkal`);

--
-- Indexes for table `unker`
--
ALTER TABLE `unker`
  ADD PRIMARY KEY (`idunker`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemohon`
--
ALTER TABLE `pemohon`
  MODIFY `idpemohon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `idpropinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `satminkal`
--
ALTER TABLE `satminkal`
  MODIFY `idsatminkal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `unker`
--
ALTER TABLE `unker`
  MODIFY `idunker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
