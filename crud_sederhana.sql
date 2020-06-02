-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 08:41 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_sederhana`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `telp`, `email`, `alamat`) VALUES
(1, 'Egi Erdian', '082127703277', 'egierdian1@gmail.com', 'Bandung'),
(6, 'Janet Betania Yuliarti S.Sos', '+4978071908983', 'parman13@gmail.com', 'Jr. Salam No. 199, Padangpanjang ....14663, JaTeng'),
(7, 'Edison Suwarno', '+9426489071216', 'salahudin.mursinin@yuniar.biz.id', 'Kpg. Untung Suropati No. 648, Subulussalam 59939, Banten'),
(8, 'Hilda Aryani S.Gz', '+5294829079693', 'susanti.wisnu@gmail.com', 'Dk. Baiduri No. 101, Banda Aceh 99517, SumBar'),
(10, 'Irma Usada', '+5265331598891', 'uwais.harsanto@gmail.co.id', 'Psr. Basoka No. 414, Jambi 14135, SumSel'),
(11, 'Cinta Yulia Wastuti', '+5374747799317', 'vfirgantoro@anggraini.in', 'Jr. Sumpah Pemuda No. 237, Jambi 61617, SulUt'),
(12, 'Keisha Safina Pudjiastuti', '+6944238979656', 'whalimah@wijayanti.desa.id', 'Jln. Baha No. 493, Bengkulu 70032, Gorontalo'),
(13, 'Karimah Yessi Widiastuti', '+3736460971658', 'warsita75@astuti.desa.id', 'Dk. R.M. Said No. 304, Sawahlunto 16080, KalSel'),
(14, 'Bambang Tamba M.Kom.', '+3180128925974', 'unovitasari@tampubolon.my.id', 'Ds. Uluwatu No. 999, Malang 32697, Bengkulu'),
(15, 'Cemplunk Sihombing S.T.', '+7502084098256', 'diswahyudi@hasanah.desa.id', 'Dk. Yos Sudarso No. 344, Bandar Lampung 94028, Aceh'),
(16, 'Titin Maryati', '+6777040060971', 'pranowo.ridwan@dongoran.or.id', 'Jr. Karel S. Tubun No. 239, Balikpapan 62279, NTB'),
(17, 'Gamblang Hutagalung M.TI.', '+5261825935872', 'pratiwi.vivi@wibisono.sch.id', 'Jr. Juanda No. 968, Banda Aceh 93360, SulTeng'),
(18, 'Ghani Prasetya', '+4449918658723', 'erik.sihotang@mardhiyah.biz', 'Kpg. Bakau Griya Utama No. 518, Padangsidempuan 21163, SulTeng'),
(19, 'Karsa Mangunsong', '+9266579502048', 'mahendra.yance@sirait.com', 'Dk. Agus Salim No. 781, Administrasi Jakarta Pusat 39985, Jambi'),
(20, 'Cici Prastuti', '+9856086447286', 'utama.kariman@prasetya.my.id', 'Ki. Sunaryo No. 589, Manado 26318, KalUt'),
(21, 'Salman Samosir', '+7276679426693', 'okusumo@gunawan.asia', 'Jln. Zamrud No. 624, Jayapura 49151, Jambi'),
(22, 'Garang Kuswoyo', '+3141829341753', 'manah12@yahoo.co.id', 'Psr. Yap Tjwan Bing No. 957, Administrasi Jakarta Timur 91829, KalBar'),
(23, 'Shania Wastuti S.H.', '+6287748023182', 'puspasari.shakila@mandala.biz.id', 'Kpg. Ciumbuleuit No. 664, Parepare 13332, Gorontalo'),
(24, 'Kania Uchita Andriani S.H.', '+9409527451429', 'andriani.dinda@astuti.co', 'Gg. Suprapto No. 778, Solok 73988, SulTeng'),
(25, 'Harjasa Samsul Gunarto', '+6312444384524', 'eman.hutagalung@gmail.com', 'Gg. Kyai Gede No. 441, Administrasi Jakarta Barat 30202, KalUt'),
(26, 'Lukman Nashiruddin S.IP', '+8387450549369', 'hutasoit.paramita@yahoo.co.id', 'Psr. Wahid No. 647, Tanjungbalai 73063, SulBar'),
(27, 'Martana Wibisono S.E.I', '+8495178308524', 'nuraini.drajat@yahoo.com', 'Kpg. Pahlawan No. 73, Surabaya 79927, DIY'),
(28, 'Natalia Safitri S.H.', '+3294889186640', 'yulia79@nuraini.mil.id', 'Dk. Industri No. 708, Bau-Bau 94708, Banten'),
(29, 'Candra Budiman', '+1189416052001', 'vanesa.riyanti@yahoo.co.id', 'Kpg. Baja Raya No. 575, Batu 15332, Banten'),
(30, 'Yunita Handayani', '+8005700397426', 'virawan@yahoo.com', 'Ki. K.H. Maskur No. 622, Jayapura 46301, JaTim'),
(31, 'Cahyo Wibowo M.Farm', '+2880902798522', 'yhardiansyah@yahoo.co.id', 'Psr. Sampangan No. 746, Administrasi Jakarta Pusat 82472, SulUt'),
(32, 'Yani Rahimah', '+2989406683557', 'julia.waskita@pertiwi.com', 'Kpg. Sukajadi No. 177, Palu 89891, SumBar'),
(33, 'Putri Agustina', '+7821810517817', 'cornelia.lestari@yahoo.com', 'Kpg. Flores No. 37, Bandar Lampung 59767, Lampung'),
(34, 'Ciaobella Padmi Agustina S.Pd', '+7375926574711', 'mumpuni.nasyidah@yahoo.com', 'Dk. Bakit  No. 376, Metro 88280, Maluku'),
(35, 'Cengkal Sihombing', '+2445436495841', 'vino78@gmail.com', 'Jln. Basuki Rahmat  No. 162, Padangpanjang 22930, SulTra'),
(36, 'Kani Chelsea Palastri', '+4108766007256', 'gunawan.winda@gmail.com', 'Jr. Rajawali Barat No. 520, Tangerang 50822, KalBar'),
(37, 'Daliono Wasita', '+6324916590064', 'opung00@gmail.co.id', 'Gg. Gajah Mada No. 161, Pekalongan 76279, SulTra'),
(38, 'Labuh Prasasta', '+1733837265333', 'mila21@yahoo.com', 'Gg. Salam No. 260, Administrasi Jakarta Pusat 59541, KepR'),
(39, 'Daru Wadi Narpati S.Pt', '+7670694734914', 'mnamaga@gmail.co.id', 'Ds. Bagonwoto  No. 554, Tangerang Selatan 77113, Banten'),
(40, 'Tina Gawati Mardhiyah M.Ak', '+8621413278538', 'bakijan91@yahoo.co.id', 'Dk. Ters. Pasir Koja No. 587, Cilegon 71068, DKI'),
(41, 'Gandi Taufan Winarno S.Pd', '+1078620605405', 'budi67@gmail.co.id', 'Jr. Dago No. 893, Batam 61577, Papua'),
(42, 'Kusuma Ardianto', '+4578014947361', 'elon.utami@halimah.tv', 'Psr. Pasteur No. 237, Bogor 85226, Papua'),
(43, 'Indah Oktaviani', '+6368509510399', 'dmulyani@yahoo.co.id', 'Ki. Diponegoro No. 246, Tasikmalaya 62877, KalTim'),
(44, 'Paulin Safitri', '+2461856191351', 'megantara.yuni@yahoo.co.id', 'Psr. Bakti No. 259, Administrasi Jakarta Pusat 79382, SumUt'),
(45, 'Fitriani Laksita S.Farm', '+2344458430345', 'harjasa88@yahoo.co.id', 'Jr. Bambon No. 536, Padangsidempuan 56920, Maluku'),
(46, 'Jagapati Kusumo', '+6101579781331', 'dina79@yahoo.com', 'Jln. Babah No. 714, Tangerang Selatan 13065, Maluku'),
(47, 'Sadina Suryatmi S.Gz', '+4434431734523', 'genta43@usada.web.id', 'Jr. Otto No. 894, Semarang 95824, JaTeng'),
(48, 'Daniswara Kusumo', '+5973776423008', 'mpermadi@yahoo.com', 'Jr. Ronggowarsito No. 445, Tasikmalaya 81333, SulTra'),
(49, 'Zahra Rahmawati', '+8270182398789', 'kemba21@suartini.in', 'Gg. Baja Raya No. 242, Administrasi Jakarta Selatan 54886, Bali'),
(50, 'Fitria Suryatmi', '+3774381872054', 'fsitompul@yahoo.co.id', 'Gg. Kartini No. 873, Palembang 72034, Bengkulu'),
(51, 'Dinda Rahayu M.Farm', '+3030026345309', 'drajat93@agustina.name', 'Ki. Jayawijaya No. 956, Pekalongan 43042, KalTim'),
(52, 'Teguh Kusumo', '+9227437037901', 'sakura.firmansyah@usada.co', 'Psr. Labu No. 343, Bengkulu 76746, JaBar'),
(53, 'Putri Diana Lestari S.E.', '+6639969106990', 'knatsir@pratama.info', 'Kpg. Bazuka Raya No. 874, Sungai Penuh 25389, Bengkulu'),
(54, 'Zahra Puspasari', '+6454652482929', 'sinaga.samiah@yahoo.com', 'Ds. Jambu No. 222, Payakumbuh 77240, Banten'),
(55, 'Paris Sudiati', '+6214512383092', 'carla92@handayani.asia', 'Dk. Bara No. 856, Jambi 12560, SulTra'),
(61, '42', 'd', 'oeoej', 'dw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
