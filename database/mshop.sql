-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 02, 2022 lúc 01:50 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avata` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `address`, `phone`, `avata`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'admin@gmail.com', '$2y$10$ePoYCSC/rO6GSmXbnynwyOtDdf21BKxyvpqZ7k4GEZi3ShlAOJdUm', 'Bình Dương', '0112342311', 'avata.png', 100, 1, 'SzLOXdm2JBJdX5z3WmG5vI55SrvnS4EQj9iuN4GYTulpHGwq6KFKbR8CpDTv', '2020-05-04 03:32:34', '2021-08-05 04:36:10'),
(2, 'Nhan Vien A', 'nva@gmail.com', '$2y$10$3bDLoThR5cowMKpTCbzv7eADwQxNbCtpFFEgj.nWn4nTdErZklqZ.', 'Bình Dương', '0125235258', '', 1, 0, NULL, '2021-05-11 18:14:25', '2021-05-11 18:14:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `url_banner` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại di động(Mobile fone)', 'dien-thoai-di-dongmobile-fone', '0', '2020-11-23 13:01:57', '2020-05-08 13:03:21'),
(2, 'Máy tính xách tay (Laptop)', 'may-tinh-xach-tay-laptop', '0', '2020-11-23 13:10:10', '2020-05-08 13:02:57'),
(3, 'Asus - ZenFones', 'asus-zenfones', '1', '2020-11-23 13:17:01', '2020-11-23 13:42:30'),
(4, 'Samsung', 'samsung', '1', '2020-11-23 13:17:39', '2020-11-23 13:17:39'),
(9, 'DELL', 'dell', '2', '2020-11-23 18:36:10', '2020-11-23 18:36:10'),
(10, 'ASUS', 'asus', '2', '2020-11-23 18:36:21', '2020-11-23 18:36:21'),
(11, 'HP', 'hp', '2', '2020-11-23 18:36:31', '2020-11-23 18:36:31'),
(13, 'TIN TỨC - KHUYỄN MẠI', 'tin-tuc-khuyen-mai', '0', '2020-11-23 18:38:46', '2020-11-23 18:38:46'),
(14, 'QUẢNG CÁO - BANNER', 'quang-cao-banner', '0', '2020-11-23 18:38:57', '2020-11-23 18:38:57'),
(15, 'Apple (Iphone)', 'apple-iphone', '1', '2020-11-23 18:56:05', '2020-11-23 18:56:05'),
(16, 'OPPO', 'oppo', '1', '2020-11-24 19:00:27', '2020-11-24 19:00:27'),
(17, 'Sony', 'sony', '1', '2020-11-24 19:00:41', '2020-11-24 19:00:41'),
(18, 'LENOVO', 'lenovo', '2', '2020-11-24 19:00:52', '2020-11-24 19:00:52'),
(19, 'PC - Máy bộ', 'pc-may-bo', '0', '2020-11-25 17:36:11', '2020-11-25 17:36:11'),
(20, 'Ipad', 'ipad', '19', '2020-11-25 17:36:27', '2022-03-11 18:42:57'),
(21, 'SamSung', 'samsung', '19', '2020-11-25 17:36:48', '2022-03-11 18:43:11'),
(22, 'Tin Công Nghệ', 'tin-cong-nghe', '13', '2020-11-28 11:40:09', '2020-11-28 11:40:09'),
(23, 'Tin khuyễn mại', 'tin-khuyen-mai', '13', '2020-11-28 11:40:31', '2020-11-28 11:40:31'),
(25, 'Acer', 'acer', '2', '2021-07-17 06:56:44', '2021-07-17 06:56:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_img`
--

