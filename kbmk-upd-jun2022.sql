-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 03:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbmk`
--

-- --------------------------------------------------------

--
-- Table structure for table `kata`
--

CREATE TABLE `kata` (
  `id` int(11) NOT NULL,
  `id_kategori` varchar(150) DEFAULT NULL,
  `nama_kata` varchar(255) DEFAULT NULL,
  `pelafalan` text DEFAULT NULL,
  `audio` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kata`
--

INSERT INTO `kata` (`id`, `id_kategori`, `nama_kata`, `pelafalan`, `audio`, `deskripsi`, `created_at`, `updated_at`) VALUES
(16, '1', 'keli\'', NULL, NULL, 'ikan lele sungai', '2021-12-16 07:04:03', '2022-06-09 17:24:33'),
(17, '1', 'lawang', NULL, NULL, '1. pintu\r\n2. tempat masuk', '2021-12-17 08:29:46', '2022-06-09 17:34:25'),
(20, '1', 'majoh', NULL, 0, '1. makan\r\n2. makan dengan lahap', '2021-12-24 07:12:11', '2022-01-02 15:17:20'),
(23, '2', 'buang tangga berayun kaki', NULL, 0, 'melepaskan sesuatu demi mengejar yang belum pasti\r\n- (contoh : Bayu berhenti kuliah demi mengikuti seleksi kepolisian, padahal dia belum tentu diterima)', '2021-12-24 07:40:24', '2022-01-02 15:18:41'),
(24, '2', 'pukol anak sindir menantu', NULL, 0, 'menyindir orang lain dengan tanpa menunjuk orang yang dimaksud\r\n- (contoh : A berbicara mengata-ngatai B, tapi bicaranya menuju ke C)', '2021-12-24 07:42:55', '2022-01-02 15:18:41'),
(36, '1', 'tembelang', NULL, 0, '1. telur busuk\r\n2. bodoh yang teramat sangat', '2021-12-24 08:22:24', '2022-01-02 15:17:56'),
(37, '2', 'angkat tangan', 'ʌŋ-kʌt tʌ-ŋʌn', 0, '1. berlepas diri\r\n2. tidak mau ikut campur\r\n- (contoh : pasal ini aku angkat tangan ye --dalam masalah ini aku tidak mau ikut campur--)', '2021-12-24 08:39:08', '2022-06-09 18:00:48'),
(38, '2', 'angkat kaki', 'ʌŋ-kʌt kʌ-kɪ', 0, 'pergi (dari tempat yang sebelumnya)', '2021-12-24 08:40:40', '2022-06-09 18:00:21'),
(39, '2', 'idong dak mancong pipi tesurong-surong', NULL, 0, 'menawarkan diri kepada orang lain yang belum tentu memerlukan kita', '2021-12-24 08:42:22', '2022-01-02 15:18:41'),
(40, '1', 'pelam', NULL, 0, '1. film\r\n2. film foto\r\n3. gambar bergerak', '2021-12-24 08:43:10', '2022-01-02 15:17:56'),
(41, '2', 'memuji taik anyut', NULL, 0, 'memuji sesuatu yang sebenarnya tak pantas dipuji', '2021-12-24 08:51:23', '2022-01-02 15:18:41'),
(42, '1', 'tustel', NULL, 0, '1. kamera\r\n2. alat untuk memotret', '2021-12-24 08:52:27', '2022-01-02 15:17:56'),
(43, '1', 'silok', NULL, 0, '1. siluk\r\n2. ikan arwana', '2021-12-24 09:00:10', '2022-01-02 15:17:56'),
(44, '1', 'tuman', NULL, 0, 'menjadi biasa, suka, gemar, dan sebagainya, sesudah merasai senangnya, enaknya, dan sebagainya\r\n- (contoh : biak tu usah rajin diberi duit, nanti tuman --anak jangan keseringan diberi uang, nanti kebiasaan--)', '2021-12-24 09:02:39', '2022-01-02 15:17:56'),
(45, '1', 'ketumanan', NULL, 0, 'kebiasaan; kecanduan\r\n- (contoh : usah cube maok berokok, nanti ketumanan --jangan coba-coba merokok, nanti kecanduan--)', '2021-12-24 09:09:27', '2022-01-02 15:17:56'),
(46, '1', 'bute', NULL, 0, '1. sialan; kata makian\r\n2. makhluk halus yang kadang menampakkan diri berbentuk kerbau yang besar dengan suara yang menakutkan', '2021-12-24 09:14:52', '2022-01-02 15:17:56'),
(47, '2', 'kambing itam', NULL, 0, 'orang yang dalam suatu peristiwa sebenarnya tidak bersalah, tetapi dipersalahkan atau dijadikan tumpuan kesalahan', '2021-12-24 10:34:31', '2022-01-05 18:19:45'),
(52, '1', 'iye', NULL, 0, 'kata untuk menyatakan setuju (membenarkan dan sebagainya)', '2021-12-25 09:01:55', '2022-01-05 16:26:10'),
(53, '1', 'aok', 'ʌ-o\'', 0, 'bentuk lebih kasar dari \'ya\'', '2021-12-25 09:02:33', '2022-06-09 17:56:33'),
(54, '1', 'lepas', NULL, 0, '1. dapat bergerak (lari) ke mana-mana; tidak tertambat: kuda itu -- sehingga pemiliknya sulit menangkapnya\r\n2. bebas dari ikatan; tidak terikat lagi: anjingnya --\r\n3. lolos dari kandang (kurungan, kerangkeng, dan sebagainya): burung piaraannya -- dan terbang entah ke mana\r\n4. melarikan diri: tahanan yang -- itu sudah tertangkap kembali\r\n5. bebas dari hukuman: baru saja seminggu -- dari penjara, ia sudah melakukan penodongan lagi\r\n6. tidak ada sangkut pautnya lagi; tidak ada ikatan lagi: ia sudah --, kontraknya sudah habis\r\n7. copot; tidak pada tempatnya lagi: sekrupnya --\r\n8. tanggal (tentang gigi): giginya sudah banyak yang --\r\n9. bebas; berdiri sendiri: negara itu sudah -- dari cengkeraman penjajah\r\n10. tidak melekat lagi; hilang: kejadian itu tidak pernah -- dari ingatannya\r\n11. sesudah; sehabis: -- salat subuh, kami selalu berjalan-jalan', '2021-12-25 09:02:46', '2022-01-02 15:17:56'),
(56, '2', 'lepas tangan', NULL, 0, '1. tidak berpegang pada kemudi atau setir (tentang bersepeda dan sebagainya)\r\n2. tidak campur tangan\r\n3. tidak mau berurusan lagi; tidak mau memikirkan (sanak saudara dan sebagainya); sudah menyerahkan atau melepaskan tanggung jawab dan sebagainya\r\n4. tidak dengan makan atau tidak dengan tambahan apa-apa (tentang gaji, upah)', '2021-12-25 09:11:14', '2022-01-02 15:18:41'),
(57, '2', 'campur tangan', NULL, 0, '1. turut mencampuri (memasuki) perkara orang lain\r\n2. tersangkut atau terlibat dalam suatu tindakan kejahatan (perkara orang lain dan sebagainya)', '2021-12-25 09:12:10', '2022-01-02 15:18:41'),
(58, '2', 'ular kepala\' dua\'', NULL, 0, 'orang munafik (ikut ke sana ikut ke sini dan sebagainya); tidak jelas dalam memihak', '2021-12-25 09:15:28', '2022-01-05 18:22:15'),
(59, '2', 'tangan kanan', NULL, 0, '1. pembantu utama\r\n2. orang yang paling dipercaya', '2021-12-25 09:16:09', '2022-01-02 15:18:41'),
(60, '2', 'papan atas', NULL, 0, 'kelas utama; kelas tinggi: saat ini makin banyak rumah makan dan restoran -- atas yang kian laris', '2021-12-25 09:18:36', '2022-01-02 15:18:41'),
(61, '1', 'burok acok', NULL, 0, 'sangat buruk; tidak pantas', '2021-12-25 09:19:47', '2022-01-02 15:17:56'),
(62, '2', 'burok siku\'', NULL, 0, 'mengambil kembali pemberian yang sudah diberikan kepada orang lain', '2021-12-25 09:21:25', '2022-01-05 18:18:18'),
(63, '1', 'tingkap', NULL, 0, '1. tengkurap\r\n2. jendela di atap (di dinding dan sebagainya); ada bermacam-macam rupa dan namanya, seperti -- kipas, -- mangun, -- panjang, -- perangin, dan sebagainya', '2021-12-27 00:14:57', '2022-01-02 15:17:56'),
(64, '1', 'tetingkap', NULL, 0, 'jatuh dengan posisi tengkurap', '2021-12-27 00:15:11', '2022-01-02 15:17:56'),
(66, '1', 'bedengkang', 'bə-deŋ-kʌŋ', 0, 'sangat panas', '2022-01-02 05:16:33', '2022-06-09 17:57:51'),
(67, '1', 'pungkal', NULL, 0, '1. pukul;\r\n2. ketuk (dengan sesuatu yang keras atau berat, dipakai juga dalam arti kiasan)', '2022-01-02 05:17:18', '2022-01-02 15:17:56'),
(68, '1', 'begegar', 'bə-gə-gʌr', 0, '1. gemetaran;\r\n2. bergetar anggota badan karena ketakutan (kedinginan dan sebagainya); menggigil karena ketakutan dan sebagainya', '2022-01-02 05:18:10', '2022-06-09 17:58:41'),
(69, '1', 'beleming', 'bə-lə-mɪŋ', 0, 'mengkilat; muka yang berminyak atau bahan / tempat lain yang mengandung sedikit minyak', '2022-01-02 05:19:22', '2022-06-09 18:02:35'),
(70, '1', 'bengam', 'bə-ŋʌm', 0, 'sangat bau', '2022-01-02 05:19:35', '2022-06-09 18:03:34'),
(71, '1', 'besa\'', NULL, 0, '1. besar;\r\n2. lebih dari ukuran sedang; lawan dari kecil: batang kayu ini sangat -- sehingga tidak sanggup tanganku memeluknya', '2022-01-02 05:20:24', '2022-01-05 16:15:41'),
(72, '1', 'berimbam', 'bə-rɪm-bʌm', 0, 'sangat banyak', '2022-01-02 05:21:00', '2022-06-09 18:05:11'),
(73, '1', 'biak', NULL, 0, 'anak kecil; bocah', '2022-01-02 05:21:37', '2022-01-02 15:17:56'),
(74, '1', 'cawan', NULL, 0, 'gelas; cangkir', '2022-01-02 05:22:21', '2022-01-02 15:17:56'),
(75, '1', 'cupel', NULL, 0, 'pinggir', '2022-01-02 05:22:55', '2022-01-02 15:17:56'),
(76, '1', 'curak', NULL, 0, '1. congek;\r\n2. penyakit telinga yang mengeluarkan cairan bercampur nanah', '2022-01-02 05:26:07', '2022-01-02 15:17:56'),
(77, '1', 'dogan', NULL, 0, 'kelapa muda', '2022-01-02 05:26:26', '2022-01-02 15:17:56'),
(78, '1', 'gabun', NULL, 0, 'sudah jauh; digunakan untuk pergi / berlari sangat jauh dan sudah tidak kelihatan', '2022-01-02 05:27:20', '2022-01-02 15:17:56'),
(79, '1', 'guli', NULL, 0, 'kelereng; bola kecil dari kaca (tanah liat atau batu), dipakai dalam permainan anak-anak; gundu; keneker; kelici;', '2022-01-02 05:27:53', '2022-01-02 15:17:56'),
(80, '1', 'jeling', NULL, 0, '1. kerling;\r\n2. pandangan mata ke sebelah kanan atau kiri tanpa menggerakkan kepala, tetapi hanya menggerakkan bola mata ke arah sudut mata sebelah kanan atau kiri: -- matanya menggoda setiap pemuda', '2022-01-02 05:28:34', '2022-01-02 15:17:56'),
(81, '1', 'idong', NULL, 0, '1. hidung;\r\n2. alat pencium, penghirup, penghidu (letaknya di sebelah atas bibir)', '2022-01-02 05:31:11', '2022-01-02 15:17:56'),
(82, '1', 'jangak', NULL, 0, '1. cantik;\r\n2. elok; molek (tentang wajah, muka perempuan);\r\n3. indah dalam bentuk dan buatannya: meja ini -- sekali', '2022-01-02 05:32:16', '2022-01-02 15:17:56'),
(83, '1', 'jering', NULL, 0, 'jengkol', '2022-01-02 05:32:28', '2022-01-02 15:17:56'),
(84, '1', 'jingki\'', NULL, 0, 'jinjit', '2022-01-02 05:33:05', '2022-01-05 17:17:45'),
(85, '1', 'juling', NULL, 0, '1. jereng;\r\n2. miring (tentang letak hitam mata yang tidak di tengah-tengah benar)', '2022-01-02 05:33:52', '2022-01-02 15:17:56'),
(86, '1', 'kasti', NULL, 0, '1. bola tenis;\r\n2. olahraga beregu dengan satu bola kecil (bola tenis) dan satu alat pemukul;\r\n3. Permainan dengan bola tenis dengan cara dipukul menggunakan kayu. Dua tim saling berhadapan. Tim yang menang akan memukul. Dan yang kalah akan menjaga', '2022-01-02 05:34:49', '2022-01-02 15:17:56'),
(87, '1', 'kasut', NULL, 0, 'sandal; alas kaki yang dibuat dari kulit, karet, dan sebagainya; terompah', '2022-01-02 05:35:22', '2022-01-02 15:17:56'),
(88, '1', 'kecok', NULL, 0, '1. cuci buang air besar menggunakan tangan;\r\n2. cebok', '2022-01-02 05:36:22', '2022-01-02 15:17:56'),
(89, '1', 'kedau', NULL, 0, 'redup', '2022-01-02 05:36:35', '2022-01-02 15:17:56'),
(90, '1', 'kelaci', NULL, 0, 'sendok nasi', '2022-01-02 05:37:21', '2022-01-02 15:17:56'),
(91, '1', 'belanga\'', 'bə-lʌ-ŋʌ\'', 0, 'kuali besar dari tanah atau besi untuk menyayur, merebus sayur-sayuran, dan sebagainya', '2022-01-02 05:38:02', '2022-06-09 17:59:32'),
(92, '1', 'kelentit', NULL, 0, 'vagina; kemaluan wanita', '2022-01-02 05:38:28', '2022-01-02 15:17:56'),
(93, '1', 'kenjar', NULL, 0, 'genit; ganjen', '2022-01-02 05:38:59', '2022-01-05 17:34:44'),
(94, '1', 'koroh', NULL, 0, 'ngorok (tidur)', '2022-01-02 05:39:38', '2022-01-02 15:17:56'),
(95, '1', 'lagak', NULL, 0, 'bergaya terlalu tinggi', '2022-01-02 05:40:03', '2022-01-02 15:17:56'),
(96, '1', 'lenjing', NULL, 0, 'tinggi, biasa digunakan untuk menyebut orang', '2022-01-02 05:40:37', '2022-01-02 15:17:56'),
(97, '1', 'mengeramput', NULL, 0, 'membual; bicara tidak sesuai fakta', '2022-01-02 05:41:09', '2022-01-02 15:17:56'),
(98, '1', 'melecong', NULL, 0, 'melesat; melompat sangat jauh', '2022-01-02 05:41:30', '2022-01-02 15:17:56'),
(99, '1', 'ningkap', NULL, 0, 'tengkurap', '2022-01-02 05:41:42', '2022-01-02 15:17:56'),
(100, '1', 'pajoh', NULL, 0, '1. makan (istilah kasar)\r\n2. kata kasar untuk menolak; pajoh bah, tentu gak aku tiduk (ogah, lebih baik aku tidur)', '2022-01-02 05:43:04', '2022-01-02 15:17:56'),
(104, NULL, 'widi', NULL, 0, 'des data1', '2022-01-02 08:31:00', '2022-01-02 08:31:00'),
(105, '1', 'kuyum', NULL, 0, 'permen', '2022-01-02 12:25:05', '2022-01-02 12:25:05'),
(106, '1', 'dulor', NULL, 0, 'saudara', '2022-01-02 12:27:44', '2022-01-02 12:27:44'),
(107, '1', 'demun', NULL, 0, '1. melempem;\r\n2. tidak kering benar; lembek: simpanlah kerupuk itu dalam wadah yang bertutup rapat supaya tidak cepat melempem', '2022-01-02 12:29:44', '2022-01-02 12:29:44'),
(108, '1', 'depak', NULL, 0, 'satuan panjang dengan kedua tangan direntangkan secara lurus', '2022-01-02 12:30:18', '2022-01-02 12:30:18'),
(109, '2', 'sejengkal kera\'', NULL, 0, 'dekat; disebut demikian karena telapak tangan kera itu kecil', '2022-01-02 12:31:09', '2022-01-02 12:31:09'),
(110, '1', 'jujut', NULL, 0, 'tarik', '2022-01-02 12:31:38', '2022-01-02 12:31:38'),
(111, '1', 'ulor', NULL, 0, 'ulur', '2022-01-02 12:32:06', '2022-01-02 12:32:06'),
(112, '1', 'jendol', NULL, 0, 'jidat yang maju kedepan', '2022-01-02 12:32:29', '2022-01-02 12:32:29'),
(113, '1', 'jungang', NULL, 0, 'tonggos; gigi yang maju kedepan', '2022-01-02 12:32:47', '2022-01-02 12:32:47'),
(114, '1', 'ilik', NULL, 0, '1. hilir; \r\n2. bagian sungai sebelah muara: sampai ke -- sungai;\r\n3. daerah sepanjang bagian muara sungai (daerah pesisir): orang --', '2022-01-02 12:34:13', '2022-01-02 12:34:13'),
(115, '1', 'lanting', NULL, 0, 'dermaga kecil dipinggir sungai untuk mandi, cuci dan kakus; tempat menambat perahu atau sampan', '2022-01-02 12:35:30', '2022-01-02 12:35:30'),
(116, '1', 'lawar', NULL, 0, '1. tampan;\r\n2. elok (rupanya, sikapnya, bentuknya, letaknya); gagah: ia tampak -- kalau memakai jas dan dasi; potongan badannya cukup --\r\n3. cocok; patut: cakap dan -- menjadi penerbang\r\n4. roman muka; air muka: -- mukanya mirip kakaknya; -- keduanya setara benar\r\n5. wajah; sikap (badan); perawakan: usianya sudah lanjut, tetapi masih muda --nya', '2022-01-02 12:36:49', '2022-01-02 12:36:49'),
(118, '1', 'lereng', NULL, 0, 'sepeda', '2022-01-02 12:37:35', '2022-01-02 12:37:35'),
(119, '1', 'melempai', NULL, 0, 'melengkung; tidak lurus', '2022-01-02 12:38:09', '2022-01-02 12:38:09'),
(120, '1', 'medam', NULL, 0, 'sangat jauh', '2022-01-02 12:38:23', '2022-01-02 12:38:23'),
(121, '1', 'menyubok', NULL, 0, 'mengendap-endap', '2022-01-02 12:38:54', '2022-01-02 12:38:54'),
(122, '1', 'nyan', NULL, 0, 'itu', '2022-01-02 12:39:03', '2022-01-02 12:39:03'),
(123, '1', 'nunjam', NULL, 0, 'menjorok kebawah', '2022-01-02 12:39:23', '2022-01-02 12:39:23'),
(124, '1', 'penyengat', NULL, 0, 'lebah; tawon', '2022-01-02 12:39:39', '2022-01-02 12:39:39'),
(125, '1', 'pedaring', NULL, 0, 'tempat beras', '2022-01-02 12:40:00', '2022-01-02 12:40:00'),
(126, '1', 'cupak', NULL, 0, 'takaran beras (biasanya 1 cupak = ¼ gantang)', '2022-01-02 12:40:59', '2022-01-02 12:40:59'),
(127, '1', 'peker', NULL, 0, 'tidak beres; ditujukan untuk seseorang yang tidak sesuai dengan keinginan (dalam masalah pekerjaan atau nakal)', '2022-01-02 12:42:13', '2022-01-02 12:42:13'),
(128, '1', 'pelis', NULL, 0, 'botol kecil', '2022-01-02 12:43:21', '2022-01-02 12:43:21'),
(129, '1', 'pening', NULL, 0, 'pusing', '2022-01-02 12:43:35', '2022-01-02 12:43:35'),
(130, '1', 'pinggan', NULL, 0, '1. piring;\r\n2. wadah berbentuk bundar pipih dan sedikit cekung (atau ceper), terbuat dari porselen (seng, plastik), tempat meletakkan nasi yang hendak dimakan (tempat lauk-pauk dan sebagainya): -- yang digunakan untuk sarapan sudah dicuci; tari -- tari-tarian dengan membawa piring kecil dan lilin di atasnya;', '2022-01-02 12:48:58', '2022-01-02 12:48:58'),
(131, '1', 'beling', 'bə-lɪŋ', 0, '1. kaca;\r\n2. pecahan kaca (porselen dan sebagainya);\r\n3. serbuk halus-halus dari pecahan kaca dan sebagainya;\r\n4. barang pecah belah; tembikar; porselen;', '2022-01-02 12:51:12', '2022-06-09 18:02:55'),
(132, '1', 'punah ranah', NULL, 0, 'habis tak tersisa; ludes', '2022-01-02 12:55:06', '2022-01-02 12:55:06'),
(133, '1', 'kanta\'', NULL, 0, 'bau; aroma', '2022-01-02 12:55:23', '2022-01-05 17:21:15'),
(134, '1', 'pusa\'', NULL, 0, 'jamah; menjamah makanan', '2022-01-02 12:55:39', '2022-01-05 17:55:30'),
(135, '1', 'pus', NULL, 0, 'biarlah; biar; tidak peduli', '2022-01-02 12:56:08', '2022-01-02 12:56:08'),
(136, '1', 'ranap', NULL, 0, 'jauh; sudah tak nampak dimata', '2022-01-02 12:56:30', '2022-01-02 12:56:30'),
(137, '1', 'rehal', NULL, 0, 'meja untuk meletakkan al-Qur\'an', '2022-01-02 12:57:03', '2022-01-02 12:57:03'),
(138, '1', 'rerimahan', NULL, 0, 'kudapan; makanan cemilan', '2022-01-02 12:57:45', '2022-01-02 12:57:45'),
(139, '1', 'ronga\'', NULL, 0, 'ompong; tak bergigi; gigi sudah rontok', '2022-01-02 12:58:12', '2022-01-05 17:56:40'),
(140, '1', 'meridap', NULL, 0, 'gatal kecil-kecil yang sangat banyak', '2022-01-02 12:58:28', '2022-01-02 12:58:28'),
(141, '1', 'selembe', NULL, 0, 'cuek; tampak tidak peduli', '2022-01-02 12:59:07', '2022-01-02 12:59:07'),
(143, '1', 'sesorok', NULL, 0, '1. laci;\r\n2. kotak kecil (pada meja dan sebagainya) yang dapat ditarik dan disorong, tempat menyimpan benda-benda kecil;', '2022-01-02 13:01:02', '2022-01-02 13:01:02'),
(144, '1', 'sawan', NULL, 0, 'kaget; terperanjat; terkejut (karena heran): Umak sawan meliat ular (ibu kaget melihat ular)', '2022-01-02 13:02:24', '2022-01-02 13:02:24'),
(145, '1', 'tekeraya\'', NULL, 0, 'kaget; terperanjat; terkejut (karena heran): Okta tekerayak meliat antu (Okta kaget melihat hantu)', '2022-01-02 13:03:24', '2022-01-05 18:01:27'),
(146, '1', 'antu', 'ʌn-tʊ', 0, '1. hantu;\r\n2. roh jahat (yang dianggap terdapat di tempat-tempat tertentu);', '2022-01-02 13:04:17', '2022-06-09 17:54:03'),
(147, '1', 'liat', NULL, 0, '1. lihat;\r\n2. pekat; lekat sekali: lempung (tanah) ini sangat --; adonan ini -- sekali', '2022-01-02 13:05:19', '2022-01-02 13:05:19'),
(148, '1', 'liut', NULL, 0, 'alot; tidak mudah putus; liat', '2022-01-02 13:05:47', '2022-01-02 13:05:47'),
(149, '1', 'senap', NULL, 0, 'sesak; sesak napas biasanya akibat tertindih, dipukul atau sangat kaget', '2022-01-02 13:09:02', '2022-01-02 13:09:02'),
(150, '1', 'sepor', NULL, 0, 'empuk: sepor gik ubi nte (ubinya empuk sekali)', '2022-01-02 13:09:58', '2022-01-02 13:09:58'),
(151, '1', 'sengkong', NULL, 0, 'bengkok; tidak lurus', '2022-01-02 13:10:16', '2022-01-02 13:10:16'),
(152, '1', 'sudu\'', NULL, 0, 'sendok', '2022-01-02 13:10:31', '2022-01-05 18:01:01'),
(153, '2', 'sepelempar sugi', NULL, 0, 'dekat; sangat dekat, disebut demikian karena sugi berukuran kecil tak mungkin dapat terlempar jauh', '2022-01-02 13:11:57', '2022-01-02 13:11:57'),
(154, '1', 'suba\'', NULL, 0, 'masih lama', '2022-01-02 13:16:48', '2022-01-05 18:00:46'),
(155, '1', 'sian', NULL, 0, 'sana; disana; disitu', '2022-01-02 13:17:42', '2022-01-02 13:17:42'),
(156, '1', 'simbor', NULL, 0, 'siram; menyiram', '2022-01-02 13:18:24', '2022-01-02 13:18:24'),
(157, '1', 'susok', NULL, 0, '1. sendok untuk memasak atau menggoreng; spatula;\r\n2. kembalian; uang kelebihan pembayaran; sisa uang pembayaran yang harus dikembalikan kepada pembeli; uang penyongsong; uang kembali', '2022-01-02 13:20:38', '2022-01-02 13:20:38'),
(158, '1', 'tanggar', NULL, 0, '1. jerang;\r\n2. memasak air', '2022-01-02 13:21:12', '2022-01-02 13:21:12'),
(159, '1', 'tapsi', NULL, 0, 'nampan kecil, biasa dipakai untuk membawa kopi', '2022-01-02 13:21:33', '2022-01-02 13:21:33'),
(160, '1', 'tecabor', NULL, 0, 'tercebur; jatuh kedalam air', '2022-01-02 13:21:47', '2022-01-02 13:21:47'),
(161, '1', 'tekantal', NULL, 0, 'jatuh dengan posisi terduduk', '2022-01-02 13:22:01', '2022-01-02 13:22:01'),
(162, '1', 'telaja\'', NULL, 0, 'melebihi batas; terlampaui', '2022-01-02 13:25:32', '2022-01-05 18:01:54'),
(163, '1', 'tempias', NULL, 0, 'terkena imbas air hujan', '2022-01-02 13:25:55', '2022-01-02 13:25:55'),
(164, '1', 'tempoyak', NULL, 0, 'fermentasi buah durian; biasanya dibuat sebagai lauk atau penambah masakan', '2022-01-02 13:26:39', '2022-01-02 13:26:39'),
(165, '1', 'tengkuyong', NULL, 0, 'siput; hewan bercangkang yang bergerak lambat', '2022-01-02 13:27:05', '2022-01-02 13:27:05'),
(166, '1', 'telu\'', NULL, 0, 'telur', '2022-01-02 13:27:16', '2022-01-05 18:02:16'),
(167, '1', 'tuju', NULL, 0, '1. arah;\r\n2. santet, biasanya menggunakan telur terbang seagai media pengirim santet', '2022-01-02 13:28:28', '2022-01-02 13:28:28'),
(170, '1', 'anjang', 'ʌn-jʌŋ', 0, 'sapaan untuk orang yang lebih tua yang tubuhnya tinggi, contoh: Mak Anjang, Pak Anjang', '2022-01-04 01:04:37', '2022-06-09 18:01:08'),
(172, '1', 'kepinding', NULL, 0, '1. kutu busuk;\r\n2. kutu pengisap darah manusia, berwarna merah, biasa hidup di sela-sela tempat duduk atau tempat tidur (kursi, tikar, dipan, dan sebagainya);', '2022-01-05 09:18:32', '2022-01-05 09:18:32'),
(173, '1', 'genah', NULL, 0, '1. layak; patut; tahu maksudnya (tentang pembicaraan, peraturan, dan sebagainya);\r\n2. normal;', '2022-01-05 09:23:18', '2022-01-05 09:23:18'),
(174, '1', 'ye', NULL, 0, '1. ya;\r\n2. kata untuk menyatakan setuju (membenarkan dan sebagainya): \r\n3. kata untuk memastikan, menegaskan dalam bertanya: iye kan? (ya kan?)\r\n4. tah; gerangan: siape ye yang maok pegi mbeli rokok? (siapa ya yang bersedia pergi membeli rokok?);\r\n5. kata untuk memberi tekanan pada suatu pernyataan: besok usah adak datang kerumah ye (besok jangan lupa datang kerumah ya);', '2022-01-05 09:30:00', '2022-01-05 09:30:00'),
(175, '1', 'nyaman', NULL, 0, '1. sedap, lezat, enak (tentang rasa): nyaman kue ni te (kue ini enak)\r\n2. sehat atau segar (tentang kondisi badan): gik dak nyaman badan ak aku nin (aku sedang tidak enak badan)\r\n3. nikmat atau menyenangkan (tentang perasaan, suasana, dan sebagainya); mun lepas mandi badan pasti nyaman (kalau setelah mandi badan pasti enak)\r\n4. pulas; lelap (tentang tidur): nyaman gik die tiduk bah (enak sekali dia tidur)', '2022-01-05 10:15:59', '2022-01-05 10:15:59'),
(176, '1', 'tidu\'', NULL, 0, 'tidur', '2022-01-05 10:16:26', '2022-01-05 10:16:26'),
(177, '1', 'lelongop', NULL, 0, 'jendela', '2022-01-05 10:20:00', '2022-01-05 10:20:00'),
(178, '1', 'seluar', NULL, 0, 'celana yang sifatnya rapi, bukan celana pendek seperti dalaman', '2022-01-05 10:24:47', '2022-01-05 10:24:47'),
(179, '1', 'katok', NULL, 0, 'celana pendek, biasa dipakai sebagai dalaman', '2022-01-05 10:25:02', '2022-01-05 10:25:02'),
(180, '1', 'keleper', NULL, 0, 'buah kemaluan laki-laki', '2022-01-05 10:30:17', '2022-01-05 10:30:17'),
(181, '1', 'gama\'', NULL, 0, 'pegang; sentuh; menyentuh; memegang: usah semadi kau gama\' bende nyan (jangan asal kau pegang benda itu)', '2022-01-05 10:31:36', '2022-01-05 10:31:36'),
(182, '1', 'semadi', NULL, 0, 'coba-coba; sembarangan; asal-asalan: usah semadi kau gama\' bende nyan (jangan sembarangan kau pegang benda itu)', '2022-01-05 10:32:30', '2022-01-05 10:32:30'),
(185, '2', 'garuk kepala dak gatal', NULL, 0, 'bingung sendiri', '2022-01-12 00:07:41', '2022-01-12 07:08:15'),
(186, '1', 'tempungas', NULL, 0, 'mencuci muka', '2022-01-12 00:19:46', '2022-01-12 00:19:46'),
(187, '1', 'melodeng', NULL, 0, 'memuat kayu', '2022-01-12 00:22:40', '2022-01-12 00:22:40'),
(188, '1', 'emping', 'əmpiŋ', NULL, 'makanan dari beras ketan yang dikeringkan', '2022-06-09 10:24:44', '2022-06-09 17:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'kata', '2022-01-02 15:14:45', '2022-01-02 15:14:45'),
(2, 'idiom', '2022-01-02 15:14:45', '2022-01-02 21:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@kbmk.id', '$2y$10$tE7b1PasmDEmO9JvVwhyGeTTC58gCjA0ejQC7KGLZGJbFo0aICbAe', '2021-11-25 19:58:29', '2021-11-25 20:08:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kata`
--
ALTER TABLE `kata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kata`
--
ALTER TABLE `kata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
