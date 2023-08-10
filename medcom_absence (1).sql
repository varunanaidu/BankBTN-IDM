-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2019 at 08:33 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medcom_absence`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitor`
--

CREATE TABLE `tbl_visitor` (
  `id` int(11) NOT NULL,
  `vis_name` varchar(100) NOT NULL,
  `vis_title` varchar(100) DEFAULT NULL,
  `vis_ket` varchar(100) DEFAULT NULL,
  `vis_attendance` datetime DEFAULT NULL,
  `is_attend` int(11) NOT NULL DEFAULT 0 COMMENT '0 = No ; 1 = Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_visitor`
--

INSERT INTO `tbl_visitor` (`id`, `vis_name`, `vis_title`, `vis_ket`, `vis_attendance`, `is_attend`) VALUES
(1, 'A. Adhityawarman', 'Director Indonesia Scholarship Center', 'Others', NULL, 0),
(2, 'Ade Adityawarman ', 'Humas BPJS TK', 'Sales', NULL, 0),
(3, 'Ade Heri ', 'GM Commercial Andalin', 'Sales', NULL, 0),
(4, 'Adhi Saudi', 'Advo PR Indonesia', 'Kanal', NULL, 0),
(5, 'Adidharma Sudrajad ', 'Brand Director Noore', 'Sales', NULL, 0),
(6, 'Aditya Purnama', 'Marketing Megapro Comm Agency', 'Sales', NULL, 0),
(7, 'Adli Hakim', 'Manager Ext. Relation & Corporate Image Care KCI', 'Sales', NULL, 0),
(8, 'Adrianus Meliala', 'Komisioner Ombudsman', 'News', NULL, 0),
(9, 'Adyanto Pratono', 'Juni Records', 'News', NULL, 0),
(10, 'Agus Harimurti Yudhoyono', 'Wakil Ketua Umum Partai Demokrat', 'News', NULL, 0),
(11, 'Agus Rahardjo', 'Ketua KPK', 'VIP', NULL, 0),
(12, 'Akbar', 'Supervisor Community Relations KCI', 'Sales', NULL, 0),
(13, 'Alan Perdana Putra', 'Bran Comm. Manager Investree', 'Sales', NULL, 0),
(14, 'Albert Medwin/Kamila', 'Account Strategist DG Traffic', 'Sales', NULL, 0),
(15, 'Alex Fenby', 'News Partnership Lead Southeast Asia Facebook', 'VIP', NULL, 0),
(16, 'Alim ', 'Owner Cap Kapak ', 'Sales', NULL, 0),
(17, 'Alvin Tse', 'Xiaomi Indonesia', 'Kanal', NULL, 0),
(18, 'Amelia Rusli', 'Public Relations Bethsaida Hospital', 'Sales', NULL, 0),
(19, 'Amoeng', 'Kabag Humas Pegadaian', 'Sales', NULL, 0),
(20, 'Andi Fauzi', 'Account Manager DG Traffic', 'Sales', NULL, 0),
(21, 'Angela Tanoesoedibjo', 'Wakil Menteri Pariwisata dan Ekonomi Kreatif', 'News', NULL, 0),
(22, 'Angga', 'DNA', 'Sales', NULL, 0),
(23, 'Anggita S. Pradipta', 'Corcom Manager Qnet', 'Sales', NULL, 0),
(24, 'Anies Baswedan', 'Gubernur DKI Jakarta', 'VIP', NULL, 0),
(25, 'Anisa Ixora', 'Marketing Communication Warunk Upnormal', 'Sales', NULL, 0),
(26, 'Anita Wahid/Perwakilan Mafindo', 'Mafindo', 'VIP', NULL, 0),
(27, 'Anne Purba', 'VP Corporte Communication KCI', 'Sales', NULL, 0),
(28, 'Annisa ', 'BKKBN', 'Sales', NULL, 0),
(29, 'Anton Ryadie', 'Baca', 'Sosmed', NULL, 0),
(30, 'Arief Budiman', 'Ketua Komisi Pemilihan Umum (KPU)', 'News', NULL, 0),
(31, 'Asti Candramaya', 'Senior PR KoinWorks', 'Sales', NULL, 0),
(32, 'Aswin Rizal', 'Gelael', 'Sales', NULL, 0),
(33, 'Bambang Tirtawijaya', 'PT. Digital Teknologi Global', 'Kanal', NULL, 0),
(34, 'Basuki', 'Humas Pegadaian', 'Sales', NULL, 0),
(35, 'Bayu Putra ', 'BRI', 'Sales', NULL, 0),
(36, 'Bey Machmudin', 'Deputi bidang Media dan Protokoler Setpres ', 'News', NULL, 0),
(37, 'Iqbal ', 'Kasubag Humas BPJS Kesehatan ', 'Sales', NULL, 0),
(38, 'Budi', 'Humas Kementerian Pemuda dan Olahraga', 'Sales', NULL, 0),
(39, 'Bunga ', 'Humas Pemkot Tangsel ', 'Sales', NULL, 0),
(40, 'Bunga Anggraini', 'Country Director Dailymotion ', 'Sosmed', NULL, 0),
(41, 'Calvin Winata ', 'Digital Marketing Alfamart', 'Sales', NULL, 0),
(42, 'Carmelita Hartoto', 'Ketua Umum INSA', 'VIP', NULL, 0),
(43, 'Cipluk Carlita', 'Head of Communication Twitter Southeast Asia', 'VIP', NULL, 0),
(44, 'Dado Darmawan', 'Music Management', 'News', NULL, 0),
(45, 'Damayanti ', 'Marketing Manager Air Mancur', 'Sales', NULL, 0),
(46, 'David Karto', 'Demajors', 'News', NULL, 0),
(47, 'Deasy ', 'Kabag. Humas KPPU ', 'Sales', NULL, 0),
(48, 'Denny Tan', 'Public Relation Kawan Lama', 'Sales', NULL, 0),
(49, 'Destry Damayanti', 'Deputi Senior Gubernur BI', 'News', NULL, 0),
(50, 'Deta ', 'Kabag. Humas DJKN ', 'Sales', NULL, 0),
(51, 'Dewi Yuany', 'Corcomm Mayapada', 'Others', NULL, 0),
(52, 'Diah Suryandari', 'JM Corporate Communication PT Railink', 'Sales', NULL, 0),
(53, 'Dian Rufal ', 'Marcomm. Manager SMI ', 'Sales', NULL, 0),
(54, 'Didi ', 'Planner Maxsus Agency ', 'Sales', NULL, 0),
(55, 'Didin ', 'Bening Communication ', 'Sales', NULL, 0),
(56, 'Dinda Mardhiyyati', 'Account Executive Dinamika Identa Pratama', 'Sales', NULL, 0),
(57, 'Djati Wicaksono', 'Kabiro Humas Kementerian Lingkungan Hidup & Kehutanan', 'News', NULL, 0),
(58, 'Dr. Dida Diah Damayanti, ST., MEngSc .  ', 'Wakil Rektor 3 Bidang Admisi, Kerjasama Telkom University ', 'Corcomm', NULL, 0),
(59, 'Dr. Imam Aschuri Ir, MT.  ', 'Rektor Institut Teknologi Nasional', 'Corcomm', NULL, 0),
(60, 'Dr. Ir. H. Badat Muwakhid, M.P  ', 'Wakil Rektor 3 Universitas Islam Malang', 'Corcomm', NULL, 0),
(61, 'dr. Juliana Yu, MD.H NH', 'Owner of House of Skinovation', 'Kanal', NULL, 0),
(62, 'Dr. Muliyadi Hamid, SE., M.Si', 'Rektor Universitas Fajar', 'Corcomm', NULL, 0),
(63, 'Dr. Mulyanto Nugroho, MM., CMA., CPA  ', 'Rektor Universitas 17 Agustus 1945', 'Corcomm', NULL, 0),
(64, 'Dr. Ninok Leksono', 'Rektor Universitas Multimedia Nusantara', 'VIP', NULL, 0),
(65, 'Drs. Kuncoro Foe, Apt., G.Dip.Sc., Ph.D. ', 'Rektor Universitas Katolik Widya Mandala Surabaya', 'Corcomm', NULL, 0),
(66, 'Dwi Wahyu Daryoto', 'Dirut Jakpro', 'VIP', NULL, 0),
(67, 'Edi Sukmoro', 'Direktur PT Kereta Api Indonesia', 'Sales', NULL, 0),
(68, 'Edwina Tirta', 'Content Partnership & Video Lead Line', 'Sosmed', NULL, 0),
(69, 'Edy Kuswoyo', 'VP PR PT Kereta Api Indonesia', 'Sales', NULL, 0),
(70, 'Eka Merdekawati KS', 'PR Specialist PT Bukit Asam Tbk.', 'Sales', NULL, 0),
(71, 'Ekhel Chandra', 'PR Lead Tokopedia', 'Sales', NULL, 0),
(72, 'Elin Y Kristanti', 'wakil pimpinan redaksi liputan6.com', 'VIP', NULL, 0),
(73, 'Elisabeth Rukmini, S.Si., M.Sc., Ph.D. ', 'Wakil Rektor IV Universitas Katolik', 'VIP', NULL, 0),
(74, 'Elizabeth', 'PR Manager Menara Peninsula', 'Sales', NULL, 0),
(75, 'Elly Husin', 'Narasi', 'VIP', NULL, 0),
(76, 'Emma Sri Martini', 'Telkomsel Indonesia', 'Kanal', NULL, 0),
(77, 'Evan ', 'Humas Peruri ', 'Sales', NULL, 0),
(78, 'Fajar', 'Head Of Corcomm Pelindo 2', 'Sales', NULL, 0),
(79, 'Farid Wajdi ', 'Anggota KY ', 'News', NULL, 0),
(80, 'Febri', 'Kemensos', 'Sales', NULL, 0),
(81, 'Febriamy Hutapea', 'Content Partnership & Video Lead Line', 'VIP', NULL, 0),
(82, 'Ferdy Zulkarnain', 'Marcomm Sect. Head Hypernet', 'Sales', NULL, 0),
(83, 'Fithri Hadi', 'direktur PT BEI', 'Others', NULL, 0),
(84, 'Fitri ', 'Planner IDAC ', 'Sales', NULL, 0),
(85, 'Fitri Kusumo Wardhani', 'VP Commercial PT Railink', 'Sales', NULL, 0),
(86, 'Frima Zhellia', 'Marcom Permata Bank ', 'Sales', NULL, 0),
(87, 'Ganjar Pranowo', 'Gubernur Jawa Tengah', 'News', NULL, 0),
(88, 'Gatot Dewa Broto', 'Sekretaris Menteri Pemuda dan Olahraga', 'Sosmed', NULL, 0),
(89, 'Gina', 'initiative', 'Sales', NULL, 0),
(90, 'Hadar Nafis Gumay', 'Peneliti NETGRIT/Pemerhati Pemilu ', 'News', NULL, 0),
(91, 'Hanggono', ' Corcomm Freeport', 'VIP', NULL, 0),
(92, 'Hanum ', 'Humas kementan ', 'Sales', NULL, 0),
(93, 'Hariman Chalid', 'CGV ', 'Sosmed', NULL, 0),
(94, 'Hariyadi Sukamdani', 'Ketua Asosiasi Pengusaha Indonesia', 'News', NULL, 0),
(95, 'Hasto Kristiyanto', 'Sekjen DPP PDIP', 'VIP', NULL, 0),
(96, 'Hendra Yuniarto ', 'Gelael', 'Sales', NULL, 0),
(97, 'Hendrik ', 'PR Staff Sido Muncul', 'Sales', NULL, 0),
(98, 'Henry Eko', 'KEMENDIKDUB', 'Sales', NULL, 0),
(99, 'Heru ', 'Planner Prima Advertising Agc ', 'Sales', NULL, 0),
(100, 'Ibu Rita ', 'Kasubag Humas BNPB', 'Sales', NULL, 0),
(101, 'Ikra Zama Dinnata', 'Chief Executive Officer PT. Mdi', 'Sales', NULL, 0),
(102, 'immy Lin', 'ASUS Indonesia', 'Kanal', NULL, 0),
(103, 'Inarno Djajadi', 'Direktur Utama Bursa Efek Indonesia', 'News', NULL, 0),
(104, 'Indra Adi Nugroho', 'Komisaris PT Kebab Monster', 'VIP', NULL, 0),
(105, 'Indrawati Widjaja', 'Musica Studios', 'News', NULL, 0),
(106, 'Indriyasari', 'Marketing Media X Agency', 'Sales', NULL, 0),
(107, 'Ir Hernanto Wibowo', 'direktur Utama PT cosmetikatama', 'Sales', NULL, 0),
(108, 'Ir. Henry Feriadi M.Sc., Ph.D.  ', 'Rektor Universitas Kristen Duta Wacana ', 'Corcomm', NULL, 0),
(109, 'Ir. Mochamad Basoeki Hadimoeljono, ', 'Mentri PUPR', 'VIP', NULL, 0),
(110, 'Ir. Yohannes Somawiharja, M.Sc.', 'Rektor Universitas Ciputra ', 'Corcomm', NULL, 0),
(111, 'Irene Margareth Konstantine', 'VP Of Passenger Marketing PT Kereta Api Indonesia', 'Sales', NULL, 0),
(112, 'Ismi ', 'Manager Hubungan Eksternal Kelembagaan Mandiri', 'Sales', NULL, 0),
(113, 'Iwan', 'Marketing Manager Qlue.id', 'Sales', NULL, 0),
(114, 'Jason Tedjasukmana', 'Google Indonesia', 'Kanal', NULL, 0),
(115, 'Jeantyn', 'Director of Sales Hotel Millenium', 'Sales', NULL, 0),
(116, 'Johnny G. Plate', 'Menkominfo', 'VIP', NULL, 0),
(117, 'Karaniya Dharmasaputra,', 'Presiden Direktur OVO', 'Kanal', NULL, 0),
(118, 'Karin S. Silitonga', 'Corporate Communication Specialist Nestle', 'Sales', NULL, 0),
(119, 'Khofifah Indar N. Parawansa', 'Gubernur Jawa Timur', 'News', NULL, 0),
(120, 'Kiki ', 'Owner Paramedia Agc ', 'Sales', NULL, 0),
(121, 'Koko Sasongko', 'Supervisor Marketing Communication ISUZU', 'Sales', NULL, 0),
(122, 'Kusumo Martanto', 'Blibli ', 'Kanal', NULL, 0),
(123, 'Lina Anggraeni', 'Public Relations Univ. Paramadina', 'Sales', NULL, 0),
(124, 'Linlin Herliawati', 'marketing and promotion manager PT Kosmetikatama', 'Sales', NULL, 0),
(125, 'Lo Khing Seng', 'Huawei Indonesia', 'Kanal', NULL, 0),
(126, 'Lolo Sianipar', 'Director, PiAr Consulting', 'Kanal', NULL, 0),
(127, 'M. Fadhli', 'Direktur ISN', 'Others', NULL, 0),
(128, 'M. Iqbal', 'Kadiv Humas Polri Irjen', 'News', NULL, 0),
(129, 'Magenta Paramita', 'Head of PR and Promotion International Office UNPAR', 'Sales', NULL, 0),
(130, 'Mahfud MD', 'Menteri Kordinator Bid. Politik, Hukum, dan Keamanan (Menkopolhukam)', 'News', NULL, 0),
(131, 'Mario ', 'Planner Tikdiba ', 'Sales', NULL, 0),
(132, 'Marisi Panggabean', 'CorComm JHL Group', 'Sales', NULL, 0),
(133, 'Mariska Ajeng Andaka', 'Marketing Manager Bethsaida Hospital', 'Sales', NULL, 0),
(134, 'Mayjen Sisriadi ', 'Kepala Pusat Penerangan (Kapuspen) TNI', 'News', NULL, 0),
(135, 'Melissa Suciati', 'Corporate Communication Manager LRT Jakarta', 'Sales', NULL, 0),
(136, 'Mia Fawzia', 'Marketing Chief JD.id', 'Kanal', NULL, 0),
(137, 'Michael ', 'Marcom BTPN Jenius ', 'Sales', NULL, 0),
(138, 'Molly ', 'Marcom Hyundai ', 'Sales', NULL, 0),
(139, 'Muhammad Effendy', 'Direktur Operasi dan Pemeliharaan MRT Jakarta', 'Sales', NULL, 0),
(140, 'Muhammad Nuh', 'Ketua Dewan Pers', 'News', NULL, 0),
(141, 'Mukti Jauhari', 'Direktur PT Railink', 'Sales', NULL, 0),
(142, 'Mungky Pratiwi', 'Kepala Divisi Customer Engagement MRT Jakarta', 'Sales', NULL, 0),
(143, 'Myra Rahardja', 'Marketing Manager Redbull Indonesia', 'Sales', NULL, 0),
(144, 'Neil Samuel Rupidara S.E., M.Sc., Ph.D. ', 'Rektor Universitas Kristen Satya Wacana', 'Corcomm', NULL, 0),
(145, 'Nia Pratiwi', 'Burson Cohn-Wolfe Indonesia', 'Kanal', NULL, 0),
(146, 'Nita Juwita', 'Kasubag Media Sosial dan Website DPR', 'Sales', NULL, 0),
(147, 'Nobi Budiantara', 'Account Director Dinamika Identa Pratama', 'Sales', NULL, 0),
(148, 'Nolly Dhanurendra', 'Marcomm. Manager Epson Indonesia', 'Sales', NULL, 0),
(149, 'Nona', 'Manulife', 'Sales', NULL, 0),
(150, 'Nur Rachman ', 'Corporate License General Manager Alfamart', 'Sales', NULL, 0),
(151, 'Nuraini Razak', 'VP Corcomm Tokopedia', 'Sales', NULL, 0),
(152, 'Okky Asokawati', 'Advisor Gaya.id', 'Kanal', NULL, 0),
(153, 'Olga Pattipawaej, Ph.D ', 'Wakil Rektor I Universitas Kristen Maranatha', 'Corcomm', NULL, 0),
(154, 'Otnial Eko Pamiarso', 'Manager Marketing Communication PT Kereta Api Indonesia', 'Sales', NULL, 0),
(155, 'Palson Yi', 'Brand Manager Realme', 'Corcomm', NULL, 0),
(156, 'Pangi Syarwi Chaniago', 'Direks Voxpol Research and Consulting', 'News', NULL, 0),
(157, 'Pitta Sekar', 'Public Relations Merah Cipta Media', 'Sales', NULL, 0),
(158, 'Pramono Anung', 'Sekretaris Kabinet', 'News', NULL, 0),
(159, 'Pramudya Tirta Pratama ', 'Supervisor Marketing Noore', 'Sales', NULL, 0),
(160, 'Prasetyo Edi Marsudi', 'Ketua DPRD DKI Jakarta', 'News', NULL, 0),
(161, 'Prita Wardhani', 'Costumer and Public Relations Manager Kawan Lama', 'Sales', NULL, 0),
(162, 'Prof Dr Ir Asep Saefuddin, MSc', 'Rektor Universitas Al-Azhar Indonesia ', 'VIP', NULL, 0),
(163, 'Prof Drs Ojat Drarojat', 'Rektor Universitas Terbuka ', 'VIP', NULL, 0),
(164, 'Prof. dr. Ali Ghufron Mukti M.Sc.,Ph.D.', 'Rektor Universitas Trisakti ', 'VIP', NULL, 0),
(165, 'Prof. dr. Dewa Putu Widjana  ', 'Rektor Universitas Warmadewa', 'Corcomm', NULL, 0),
(166, 'Prof. Dr. Dyah Sawitri, MM.  ', 'Rektor Universitas Gajayana Malang', 'Corcomm', NULL, 0),
(167, 'Prof. Dr. Gunawan Suryoputro, M.Hum.', 'Rektor Universitas Muhammadiyah Prof. Dr. HAMKA', 'Corcomm', NULL, 0),
(168, 'Prof. Dr. H. Basri Modding SE., M.Si.', 'Rektor Universitas Muslim Indonesia', 'Corcomm', NULL, 0),
(169, 'Prof. Dr. Ir. Achmad Jazidie, M. Eng.', 'Rektor Universitas Nahdlatul Surabaya', 'Corcomm', NULL, 0),
(170, 'Prof. Dr. Jony Oktavian Haryanto', 'Rektor President University', 'Corcomm', NULL, 0),
(171, 'Prof. Dr. Ngadino Surip ', 'Rektor Universitas Mercu Buana ', 'VIP', NULL, 0),
(172, 'Puan Maharani', 'Ketua DPR RI', 'News', NULL, 0),
(173, 'Purnawira Dian ', 'Marcomm. Manager LMAN ', 'Sales', NULL, 0),
(174, 'Puti Annisa ', 'Marketing Communication Head ISUZU', 'Sales', NULL, 0),
(175, 'Putri Airlangga ', 'Ketua Umum Yayasan Kupu', 'Sales', NULL, 0),
(176, 'Putri Silalahi', 'Partnership Lead Instagram', 'VIP', NULL, 0),
(177, 'Rahayu Puspasari', 'Direktur Utama LMAN ', 'Others', NULL, 0),
(178, 'Rara Kencana ', 'Gelael', 'Sales', NULL, 0),
(179, 'Ratu Tisha', 'Sekjen PSSI', 'Sosmed', NULL, 0),
(180, 'Reancy Triashari', 'Head of Marketing Cakap.com', 'Sales', NULL, 0),
(181, 'Renata Raselia Suyono', 'Corporate Communication Executive Nestle', 'Sales', NULL, 0),
(182, 'Reza Setiawan', 'Firmatoya', 'Kanal', NULL, 0),
(183, 'Reza Thamzel', 'Marcomm Hypernet', 'Sales', NULL, 0),
(184, 'Ridwan Kamil', 'Gubernur Jawa Barat', 'News', NULL, 0),
(185, 'Rio ', 'Head of Marcom Bunga Sari ', 'Sales', NULL, 0),
(186, 'Rio Budi Muliyanto', 'Manulife', 'Sales', NULL, 0),
(187, 'Rita', 'Marcomm Officer Hotel Millenium', 'Sales', NULL, 0),
(188, 'Riza Pratama', 'VP Corcomm Freeport', 'Corcomm', NULL, 0),
(189, 'Rizky ', 'Kabag. Humas Kementrian Agraria', 'Sales', NULL, 0),
(190, 'Sabila Assami', 'Kaskus', 'Sosmed', NULL, 0),
(191, 'Saidah Humairoh ', 'Planner Nippon Paint Vizeum Agency ', 'Sales', NULL, 0),
(192, 'Sam Fernando', 'Imigrasi', 'Sales', NULL, 0),
(193, 'Samina Purnawan', 'Avantgarde', 'Sales', NULL, 0),
(194, 'Sammy', 'Vector ', 'Sales', NULL, 0),
(195, 'Samuel Godfried', 'Chief Operating Officer of Vector Indonesia', 'Kanal', NULL, 0),
(196, 'Saor Simanjuntak', 'Corporate Communication Adhi Karya', 'Sales', NULL, 0),
(197, 'Sentot Sasongko ', 'Manulife', 'Sales', NULL, 0),
(198, 'Setyo Ryanto', 'Marketing Asus', 'Sales', NULL, 0),
(199, 'Shelly Tantri', 'Senior Head of Business Development BABE', 'Sosmed', NULL, 0),
(200, 'Shinta Wardhiastuti', 'Samsung Electronics Indonesia', 'Kanal', NULL, 0),
(201, 'Sofyan', 'Media Relations and Promotion International Office UNPAR', 'Sales', NULL, 0),
(202, 'Sony Arnandi', 'Planner Hakuhodo ', 'Sales', NULL, 0),
(203, 'Sri Wahyuni', 'PR Manager Sido Muncul', 'Sales', NULL, 0),
(204, 'N. Rahmat', 'Kabid. Hubaga Puspenkum Kejagung', 'VIP', NULL, 0),
(205, 'Suci Indarwati ', 'Planner Revolusi Media', 'Sales', NULL, 0),
(206, 'Suryo Utomo', 'Dirjen Pajak ', 'VIP', NULL, 0),
(207, 'Tania Amarthani', 'BABE', 'Sosmed', NULL, 0),
(208, 'Tegar S. Triantoro', 'Marketing Djarum Coklat', 'Sales', NULL, 0),
(209, 'Tommy Nugrohoi ', 'Kurio', 'Sosmed', NULL, 0),
(210, 'Tony Q.', 'Musisi', 'News', NULL, 0),
(211, 'Tri dirgantara', 'CorComm Bank Bukopin', 'Sales', NULL, 0),
(212, 'Trully', 'Zeno Stratcomm', 'Sales', NULL, 0),
(213, 'Tubagus Aditya', 'Brand Marketing Manager Kredivo', 'Sales', NULL, 0),
(214, 'Ume ', 'Planner Wavemaker ', 'Sales', NULL, 0),
(215, 'Vishnu Mahmud', 'Corcomm Lead Grab', 'Sales', NULL, 0),
(216, 'Wafa Taftazani ', 'Country Partnership Manager YouTube ', 'VIP', NULL, 0),
(217, 'Wenseslaus Manggut', 'Ketua Asosiasi Media Siber Indonesia (AMSI)', 'News', NULL, 0),
(218, 'Widanardi Satryatomo', 'Staf Khusus The Yudhoyono Institute', 'Sosmed', NULL, 0),
(219, 'Windy', 'Corcom UBS', 'Sales', NULL, 0),
(220, 'Winur', 'Focus Convensindo', 'Sales', NULL, 0),
(221, 'Yoka Krisma Wijaya ', 'Asisten Manajer Hubungan Eksternal Taspen', 'Sales', NULL, 0),
(222, 'Yosephine Kislew Trily', 'Genie', 'Sosmed', NULL, 0),
(223, 'Yusril Ihza Mahendra', 'Pakar Hukum Tata Negara', 'VIP', NULL, 0),
(224, 'Zainuddin Amali', 'Menteri Pemuda dan Olahraga', 'Sosmed', NULL, 0),
(225, 'Zen Malik', 'Media Manager Dinamika Identa Pratama', 'Sales', NULL, 0),
(226, 'Zico Kemala', 'Business Development Director UC News', 'VIP', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_visitor`
--
ALTER TABLE `tbl_visitor`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_visitor`
--
ALTER TABLE `tbl_visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