CREATE TABLE `detail_img` (
  `id` int(10) UNSIGNED NOT NULL,
  `images_url` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_img`
--

INSERT INTO `detail_img` (`id`, `images_url`, `pro_id`, `created_at`, `updated_at`) VALUES
(33, '1480146220_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', 36, '2020-11-25 17:43:40', '2020-11-25 17:43:40'),
(79, '1626529501_images.jpg', 78, '2021-07-17 06:45:01', '2021-07-17 06:45:01'),
(80, '1626529501_tải xuống.jpg', 78, '2021-07-17 06:45:01', '2021-07-17 06:45:01'),
(81, '1626529744_jtzd1xamh7s86.jpg', 79, '2021-07-17 06:49:04', '2021-07-17 06:49:04'),
(82, '1626530157_lenovo-legion-5-15imh05-i7-82au0051vn-210720-0417540.jpg', 80, '2021-07-17 06:55:57', '2021-07-17 06:55:57'),
(83, '1626530312_tải xuống (1).jpg', 57, '2021-07-17 06:58:32', '2021-07-17 06:58:32'),
(84, '1626530423_ASUS-ROG-GL553VD-01.jpg', 58, '2021-07-17 07:00:23', '2021-07-17 07:00:23'),
(85, '1626530597_01_hero_r3_675x500_tcm2649_2614134_tcm2649_2614137_tcm2649-2614134.png', 56, '2021-07-17 07:03:17', '2021-07-17 07:03:17'),
(94, '1647050000_images.jpg', 48, '2022-03-11 18:53:20', '2022-03-11 18:53:20'),
(95, '1647050001_tải xuống.jpg', 48, '2022-03-11 18:53:21', '2022-03-11 18:53:21'),
(96, '1647051203_apple-ipad-air-4-1200x900.jpg', 49, '2022-03-11 19:13:23', '2022-03-11 19:13:23'),
(97, '1647051203_tải xuống.jpg', 49, '2022-03-11 19:13:23', '2022-03-11 19:13:23'),
(98, '1647051493_GALAXY-TAB-S8-ULTRA-3.jpg', 81, '2022-03-11 19:18:13', '2022-03-11 19:18:13'),
(99, '1647051687_3.jpg', 82, '2022-03-11 19:21:27', '2022-03-11 19:21:27'),
(100, '1647051687_637789753777552981_samsung-galaxy-tab-s801.jpg', 82, '2022-03-11 19:21:27', '2022-03-11 19:21:27'),
(101, '1648899540_galaxy-s22-ultra_highlights_kv_img.jpg', 34, '2022-04-02 04:39:00', '2022-04-02 04:39:00'),
(102, '1648899540_tải xuống.jpg', 34, '2022-04-02 04:39:00', '2022-04-02 04:39:00'),
(103, '1648899742_samsung-galaxy-z-fold-3-co-may-mau.jpg', 26, '2022-04-02 04:42:22', '2022-04-02 04:42:22'),
(104, '1648899742_311546755.jpeg', 26, '2022-04-02 04:42:22', '2022-04-02 04:42:22'),
(105, '1648899916_anh-render-OPPO-Reno7-Z-5G.jpg', 27, '2022-04-02 04:45:16', '2022-04-02 04:45:16'),
(106, '1648900030_oppo-reno4-pro2.jpg', 24, '2022-04-02 04:47:10', '2022-04-02 04:47:10'),
(107, '1648900031_600-oppo-reno4-pro-5g-600x600.jpg', 24, '2022-04-02 04:47:11', '2022-04-02 04:47:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full` text COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `author`, `intro`, `full`, `images`, `tag`, `status`, `source`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng', 'iphone-se-doi-tra-thiet-ke-thanh-lich-manh-nhu-iphone-6s-con-duoi-7-trieu-dong', 'admin', '<p>Kh&ocirc;ng chỉ iPhone SE h&agrave;ng mới m&agrave; h&agrave;ng đổi trả cũng được giảm gi&aacute; mạnh mẽ. Trước đ&acirc;y mức gi&aacute; l&agrave; hơn 7 triệu b&acirc;y giờ chỉ c&ograve;n dưới 7 triệu đồng, thậm ch&iacute; về gần mức 6 triệu đồng</p>\r', '<p>iPhone SE kế thừa từ nhiều mẫu iPhone hiện nay, n&oacute; l&agrave; tổng h&ograve;a của vẻ đẹp thanh lịch, gọn g&agrave;ng của&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-5s-16gb\" target=\"_blank\" title=\" iPhone 5s\" type=\" iPhone 5s\">iPhone 5s</a>&nbsp;với sức mạnh cấu h&igrave;nh của iPhone 6s. Ch&iacute;nh v&igrave; vậy, iPhone SE vẫn l&agrave; mong ước của nhiều t&iacute;n đồ nh&agrave; T&aacute;o.</p>\r\n\r\n<p><img alt=\"iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng\" src=\"https://cdn1.tgdd.vn/Files/2020/11/28/919237/iphone-se-2_1204x535.jpg\" title=\"iPhone SE đổi trả thiết kế thanh lịch, mạnh như iPhone 6s còn dưới 7 triệu đồng\" /></p>\r\n\r\n<p>Về gi&aacute; b&aacute;n, hiện tại iPhone SE h&agrave;ng đổi trả chỉ c&ograve;n dưới 7 triệu, ở mức trung b&igrave;nh l&agrave; 6.8 triệu đồng, thậm ch&iacute; c&oacute; chiếc chỉ 6.3 triệu đồng, t&ugrave;y thời gian bảo h&agrave;nh. Đ&acirc;y ch&iacute;nh l&agrave; lựa chọn tốt cho nhiều bạn trẻ mong muốn c&oacute; một iPhone &ldquo;nhỏ nhưng c&oacute; v&otilde;&rdquo;, gọn g&agrave;ng nhưng cực kỳ mạnh mẽ.</p>\r\n\r\n<p>iPhone SE hiện l&agrave; mẫu smartphone nhỏ gọn c&oacute; hiệu suất cao nhất hiện nay bởi n&oacute; trang bị cấu h&igrave;nh như iPhone 6s, đ&oacute; l&agrave; vi xử l&yacute; Apple A9, RAM 2 GB, c&ugrave;ng camera 12 MP sắc n&eacute;t. So với iPhone 5s th&igrave; iPhone SE c&ograve;n sở hữu thỏi pin dung lượng lớn hơn (1.642 mAh so với 1.560 mAh).</p>\r\n', '1480392187_bannernew4-_1920x1080.jpg', 'iphone 7, iphone 7 plus', 1, 'the gioi di dong', 22, 1, '2020-11-28 14:03:07', '2020-11-28 14:03:07'),
(2, 'Điểm tin HOT 23/11: Mẫu iPhone SE 2020 đẹp nao lòng, đoạn video 5 giây biến iPhone thành cục gạch', 'diem-tin-hot-2311-mau-iphone-se-2020-dep-nao-long-doan-video-5-giay-bien-iphone-thanh-cuc-gach', 'admin', '<p>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2020 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất.</p>\r\n', '<h2>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2020 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất. Ngo&agrave;i ra, cư d&acirc;n mạng đang truyền tay nhau 1 clip 5 gi&acirc;y khiến nhiều chiếc iPhone trở th&agrave;nh cục gạch 1 c&aacute;ch nhẹ nh&agrave;ng.</h2>\r\n\r\n<h3><strong>1.&nbsp;Nếu iPhone SE 2020 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</strong></h3>\r\n\r\n<p>Mới đ&acirc;y, nh&agrave; thiết kế nhỏ tuổi Đạt Nobita tiếp tục đến với mẫu thiết kế iPhone SE 2020 m&agrave; theo m&igrave;nh l&agrave; &ldquo;đẹp kh&ocirc;ng tỳ vết&rdquo;. iPhone SE 2020 trong mẫu thiết kế n&agrave;y c&oacute; khung viền phẳng, rất mạnh mẽ trong khi mặt trước v&agrave; sau được phủ k&iacute;nh cường lực. C&oacute; vẻ như những th&ocirc;ng tin cho rằng năm sau iPhone sẽ sử dụng lại kiểu thiết kế tr&ecirc;n iPhone 4/4s đ&atilde; ảnh hưởng tới mẫu concept n&agrave;y.</p>\r\n\r\n<p><img alt=\"Nếu iPhone SE 2020 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" src=\"https://cdn3.tgdd.vn/Files/2020/11/22/917054/se1_1280x720.jpg\" title=\"Nếu iPhone SE 2020 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" /></p>\r\n\r\n<p>Chưa hết, concept iPhone SE 2020 c&ograve;n ấn tượng bởi viền cạnh m&agrave;n h&igrave;nh si&ecirc;u mỏng, cạnh tr&ecirc;n cũng rất hẹp, t&iacute;ch hợp camera trước gọn nhỏ, tinh tế. Lần n&agrave;y, m&aacute;y kh&ocirc;ng c&oacute; n&uacute;t nguồn cạnh tr&ecirc;n m&agrave; l&agrave; ở cạnh phải để tiện lợi cho người d&ugrave;ng bởi m&agrave;n h&igrave;nh của m&aacute;y đ&atilde; lớn hơn.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/neu-iphone-se-2020-dep-the-nay-thi-iphone-7-cung-se-e-hang-917054\" target=\"_blank\" title=\"Nếu iPhone SE 2020 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\">Nếu iPhone SE 2020 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</a></p>\r\n\r\n<h3><strong>2.&nbsp;Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.thegioididong.com/tin-tuc/mau-iphone-se-2020-dep-nao-long-doan-video-5-giay-917408\" /></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/canh-bao-doan-video-5-giay-khien-may-iphone-tro-thanh-cuc-gach-917063\" target=\"_blank\" title=\"Cảnh báo: Đoạn video 5 giây khiến máy iPhone trở thành cục gạch\">Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</a></p>\r\n\r\n<h3><strong>3.&nbsp;Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</strong></h3>\r\n\r\n<p>Trang c&ocirc;ng nghệ th&acirc;n cận với Samsung &ndash;&nbsp;<a href=\"http://www.sammobile.com/2020/11/23/first-images-of-the-glossy-black-galaxy-s7-edge-surface-online/\" rel=\"nofollow\" target=\"_blank\" title=\"Galaxy S7 Edge\" type=\"Galaxy S7 Edge\">Sammobile</a>&nbsp;l&agrave; nguồn tin mang đến cho ch&uacute;ng ta những h&igrave;nh ảnh n&agrave;y. Trong bộ ảnh dưới đ&acirc;y, c&aacute;c bạn c&oacute; thể thấy rằng Galaxy S7 Edge xuất hiện với m&agrave;u đen b&oacute;ng bẩy hơn so với m&agrave;u Black Onyx trước đ&oacute;.</p>\r\n\r\n<p><img alt=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" src=\"https://cdn.tgdd.vn/Files/2020/11/23/917387/s7-edge-glossy-black-7_690x690.jpg\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" /></p>\r\n\r\n<p>Đặc biệt, bộ ảnh n&agrave;y cũng rất sắc n&eacute;t v&agrave; chi tiết, kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; đang chụp l&eacute;n cả, v&igrave; vậy c&oacute; thể n&oacute;i rằng Samsung đ&atilde; sẵn s&agrave;ng để tung phi&ecirc;n bản m&agrave;u sắc mới n&agrave;y cho dịp cuối năm để những ai th&iacute;ch m&agrave;u đen b&oacute;ng c&oacute; th&ecirc;m lựa chọn hấp dẫn.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/galaxy-s7-edge-glossy-black-bong-dung-xuat-hien-917387\" target=\"_blank\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có người anh em\">Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</a></p>\r\n\r\n<h3><strong>4.&nbsp;3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2020)</strong></h3>\r\n\r\n<p><img alt=\"Apple iPhone SE\" src=\"https://cdn3.tgdd.vn/Files/2020/11/22/917091/iphone-se_800x450.jpg\" title=\"Apple iPhone SE\" /></p>\r\n\r\n<p>Bắt đầu rồi đ&oacute; c&aacute;c bạn ạ, m&ugrave;a mua sắm cuối năm đang nhộn nhịp hẳn l&ecirc;n. Thị trường di động kh&ocirc;ng chỉ xuất hiện c&aacute;c mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Đặt mua smartphone tại Thegioididong.com\" type=\"Đặt mua smartphone tại Thegioididong.com\">smartphone</a>&nbsp;mới thời thượng, m&agrave; b&ecirc;n cạnh đ&oacute;, những mẫu m&aacute;y được b&aacute;n ra trước đ&oacute; cũng ồ ạt giảm gi&aacute; để h&uacute;t kh&aacute;ch.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/top-3-smartphone-co-gia-giam-lam-nao-long-nguoi-viet-11-2020-917091\" target=\"_blank\" title=\"3 smartphone có giá giảm làm nao lòng người dùng Việt (11/2020)\">3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2020)</a></p>\r\n\r\n<h3><strong>5.&nbsp;7 t&iacute;nh năng tuyệt vời gi&uacute;p bạn sử dụng Android như chuy&ecirc;n gia</strong></h3>\r\n\r\n<p><img alt=\"Android\" src=\"https://cdn1.tgdd.vn/Files/2020/11/23/917202/android_800x450.jpg\" title=\"Android\" /></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=android\" target=\"_blank\" title=\"Android\" type=\"Android\">Android</a>&nbsp;l&agrave; một hệ điều hảnh phổ biến nhất hiện nay với rất nhiều tuỳ chỉnh th&uacute; vị. V&igrave; vậy, h&ocirc;m nay m&igrave;nh xin giới thiệu với c&aacute;c bạn c&aacute;c cử chỉ rất hữu &iacute;ch gi&uacute;p bạn sử dụng thiết bị như một chuy&ecirc;n gia. Mời c&aacute;c bạn c&ugrave;ng theo d&otilde;i b&agrave;i viết nh&eacute;.</p>\r\n', '1480385929_bannernew4-_1920x1080.jpg', 'Điểm tin HOT 23/11: Mẫu iPhone SE 2020 ', 1, 'thegoididong.com', 22, 1, '2020-11-28 12:18:49', '2020-11-28 12:18:49'),
(3, 'Điểm tin HOT 23/11: Mẫu iPhone SE 2020 ', 'diem-tin-hot-2311-mau-iphone-se-2020', 'admin', '<p>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2020 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất.</p>\r\n', '<h2>Mới đ&acirc;y, 1 nh&agrave; thiết kể trẻ tuổi sinh năm 1998 tại Việt Nam đ&atilde; tạo ra 1 bản concept iPhone SE 2020 đẹp đến nao l&ograve;ng, sợ kiểu n&agrave;y th&igrave; iPhone 7 sẽ ế h&agrave;ng mất. Ngo&agrave;i ra, cư d&acirc;n mạng đang truyền tay nhau 1 clip 5 gi&acirc;y khiến nhiều chiếc iPhone trở th&agrave;nh cục gạch 1 c&aacute;ch nhẹ nh&agrave;ng.</h2>\r\n\r\n<h3><strong>1.&nbsp;Nếu iPhone SE 2020 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</strong></h3>\r\n\r\n<p>Mới đ&acirc;y, nh&agrave; thiết kế nhỏ tuổi Đạt Nobita tiếp tục đến với mẫu thiết kế iPhone SE 2020 m&agrave; theo m&igrave;nh l&agrave; &ldquo;đẹp kh&ocirc;ng tỳ vết&rdquo;. iPhone SE 2020 trong mẫu thiết kế n&agrave;y c&oacute; khung viền phẳng, rất mạnh mẽ trong khi mặt trước v&agrave; sau được phủ k&iacute;nh cường lực. C&oacute; vẻ như những th&ocirc;ng tin cho rằng năm sau iPhone sẽ sử dụng lại kiểu thiết kế tr&ecirc;n iPhone 4/4s đ&atilde; ảnh hưởng tới mẫu concept n&agrave;y.</p>\r\n\r\n<p><img alt=\"Nếu iPhone SE 2020 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" src=\"https://cdn3.tgdd.vn/Files/2020/11/22/917054/se1_1280x720.jpg\" title=\"Nếu iPhone SE 2020 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\" /></p>\r\n\r\n<p>Chưa hết, concept iPhone SE 2020 c&ograve;n ấn tượng bởi viền cạnh m&agrave;n h&igrave;nh si&ecirc;u mỏng, cạnh tr&ecirc;n cũng rất hẹp, t&iacute;ch hợp camera trước gọn nhỏ, tinh tế. Lần n&agrave;y, m&aacute;y kh&ocirc;ng c&oacute; n&uacute;t nguồn cạnh tr&ecirc;n m&agrave; l&agrave; ở cạnh phải để tiện lợi cho người d&ugrave;ng bởi m&agrave;n h&igrave;nh của m&aacute;y đ&atilde; lớn hơn.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/neu-iphone-se-2020-dep-the-nay-thi-iphone-7-cung-se-e-hang-917054\" target=\"_blank\" title=\"Nếu iPhone SE 2020 đẹp thế này thì iPhone 7 cũng sẽ ế hàng cho coi\">Nếu iPhone SE 2020 đẹp thế n&agrave;y th&igrave; iPhone 7 cũng sẽ ế h&agrave;ng cho coi</a></p>\r\n\r\n<h3><strong>2.&nbsp;Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://www.thegioididong.com/tin-tuc/mau-iphone-se-2020-dep-nao-long-doan-video-5-giay-917408\" /></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/canh-bao-doan-video-5-giay-khien-may-iphone-tro-thanh-cuc-gach-917063\" target=\"_blank\" title=\"Cảnh báo: Đoạn video 5 giây khiến máy iPhone trở thành cục gạch\">Cảnh b&aacute;o: Đoạn video 5 gi&acirc;y khiến m&aacute;y iPhone trở th&agrave;nh &quot;cục gạch&quot;</a></p>\r\n\r\n<h3><strong>3.&nbsp;Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</strong></h3>\r\n\r\n<p>Trang c&ocirc;ng nghệ th&acirc;n cận với Samsung &ndash;&nbsp;<a href=\"http://www.sammobile.com/2020/11/23/first-images-of-the-glossy-black-galaxy-s7-edge-surface-online/\" rel=\"nofollow\" target=\"_blank\" title=\"Galaxy S7 Edge\" type=\"Galaxy S7 Edge\">Sammobile</a>&nbsp;l&agrave; nguồn tin mang đến cho ch&uacute;ng ta những h&igrave;nh ảnh n&agrave;y. Trong bộ ảnh dưới đ&acirc;y, c&aacute;c bạn c&oacute; thể thấy rằng Galaxy S7 Edge xuất hiện với m&agrave;u đen b&oacute;ng bẩy hơn so với m&agrave;u Black Onyx trước đ&oacute;.</p>\r\n\r\n<p><img alt=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" src=\"https://cdn.tgdd.vn/Files/2020/11/23/917387/s7-edge-glossy-black-7_690x690.jpg\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có “người anh em”\" /></p>\r\n\r\n<p>Đặc biệt, bộ ảnh n&agrave;y cũng rất sắc n&eacute;t v&agrave; chi tiết, kh&ocirc;ng c&oacute; vẻ g&igrave; l&agrave; đang chụp l&eacute;n cả, v&igrave; vậy c&oacute; thể n&oacute;i rằng Samsung đ&atilde; sẵn s&agrave;ng để tung phi&ecirc;n bản m&agrave;u sắc mới n&agrave;y cho dịp cuối năm để những ai th&iacute;ch m&agrave;u đen b&oacute;ng c&oacute; th&ecirc;m lựa chọn hấp dẫn.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/galaxy-s7-edge-glossy-black-bong-dung-xuat-hien-917387\" target=\"_blank\" title=\"Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp có người anh em\">Galaxy S7 Edge Glossy Black bỗng dưng xuất hiện, iPhone 7 Jet Black sắp c&oacute; &ldquo;người anh em&rdquo;</a></p>\r\n\r\n<h3><strong>4.&nbsp;3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2020)</strong></h3>\r\n\r\n<p><img alt=\"Apple iPhone SE\" src=\"https://cdn3.tgdd.vn/Files/2020/11/22/917091/iphone-se_800x450.jpg\" title=\"Apple iPhone SE\" /></p>\r\n\r\n<p>Bắt đầu rồi đ&oacute; c&aacute;c bạn ạ, m&ugrave;a mua sắm cuối năm đang nhộn nhịp hẳn l&ecirc;n. Thị trường di động kh&ocirc;ng chỉ xuất hiện c&aacute;c mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Đặt mua smartphone tại Thegioididong.com\" type=\"Đặt mua smartphone tại Thegioididong.com\">smartphone</a>&nbsp;mới thời thượng, m&agrave; b&ecirc;n cạnh đ&oacute;, những mẫu m&aacute;y được b&aacute;n ra trước đ&oacute; cũng ồ ạt giảm gi&aacute; để h&uacute;t kh&aacute;ch.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/top-3-smartphone-co-gia-giam-lam-nao-long-nguoi-viet-11-2020-917091\" target=\"_blank\" title=\"3 smartphone có giá giảm làm nao lòng người dùng Việt (11/2020)\">3 smartphone c&oacute; gi&aacute; giảm l&agrave;m nao l&ograve;ng người d&ugrave;ng Việt (11/2020)</a></p>\r\n\r\n<h3><strong>5.&nbsp;7 t&iacute;nh năng tuyệt vời gi&uacute;p bạn sử dụng Android như chuy&ecirc;n gia</strong></h3>\r\n\r\n<p><img alt=\"Android\" src=\"https://cdn1.tgdd.vn/Files/2020/11/23/917202/android_800x450.jpg\" title=\"Android\" /></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=android\" target=\"_blank\" title=\"Android\" type=\"Android\">Android</a>&nbsp;l&agrave; một hệ điều hảnh phổ biến nhất hiện nay với rất nhiều tuỳ chỉnh th&uacute; vị. V&igrave; vậy, h&ocirc;m nay m&igrave;nh xin giới thiệu với c&aacute;c bạn c&aacute;c cử chỉ rất hữu &iacute;ch gi&uacute;p bạn sử dụng thiết bị như một chuy&ecirc;n gia. Mời c&aacute;c bạn c&ugrave;ng theo d&otilde;i b&agrave;i viết nh&eacute;.</p>\r\n', '1480385945_bannernew4-_1920x1080.jpg', 'Điểm tin HOT 23/11: Mẫu iPhone SE 2020 ', 1, 'thegoididong.com', 22, 1, '2020-11-28 12:19:05', '2020-11-28 12:19:05'),
(9, 'iOS 10.1.1 đang gặp vấn đề nghiêm trọng về pin?', 'ios-1011-dang-gap-van-de-nghiem-trong-ve-pin', 'Hoang Viet', '<p>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật iOS 10.1.1, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</p>\r\n', '<h2>Đầu th&aacute;ng 11 n&agrave;y Apple đ&atilde; ch&iacute;nh thức ph&aacute;t h&agrave;nh bản cập nhật&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-kiem?key=iOS+10.1.1\" target=\"_blank\" title=\"iOS 10.1.1\" type=\"iOS 10.1.1\">iOS 10.1.1</a>, tuy nhi&ecirc;n bản n&acirc;ng cấp n&agrave;y đ&atilde; nhận phản hồi kh&ocirc;ng tốt từ người d&ugrave;ng.</h2>\r\n\r\n<p>Cụ thể ng&agrave;y c&agrave;ng c&oacute; nhiều c&aacute;c b&aacute;o c&aacute;o về vấn đề iOS 10.1.1 ngốn pin nhanh hơn so với c&aacute;c phi&ecirc;n bản trước. Một số thiết bị khi c&ograve;n khoảng 30% pin sẽ đột ngột tắt nguồn, sau khi cắm bộ sạc v&agrave;o v&agrave;i gi&acirc;y th&igrave; m&agrave;n h&igrave;nh sẽ hiển thị lại dung lượng pin 30% trước đ&oacute;, th&ocirc;ng tin được&nbsp;<a href=\"http://www.phonearena.com/news/iOS-10.1.1-reported-to-drain-users-batteries_id88354\" rel=\"nofollow\" target=\"_blank\" title=\"phonearena\" type=\"phonearena\">phonearena</a>&nbsp;đăng tải.</p>\r\n\r\n<p>Người d&ugrave;ng kh&aacute;c c&ograve;n gặp vấn đề nghi&ecirc;m trọng hơn, khi iPhone của họ bị giảm hơn 80% pin trong một đ&ecirc;m, v&agrave; ho&agrave;n to&agrave;n tắt nguồn v&agrave;o s&aacute;ng h&ocirc;m sau, khi cắm sạc v&agrave;o th&igrave; lại hiển thị ở mức 30% pin.</p>\r\n\r\n<p>Hiện lỗi n&agrave;y chỉ xuất hiện ở một số người d&ugrave;ng nhất định, v&igrave; vậy Apple vẫn chưa thừa nhận đ&acirc;y l&agrave; vấn đề g&acirc;y ra bởi iOS 10.1.1. Hy vọng nh&agrave; t&aacute;o sẽ t&igrave;m ra nguy&ecirc;n nh&acirc;n vấn đề v&agrave; sớm khắc phục.</p>\r\n\r\n<p>Cũng nhắc lại đ&ocirc;i ch&uacute;t về iOS 10.1.1, trong bản n&acirc;ng cấp n&agrave;y Apple tập trung cải thiện t&iacute;nh năng chăm s&oacute;c sức khỏe v&agrave; sửa lỗi c&aacute;c ứng dụng kh&ocirc;ng thể tiếp cận dữ liệu từ điện thoại để thống k&ecirc; cho người d&ugrave;ng. Ngo&agrave;i ra, kh&ocirc;ng c&oacute; bất kỳ t&iacute;nh năng mới n&agrave;o được th&ecirc;m v&agrave;o.</p>\r\n', '1480399611_sac-pin-iphone77-636137797940677630_800x450.jpg', 'iOS 10.1.1 , Pin', 1, 'thegoididong.com', 22, 1, '2020-11-28 16:09:06', '2020-11-28 16:09:06'),
(12, 'khuyễn mại mùa mua sắm cuối năm 2020', 'khuyen-mai-mua-mua-sam-cuoi-nam-2020', 'admin', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2020. Si&ecirc;u', '<p>H&agrave;ng ng&agrave;n sản phẩm Đồ gia dụng Điện, Đồ d&ugrave;ng Nh&agrave; bếp đang được GIẢM GI&Aacute; SỐC trong ng&agrave;y Online Friday tại Megaplaza. Nhanh tay, cơ hội Mua sắm GI&Aacute; SI&Ecirc;U RẺ cuối c&ugrave;ng trong năm 2020. Si&ecirc;u thị Megaplaza | Vui vẻ Mua sắm - Tiết kiệm chi ti&ecirc;u.</p>\r\n', '1480404640_iphone-se-1_1240x698.jpg', 'Galaxy S7, Galaxy S7,Galaxy S7', 1, 'Google Product Forum​', 23, 1, '2020-11-28 17:30:40', '2020-11-28 17:30:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders`
--

CREATE TABLE `oders` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` decimal(13,2) NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oders`
--

INSERT INTO `oders` (`id`, `c_id`, `qty`, `sub_total`, `total`, `status`, `type`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '18490000.00', '18490000.00', 2, 'cod', 'nhan hang nhanh !', '2020-05-08 12:42:27', '2020-05-12 03:01:50'),
(2, 1, 1, '15890000.00', '15890000.00', 3, 'cod', 'nhan hang nhanh', '2020-05-12 03:01:23', '2020-05-12 03:01:42'),
(6, 5, 1, '15890000.00', '15890000.00', 0, 'cod', '                    \r\n                  ', '2021-07-22 02:39:06', '2021-07-22 02:39:06'),
(10, 6, 2, '43490000.00', '43490000.00', 0, 'cod', '                    \r\n                  ', '2021-08-05 04:35:56', '2021-08-05 04:35:56'),
(14, 5, 1, '3500000.00', '3500000.00', 2, 'cod', '                    \r\n                  ', '2021-08-17 03:46:12', '2021-08-17 03:57:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders_detail`
--

CREATE TABLE `oders_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `o_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oders_detail`
--

INSERT INTO `oders_detail` (`id`, `pro_id`, `qty`, `o_id`, `created_at`, `updated_at`) VALUES
(11, 78, 1, 10, '2021-08-05 04:35:56', '2021-08-05 04:35:56'),
(12, 26, 1, 10, '2021-08-05 04:35:56', '2021-08-05 04:35:56'),
(16, 48, 1, 14, '2021-08-17 03:46:13', '2021-08-17 03:46:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promo2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promo3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `packet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `r_intro` text COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `status` int(11) NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `intro`, `promo1`, `promo2`, `promo3`, `packet`, `images`, `r_intro`, `review`, `tag`, `price`, `status`, `cat_id`, `user_id`, `created_at`, `updated_at`) VALUES
(24, 'OPPO Reno4 Pro', 'oppo-reno4-pro', 'chụp đêm siêu đỉnh, mạnh mẽ', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Trả góp 0% (Chỉ áp dụng cho thẻ tín dụng) ', 'Tặng Voucher 500.000đ mua Apple Watch', ' Trong hộp có: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim  Bảo hành chính hãng: thân máy 12 tháng, pin 12 tháng, sạc 12 tháng  Giao hàng tận nơi miễn phí trong 1 ngày  1 đổi 1 trong 1 tháng với sản phẩm lỗi', '1648900044_oppo-reno4-pro-2.jpg', '', '', 'Oppo', '10000000.00', 1, 17, 1, '2020-11-24 11:48:39', '2022-04-02 04:47:24'),
(26, 'Samsung Galaxy Z Fold3', 'samsung-galaxy-z-fold3', 'chụp đêm siêu đỉnh, mạnh mẽ', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Giảm giá 1,000,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPay)', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1648899741_zfold3_carousel_mainsinglekv_mo.jpg', '', '', 'Galaxy ', '30000000.00', 1, 4, 1, '2020-11-25 16:44:07', '2022-04-02 04:42:21'),
(27, 'OPPO Reno7 Z', 'oppo-reno7-z', 'Đa nhiệm mượt mà, mạnh mẽ', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Tặng Voucher 500.000đ mua Apple Watch', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1648899916_oppo-reno7-z-5g-thumb-1-1-600x600.jpg', '', '', 'Oppo', '10490000.00', 1, 16, 1, '2020-11-25 16:44:11', '2022-04-02 04:45:16'),
(34, 'Samsung Galaxy S22 ', 'samsung-galaxy-s22', 'chụp đêm siêu đỉnh, mạnh mẽ', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Tặng phiếu mua hàng Samsung 2,000,000đ + Giảm đến 4,000,000đ khi Thu cũ Đổi mới (tùy model máy cũ)', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1648899539_704188148.jpeg', '', '', 'Galaxy S22', '20000000.00', 1, 4, 1, '2020-11-25 16:45:03', '2022-04-02 04:38:59'),
(36, ' Dell Inspiron 3552 ', 'dell-inspiron-3552', 'N3050/2GB/500GB/Win10', 'Tặng Balo Dell Xem hình (đến 30/11)', 'Cơ hội trúng xe Honda Wave Anpha Xem chi tiết (đến 30/11)', 'Tặng Cáp kết nối Xem hình (đến 30/11)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1480146220_dell-inspiron-3552-n3050-2gb-500gb-win10-400-1-400x313.png', '<h2>Dell Inspiron 3552 N3050 thuộc d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng được trang bị m&agrave;n h&igrave;nh lớn, b&agrave;n ph&iacute;m đầy đủ cụm số tiện &iacute;ch.</h2>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh lớn</strong></h3>\r\n\r\n<p>M&aacute;y được trang bị m&agrave;n h&igrave;nh lớn 15.6 inch, c&ugrave;ng với đ&oacute; l&agrave; c&ocirc;ng nghệ hiển thị&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife\" target=\"_blank\" title=\"Tìm hiểu công nghệ hiển thị laptop\">HD WLED TrueLife</a>&nbsp;c&oacute; độ tương phản cao.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" onclick=\"return false;\"><img alt=\"Giải trí thích hơn với màn hình lớn\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-5-2.jpg\" title=\"Giải trí thích hơn với màn hình lớn\" /></a></p>\r\n', '<h3><strong>Thuận tiện với cụm ph&iacute;m số number pad</strong></h3>\r\n\r\n<p>Với c&aacute;c m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn th&igrave; b&agrave;n ph&iacute;m số lu&ocirc;n được trang bị.&nbsp;Đối với c&aacute;c bạn sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n kế to&aacute;n hay nhập liệu nhiều th&igrave; đ&acirc;y sẽ l&agrave; một tiện &iacute;ch lớn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" onclick=\"return false;\"><img alt=\"Thuận tiện với cụm phím số Number pad\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-1-2.jpg\" title=\"Thuận tiện với cụm phím số Number pad\" /></a></p>\r\n\r\n<h3><strong>Cấu h&igrave;nh cho ứng dụng nhẹ nh&agrave;ng</strong></h3>\r\n\r\n<p>M&aacute;y sử dụng chip xử l&yacute; Intel&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron\" target=\"_blank\" title=\"Tìm hiểu chip Celeron\">Celeron</a>&nbsp;N3050 tốc độ 1.60 GHz, RAM sẵn 2 GB v&agrave; c&oacute; thể n&acirc;ng l&ecirc;n 8 GB,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/o-cung-la-gi-co-may-loai--590183#hdd\" target=\"_blank\" title=\"Tìm hiểu ổ cứng HDD\">ổ cứng lưu dữ liệu HDD</a>&nbsp;500 GB.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình cho ứng dụng nhẹ nhàng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-4-2.jpg\" title=\"Cấu hình cho ứng dụng nhẹ nhàng\" /></a></p>\r\n\r\n<h3><strong>Touchpad điều khiển th&ocirc;ng minh</strong></h3>\r\n\r\n<p>Bạn c&oacute; thể lướt touchpad nhẹ nh&agrave;ng để đọc tin tức d&agrave;i trang, xoay h&igrave;nh, ph&oacute;ng to/thu nhỏ... kh&aacute; thuận tiện.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" onclick=\"return false;\"><img alt=\"Touchpad điều khiển thông minh\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-3-2.jpg\" title=\"Touchpad điều khiển thông minh`\" /></a></p>\r\n\r\n<h3><strong>C&aacute;c cổng kết nối cần thiết</strong></h3>\r\n\r\n<p>M&aacute;y kh&ocirc;ng c&oacute; cổng cắm mạng d&acirc;y LAN, tuy nhi&ecirc;n bạn c&oacute; thể mua cổng chuyển đổi mạng LAN để sử dụng khi cần thiết.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" onclick=\"return false;\"><img alt=\"Các cổng kết nối cần thiết\" src=\"https://cdn4.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-9.jpg\" title=\"Các cổng kết nối cần thiết\" /></a></p>\r\n\r\n<h3><strong>Thiết kế của m&aacute;y</strong></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" src=\"https://cdn1.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-6-2.jpg\" title=\"Thiết kế truyền thống không thay đổi nhiều của hãng Dell\" /></a></p>\r\n\r\n<p><em>Thiết kế truyền thống kh&ocirc;ng thay đổi nhiều của&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Laptop hãng Dell\">h&atilde;ng Dell</a></em></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn3.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-7-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" onclick=\"return false;\"><img alt=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" src=\"https://cdn.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-8-1.jpg\" title=\"Do bỏ bớt một số cổng kết nối nên 2 cạnh bên của máy khá thoáng\" /></a></p>\r\n\r\n<p><em>Do bỏ bớt một số cổng kết nối n&ecirc;n 2 cạnh b&ecirc;n của m&aacute;y kh&aacute; tho&aacute;ng</em></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" onclick=\"return false;\"><img alt=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" src=\"https://cdn2.tgdd.vn/Products/Images/44/74357/dell-inspiron-3552-n3050-2gb-500gb-win10-2-2.jpg\" title=\"Khe tản nhiệt của máy nằm ở cạnh trái, mặt dưới có khá nhiều khe nhỏ giúp máy không bị quá nóng khi sử dụng\" /></a></p>\r\n\r\n<p><em>Khe tản nhiệt của m&aacute;y nằm ở cạnh tr&aacute;i, mặt dưới c&oacute; kh&aacute; nhiều khe nhỏ gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng khi sử dụng</em></p>\r\n\r\n<p>Pin 4 cell gi&uacute;p m&aacute;y k&eacute;o d&agrave;i thời gian sử dụng.</p>\r\n', ' Dell Inspiron 3552, Dell Inspiron 3552, Dell Inspiron 3552', '6490000.00', 1, 18, 1, '2020-11-25 17:43:40', '2021-07-09 06:38:24'),
(48, 'iPad Pro M1', 'ipad-pro-m1', 'Kết nối 5G nhanh bậc nhất, truyền dữ liệu nhanh chóng.', 'Giao hàng tận nơi trong nội thành', 'Giảm giá 50% gói bảo hành mở rộng thêm 1 năm (chính hãng)', 'Giảm đến 1,500,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPAY, Moca)', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1647050000_ipad-pro-m1-11-inch-wifi-bac-thumb-600x600.jpeg', '', '', '', '3500000.00', 1, 20, 1, '2020-11-25 19:13:55', '2022-03-11 19:09:27'),
(49, 'iPad Air 5 M1 Wifi Cellular 64GB', 'ipad-air-5-m1-wifi-cellular-64gb', 'Hiệu năng xử lý mạnh mẽ, cân mọi loại game', 'Giao hàng tận nơi trong nội thành', 'Tặng Phiếu mua hàng 300,000đ cho Khách hàng tại Tp.HCM (áp dụng mua sản phẩm gia dụng)', 'Giảm giá 1,000,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPay)', 'Bộ sản phẩm gồm: Sách hướng dẫn, Cây lấy sim, Hộp máy, Cáp Type C - Type C, Củ sạc nhanh rời đầu Type C', '1647051203_ipad-air-5-m1-wifi-cellular-64gb-090322-094032-600x600.jpg', '', '', '', '30000000.00', 1, 20, 1, '2020-11-25 19:13:59', '2022-03-11 19:13:23'),
(56, 'HP Bavilon', 'hp-bavilon', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', '', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1626530596_33742_hp_pavilion_gaming_15_ec1054ax_1n1h6pa_r5_4600h_542013861d504ab0a9822ffab255fe17_master.png', '<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>\r\n', '<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>\r\n\r\n<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>\r\n', 'rog, gamming', '19850000.00', 1, 11, 1, '2020-11-25 19:18:34', '2021-07-17 07:03:16'),
(57, 'Acer Nitro 5', 'acer-nitro-5', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Giảm giá 1,000,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPay)', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1626530312_tải xuống (2).jpg', '<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>\r\n', '<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>\r\n\r\n<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>\r\n', 'gamming', '19850000.00', 1, 25, 1, '2020-11-25 19:19:12', '2021-07-18 04:55:23'),
(58, 'Asus ROG Strix G', 'asus-rog-strix-g', 'I5 6300HQ,RAM 8G,15inxh FHD', 'Đặt Online hoặc Gọi 18006601 ưu tiên khuyến mãi (SL có hạn):', 'Hoặc Tặng Vali Lock & Lock ', 'Cơ hội quay số trúng Iphone 12', 'Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc ', '1626530422_tải xuống (3).jpg', '<p><strong>ASUS GL552VX-DM070D</strong>&nbsp;l&agrave; d&ograve;ng Laptop Gaming trung cấp được n&acirc;ng cấp từ ASUS GL552JX-DM144D với sự n&acirc;ng cấp cấu h&igrave;nh mạnh mẽ l&ecirc;n CPU Skylake thế hệ thứ 6, card đồ họa sử dụng 4GB VRAM GDDR5, m&agrave;n h&igrave;nh đẹp v&agrave; s&aacute;ng hơn c&ugrave;ng cổng USB 3.1 Type C ti&ecirc;n tiến trong khi gi&aacute; b&aacute;n đề xuất kh&ocirc;ng thay đổi. Ngo&agrave;i ra sản phẩm kh&ocirc;ng c&oacute; sự thay đổi nhiều thiết kế so với d&ograve;ng đời trước. Hangchinhhieu.vn xin gửi c&aacute;c bạn c&aacute;c h&igrave;nh ảnh đập hộp sản phẩm GL552VX đầu ti&ecirc;n c&oacute; mặt tại Việt Nam</p>\r\n', '<p>Th&ocirc;ng tin sản phẩm:<br />\r\n<strong>ASUS GL552VX-DM070D - i7-6700HQ 2.6GHz, 8GB, 1TB, VGA GTX 950M 4GB GDDR5, 15.6&quot; FHD</strong><br />\r\n<em>&bull; CPU: Intel Core i7 6700HQ 2.6GHz up to 3.5GHz 6Mb<br />\r\n&bull; RAM: 8GB DDR4 2133MHz<br />\r\n&bull; Đĩa cứng: HDD 1TB 7200rpm&nbsp;<br />\r\n&bull; Card đồ họa: NVIDIA GeForce GTX 950M 4GB GDDR5 + Intel HD Graphics 530&nbsp;<br />\r\n&bull; M&agrave;n h&igrave;nh: 15.6 inch Full HD (1920 x 1080 pixels) LED + Anti-Glare WV<br />\r\n&bull; T&iacute;ch hợp đĩa quang: Super-Multi DVD<br />\r\n&bull; Cổng giao tiếp: USB 2.0 USB 3.0 HDMI LAN&nbsp;<br />\r\n&bull; PIN: 4 Cells<br />\r\n&bull; Trọng lượng: 2.59 kg<br />\r\n&bull; Hệ điều h&agrave;nh: Free Dos</em><br />\r\n<br />\r\nTh&ugrave;ng m&aacute;y chắc sản xuất trước khi c&oacute; m&aacute;y n&ecirc;n kh&ocirc;ng c&oacute; ảnh sản phẩm ở ngo&agrave;i th&ugrave;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/wDr6xJo.jpg\" /><br />\r\n<br />\r\nTh&ocirc;ng tin sản phẩm c&oacute; thể được quy đổi th&agrave;nh code game World Of Warship kh&aacute; gi&aacute; trị. Nếu bạn n&agrave;o kh&ocirc;ng đổi dc code game th&igrave; cứ li&ecirc;n hệ m&igrave;nh hỗ trợ nh&eacute;<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/R653ba2.jpg\" /><br />\r\n<br />\r\nTrọn bộ phụ kiện k&egrave;m theo sản phẩm:<br />\r\n- Pin<br />\r\n- D&acirc;y nguồn v&agrave; sạc adapter<br />\r\n- Đĩa driver windows 10<br />\r\n- Chuột ASUS Gaming SiCa<br />\r\n- D&acirc;y r&uacute;t sạc &amp; Khăn vệ sinh m&agrave;n h&igrave;nh<br />\r\n- Sổ bảo h&agrave;nh v&agrave; giấy tờ kh&aacute;c<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qpBdqsp.jpg\" /><br />\r\n&nbsp;</p>\r\n\r\n<p>Sản phẩm được tặng k&egrave;m theo chuột ASUS ROG SICA (gi&aacute; ~60$). Thiết kế chuột tương đối nhỏ nhắn, vừa tay, ph&ugrave; hợp cho cả người thuận tay phải lẫn tay tr&aacute;i n&ecirc;n kh&ocirc;ng c&oacute; c&aacute;c n&uacute;t chuột phụ b&ecirc;n h&ocirc;ng. Thiết kế n&agrave;y ph&ugrave; hợp cho đối tượng game thủ RPG, FPS hơn l&agrave; MOBA/ARTS v&igrave; &iacute;t n&uacute;t cho việc sử dụng nhanh skills/items</p>\r\n\r\n<p><img alt=\"\" src=\"http://i.imgur.com/OLpgTZO.jpg\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nVỏ ngo&agrave;i của m&aacute;y c&oacute; thiết kế kh&ocirc;ng thay đổi so với GL552JX. Vỏ bằng nhựa cứng c&aacute;p chứ kh&ocirc;ng phải l&agrave; vỏ nh&ocirc;m của GL552VW gi&aacute; tiền cao hơn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/vVjxXPS.jpg\" /><br />\r\n<br />\r\nLogo ASUS ph&aacute;t s&aacute;ng khi bật nguồn<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/Bnn5Sk7.jpg\" /><br />\r\n<br />\r\nM&aacute;y đ&atilde; được lược bỏ cổng VGA (D-sub) thay v&agrave;o đ&oacute; l&agrave; cổng USB 3.1 Type C đời mới<br />\r\nNgo&agrave;i ra c&aacute;c cổng kh&aacute;c như jack nguồn, khe tản nhiệt, HDMI, LAN, 2 cổng USB 3.0 vẫn được giữ lại đ&uacute;ng vị tr&iacute; như GL552JX<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V5qcO0m.jpg\" /><br />\r\nKh&ocirc;ng c&oacute; sự thay đổi, vẫn l&agrave; 2 jack audio/micro được t&aacute;ch ri&ecirc;ng biệt, 1 cổng USB 2.0, ổ DVD-RW v&agrave; kh&oacute;a kensington<br />\r\n<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/V1H6QND.jpg\" /><br />\r\nPh&iacute;a trước l&agrave; khe cắm thẻ nhớ SD card<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/uerGtNe.jpg\" /><br />\r\n<br />\r\nThiết kế b&agrave;n ph&iacute;m kh&ocirc;ng c&oacute; g&igrave; thay đổi. M&aacute;y c&oacute; đ&egrave;n nền m&agrave;u đỏ, c&aacute;c ph&iacute;m ASDW được l&agrave;m nổi bật<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/sL81FWt.jpg\" /><br />\r\n<br />\r\n<br />\r\nLogo Core i7 Skylake (l&ocirc; h&agrave;ng đầu c&oacute; nhiều thiếu s&oacute;t do thiếu sự đồng bộ giữa c&aacute;c nh&agrave; sản xuất hoặc c&aacute;c kh&acirc;u sx của ASUS n&ecirc;n logo NVIDIA đ&atilde; bị thiếu, m&aacute;y vẫn c&oacute; card đồ họa rời GTX 950M 4GB GDDR5)<br />\r\nM&aacute;y l&agrave; sản phẩm ch&iacute;nh h&atilde;ng c&oacute; hỗ trợ bảo h&agrave;nh từ xa của ASUS<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/ix8rdSI.jpg\" /><br />\r\n<br />\r\nLogo ASUS ROG, m&aacute;y m&agrave;n h&igrave;nh 15.6&quot; inch n&ecirc;n c&oacute; k&egrave;m b&agrave;n ph&iacute;m số<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/qYQ2qan.jpg\" /><br />\r\n<br />\r\n<br />\r\nM&aacute;y c&oacute; 2 loa k&eacute;p, hangchinhhieu.vn sẽ cập nhật chất lượng loa của m&aacute;y xem c&oacute; nhiều cải thiện so với sản phẩm tiền nhiệm hay kh&ocirc;ng<br />\r\n<img alt=\"[​IMG]\" src=\"http://i.imgur.com/xoHzNtM.jpg\" /><br />\r\n<br />\r\n<br />\r\nThiết kế mặt đ&aacute;y kh&ocirc;ng c&oacute; sự thay đổi, m&aacute;y c&oacute; thể dễ d&agrave;ng n&acirc;ng cấp RAM, SSD bằng th&aacute;o cover ra.<br />\r\nASUS đ&atilde; th&ecirc;m 1 lưu &yacute;: khe M.2 tr&ecirc;n m&aacute;y chỉ lắp được loại SSD SATA M.2 2280 chứ kh&ocirc;ng lắp được loại SSD chuẩn pcie x4 hoặc ssd c&oacute; k&iacute;ch thước kh&aacute;c như 2242 chẳng hạn. C&oacute; thể do 1 số người d&ugrave;ng gl552jx ng&agrave;y trước đ&atilde; ph&agrave;n n&agrave;n họ đ&atilde; mua sai loại SSD khi gắn v&agrave;o m&aacute;y n&ecirc;n ASUS phải note lại thế n&agrave;y</p>\r\n', 'rog, gamming', '19850000.00', 1, 25, 1, '2020-11-25 19:19:16', '2021-07-18 04:55:08'),
(78, 'Iphone 12', 'iphone-12', 'chụp đêm siêu đỉnh, mạnh mẽ', 'Mua kèm pin sạc dự phòng AVA giảm 40%', 'Tặng Phiếu mua hàng 300,000đ cho Khách hàng tại Tp.HCM (áp dụng mua sản phẩm gia dụng)', 'Giảm giá 1,000,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPay)', ' Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim ', '1626529500_images (1).jpg', '', '', 'Điểm tin HOT 20/6: Mẫu iPhone 2021', '25000000.00', 1, 15, 1, '2021-07-17 06:45:00', '2021-07-17 06:45:00'),
(79, 'Iphone 11 ProMax', 'iphone-11-promax', 'chụp đêm siêu đỉnh, mạnh mẽ', 'Mua kèm pin sạc dự phòng AVA giảm 40%', 'Tặng Phiếu mua hàng 300,000đ cho Khách hàng tại Tp.HCM (áp dụng mua sản phẩm gia dụng)', 'Giảm giá 1,000,000đ khi tham gia thu cũ đổi mới (Không áp dụng kèm giảm giá qua VNPay)', ' Trong hộp có: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim  Bảo hành chính hãng: thân máy 12 tháng, pin 12 tháng, sạc 12 tháng  Giao hàng tận nơi miễn phí trong 1 ngày  1 đổi 1 trong 1 tháng với sản phẩm lỗi', '1626529744_iphone-11-pro-max-256gb-black-600x600.jpg', '', '', 'Điểm tin HOT 20/6: Mẫu iPhone SE 20211', '22000000.00', 1, 15, 1, '2021-07-17 06:49:04', '2021-07-17 06:49:04'),
(80, 'Laptop Lenovo Legion 5 Gaming', 'laptop-lenovo-legion-5-gaming', 'Hiệu năng xử lý mạnh mẽ, cân mọi loại game', 'Mua kèm pin sạc dự phòng AVA giảm 40%', 'Balo Lenovo Legion Gaming', 'Cơ hội quay số trúng Iphone 12', 'Phiếu mua hàng 300,000đ áp dụng mua Gia dụng tại Điện máy XANH, Balo Lenovo Legion Gaming', '1626530157_lenovo-legion-5-15imh05-i7-82au0051vn-210720-0414350.jpg', '', '', '', '30000000.00', 1, 18, 1, '2021-07-17 06:55:57', '2021-07-17 06:55:57'),
(81, 'Samsung Galaxy Tab S8', 'samsung-galaxy-tab-s8', 'Máy khỏe, chiến mọi loại game', 'Bao da kèm bàn phím Tab S8', 'Tặng gói Bảo hành mở rộng Samsung Care+', 'Giảm đến 2,000,000đ khi Thu cũ Đổi mới (Áp dụng tùy model máy cũ)', 'Sách hướng dẫn, Bút cảm ứng, Cây lấy sim, Hộp máy, Cáp Type C - Type C', '1647051493_637789753777552981_samsung-galaxy-tab-s801.jpg', '', '', '', '25000000.00', 1, 21, 1, '2021-07-18 05:03:14', '2022-03-11 19:18:13'),
(82, 'Samsung Galaxy Tab A7 Lite', 'samsung-galaxy-tab-a7-lite', 'chụp đêm siêu đỉnh, mạnh mẽ', 'Tặng thẻ bảo hành 12 tháng tại nơi sử dụng trị giá 290.000 VNĐ', 'Tặng Phiếu mua hàng 300,000đ cho Khách hàng tại Tp.HCM (áp dụng mua sản phẩm gia dụng)', 'Giảm đến 2,000,000đ khi Thu cũ Đổi mới (Áp dụng tùy model máy cũ)', ' Trong hộp có: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp OTG, Cáp, Cây lấy sim  Bảo hành chính hãng: thân máy 12 tháng, pin 12 tháng, sạc 12 tháng  Giao hàng tận nơi miễn phí trong 1 ngày  1 đổi 1 trong 1 tháng với sản phẩm lỗi', '1647051687_1.jpg', '', '', '', '20000000.00', 1, 21, 1, '2021-07-18 05:10:10', '2022-03-11 19:21:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_details`
--

CREATE TABLE `pro_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exten_memmory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cam1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cam2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `connect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pro_details`
--

INSERT INTO `pro_details` (`id`, `cpu`, `ram`, `screen`, `vga`, `storage`, `exten_memmory`, `cam1`, `cam2`, `sim`, `connect`, `pin`, `os`, `note`, `pro_id`, `created_at`, `updated_at`) VALUES
(11, 'Apple A10', '3G', '5.5 inch (1920 x 1080 pixels)', 'chip apple 6 nhân', '256 G', 'không', 'dual 12 MP', '7MP', '1 Sim Nano', 'Wi-Fi 802.11 a/b/g/n/ac, Linning', '2890mAh', 'IOS 10.0', '', 24, '2020-11-24 11:48:39', '2022-04-02 04:47:24'),
(13, 'snapdragon 821 2.5 Ghz', '6G', '7.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 26, '2020-11-25 16:44:07', '2022-04-02 04:42:21'),
(14, 'snapdragon 821 2.5 Ghz', '6G', '5.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 27, '2020-11-25 16:44:11', '2022-04-02 04:45:16'),
(21, 'snapdragon 821 2.5 Ghz', '6G', '6.1 inch (1440 x 2560 pixels)', 'adreno900', '128 G', 'không', 'dual 12 MP', '7MP', '1 Sim Micro', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3500mAh', 'Andoid 7.0', '', 34, '2020-11-25 16:45:03', '2022-04-02 04:39:00'),
(23, 'Intel, Celeron, N3050, 1.60 GHz', '	DDR3L (1 khe RAM), 2 GB, 1600 MHz', '15.6 inch, HD (1366 x 768 pixels)', 'Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)', 'HDD, 500 GB', 'có', '0.9 MP(16:9)', '', 'không', '802.11b/g/n, Bluetooth v4.0', 'Li-Ion 4 cell', 'Windows 10 bản dùng thử', '', 36, '2020-11-25 17:43:40', '2021-07-09 06:38:24'),
(35, 'Apple A13 Bionic', '16 Gb', '11', 'chip apple 8 nhân', ' 512 GB', 'không', '2 camera 12 MP', '12 MP', '1 Nano SIM & 1 eSIMHỗ trợ 4G', '5GNghe gọi qua FaceTime', '3110 mAh18 W', 'iPadOS 15', 'Dây nguồn, Ốc ..', 48, '2020-11-25 19:13:55', '2022-03-11 19:09:27'),
(36, 'Apple A13 Bionic', '16 Gb', '11\"Liquid Retina', 'chip apple 8 nhân', '256 GB', 'Không', '2 camera 12 MP', '12 MP', '1 Nano SIM & 1 eSIMHỗ trợ 4G', '5GNghe gọi qua FaceTime', '3110 mAh18 W', 'iPadOS 15', 'Dây nguồn, Ốc ..', 49, '2020-11-25 19:14:00', '2022-03-11 19:13:23'),
(43, 'AMD Ryzen™ 5 4600H (3.00GHz upto 4.00GHz, 8MB)', '8GB(1 x 8GB) DDR4 3200Mhz SDRAM( 2 khe)', 'Gigabyte H81-DS2', 'NVIDIA® GeForce® GTX 1650 4GB GDDR6', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', 'Không có', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '3-cell, 52.5 Wh', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 56, '2020-11-25 19:18:34', '2021-07-17 07:03:16'),
(44, 'Intel core I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', 'Không có', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 57, '2020-11-25 19:19:12', '2021-07-18 04:55:23'),
(45, 'Intel cỏe I5 6300HQ', '8G DDR4 2100', 'Gigabyte H81-DS2', 'GTX 950M 4G GDDR4', '1T HDD, 128G SSD', '', 'Intel FAN Chuẩn', 'CTS 350W', 'Không có', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', '4Cel', 'Windows 10 bản dùng thử', 'Dây nguồn, Ốc ..', 58, '2020-11-25 19:19:16', '2021-07-18 04:55:08'),
(60, 'iOS', '4 GB', 'OLED6.1\"Super Retina XDR', 'chip apple 8 nhân', '256 GB', NULL, '2 camera 12 MP', '12 MP', '1 Nano SIM & 1 eSIMHỗ trợ 4G', 'Wi-Fi 802.11 a/b/g/n/ac, Linning', '3110 mAh18 W', 'iOS 14', NULL, 78, '2021-07-17 06:45:01', '2021-07-17 06:45:01'),
(61, 'Apple A13 Bionic', '', 'IPS LCD6.1\"Liquid Retina', 'chip apple 8 nhân', '', NULL, '2 camera 10 MP', '12 MP', '1 Nano SIM & 1 eSIMHỗ trợ 4G', 'Wi-Fi 802.11 a/b/g/n/ac, Linning', '3110 mAh18 W', 'iOS 13', NULL, 79, '2021-07-17 06:49:04', '2021-07-17 06:49:04'),
(62, 'Intel Core i7 Comet Lake10750H2.60 GHz', '8 GBDDR4 (2 khe)2933 MHz', '15.6\"Full HD (1920 x 1080), 120Hz', 'Card rờiNVIDIA GeForce GTX 1650 4 GB', '256 GB', NULL, '', 'HD webcam', '', 'Wi-Fi 802.11 a/b/g/n/ac, Linning', ' Li - Polymer 4 cell', ' Windows 10 Home SL', NULL, 80, '2021-07-17 06:55:57', '2021-07-17 06:55:57'),
(63, 'Snapdragon 8 Gen 1 8 nhân', '8 GB', '11\"LTPS', 'NVIDIA® GeForce® GTX 1650 4GB GDDR6', '256 GB', 'CAXG0061 - Vỏ case Xigmatek VENOM', '12 MP', 'Chính 13 MP & Phụ 6 MP', '1 Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Linning', '8000 mAh45 W', 'Android 12', NULL, 81, '2021-07-18 05:03:14', '2022-03-11 19:18:13'),
(64, 'Apple A13 Bionic', '8 GB', '11\"LTPS', '', '256 GB', '', '12 MP', '12 MP', '1 Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac, Linning, LAN', '8000 mAh45 W', 'Android 12', NULL, 82, '2021-07-18 05:10:10', '2022-03-11 19:21:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tigia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `facebook`, `gga`, `tigia`, `created_at`, `updated_at`) VALUES
(1, 'hoanglong', 'hoanglong', 23000, '2021-05-12 02:30:09', '2021-05-12 02:59:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng Lâm', 'lam@gmail.com', '$2y$10$vQdONM7yPDqM9Ur69fJHmOYg65vjufYgygYubmi53dSGMjWUjHWuS', '0123456789', 'Trần Văn Ơn, Thủ Dầu Một', 1, 'cH8HdpxWqY1JIVECp5QMVqVTofOuEC5oq57Yjjck03WORY2rWrxUnBu05vhj', '2021-05-08 09:52:20', '2020-05-12 02:30:52'),
(4, 'Đỗ Long', 'longne@gmail.com', '$2y$10$z1kiUrbVJNqvSeFHkl368eV0A62ham0tzRGCFjtLGf7otnJoMWmRq', '0123456789', 'Phú Hòa, Thủ Dầu Một', 1, '2vBSFDeXHW67QzAl783HwnmgaEPaj77vKov4xbeiHsaS2N8cGURRw6hucd4f', '2021-05-11 19:23:23', '2020-05-11 19:37:38'),
(5, 'Đỗ Hoàng Long', 'long1@gmail.com', '$2y$10$E7i3dKWLiyc/ThCIRToN0ObwHtyDKJSKFVf9BeuVD2aggRfYZoq6y', '0936672450', 'Trường Đại Học Thủ Dầu Một, Bình Dương', 1, 'Yfsb2YfN7ZiU6z2W8IFrngBGt4YBRdFd3dAtvKh4hLvKrHSDR6eZSaWKOihL', '2021-07-19 23:29:38', '2021-07-19 23:36:11'),
(6, 'Đỗ Hoàng Longg', 'long@gmail.com', '$2y$10$f8YuVuS1z0DpwXLPZbDjDOTyY5AerSRBTC0Ot3fsE67sq4PhU0Ax2', '0361347283', 'Trường Đại Học Thủ Dầu Một, Bình Dương', 1, 'cc3K7GsEKoRxhYJqh9srbUYs1SPrSHe6BENAy00EOangtGNxZ5mmeSFzoRDN', '2021-08-05 04:35:14', '2021-08-05 04:35:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_img`
--
ALTER TABLE `detail_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_img_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_cat_id_foreign` (`cat_id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_c_id_foreign` (`c_id`);

--
-- Chỉ mục cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_detail_pro_id_foreign` (`pro_id`),
  ADD KEY `oders_detail_o_id_foreign` (`o_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `pro_details`
--
ALTER TABLE `pro_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_details_pro_id_foreign` (`pro_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `detail_img`
--
ALTER TABLE `detail_img`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `pro_details`
--
ALTER TABLE `pro_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `detail_img`
--
ALTER TABLE `detail_img`
  ADD CONSTRAINT `detail_img_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `oders`
--
ALTER TABLE `oders`
  ADD CONSTRAINT `oders_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `oders_detail`
--
ALTER TABLE `oders_detail`
  ADD CONSTRAINT `oders_detail_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `oders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oders_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_details`
--
ALTER TABLE `pro_details`
  ADD CONSTRAINT `pro_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
