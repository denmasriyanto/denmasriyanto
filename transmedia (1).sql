-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `koordinat`
--

CREATE TABLE `koordinat` (
  `id_koordinat` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  ` longitude` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `koordinat`
--

INSERT INTO `koordinat` (`id_koordinat`, `id_kota`, `latitude`, ` longitude`) VALUES
(1, 1, -2.23291800, 113.91034300);

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(250) NOT NULL,
  `alamat_transmisi` varchar(250) NOT NULL,
  `mdpl` varchar(250) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `perangkat_tx` varchar(500) NOT NULL,
  `kanal_ch` varchar(250) NOT NULL,
  `freq` varchar(50) NOT NULL,
  `on_air` date NOT NULL,
  `watt` varchar(11) NOT NULL,
  `dbw` varchar(100) NOT NULL,
  `ttower` varchar(15) NOT NULL,
  `pfeeder` varchar(15) NOT NULL,
  `losses` varchar(30) NOT NULL,
  `jumpanel` varchar(11) NOT NULL,
  `merk_anten` varchar(50) NOT NULL,
  `arah_angin` varchar(50) NOT NULL,
  `exciter` varchar(100) NOT NULL,
  `image_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `alamat_transmisi`, `mdpl`, `latitude`, `longitude`, `perangkat_tx`, `kanal_ch`, `freq`, `on_air`, `watt`, `dbw`, `ttower`, `pfeeder`, `losses`, `jumpanel`, `merk_anten`, `arah_angin`, `exciter`, `image_path`) VALUES
(1, 'Palangka Raya (Kalteng-1)', 'JL. Temanggung Tilung XI NO.11 RT.05 RW.008 Kel. Menteng Kec. Jekan Raya Kota Palangka Raya 73112', '32', '-2.23291800', '113.91034300', 'Screen Service 1kW', '42', '642', '2021-05-05', '1000', '30,00', '45', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Screen Service SDT200UA (ARK6_X2)_(Main)', 'assets/img/Palangkaraya.jpg'),
(23, 'Pulang Pisau (Kalteng-1)', 'Jln. Tajahan Antang RT.06 RW.00 Kel. Bereng Kec. Kahayan Hilir Kab. Pulang Pisau', '4', '-2.73811700', '114.26527800', 'Screen Service 600W', '42', '642', '2021-05-21', '600', '27,78', '30', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'SYES (PCM/UHF10W)', 'assets/img/a386fe5aad4fef2b5c8329e663d36469.jpg'),
(25, 'Jakarta (Jakarta Raya)', 'Jln. Joglo Raya No.100 RT.006 RW.06 Komp. Pemadam Kebakaran Kel. Joglo Kec. Kembangan - Jakarta Barat 11640', '16', '-6.21615400', '106.72437800', 'NEC 20kW', '40', '626', '2012-09-04', '20000', '43,01', '250', '270', '4,32', '48', 'RFS', 'U:12, T:12, S:12, B:12', 'NEC', 'assets/img/bc7b6d90bb06dece20032125e19fd508.jpg'),
(30, 'Pontianak (Kalbar-1)', 'Jl. Karya Baru, GG. Karya baru I No.25, Kel. Parit Tokoaya, Kec.  Pontianak Selatan, Kota Pontianak, Prov. Kalimantan Barat', '16', '-0.05613800', '109.33761300', 'Screen Service (SCA302UB) 2kW', '41', '634', '2021-07-09', '1000', '30,00', '60', '80', '1,28', '4', 'RYMSA', 'U:1, T:1, S:1, B:1', 'Screen Service SDT200UA (ARK6)', 'assets/img/Pontianak.jpg'),
(31, 'Bandung (Jabar-1)', 'JL. Kolonel Masturi, Komp. Pemancar  Dsn Gandrung, Desa Jambudipa, Cisarua, Kabupaten Bandung Barat, Jawa Barat', '1180', '-6.81522700', '107.56087500', 'Rohde & Schwarz 3.5kW', '44', '658', '2013-03-04', '3500', '33.98', '85', '105', '1,68', '16', 'RFS', 'U:4,T:4,S:4,B:4', 'Screen Service (ARK 6)', 'assets/img/68e1ee8825403565dd4d9a7148fea103.jpg'),
(71, 'Balikpapan MUXT7(Kaltim-2)', 'Stasiun Transmisi Transmedia (MUXT7) Jl. A. Yani Gg. Rambutan No.47 RT.10 Kel. Karang Rejo, Kec. Balikpapan Tengah, Kota Balikpapan, Kalimantan Timur 76124', '46', '-1.24799', '116.83885', 'SS', '44', '658', '2022-01-27', '1000', '30,00', '60', '80', '23', '4', 'unknow', 'U:1, T:1, S:1, B:1', 'ARK6', 'assets/img/Balikpapan.jpg'),
(91, 'Banjarmasin MUXT7(Kalsel-1)', 'Stasiun Transmisi Transmedia (MUXT7) Jl. Semanda I, Sungai Lulut, Kec. Banjarmasin Timur, Kota Banjarmasin, Kalimantan Selatan 70653', '26', '-3.3300', '114.6302', 'Screen Service 2.5kW', '36', '594', '2022-11-02', '2400', '30,00', '80', '100', '-', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'ARK6', 'assets/img/b289e164f0f03368284f194cac19c33f.jpg'),
(97, 'Ternate (Malut-1)', 'Jl. Jati Metro RT 10/RW 04, Kel. Jati, Kec. Ternate Selatan, Kota Ternate. Maluku Utara 97716', '104', '0.7798', '127.3665', 'Screen Service 1kW', '40', '626', '2021-05-06', '1000', '30,00', '60', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Screen Service SDT202 (ARK6)', 'assets/img/Ternate.jpg'),
(98, 'Jailolo (Malut-1)', 'Kel/Desa Jalan Baru RT.001/RW.001, Kec. Jailolo Kab Halmahera Barat, Maluku Utara', '28,4', '1.0712', '127.4685', 'Syes 500W', '40', '626', '2021-06-03', '300', '24,77', '20', '30', '0,48', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'SYES (SLIM4-01/UHF PCM 10w)', 'assets/img/Ternate.jpg'),
(99, 'Serang (Banten-1)', 'Jl. Akses Pabrik Gedung No.1 Kel. Kasemen Kec. Kasemen Kota Serang, Banten 42191', '16', '-6.0887', '106.1474', 'Screen Service (SDT 202UM) 1kW', '44', '658', '2021-08-21', '1000', '30,00', '70', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Screen Service SDT202 (ARK6)', 'assets/img/Serang.jpg'),
(100, 'Pandeglang (Banten-2)', 'Jl. Raya Pandeglang, Desa Kadumerak Karang Tanjung, Pandeglang,Â BantenÂ 42251', '221', '-6.2908', '106.1148', 'Screen Service (SDT 202UM) 1kW', '43', '650', '2023-08-09', '200', '23,01', '65', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Screen Service (ARK6)', 'assets/img/Pandeglang.jpg'),
(101, 'Yogyakarta (Yogya&Solo-1)', 'Desa Ngoro-oro, Kec Patuk, Kab Gunungkidul Daerah Istimewa Yogyakarta', '420', '-7.8379', '110.5166', 'Rohde&Schwarz NH 7200 5kW', '44', '658', '2012-09-22', '5000', '36,99', '100', '120', '1,92', '32', 'RFS', 'U:8, T:8, S:8, B:8', 'Screen Service (SDT50 ARK6)500_UHF-FE_DVBT2_ITU', 'assets/img/Yogyakarta.jpg'),
(102, 'Semarang (Jateng-1)', 'Jl. Bukit Kusuma No.1 RT01/RW01, Kelurahan Sumurboto, Kecamatan Banyumanik, Kota Semarang', '250', '-7.043879', '110.424112', 'Rohde&Schwarz NH 7200 6kW', '42', '642', '2012-09-27', '6000', '37,78', '125', '140', '2,24', '32', 'RFS', 'U:8, T:8, S:8, B:8', 'Screen Service (SDTX20ARK6)200', 'assets/img/Semarang.jpg'),
(103, 'Manado (Sulut-1)', 'Jl. Tompakewa Kel. Bumi Nyiur Link IV  Kec Wanea Kota Manado 95117', '112', '1.450353', '124.852021', 'Screenservice(SDT502UM) 3kW', '35', '565', '2021-05-06', '3000', '34,77', '100', '125', '2', '8', 'RFS', 'U:2, T:2, S:2, B:2', 'SYES PCM UHF10W', 'assets/img/Manado.jpg'),
(104, 'Tomohon (Sulut-1)', 'JL. PASUWENGAN NO.110, KELURAHAN KAKASKASEN, TOMOHON UTARA,KOTA TOMOHON, SULAWESI UTARA 95411', '810', '1.337576', '124.838259', 'SLIM4-600W', '35', '565', '2021-05-08', '600', '27,78', '50', '80', '1,28', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'SYES SLIM3-01 UHF TX-PCM', 'assets/img/Manado.jpg'),
(105, 'Bitung (Sulut-1)', 'JL. TUGU ARU NO. 40, KELURAHAN BITUNG TIMUR, MAESA,KOTA BITUNG, SULAWESI UTARA', '4', '1.443672', '125.188306', 'SLIM4-600W', '35', '565', '2022-04-01', '600', '27,78', '45', '80', '1,28', '2', 'SIRA', 'U:0, T:0, S:1, B:1', 'SYES SLIM3-01 UHF TX-PCM', 'assets/img/Manado.jpg'),
(106, 'Batam (KEPRI-1)', 'JL. Palapa VII Bukit Dangas Sekupang', '123', '1.122878', '103.94557', 'NEC PCU-1105SSP 1.5kW', '46', '674', '2019-07-19', '1500', '28,50', '125', '130', '2,08', '8', 'RFS', 'U:2, T:2, S:2, B:2', 'Screen Service SDT202 (ARK6)', 'assets/img/Batam.jpg'),
(107, 'Surabaya (Jatim-1)', 'Jl. Sambisari IIB No.18 RT.03 RW.03 Kel Lontar Kec. Sambikerep - Kota Surabaya 60216', '27', '-7.274445', '112.675962', 'DTU-H10/11R5P 10kW', '44', '658', '2023-12-02', '10000', '40,00', '200', '220', '3,52', '48', 'RFS', 'U:12, T:12, S:12, B:12', 'NEC', 'assets/img/Surabaya.jpg'),
(108, 'Jambi (Jambi-1)', 'Jalan Patimura Jl. Kemas Abdussomad, Rt.01 Kel. Simpang Rimbo Kec. Alam Barajo Kota Jambi 36129', '35', '-1.619827', '103.563005', 'Syes', '32', '562', '2021-05-04', '1000', '30,00', '60', '70', '1,12', '4', 'RYMSA', 'U:1, T:1, S:1, B:1', 'Syes', 'assets/img/Jambi.jpg'),
(109, 'Muara Bulian (Jambi-1)', 'Jl. Gajah Mada No.8 RT.09 RW.03 Kel. Teratai Kec. Muara Bulian Kab. Batanghari Jambi 36613', '22', '-1.707191', '103.295617', 'Syes', '32', '562', '2021-05-07', '600', '27,78', '40', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Syes', 'assets/img/Jambi.jpg'),
(110, 'Sarolangun (Jambi-1)', 'Jalan RT.07 Sukasari Pasar Sarolangun Kel. Sukasari Kec. Sarolangun Kab. Sarolangun Jambi 37351', '45', '-2.296336', '102.718812', 'Syes', '32', '562', '2021-05-07', '600', '27,78', '40', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'DEXING', 'assets/img/Jambi.jpg'),
(111, 'Garut (Jabar-2)', 'Graha Medina Lt.2 Jl.Raya Wanaraja No.500 Desa Cinunuk, Kec. Wanaraja, Kab Garut 44183', '737', '-7.180384', '107.977125', 'Screen Service (SCA102UB) 600W', '40', '626', '2020-05-22', '600', '27,78', '45', '80', '1,28', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Screen Service (ARK 6)', 'assets/img/Garut.jpg'),
(112, 'Tasikmalaya (Jabar-4)', 'Dusun Pangrumasan RT.35 RW.10, Desa Budiharja Kec. Sindangkasih, Kab. Ciamis 46268', '643,98', '-7.265295', '108.24083', 'Screen Service (SCA102UB) 600W', '42', '642', '2020-05-10', '600', '27,78', '50', '80', '1,28', '8', 'SIRA', 'U:0, T:4, S:4, B:0', 'Screen Service (ARK 6)', 'assets/img/Tasikmalaya.jpg'),
(113, 'Kediri (Jatim-7)', 'Stasiun Relay Pemancar Transtv Kediri, Dusun Besuki RT.01 RW.01 Desa Jugo Kec. Mojo Kab. Kediri. Jawa Timur', '1014', '-7.863297', '111.857173', 'Screen Service (SDT 502UB) 1kW', '45', '666', '2013-09-03', '1000', '30,00', '60', '70', '1,12', '8', 'Jampro', 'TG: 4, TL: 4', 'Screen Service (ARK 6)', 'assets/img/Kediri.jpg'),
(114, 'Malang (Jatim-2)', 'Jl. TVRI, Dresel, Desa Oro oro Ombo, Kec. Batu Kota Batu 65316', '1050', '-7.901719', '112.52668', 'Screen Service (SCA132UB) 1kW', '40', '626', '2013-08-28', '1000', '30,00', '60', '80', '1,28', '4', 'KATHREIN', 'U:2, T:2', 'Screen Service (ARK 6)', 'assets/img/Malang-Probolinggo.jpg'),
(115, 'Probolinggo (Jatim-2)', 'Jl. sukarno hatta 94 B probolinggo', '7,62', '-7.753333', '113.201556', 'Screen Service ( SCA 501 UB ) 200W', '40', '626', '2022-04-01', '200', '23,01', '35', '40', '0,64', '4', 'SIRA', 'T:2, S:1, B:1', 'Screen Service (ARK 6)', 'assets/img/Malang-Probolinggo.jpg'),
(116, 'Gorontalo (Gorontalo-1)', 'Jl. Palma No. 153 RT 002 /RW 005 Kel. Libuo, Kec. Dungingi, Kota Gorontalo - 96135', '9', '0.555141', '123.043173', 'Screen Service (SCA 302 UB) 1kW', '31', '554', '2021-05-06', '1000', '30,00', '50', '75', '1,2', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Syes PCM UHF10W rms', 'assets/img/Gorontalo.jpg'),
(117, 'Kwandang (Gorontalo-1)', 'Jl. Moh. Thaib Mopili No. 284 Desa Moluo,Kec. Kwandang, Kab. Gorontalo Utara - 96252', '14', '0.842996', '122.913157', 'Screen Service (SCA501 UB_8600) 300W', '31', '554', '2021-06-08', '300', '24,77', '40', '50', '0,8', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'PCM/UHF TX-D-E1P-10W', 'assets/img/Gorontalo.jpg'),
(118, 'Boliyohuto (Gorontalo-1)', 'Jl. Raja Tolangohula, Desa Diloniyohu, Kec. Boliyohuto, Kab. Gorontalo - 96261', '28', '0.671541', '122.603638', 'Screen Service (SDT 102/202 UB) 300W', '31', '554', '2021-06-09', '300', '24,77', '24', '30', '0,48', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Syes PCM/UHF', 'assets/img/Gorontalo.jpg'),
(119, 'Tilamuta (Gorontalo-1)', 'Jl. Trans Sulawesi Kel. Mohungo, Kec. Tilamuta Kab. Boalemo - 96263', '17', '0.524531', '122.349363', 'Syes 300W', '31', '554', '2021-06-10', '300', '24,77', '45', '50', '0,8', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Syes PCM/UHF', 'assets/img/Gorontalo.jpg'),
(120, 'Tegal (Jateng-3)', 'Jl. Raya TVRI, Dusun Bulak, Desa Gantungan Kec. Jatinegara, Kab. Tegal, Jawa Tengah 52473', '401', '-7.070667', '109.237801', 'NEC / PCU-1110SSP/1 UHF TV 2kW', '45', '666', '2013-05-28', '2000', '33,01', '100', '120', '1,92', '18', 'RFS', 'U:6, T:6, B:6', 'Screen Service (ARK 6)', 'assets/img/Tegal.jpg'),
(121, 'Madiun (Jatim-9)', 'Jl Raya Sarangan Komplek Pemancar TV Dsn Duwet RT28 RW 04 Kel.Plaosan ,Kec.Plaosan Kab.Magetan Jawa Timur 63313', '1100', '-7.67097', '111.239691', 'NEC / PCU-1110SSP/1 UHF TV 2kW', '28', '530', '2013-07-31', '2000', '33,01', '100', '120', '1,92', '16', 'RFS', 'TT: 8, TL:7, S:1', 'Screen Service (ARK 6)', 'assets/img/Madiun.jpg'),
(122, 'Jember (Jatim-4)', 'Dusun Andongsari, Desa Tugusari, Kec. Bangsalsari, Kab. Jember, Jawa Timur', '200', '-8.160722', '113.553944', 'Screen Service (SCA101UB) 1kW', '48', '690', '2014-04-21', '1000', '30,00', '80', '90', '1,44', '12', 'SIRA', 'T:4, S:4, B:4', 'Screen Service (ARK 6)', 'assets/img/Jember.jpg'),
(123, 'Purwokerto (Jateng-7)', 'Desa Kaliwedi RT.05 RW.03 Kec. Kebasen Kab. Banyumas ', '324,06', '-7.549392', '109.251138', 'NEC / PCU-1120 SSP/1 UHF TV', '40', '626', '2014-04-14', '2000', '33,01', '100', '122', '1,952', '24', 'RFS', 'U:6, T:6, S:6, B:6', 'Screen Service (ARK 6)', 'assets/img/Purwokerto.jpg'),
(124, 'Sumedang (Jabar-8)', 'Bukit Nyampai, Mandalaherang, Kec. Cimalaka Kab. Sumedang, Jawa Barat 45353', '792,7', '-6.793418', '107.96054', 'Screen Service (SCA 302UB) 1kW', '43', '650', '2023-11-04', '1000', '30,00', '60', '80', '1,28', '4', 'SIRA', 'U:1, T:0, S:1, B:2', 'Screen Service SDT200(ARK 6)', 'assets/img/Sumedang.jpg'),
(125, 'Sukabumi (Jabar-5)', 'Kampung Ulu-Ulu Desa Cisarua RT 05/RW 04 Kec. Sukaraja Kab. Sukabumi - 43192', '975', '-6.871833', '106.971639', 'ScreenService (SCA102UB) 1kW', '44', '658', '2017-12-05', '700', '28,45', '60', '80', '1,28', '4', 'SIRA', 'BD: 2, B:2', 'Screen Service (ARK 6)', 'assets/img/Sukabumi.jpg'),
(126, 'Cirebon (Jabar-3)', 'Jl. Paniis Singkup No. 4, Kel. Singkup Kec. Pesawahan, Kab. Kuningan', '431,949', '-6.811682', '108.437401', 'Screen Service (SDT202UM) 3,5kW', '41', '634', '2013-05-23', '3200', '35,05', '100', '120', '1,92', '8', 'RFS', 'U:4, T:2, B:2', 'Screen Service (ARK 6)', 'assets/img/Cirebon.jpg'),
(127, 'Pekanbaru (Riau-1)', 'Jl. Hang Tuah Ujung Gg. Abdul Malik Kota Pekanbaru - Riau', '43', '0.508143', '101.503104', 'NEC 2kW', '33', '570', '2024-04-01', '2000', '33,01', '60', '80', '1,28', '8', 'RFS', 'U:2, T:2, S:2, B:2', 'Screen Service ARK 6', 'assets/img/Pekanbaru.jpg'),
(128, 'Bangkinang (Riau-1)', 'Jl. Lintas Bangkinang - Petapahan KM. 4 Domo Pasir Sialang Bangkinang Kab. Kampar-Riau', '50', '0.377834', '101.03003', 'Screen Service', '33', '570', '2021-05-10', '600', '27,78', '40', '70', '1,12', '4', 'SIRA', 'U:1, T:1, S:1, B:1', 'Screen Service ARK 6', 'assets/img/Pekanbaru.jpg'),
(129, 'Cianjur (Jabar-7)', 'Kp Cariu, RT 01 RW 03 Desa Mangunkerta Kec. Cugenang, Kab Cianjur, Jawa Barat 43252', '909', '-6.802451', '107.06164', 'Screen Service (SCA 102UB) 600W', '48', '690', '2020-11-19', '600', '27,78', '40', '50', '0,8', '6', 'SIRA', 'U:2, T:2, S:2', 'Screen Service ARK 6', 'assets/img/Cianjur.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$.fWCjfQ8r4zHDdQobsEKRumWEIhqeFm/NLjRT3nHMXZ57Suzp31R.', '2025-01-27 08:26:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `koordinat`
--
ALTER TABLE `koordinat`
  ADD PRIMARY KEY (`id_koordinat`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `koordinat`
--
ALTER TABLE `koordinat`
  MODIFY `id_koordinat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
