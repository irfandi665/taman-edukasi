-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2023 pada 14.39
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
-- Database: `taman_edukasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-03-31 07:55:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(52, 'tes3@email.com', 2, '2023-05-27 09:11:00', '20', 'news app.pdf', 0, '2023-05-26 02:11:41'),
(54, 'tes@email.com', 2, '2023-05-27 10:22:00', '34', 'news app-2-5.pdf', 2, '2023-05-26 03:23:08'),
(55, 'tes@email.com', 8, '2023-06-02 19:14:00', '23', 'news app-2-5.pdf', 0, '2023-05-27 12:14:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(3, 'Pelayanan', '2023-05-27 12:12:22', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'JL. Margantara, No. 460, Tanjung, Purwokerto, Tanjung, Purwokerto Selatan, Banyumas Regency, Central Java 53144', 'dishub@gmail.com', '7525724672');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'tes', 'tes@email.com', '123456789', 'qwe', '2023-05-23 17:10:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<ol style=\"margin-top:0cm\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Penerimaan Syarat dan Ketentuan\r\n     Dengan mengakses dan menggunakan website Taman Edukasi Lalu Lintas Dinas\r\n     Perhubungan Kabupaten Banyumas, Anda dianggap telah membaca, memahami, dan\r\n     setuju untuk mematuhi semua syarat dan ketentuan yang tercantum di sini.\r\n     Jika Anda tidak setuju dengan syarat dan ketentuan ini, mohon untuk tidak\r\n     menggunakan website ini.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Penggunaan Website <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:72.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Penggunaan\r\nwebsite ini hanya diperbolehkan untuk tujuan yang sah dan sesuai dengan\r\nperaturan yang berlaku. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:72.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Anda\r\nbertanggung jawab penuh atas segala kegiatan yang terkait dengan penggunaan\r\nwebsite ini.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"3\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Informasi yang Disediakan <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:72.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Kami\r\nberusaha untuk menyediakan informasi yang akurat dan terkini di website ini.\r\nNamun, kami tidak memberikan jaminan atau tanggung jawab atas keakuratan,\r\nkelengkapan, atau keandalan informasi tersebut. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:72.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Penggunaan\r\ninformasi dari website ini sepenuhnya menjadi tanggung jawab Anda sendiri dan\r\nkami tidak bertanggung jawab atas segala kerugian atau kerusakan yang timbul\r\nakibat penggunaan informasi tersebut.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"4\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Hak Kekayaan Intelektual <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:72.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Seluruh\r\nkonten, termasuk tetapi tidak terbatas pada teks, gambar, logo, dan grafik,\r\nyang terdapat di website ini dilindungi oleh hukum hak cipta dan hak kekayaan\r\nintelektual lainnya. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:72.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Dilarang\r\nmelakukan reproduksi, distribusi, atau penggunaan konten website ini untuk\r\ntujuan komersial tanpa izin tertulis dari pihak pengelola.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"5\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Tautan Eksternal Website ini mungkin\r\n     berisi tautan ke situs web eksternal yang dioperasikan oleh pihak ketiga.\r\n     Kami tidak memiliki kontrol atas konten dan kebijakan privasi situs web\r\n     tersebut, dan tidak bertanggung jawab atas kerugian atau kerusakan yang\r\n     mungkin timbul akibat penggunaan situs web eksternal tersebut.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Penanggung Jawab <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:72.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Kami\r\ntidak bertanggung jawab atas segala kerugian, klaim, atau kerusakan yang timbul\r\nlangsung atau tidak langsung sebagai akibat dari penggunaan website ini. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:72.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Kami\r\nberhak untuk memperbarui, mengubah, atau menghapus setiap bagian dari website\r\nini tanpa pemberitahuan sebelumnya.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"7\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Perubahan Syarat dan Ketentuan Syarat\r\n     dan ketentuan ini dapat berubah dari waktu ke waktu tanpa pemberitahuan\r\n     sebelumnya. Dengan tetap menggunakan website ini setelah perubahan\r\n     tersebut, Anda dianggap menerima perubahan tersebut.<o:p></o:p></span></li>\r\n</ol>'),
(2, 'Privacy Policy', 'privacy', '<ol style=\"margin-top:0cm\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Pengumpulan Informasi <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:72.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Kami\r\ndapat mengumpulkan informasi pribadi yang Anda berikan secara sukarela, seperti\r\nnama, alamat email, dan nomor telepon, ketika Anda mengisi formulir atau\r\nmenghubungi kami melalui website ini. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:72.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l1 level2 lfo1\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Kami\r\njuga dapat mengumpulkan informasi non-pribadi, seperti alamat IP, jenis\r\nbrowser, waktu akses, dan halaman yang diakses, untuk tujuan analisis dan\r\npeningkatan layanan.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"2\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Penggunaan Informasi <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:72.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Informasi\r\npribadi yang Anda berikan dapat digunakan untuk menghubungi Anda, memberikan\r\ninformasi terkait dengan kegiatan atau layanan kami, atau memproses permintaan\r\nyang Anda ajukan. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:72.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Informasi\r\nnon-pribadi dapat digunakan untuk analisis statistik, peningkatan situs web,\r\ndan pengembangan konten yang lebih relevan.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"3\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Pengungkapan Informasi kepada Pihak\r\n     Ketiga <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:72.0pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Kami\r\ntidak akan menjual, menyewakan, atau membagikan informasi pribadi Anda kepada\r\npihak ketiga tanpa izin Anda, kecuali jika diperlukan oleh hukum atau jika\r\ndiperlukan untuk melindungi kepentingan hukum kami. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:72.0pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;line-height:115%;mso-list:l0 level2 lfo2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Kami\r\ndapat menggunakan pihak ketiga, seperti penyedia layanan, untuk membantu\r\nmengelola dan mengoperasikan website ini, dan mereka mungkin memiliki akses\r\nterbatas ke informasi Anda sesuai dengan keperluan tugas mereka.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"4\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Keamanan Informasi Kami menjaga\r\n     langkah-langkah keamanan yang wajar untuk melindungi informasi pribadi\r\n     Anda dari akses yang tidak sah, pengungkapan, perubahan, atau penghancuran\r\n     yang tidak sah. Namun, tidak ada metode transmisi dan penyimpanan data\r\n     yang 100% aman dan tidak dapat dijamin sepenuhnya.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Cookie Kami dapat menggunakan\r\n     teknologi cookie atau teknologi pelacakan lainnya untuk meningkatkan\r\n     pengalaman pengguna dan menyediakan fitur khusus. Anda dapat mengatur\r\n     browser Anda untuk menolak cookie atau memberikan peringatan saat cookie\r\n     dikirim. Namun, ini dapat mempengaruhi fungsionalitas beberapa bagian dari\r\n     website.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Tautan Eksternal Website kami dapat\r\n     berisi tautan ke situs web eksternal. Kami tidak bertanggung jawab atas\r\n     praktik privasi atau konten situs web tersebut. Mohon untuk membaca\r\n     kebijakan privasi mereka sebelum memberikan informasi pribadi.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Perubahan Kebijakan Privasi Kebijakan\r\n     privasi ini dapat diperbarui dari waktu ke waktu. Perubahan tersebut akan\r\n     diberlakukan segera setelah diposting di halaman ini.<o:p></o:p></span></li>\r\n</ol>										\r\n										'),
(3, 'About Us ', 'aboutus', '<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Tentang\r\nKami:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Taman\r\nEdukasi Lalu Lintas Dinas Perhubungan Kabupaten Banyumas adalah sebuah\r\nfasilitas yang didirikan dengan tujuan untuk memberikan pendidikan dan\r\npelatihan mengenai lalu lintas dan keselamatan berkendara kepada masyarakat,\r\nkhususnya anak-anak. Kami berkomitmen untuk meningkatkan kesadaran akan\r\npentingnya aturan lalu lintas dan perilaku berkendara yang aman.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Visi\r\nKami:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Menjadi\r\npusat pendidikan lalu lintas yang unggul dan berperan aktif dalam membentuk\r\ngenerasi penerus yang memiliki pengetahuan dan keterampilan yang baik dalam\r\nberkendara, serta kesadaran akan pentingnya keselamatan lalu lintas.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Misi\r\nKami:<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l1 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Memberikan pendidikan dan pelatihan\r\n     mengenai aturan lalu lintas kepada masyarakat, terutama anak-anak, melalui\r\n     simulasi, praktik, dan pengajaran interaktif.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l1 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Menginformasikan dan meningkatkan\r\n     pemahaman masyarakat mengenai tanda-tanda lalu lintas, isyarat,\r\n     rambu-rambu, dan perilaku berkendara yang aman.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l1 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Mengembangkan program-program edukasi\r\n     yang inovatif dan menarik untuk meningkatkan kesadaran dan pengetahuan tentang\r\n     lalu lintas.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l1 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Menjalin kerjasama dengan institusi\r\n     pendidikan, pemerintah, dan organisasi terkait dalam upaya memajukan\r\n     keselamatan lalu lintas di Kabupaten Banyumas.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l1 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Menyediakan fasilitas dan sarana yang\r\n     aman dan terpercaya untuk pembelajaran lalu lintas dan pengenalan\r\n     kendaraan kepada masyarakat.<o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Nilai-nilai\r\nKami:<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Keselamatan: Kami mengutamakan\r\n     keselamatan sebagai prioritas utama dalam setiap kegiatan dan program\r\n     kami.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Pendidikan: Kami meyakini bahwa\r\n     pendidikan adalah kunci untuk meningkatkan kesadaran dan kepatuhan\r\n     terhadap aturan lalu lintas.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Kolaborasi: Kami berupaya untuk\r\n     menjalin kerjasama dengan berbagai pihak, termasuk pemerintah, sekolah,\r\n     dan organisasi masyarakat, untuk mencapai tujuan bersama dalam\r\n     meningkatkan keselamatan lalu lintas.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Inovasi: Kami terus mengembangkan\r\n     program-program edukasi yang inovatif dan menarik untuk menarik minat dan\r\n     perhatian masyarakat, terutama anak-anak.<o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo2;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Tanggung Jawab Sosial: Kami\r\n     bertanggung jawab dalam memberikan manfaat bagi masyarakat dan\r\n     berkontribusi dalam menciptakan lingkungan yang lebih aman dalam berlalu\r\n     lintas.<o:p></o:p></span></li>\r\n</ol>'),
(4, 'FAQs', 'faqs', '<ol style=\"margin-top:0cm\" start=\"1\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Apa itu Taman Edukasi Lalu Lintas\r\n     Dinas Perhubungan Kabupaten Banyumas? <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:36.0pt;text-align:justify;line-height:\r\n115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Taman\r\nEdukasi Lalu Lintas Dinas Perhubungan Kabupaten Banyumas adalah sebuah\r\nfasilitas yang dirancang untuk memberikan pendidikan dan pelatihan tentang\r\naturan lalu lintas kepada masyarakat, terutama anak-anak. Taman ini menyajikan\r\nberbagai simulasi jalan raya, rambu lalu lintas, dan pengetahuan tentang\r\nkeselamatan berkendara.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"2\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Dimana lokasi Taman Edukasi Lalu\r\n     Lintas Dinas Perhubungan Kabupaten Banyumas?<o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:36.0pt;text-align:justify;line-height:\r\n115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Taman\r\nEdukasi Lalu Lintas Dinas Perhubungan Kabupaten Banyumas terletak di Jl.\r\nSuwatio, Karanggayam, Teluk, Kec. Purwokerto Sel, Kabupaten Banyumas, Jawa\r\nTengah.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"3\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Apa saja fasilitas yang tersedia di\r\n     Taman Edukasi Lalu Lintas ini? Taman Edukasi Lalu Lintas Dinas Perhubungan\r\n     Kabupaten Banyumas dilengkapi dengan berbagai fasilitas, termasuk:<o:p></o:p></span></li>\r\n <ul style=\"margin-top:0cm\" type=\"disc\">\r\n  <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level2 lfo1;\r\n      tab-stops:list 72.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n      font-family:&quot;Times New Roman&quot;,serif\">Area simulasi jalan dengan lintasan\r\n      yang menyerupai jalan raya sebenarnya.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level2 lfo1;\r\n      tab-stops:list 72.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n      font-family:&quot;Times New Roman&quot;,serif\">Rambu-rambu lalu lintas yang\r\n      dipasang untuk mengajarkan pengetahuan tentang tanda-tanda dan isyarat\r\n      lalu lintas.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level2 lfo1;\r\n      tab-stops:list 72.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n      font-family:&quot;Times New Roman&quot;,serif\">Sepeda dan sepeda mini yang dapat\r\n      digunakan untuk berlatih berkendara dan mengenal aturan-aturan sepeda.<o:p></o:p></span></li>\r\n  <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level2 lfo1;\r\n      tab-stops:list 72.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n      font-family:&quot;Times New Roman&quot;,serif\">Ruang kelas atau auditorium untuk\r\n      sesi pengajaran dan diskusi.<o:p></o:p></span></li>\r\n </ul>\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Apakah ada biaya masuk untuk\r\n     mengunjungi Taman Edukasi Lalu Lintas ini?<o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:36.0pt;text-align:justify;line-height:\r\n115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Biaya\r\nmasuk ke Taman Edukasi Lalu Lintas Dinas Perhubungan Kabupaten Banyumas\r\nbiasanya gratis. Namun, ada kemungkinan ada biaya terkait dengan kegiatan atau\r\nprogram khusus. Pastikan untuk menghubungi pihak pengelola untuk mendapatkan\r\ninformasi terbaru mengenai biaya dan persyaratan.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"5\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Apakah Taman Edukasi Lalu Lintas ini\r\n     hanya untuk anak-anak? <o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:36.0pt;text-align:justify;line-height:\r\n115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Taman\r\nEdukasi Lalu Lintas Dinas Perhubungan Kabupaten Banyumas terbuka untuk semua\r\nusia, namun pendekatan dan materi yang diajarkan biasanya ditujukan untuk\r\nanak-anak. Anak-anak akan menjadi target utama karena tujuan utama taman ini\r\nadalah memberikan pendidikan lalu lintas kepada mereka secara dini.<o:p></o:p></span></p>\r\n\r\n<ol style=\"margin-top:0cm\" start=\"6\" type=\"1\">\r\n <li class=\"MsoNormal\" style=\"text-align:justify;line-height:115%;mso-list:l0 level1 lfo1;\r\n     tab-stops:list 36.0pt\"><span style=\"font-size:12.0pt;line-height:115%;\r\n     font-family:&quot;Times New Roman&quot;,serif\">Apakah perlu membuat reservasi\r\n     sebelum mengunjungi Taman Edukasi Lalu Lintas?<o:p></o:p></span></li>\r\n</ol>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:36.0pt;text-align:justify;line-height:\r\n115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">Biasanya\r\ntidak perlu membuat reservasi sebelum mengunjungi taman ini, kecuali ada\r\nkegiatan khusus atau kunjungan kelompok yang telah dijadwalkan. Namun,\r\ndisarankan untuk menghubungi pihak pengelola terlebih dahulu untuk memastikan\r\nketersediaan dan informasi terkini sebelum Anda mengunjungi taman.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'tes@email.com', '2023-05-23 16:44:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'tes@email.com', 'sip', '2023-05-23 04:35:56', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(15) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'SMP Negeri 1 London', 'tes@email.com', '202cb962ac59075b964b07152d234b70', '+6285540254876', '2001-01-12', 'Jl. DI Panjaitan No.128, Karangreja, Purwokerto Kidul, Kec. Purwokerto Sel., Kabupaten Banyumas, Jawa Tengah 53147', 'London', 'United Kingdom', '2023-05-22 12:44:22', '2023-05-26 02:44:14'),
(2, 'Diki', 'tes2@email.com', '202cb962ac59075b964b07152d234b70', '084015687', NULL, NULL, NULL, NULL, '2023-05-23 04:37:51', NULL),
(3, 'petot', 'tes3@email.com', '202cb962ac59075b964b07152d234b70', '13165', '', '', 'pwt', 'id', '2023-05-24 12:19:42', '2023-05-24 13:00:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` float DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `Vimage6` varchar(120) CHARACTER SET swe7 COLLATE swe7_swedish_ci NOT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `Vimage6`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(8, 'Nonton film', 3, 'tes', NULL, NULL, NULL, NULL, '101860596_p1.png', '101824221_p0.jpg', '99879309_p0.jpg', '97151675_p0.jpg', '92447157_p0.jpg', '90478641_p0.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-27 12:13:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
