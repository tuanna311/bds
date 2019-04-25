-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 20, 2019 lúc 09:53 AM
-- Phiên bản máy phục vụ: 5.5.62-MariaDB
-- Phiên bản PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `giangbds_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '01669', 'tuan@gmail.com', 'test', 1, 2),
(4, NULL, NULL, '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, NULL),
(5, 'cms', 'cms', '$2y$10$FtjsErf.CxMYTl3zt3xOpuvWvPOAHfdCxo/9apf.tw8Aky/udFN6i', '135778', '', '', 1, 1),
(6, 'anh Dung', 'anhdung', '$2y$10$KaR0qC3N3pCmvLrG6flEo.LxJotMKRfDujEmWmHhnuS5pZZnRLEjy', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(45, NULL, 'mkrnfu62crnut73tj9ip88k4c0', 4560000, NULL, '0000-00-00', NULL, NULL, 'hang', 'ngockhanh260614@gmail.com', '0973378669', 'Thanh Xuân, Thanh Xuân', 'đơn hàng hằng pt'),
(46, NULL, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', 'test'),
(47, NULL, '8rg8qp2tib6bhq40siemsl0au1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(48, NULL, 'p29v6fieekj8qc6r9iei8rkr84', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(49, NULL, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(50, NULL, 'skgfhmeppmr97bion8qlhv2f24', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(51, NULL, '14sbco3nbkh6tss6mibu4c63i2', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(52, NULL, 'rdk00s074i1i4seat51nh109d6', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(53, NULL, 'ibcpu4cam64hh6jvvlqde89v90', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(54, NULL, 'r2hcu630iilbqufhd80udq4eh0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(55, NULL, 'krsem1sgk8k9smbs1uinikks42', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(56, NULL, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(57, NULL, 'q4asrlk395bqes71q3m1dj7a53', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(58, NULL, 'mfuj32kovfsj87sum11433so15', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(59, NULL, 'o82tantv1gh498mq2giekk0mj1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(60, NULL, 'vv3bvs960u0efu33mksbikfr02', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(61, NULL, '77v49he85i8nuuet5p2vt9g7r0', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(62, NULL, 'qs835th55ruep5q2f34fdimdg6', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(63, NULL, '0v3amtlih28cip0bskvi8tr2t7', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(64, NULL, 's34tnbg59l4psbpbc2jg4ru734', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(65, NULL, 'jna4k52dg50ce0e2euknmpsc53', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(66, NULL, '1mrapf9122qb0n9gd32j94l6f5', 6000, NULL, '0000-00-00', NULL, NULL, 'adf', 'viethung@gmail.com', '01672523165', 'ha nội', 'ghi chú aaa'),
(67, NULL, 'sl6a5d5957d6n37tptrtp29mt4', 2000, NULL, '0000-00-00', NULL, NULL, 'bczcv', 'viethung@gmail.com', 'aasdfas', 'asfas', 'fdasdfasdf'),
(68, NULL, 'ape83laqntnptihbcmk5g0li26', 6000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '29-3'),
(69, NULL, 'lc7opealpf3l1a0m2utp3nr4g7', 2937600, NULL, '0000-00-00', NULL, NULL, 'adsfasdf', 'viethung@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'fasdfasdf'),
(70, NULL, '5h573qfbbcbulqljthad7scpd3', 935300, NULL, '0000-00-00', NULL, NULL, 'foreverlvoe', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'ádfasdf'),
(71, NULL, '904nrn3lmfkbev7956opp4sbt5', 500400, NULL, '0000-00-00', NULL, NULL, '', '', '', '', ''),
(72, NULL, 'h2tteteqcbai73din008s3fbf1', 236700, NULL, '0000-00-00', NULL, NULL, 'Việt', 'viethung95cute@gmail.com', '1672523165', '', 'adasdsdas'),
(73, NULL, '9a4ohferctq5glunhc0up38tn3', 179100, NULL, '0000-00-00', NULL, NULL, 'Việt', 'viethung95cute@gmail.com', '1672523165', '', 'adasdasdasd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(30, 28, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 4, 3040000, NULL, 0, 0, '', '', 45),
(31, 34, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 2, 1520000, NULL, 0, 0, '', '', 45),
(32, 28, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, 1, 760000, NULL, 0, 0, '', '', 46),
(33, 29, '8rg8qp2tib6bhq40siemsl0au1', 760000, 1, 760000, NULL, 0, 0, '', '', 47),
(34, 27, 'p29v6fieekj8qc6r9iei8rkr84', 760000, 1, 760000, NULL, 0, 0, '', '', 48),
(35, 28, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, 1, 760000, NULL, 0, 0, '', '', 49),
(36, 30, 'skgfhmeppmr97bion8qlhv2f24', 7600000, 1, 7600000, NULL, 0, 0, '', '', 50),
(37, 31, '14sbco3nbkh6tss6mibu4c63i2', 760000, 1, 760000, NULL, 0, 0, '', '', 51),
(38, 32, 'rdk00s074i1i4seat51nh109d6', 7600000, 1, 7600000, NULL, 0, 0, '', '', 52),
(39, 33, 'ibcpu4cam64hh6jvvlqde89v90', 760000, 1, 760000, NULL, 0, 0, '', '', 53),
(40, 35, 'r2hcu630iilbqufhd80udq4eh0', 760000, 1, 760000, NULL, 0, 0, '', '', 54),
(41, 36, 'krsem1sgk8k9smbs1uinikks42', 7600000, 1, 7600000, NULL, 0, 0, '', '', 55),
(42, 37, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, 1, 135000, NULL, 0, 0, '', '', 56),
(43, 37, 'q4asrlk395bqes71q3m1dj7a53', 135000, 1, 135000, NULL, 0, 0, '', '', 57),
(44, 27, 'mfuj32kovfsj87sum11433so15', 760000, 1, 760000, NULL, 0, 0, '', '', 58),
(45, 28, 'o82tantv1gh498mq2giekk0mj1', 760000, 1, 760000, NULL, 0, 0, '', '', 59),
(46, 29, 'vv3bvs960u0efu33mksbikfr02', 760000, 1, 760000, NULL, 0, 0, '', '', 60),
(47, 30, '77v49he85i8nuuet5p2vt9g7r0', 7600000, 1, 7600000, NULL, 0, 0, '', '', 61),
(48, 35, 'qs835th55ruep5q2f34fdimdg6', 760000, 1, 760000, NULL, 0, 0, '', '', 62),
(49, 36, '0v3amtlih28cip0bskvi8tr2t7', 7600000, 1, 7600000, NULL, 0, 0, '', '', 63),
(50, 37, 's34tnbg59l4psbpbc2jg4ru734', 135000, 1, 135000, NULL, 0, 0, '', '', 64),
(51, 27, 'jna4k52dg50ce0e2euknmpsc53', 760000, 1, 760000, NULL, 0, 0, '', '', 65),
(52, 27, '1mrapf9122qb0n9gd32j94l6f5', 2000, 3, 6000, NULL, 0, 0, '', '', 66),
(53, 27, 'sl6a5d5957d6n37tptrtp29mt4', 2000, 1, 2000, NULL, 0, 0, '', '', 67),
(54, 28, 'ape83laqntnptihbcmk5g0li26', 2000, 3, 6000, NULL, 0, 0, '', '', 68),
(55, 27, 'lc7opealpf3l1a0m2utp3nr4g7', 125100, 4, 500400, NULL, 0, 0, '', '', 69),
(56, 29, 'lc7opealpf3l1a0m2utp3nr4g7', 999000, 2, 1998000, NULL, 0, 0, '', '', 69),
(57, 38, 'lc7opealpf3l1a0m2utp3nr4g7', 219600, 2, 439200, NULL, 0, 0, '', '', 69),
(58, 35, '5h573qfbbcbulqljthad7scpd3', 199000, 2, 398000, NULL, 0, 0, '', '', 70),
(59, 36, '5h573qfbbcbulqljthad7scpd3', 179100, 1, 179100, NULL, 0, 0, '', '', 70),
(60, 37, '5h573qfbbcbulqljthad7scpd3', 179100, 2, 358200, NULL, 0, 0, '', '', 70),
(61, 27, '904nrn3lmfkbev7956opp4sbt5', 125100, 4, 500400, NULL, 0, 0, '', '', 71),
(62, 33, 'h2tteteqcbai73din008s3fbf1', 236700, 1, 236700, NULL, 0, 0, '', '', 72),
(63, 37, '9a4ohferctq5glunhc0up38tn3', 179100, 1, 179100, NULL, 0, 0, '', '', 73);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`id`, `name`, `note`) VALUES
(1, 'Hà Nội', 'Việt Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`) VALUES
(1, 'BDSTHOCUHANOI', '', '', 'BDSTHOCUHANOI', 'logo2.png', '', '', '', '21 Hàng Bột, Đống Đa, Hà Nội.', 'bdsthocuhanoi2019@gmail.com', '0946231088', 'Thổ cư hà nội', '', '', '<h4 class=\"uni-uppercase\">sales department</h4>                \r\n <p>Mon - sat: 8:00 am - 17:00 pm</p>                \r\n <p>Sunday is closed</p>', '', '<iframe src=\'https://www.google.com/maps/place/21+Ng%C3%B5+H%C3%A0ng+B%E1%BB%99t,+C%C3%A1t+Linh,+%C4%90%E1%BB%91ng+%C4%90a,+H%C3%A0+N%E1%BB%99i,+Vi%E1%BB%87t+Nam/@21.029242,105.8318933,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ab9ed812e13f:0xed6f8d884be345bb!8m2!3d21.029242!4d105.834082\' width=\'600\' height=\'450\' frameborder=\'0\' style=\'border:0\' allowfullscreen></iframe>', '', 'https://www.facebook.com/congdongvnexpress/', 'https://plus.google.com/discover', 'twitter', '<iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m', 'https://www.youtube.com/embed/vCIc1g_4JWM', 'logo2.jpg', '[]', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'BDSTHOCUHANOI', '', '', 'BDSTHOCUHANOI', '', '', '', '21 Hàng Bột, Đống Đa, Hà Nội.', 'bdsthocuhanoi2019@gmail.com', '0946231088', 'Thổ cư hà nội', '', '', '<h4 class=\"uni-uppercase\">sales department</h4>                \r\n <p>Mon - sat: 8:00 am - 17:00 pm</p>                \r\n <p>Sunday is closed</p>', '', '<iframe src=\'https://www.google.com/maps/place/21+Ng%C3%B5+H%C3%A0ng+B%E1%BB%99t,+C%C3%A1t+Linh,+%C4%90%E1%BB%91ng+%C4%90a,+H%C3%A0+N%E1%BB%99i,+Vi%E1%BB%87t+Nam/@21.029242,105.8318933,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ab9ed812e13f:0xed6f8d884be345bb!8m2!3d21.029242!4d105.834082\' width=\'600\' height=\'450\' frameborder=\'0\' style=\'border:0\' allowfullscreen></iframe>', '', 'https://www.facebook.com/congdongvnexpress/', 'https://plus.google.com/discover', 'twitter', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/vCIc1g_4JWM\" width=\"560\"></iframe></p>\r\n', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dien_tich`
--

CREATE TABLE `dien_tich` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dien_tich`
--

INSERT INTO `dien_tich` (`id`, `name`, `note`) VALUES
(1, 'Dưới 30 m2', NULL),
(2, 'Dưới 50 m2', NULL),
(3, 'Dưới 100 m2', NULL),
(4, 'Trên 100 m2', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `district_id` varchar(5) CHARACTER SET utf8 NOT NULL,
  `district_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `region_id` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `type`, `region_id`) VALUES
('001', 'Quận Ba Đình', 'Quận', '01'),
('002', 'Quận Hoàn Kiếm', 'Quận', '01'),
('003', 'Quận Tây Hồ', 'Quận', '01'),
('004', 'Quận Long Biên', 'Quận', '01'),
('005', 'Quận Cầu Giấy', 'Quận', '01'),
('006', 'Quận Đống Đa', 'Quận', '01'),
('007', 'Quận Hai Bà Trưng', 'Quận', '01'),
('008', 'Quận Hoàng Mai', 'Quận', '01'),
('009', 'Quận Thanh Xuân', 'Quận', '01'),
('016', 'Huyện Sóc Sơn', 'Huyện', '01'),
('017', 'Huyện Đông Anh', 'Huyện', '01'),
('018', 'Huyện Gia Lâm', 'Huyện', '01'),
('019', 'Quận Nam Từ Liêm', 'Quận', '01'),
('020', 'Huyện Thanh Trì', 'Huyện', '01'),
('021', 'Quận Bắc Từ Liêm', 'Quận', '01'),
('024', 'Thành phố Hà Giang', 'Thành phố', '02'),
('026', 'Huyện Đồng Văn', 'Huyện', '02'),
('027', 'Huyện Mèo Vạc', 'Huyện', '02'),
('028', 'Huyện Yên Minh', 'Huyện', '02'),
('029', 'Huyện Quản Bạ', 'Huyện', '02'),
('030', 'Huyện Vị Xuyên', 'Huyện', '02'),
('031', 'Huyện Bắc Mê', 'Huyện', '02'),
('032', 'Huyện Hoàng Su Phì', 'Huyện', '02'),
('033', 'Huyện Xín Mần', 'Huyện', '02'),
('034', 'Huyện Bắc Quang', 'Huyện', '02'),
('035', 'Huyện Quang Bình', 'Huyện', '02'),
('040', 'Thành phố Cao Bằng', 'Thành phố', '04'),
('042', 'Huyện Bảo Lâm', 'Huyện', '04'),
('043', 'Huyện Bảo Lạc', 'Huyện', '04'),
('044', 'Huyện Thông Nông', 'Huyện', '04'),
('045', 'Huyện Hà Quảng', 'Huyện', '04'),
('046', 'Huyện Trà Lĩnh', 'Huyện', '04'),
('047', 'Huyện Trùng Khánh', 'Huyện', '04'),
('048', 'Huyện Hạ Lang', 'Huyện', '04'),
('049', 'Huyện Quảng Uyên', 'Huyện', '04'),
('050', 'Huyện Phục Hoà', 'Huyện', '04'),
('051', 'Huyện Hoà An', 'Huyện', '04'),
('052', 'Huyện Nguyên Bình', 'Huyện', '04'),
('053', 'Huyện Thạch An', 'Huyện', '04'),
('058', 'Thành Phố Bắc Kạn', 'Thành phố', '06'),
('060', 'Huyện Pác Nặm', 'Huyện', '06'),
('061', 'Huyện Ba Bể', 'Huyện', '06'),
('062', 'Huyện Ngân Sơn', 'Huyện', '06'),
('063', 'Huyện Bạch Thông', 'Huyện', '06'),
('064', 'Huyện Chợ Đồn', 'Huyện', '06'),
('065', 'Huyện Chợ Mới', 'Huyện', '06'),
('066', 'Huyện Na Rì', 'Huyện', '06'),
('070', 'Thành phố Tuyên Quang', 'Thành phố', '08'),
('071', 'Huyện Lâm Bình', 'Huyện', '08'),
('072', 'Huyện Nà Hang', 'Huyện', '08'),
('073', 'Huyện Chiêm Hóa', 'Huyện', '08'),
('074', 'Huyện Hàm Yên', 'Huyện', '08'),
('075', 'Huyện Yên Sơn', 'Huyện', '08'),
('076', 'Huyện Sơn Dương', 'Huyện', '08'),
('080', 'Thành phố Lào Cai', 'Thành phố', '10'),
('082', 'Huyện Bát Xát', 'Huyện', '10'),
('083', 'Huyện Mường Khương', 'Huyện', '10'),
('084', 'Huyện Si Ma Cai', 'Huyện', '10'),
('085', 'Huyện Bắc Hà', 'Huyện', '10'),
('086', 'Huyện Bảo Thắng', 'Huyện', '10'),
('087', 'Huyện Bảo Yên', 'Huyện', '10'),
('088', 'Huyện Sa Pa', 'Huyện', '10'),
('089', 'Huyện Văn Bàn', 'Huyện', '10'),
('094', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('095', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('096', 'Huyện Mường Nhé', 'Huyện', '11'),
('097', 'Huyện Mường Chà', 'Huyện', '11'),
('098', 'Huyện Tủa Chùa', 'Huyện', '11'),
('099', 'Huyện Tuần Giáo', 'Huyện', '11'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '01'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '01'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '01'),
('271', 'Huyện Ba Vì', 'Huyện', '01'),
('272', 'Huyện Phúc Thọ', 'Huyện', '01'),
('273', 'Huyện Đan Phượng', 'Huyện', '01'),
('274', 'Huyện Hoài Đức', 'Huyện', '01'),
('275', 'Huyện Quốc Oai', 'Huyện', '01'),
('276', 'Huyện Thạch Thất', 'Huyện', '01'),
('277', 'Huyện Chương Mỹ', 'Huyện', '01'),
('278', 'Huyện Thanh Oai', 'Huyện', '01'),
('279', 'Huyện Thường Tín', 'Huyện', '01'),
('280', 'Huyện Phú Xuyên', 'Huyện', '01'),
('281', 'Huyện Ứng Hòa', 'Huyện', '01'),
('282', 'Huyện Mỹ Đức', 'Huyện', '01'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H\' Drai', 'Huyện', '62'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H\'leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M\'gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M\'Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R\'Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duong_rong`
--

CREATE TABLE `duong_rong` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `duong_rong`
--

INSERT INTO `duong_rong` (`id`, `name`) VALUES
(1, '1m'),
(2, '2m'),
(3, '3m'),
(4, '4m'),
(5, '5m'),
(6, 'Trên 6m');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `follow`
--

INSERT INTO `follow` (`id`, `product_id`, `user_id`, `state`) VALUES
(6, 45, 15, 1),
(7, 44, 15, 0),
(8, 45, 16, 0),
(9, 44, 16, 0),
(10, 48, 16, 0),
(11, 47, 16, 0),
(12, 49, 16, 0),
(13, 51, 16, 0),
(14, 51, 17, 0),
(15, 50, 17, 0),
(16, 48, 17, 0),
(17, 51, 18, 0),
(18, 50, 18, 0),
(19, 62, 16, 0),
(20, 47, 15, 0),
(21, 68, 16, 0),
(22, 68, 15, 0),
(23, 73, 16, 0),
(24, 83, 16, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hien_trang`
--

CREATE TABLE `hien_trang` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hien_trang`
--

INSERT INTO `hien_trang` (`id`, `name`) VALUES
(1, 'Đất'),
(2, 'Nhà tầng'),
(3, 'Nhà cấp 4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `huong_nha`
--

CREATE TABLE `huong_nha` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `huong_nha`
--

INSERT INTO `huong_nha` (`id`, `name`, `note`) VALUES
(1, 'Đông', NULL),
(2, 'Tây', NULL),
(3, 'Nam', NULL),
(4, 'Bắc', NULL),
(5, 'Đông Bắc', NULL),
(6, 'Đông Nam', NULL),
(7, 'Tây Nam', NULL),
(8, 'Tây Bắc', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ki_gui`
--

CREATE TABLE `ki_gui` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ki_gui`
--

INSERT INTO `ki_gui` (`id`, `name`, `email`, `phone`, `note`) VALUES
(1, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(18, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '', '', 'sdfgsdfg', '2018-05-02 12:01:44'),
(19, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'Tesst  Liên hệ lần 1 ^_^ -_- :D :v :))', '2018-05-07 02:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(194, 'Bán BĐS', 2, 3, '', 227, 0, 0, 0, 0, 1, 194, 0, 0, NULL),
(205, 'Giới thiệu', 1, 13, '', 0, 0, 0, 35, 0, 0, 0, 0, 0, NULL),
(207, 'Tin tức', 1, 6, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(208, 'Liên hệ', 6, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(216, 'Kem dưỡng', 0, 3, '', 232, 0, 0, 0, 0, 1, 194, 0, 0, NULL),
(217, 'Tắm trắng', 0, 3, '', 231, 0, 0, 0, 0, 1, 194, 0, 0, NULL),
(218, 'Serum trái cây', 0, 3, '', 230, 0, 0, 0, 0, 1, 194, 0, 0, NULL),
(223, 'Tin thị trường', 0, 5, '', 0, 69, 0, 0, 0, 1, 207, 0, 0, NULL),
(224, 'Tiến độ dự án', 0, 5, '', 0, 65, 0, 0, 0, 1, 207, 0, 0, NULL),
(225, 'Bán BĐS', 2, 3, '', 227, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(226, 'Nghỉ dưỡng', 0, 3, '', 233, 0, 0, 0, 0, 1, 225, 0, 0, NULL),
(227, 'Liền kề Biệt thự', 0, 3, '', 234, 0, 0, 0, 0, 1, 225, 0, 0, NULL),
(228, 'Căn hộ đẳng cấp', 0, 3, '', 235, 0, 0, 0, 0, 1, 225, 0, 0, NULL),
(229, 'Chung cư', 0, 3, '', 236, 0, 0, 0, 0, 1, 225, 0, 0, NULL),
(235, 'Đăng ký', 6, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(236, 'Lọc nhà', 2, 8, 'loc-nha', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(237, 'Kí gửi', 2, 8, 'ki-gui', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(238, 'Quy định', 2, 13, '', 0, 0, 0, 53, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Home', 1, '', 114),
(365, 'vn', 'Bán BĐS', 1, '', 194),
(366, 'en', 'Product', 1, '', 194),
(387, 'vn', 'Giới thiệu', 1, '', 205),
(388, 'en', 'Introduce', 1, '', 205),
(391, 'vn', 'Tin tức', 1, '', 207),
(392, 'en', 'News', 1, '', 207),
(393, 'vn', 'Liên hệ', 1, '', 208),
(394, 'en', 'Contact', 1, '', 208),
(409, 'vn', 'Kem dưỡng', 0, '', 216),
(410, 'en', 'Kem dưỡng', 0, '', 216),
(411, 'vn', 'Tắm trắng', 0, '', 217),
(412, 'en', 'Tắm trắng', 0, '', 217),
(413, 'vn', 'Serum trái cây', 0, '', 218),
(414, 'en', 'Serum trái cây', 0, '', 218),
(423, 'vn', 'Tin thị trường', 0, '', 223),
(424, 'en', 'Tin thị trường', 0, '', 223),
(425, 'vn', 'Tiến độ dự án', 0, '', 224),
(426, 'en', 'Tiến độ dự án', 0, '', 224),
(427, 'vn', 'Bán BĐS', 0, '', 225),
(428, 'en', 'Bán BĐS', 0, '', 225),
(429, 'vn', 'Nghỉ dưỡng', 0, '', 226),
(430, 'en', 'Nghỉ dưỡng', 0, '', 226),
(431, 'vn', 'Liền kề Biệt thự', 0, '', 227),
(432, 'en', 'Liền kề Biệt thự', 0, '', 227),
(433, 'vn', 'Căn hộ đẳng cấp', 0, '', 228),
(434, 'en', 'Căn hộ đẳng cấp', 0, '', 228),
(435, 'vn', 'Chung cư', 0, '', 229),
(436, 'en', 'Chung cư', 0, '', 229),
(447, 'vn', 'Đăng ký', 0, '', 235),
(448, 'en', 'Đăng ký', 0, '', 235),
(449, 'vn', 'Lọc nhà', 0, 'loc-nha', 236),
(450, 'en', 'Lọc nhà', 0, '', 236),
(451, 'vn', 'Kí gửi', 0, 'ki-gui', 237),
(452, 'en', 'Kí gửi', 0, '', 237),
(453, 'vn', 'Quy định', 0, '', 238),
(454, 'en', 'Quy định', 0, '', 238);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(25, 'tin tuyen dung 1 ', 'Đỗ Mỹ Linh tắm sữa tươi nếu hoạt động ngoài nắng trước đó, còn H\'Hen Niê thường dùng một lớp dầu bắt nắng khi ra ngoài đường.', '<h3><strong>Hoa hậu&nbsp;Đỗ Mỹ Linh</strong></h3>\r\n\r\n<p>Theo Hoa hậu Việt Nam 2016, thời gian chăm s&oacute;c da l&yacute; tuởng nhất l&agrave; v&agrave;o buổi tối, trước khi đi ngủ v&igrave; da c&oacute; thời gian để hấp thụ tốt nhất. Đầu ti&ecirc;n v&agrave; quan trọng nhất l&agrave; l&agrave;m sạch da. Phải thường xuy&ecirc;n trang điểm, Mỹ Linh tẩy trang bằng dạng s&aacute;p để gi&uacute;p da kh&ocirc;ng bị kh&ocirc;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Cach cham soc da cua cac Hoa hau, A hau Viet Nam hinh anh 1\" src=\"https://znews-photo-td.zadn.vn/w660/Uploaded/zagtbg/2018_04_27/Hoa_hau_My_Linh.jpg\" /></p>\r\n\r\n<p><br />\r\nSau khi đợi mặt nạ thấm v&agrave;o da, Mỹ Linh b&ocirc;i serum dạng dầu trước khi kết th&uacute;c bằng kem dưỡng ẩm. C&ocirc; thực hiện đầy đủ c&aacute;c bước chăm s&oacute;c da như tr&ecirc;n khoảng 3 lần/tuần.Khi&nbsp;rửa mặt, người đẹp d&ugrave;ng nước hoa c&uacute;c nhẹ dịu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Tiếp đến l&agrave; toner gi&uacute;p c&acirc;n bằng độ ẩm sau khi rửa mặt. Đặc biệt, Hoa hậu Việt Nam đắp mặt nạ giấy mỗi ng&agrave;y gi&uacute;p cung cấp độ ẩm...</p>\r\n\r\n<p>Những l&uacute;c phải chụp h&igrave;nh hay dự sự kiện ngo&agrave;i nắng, Mỹ Linh sẽ tắm sữa tươi ngay sau đ&oacute;. B&iacute; k&iacute;p n&agrave;y gi&uacute;p l&agrave;n da Hoa hậu nhả nắng, bớt đen v&agrave; mịn m&agrave;ng hơn.</p>\r\n\r\n<h3><strong>Hoa hậu H&#39;Hen Ni&ecirc;</strong></h3>\r\n\r\n<p>Đương kim Hoa hậu Ho&agrave;n vũ Việt Nam chia sẻ v&agrave;o buổi s&aacute;ng, c&ocirc; thường l&agrave;m sạch da bước cuối c&ugrave;ng với nước chanh bỏ đ&aacute; lạnh trước khi dưỡng da. Ở c&ocirc;ng đoạn n&agrave;y, đầu ti&ecirc;n người đẹp sử dụng kho&aacute;ng, một lớp toner c&acirc;n bằng độ ẩm v&agrave; d&ugrave;ng một lớp kem dưỡng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&aacute;c với c&aacute;c mỹ nh&acirc;n kh&aacute;c, v&igrave; th&iacute;ch da n&acirc;u n&ecirc;n H&#39;Hen thường d&ugrave;ng một lớp dầu bắt nắng khi ra ngo&agrave;i đường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Về buổi tối, H&#39;Hen tiếp tục tu&acirc;n thủ nguy&ecirc;n tắc l&agrave;m sạch da. C&ocirc; x&agrave;i dầu tẩy trang l&agrave;m sạch da, sau đ&oacute; đến sữa rửa mặt v&agrave; xịt kho&aacute;ng. Tiếp đến l&agrave; lần lượt nước c&acirc;n bằng độ ẩm, kem dưỡng mắt, kem dưỡng ẩm v&agrave; một lớp kem sau c&ugrave;ng để kh&oacute;a lại phần dưỡng da của người đẹp.</p>\r\n\r\n<p>&quot;T&ocirc;i d&ugrave;ng th&ecirc;m một lớp dưỡng m&ocirc;i trước khi đi ngủ. Thỉnh thoảng, t&ocirc;i thay kem dưỡng da bằng đắp mặt nạ ngủ hoặc x&agrave;i những mặt nạ c&oacute; thể sử dụng xuy&ecirc;n đ&ecirc;m trong l&uacute;c đi ngủ&quot;, H&#39;Hen chia sẻ.</p>\r\n\r\n<p>Hoa hậu&nbsp;thường d&agrave;nh thời gian đi spa, tắm tẩy tế b&aacute;o chết. Nếu kh&ocirc;ng c&oacute; thời gian, Hoa hậu d&agrave;nh lời khuy&ecirc;n c&aacute;c bạn nữ vẫn phải tẩy tế b&agrave;o chết. Phương ph&aacute;p đơn giản c&oacute; thể tự l&agrave;m ở nh&agrave; m&agrave; người đẹp gợi &yacute; l&agrave; trộn mật ong với c&agrave; ph&ecirc; đ&atilde; pha.</p>\r\n\r\n<p>&quot;Hồi đ&oacute;, &iacute;t khi t&ocirc;i quan t&acirc;m v&agrave; d&agrave;nh thời gian dưỡng da lắm. B&acirc;y giờ, theo chia sẻ của c&aacute;c chị, t&ocirc;i tranh thủ dưỡng da c&agrave;ng nhiều c&agrave;ng tốt&quot;, người đẹp bật m&iacute;.</p>\r\n\r\n<h3><strong>&Aacute; hậu Dương T&uacute; Anh</strong></h3>\r\n\r\n<p>Mỗi buổi s&aacute;ng, T&uacute; Anh thường sử dụng một loại sữa rửa mặt h&uacute;t sạch dầu bởi sau một đ&ecirc;m, da mặt tiết rất nhiều b&atilde; nhờn. Sau đ&oacute;, c&ocirc; b&ocirc;i một lớp kem dưỡng ban ng&agrave;y mỏng v&agrave; một lớp kem chống nắng trước khi thực hiện c&aacute;c bước trang điểm tiếp theo.</p>\r\n\r\n<p><br />\r\n&Aacute; hậu Việt Nam 2012 thường sử dụng mặt nạ giấy để l&agrave;m da trắng s&aacute;ng v&agrave; mịn hơn. B&ecirc;n cạnh đ&oacute;, T&uacute; Anh kết hợp với m&aacute;y chăm s&oacute;c da mặt gi&uacute;p kem dưỡng thẩm thấu tốt hơn.Buổi tối trước khi đi ngủ, T&uacute; Anh lựa chọn phương ph&aacute;p gồm nước hoa hồng, thoa một lớp dưỡng v&agrave; sử dụng mặt nạ ngủ cấp ẩm v&agrave;i lần trong tuần để l&agrave;n da ko bị kh&ocirc;.</p>\r\n\r\n<h3><strong>&Aacute; hậu Nguyễn Thị Loan</strong></h3>\r\n\r\n<p>Nguyễn Thị Loan vốn sở hữu l&agrave;n da n&acirc;u khỏe khoắn, n&oacute;ng bỏng. D&ugrave; thừa nhận bản th&acirc;n kh&ocirc;ng sợ da đen, &Aacute; hậu lu&ocirc;n &yacute; thức chọn kem chống nắng dạng xịt để bảo vệ cơ thể trước t&aacute;c hại của &aacute;nh nắng. Với những ng&agrave;y phải hoạt động, chụp h&igrave;nh li&ecirc;n tục dưới nắng, người đẹp thường xuy&ecirc;n thoa kem chống nắng nhiều lần.</p>\r\n\r\n<p>Nguyễn Thị Loan cũng nhấn mạnh tầm quan trọng của tẩy trang v&igrave; c&ocirc;ng đoạn n&agrave;y g&acirc;y ảnh hường l&acirc;u d&agrave;i cho da. &Aacute; hậu thường d&ugrave;ng dầu dừa để tẩy trang mắt v&agrave; m&ocirc;i.</p>\r\n\r\n<p>Sau đ&oacute;, c&ocirc; d&ugrave;ng dầu tẩy trang cho cả gương mặt, th&ecirc;m một lần sữa rửa mặt v&agrave; cuối c&ugrave;ng lau sạch lại mặt bằng b&ocirc;ng thấm nước hoa hồng.</p>\r\n\r\n<p><br />\r\nĐ&ocirc;i l&uacute;c, &Aacute; hậu sử dụng mặt nạ handmade từ nước &eacute;p c&agrave; rốt, hỗn hợp sữa chua - mật ong - bột nghệ, l&ograve;ng trắng trứng - mật ong - v&agrave;i giọt chanh...Đắp mặt nạ cũng l&agrave; một bước l&agrave;m đẹp kh&ocirc;ng thể thiếu của Nguyễn Thị Loan. C&ocirc; thường chọn loại mặt nạ ốc s&ecirc;n hoặc c&oacute; c&aacute;c th&agrave;nh phần t&aacute;i tạo chống l&atilde;o ho&aacute; cho da của m&igrave;nh.</p>\r\n\r\n<h3><strong>&Aacute; hậu Th&ugrave;y Dung</strong></h3>\r\n\r\n<p>Mỗi s&aacute;ng, d&ugrave; hoạt động ngo&agrave;i trời hay trong nh&agrave;, &Aacute; hậu Việt Nam 2016 đều d&ugrave;ng kem chống nắng. Đ&acirc;y l&agrave; điều tối thiểu m&agrave; c&aacute;c c&ocirc; g&aacute;i cần l&agrave;m cho da m&igrave;nh v&igrave; gi&uacute;p bảo vệ da khỏi n&aacute;m v&agrave; l&atilde;o ho&aacute;. .</p>\r\n\r\n<p>V&igrave; t&iacute;nh chất c&ocirc;ng việc phải make up nhiều, ưu ti&ecirc;n h&agrave;ng đầu của Th&ugrave;y Dung cũng l&agrave; tẩy trang thật kỹ. C&oacute; những ng&agrave;y kh&ocirc;ng đụng đến make up, người đẹp vẫn tẩy trang thật sạch trước khi rửa mặt.</p>\r\n\r\n<p>Thay v&igrave; d&ugrave;ng c&aacute;c loại nước rửa mặt, &Aacute; hậu hay d&ugrave;ng dầu dừa tự nhi&ecirc;n, gi&uacute;p mỹ phẩm tr&ocirc;i dễ d&agrave;ng v&agrave; tr&aacute;nh việc da bị kh&ocirc;.</p>\r\n\r\n<p><br />\r\nĐể tr&aacute;nh nổi mụn, Th&ugrave;y Dung đều x&ocirc;ng mặt bằng nước s&ocirc;i v&agrave; chanh h&agrave;ng tuần. Đ&acirc;y l&agrave; phương ph&aacute;p m&agrave; &Aacute; hậu học được từ mẹ v&igrave; n&oacute; kh&ocirc;ng tốn k&eacute;m, tiện lợi v&agrave; mang lại hiệu quả rất cao.Sau khi rửa mặt thật sạch, bước quan trọng kh&ocirc;ng k&eacute;m l&agrave; dưỡng ẩm. Bước đầu, Th&ugrave;y Dung d&ugrave;ng toner nước hoa c&uacute;c. Sau đ&oacute;, &Aacute; hậu th&ecirc;m c&aacute;c bước dưỡng ẩm bằng kem, serum v&agrave; đắp mặt nạ khi c&oacute; thời gian.</p>\r\n', '1.jpg', 0, 68, '', '2017-07-09 23:07:04', '2018-06-12 11:06:50', 1, '', '', '', '', '', 'tin tuyen dung 1 ', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4', 'tin-tuyen-dung-1', '', 1, ''),
(26, '5 bí quyết chăm sóc da mặt của con gái Hàn', 'Để sở hữu làn da căng bóng, mịn màng, phụ nữ Hàn Quốc phải thực hiện quá trình chăm sóc da với nhiều bước quan trọng và nghiêm ngặt, đặc biệt phải thật chăm chỉ.', '<p>Để sở hữu l&agrave;n da căng b&oacute;ng, mịn m&agrave;ng, phụ nữ H&agrave;n Quốc phải thực hiện qu&aacute; tr&igrave;nh chăm s&oacute;c da với nhiều bước quan trọng v&agrave; nghi&ecirc;m ngặt, đặc biệt phải thật chăm chỉ.</p>\r\n', 'anh686171446716665_dvec.jpg', 0, 0, '', '2017-07-09 23:07:30', '2018-05-07 13:05:43', 1, '', '', '', '', '', '5 bí quyết chăm sóc da mặt của con gái Hàn', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', '5-bi-quyet-cham-soc-da-mat-cua-con-gai-han', '', 1, ''),
(27, '7 mẹo chăm sóc da dầu bạn gái nên biết', 'Bạn cần biết cách kiểm soát lượng dầu khiến khuôn mặt nhờn bóng, kém xinh khi sở hữu làn da dầu.', '<h3><strong>B&iacute; quyết l&agrave;m đẹp 1. Lu&ocirc;n lu&ocirc;n thử trước khi mua</strong></h3>\r\n\r\n<p>C&oacute; một số sản phẩm trang điểm, bạn thực sự cần phải thử trước khi mua ch&uacute;ng. Bạn c&oacute; thế mua ngay m&agrave; kh&ocirc;ng cần đắn đo như b&uacute;t kẻ mắt, phấn mắt v&agrave; son b&oacute;ng; nhưng bạn cần phải kiểm tra bột, son m&ocirc;i, phấn nền v&agrave; m&aacute; hồng. V&igrave; để an to&agrave;n cho l&agrave;n da cũng như gi&uacute;p bạn tỏa s&aacute;ng hơn, th&igrave; l&agrave;m kiểm tra với sản phẩm trang điểm kh&ocirc;ng phải l&agrave; thừa, đ&acirc;y cũng c&oacute; thể xem như 1 b&iacute; quyết l&agrave;m đẹp. Bởi v&igrave;, c&oacute; một số son hay phấn chứa c&aacute;c chất h&oacute;a học khiến cho da bạn trở n&ecirc;n tệ hơn khi trang điểm một thời gian d&agrave;i.</p>\r\n\r\n<h3><strong>B&iacute; quyết l&agrave;m đẹp 2. Kh&ocirc;ng n&ecirc;n bỏ qua bơ hạt mỡ (shea butter)</strong></h3>\r\n\r\n<p>Kh&ocirc;ng c&oacute; c&ocirc; g&aacute;i n&agrave;o th&iacute;ch l&agrave;m đẹp m&agrave; kh&ocirc;ng biết đến bơ hạt mỡ. N&oacute; được lưu trong b&iacute; quyết l&agrave;m đẹp của rất nhiều chị em. Bạn c&oacute; thể sử dụng bơ hạt mỡ gi&uacute;p loại bỏ lớp trang điểm, l&agrave;m son b&oacute;ng hoặc l&agrave;m mềm cho đ&ocirc;i m&ocirc;i của bạn. Bơ hạt mỡ l&agrave; nguy&ecirc;n liệu l&agrave;m mềm đ&ocirc;i tay v&agrave; b&agrave;n ch&acirc;n tuyệt vời, v&agrave;o những ng&agrave;y trời lạnh bạn kh&ocirc;ng phải lo lắng v&igrave; da kh&ocirc; nữa. Nhưng bạn h&atilde;y thận trọng trong liều lượng sử dụng đặc biệt l&agrave; với da mặt, bởi nếu sử dụng qu&aacute; nhiều c&oacute; thể l&agrave;m g&acirc;y tắc nghẽn lỗ ch&acirc;n l&ocirc;ng v&agrave; g&acirc;y ra mụn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'theo-doi-8-beauty-blogger-nay-ban-chi-co-the-tu-dep-den-dep-hon-b32d0d3e.jpg', 0, 0, '', '2017-07-09 23:07:15', '2018-05-07 13:05:05', 1, '', '', '', '', '', '7 mẹo chăm sóc da dầu bạn gái nên biết', '', '7-meo-cham-soc-da-dau-ban-gai-nen-biet', '', 1, ''),
(31, 'Xu hướng mua nhà thời nay: Hưởng thụ như ở khách sạn', '', '', '8.jpg', 0, 69, '', '2017-12-03 16:12:41', '2018-06-09 16:06:59', 1, '', '', '', '', '', 'Xu hướng mua nhà thời nay: Hưởng thụ như ở khách sạn', '', 'xu-huong-mua-nha-thoi-nay-huong-thu-nhu-o-khach-san', '', 1, ''),
(32, 'Hà Nội: thời gian cấp sổ đỏ còn 20 ngày', '', '', '7.jpg', 0, 69, '', '2017-12-08 14:12:04', '2018-06-09 16:06:31', 1, '', '', '', '', '', 'Hà Nội: thời gian cấp sổ đỏ còn 20 ngày', '', 'ha-noi-thoi-gian-cap-so-do-con-20-ngay', '', 1, ''),
(48, 'Những đặc quyền dành riêng cho cư dân D’. Le Roi Soleil', '', '', '9.jpg', 0, 69, '', '2017-12-08 14:12:07', '2018-06-09 16:06:06', 1, '', '', '', '', '', 'Những đặc quyền dành riêng cho cư dân D’. Le Roi Soleil', '', 'nhung-dac-quyen-danh-rieng-cho-cu-dan-d’-le-roi-soleil', '', 1, ''),
(49, 'Dự án mở rộng đường Vũ Trọng Phụng: đẩy nhanh tiến độ, sớm về đích', '', '', '12.jpg', 0, 69, '', '2017-12-08 14:12:15', '2018-06-09 16:06:12', 1, '', '', '', '', '', 'Dự án mở rộng đường Vũ Trọng Phụng: đẩy nhanh tiến độ, sớm về đích', '', 'du-an-mo-rong-duong-vu-trong-phung-day-nhanh-tien-do-som-ve-dich', '', 1, 'a:1:{i:0;s:1:\"3\";}'),
(50, 'Quận Thanh Xuân nóng với loạt dự án sắp bàn giao', '', '', '15.jpg', 0, 69, '', '2017-12-08 14:12:26', '2018-06-09 16:06:24', 1, '', '', '', '', '', 'Quận Thanh Xuân nóng với loạt dự án sắp bàn giao', '', 'quan-thanh-xuan-nong-voi-loat-du-an-sap-ban-giao', '', 1, ''),
(51, 'Tin tức đất xanh 1 ', 'Mô tả ngắn', '<p>Nội dung tin tức đất xanh</p>\r\n', '10.jpg', 0, 66, '', '2018-06-12 11:06:09', NULL, 1, '', '', '', '', '', 'Tin tức đất xanh 1 ', '', 'tin-tuc-dat-xanh-1', '', 1, ''),
(52, 'tin tuyen dung 2', '', '', '', 0, 68, '', '2018-06-12 15:06:02', NULL, 1, '', '', '', '', '', 'tin tuyen dung 2', '', 'tin-tuyen-dung-2', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(63, 'Giới thiệu công ty', '<p>M&ocirc; tả Hỏi đ&aacute;p</p>\r\n', '', 0, 0, '2018-04-02 01:04:26', NULL, 1, 'n3.jpg', '', '', '', '', '', 'Giới thiệu công ty', '', 'gioi-thieu-cong-ty', '', 1),
(64, 'Chính sách chung', '<p>M&ocirc; tả ch&iacute;nh s&aacute;ch</p>\r\n', '', 0, 0, '2018-04-02 01:04:23', NULL, 1, 'n5.jpg', '', '', '', '', '', 'Chính sách chung', '', 'chinh-sach-chung', '', 1),
(65, 'Hướng dẫn sử dụng', '<p>M&ocirc; tả đại l&yacute;</p>\r\n', '', 0, 0, '2018-04-02 01:04:12', NULL, 1, 'n6.jpg', '', '', '', '', '', 'Hướng dẫn sử dụng', '', 'huong-dan-su-dung', '', 1),
(66, 'Tin tức đất xanh', '<p>M&ocirc; tả dịch vụ kh&aacute;ch h&agrave;ng</p>\r\n', '', 0, 0, '2018-06-12 11:06:15', NULL, 1, 'n3.jpg', '', '', '', '', '', 'Tin tức đất xanh', '', 'tin-tuc-dat-xanh', '', 1),
(68, 'Tin tuyển dụng', '', '', 0, 0, '2018-06-12 10:06:07', NULL, 1, NULL, '', '', '', '', '', 'Tin tuyển dụng', '', 'tin-tuyen-dung', '', 1),
(69, 'Tin thị trường', '', '', 0, 0, '2018-06-09 16:06:33', NULL, 1, NULL, '', '', '', '', '', 'Tin thị trường', '', 'tin-thi-truong', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(121, 63, 'vn', 'Giới thiệu công ty', '<p>M&ocirc; tả Hỏi đ&aacute;p</p>\r\n', NULL, '', '', '', '', '', 0, 'gioi-thieu-cong-ty', '', 'Giới thiệu công ty', ''),
(122, 63, 'en', 'Hỏi đáp', '<p>M&ocirc; tả Hỏi đ&aacute;p</p>\r\n', '', '', '', '', '', '', 0, 'hoi-dap', '', 'Hỏi đáp', ''),
(123, 64, 'vn', 'Chính sách chung', '<p>M&ocirc; tả ch&iacute;nh s&aacute;ch</p>\r\n', NULL, '', '', '', '', '', 1, 'chinh-sach-chung', '', 'Chính sách chung', ''),
(124, 64, 'en', 'Chính sách', '<p>M&ocirc; tả ch&iacute;nh s&aacute;ch</p>\r\n', '1', '', '', '', '', '', 1, 'chinh-sach', '', 'Chính sách', ''),
(125, 65, 'vn', 'Hướng dẫn sử dụng', '<p>M&ocirc; tả đại l&yacute;</p>\r\n', NULL, '', '', '', '', '', 0, 'huong-dan-su-dung', '', 'Hướng dẫn sử dụng', ''),
(126, 65, 'en', 'Đại lý', '<p>M&ocirc; tả đại l&yacute;</p>\r\n', '', '', '', '', '', '', 0, 'dai-ly', '', 'Đại lý', ''),
(127, 66, 'vn', 'Tin tức đất xanh', '<p>M&ocirc; tả dịch vụ kh&aacute;ch h&agrave;ng</p>\r\n', NULL, '', '', '', '', '', 0, 'tin-tuc-dat-xanh', '', 'Tin tức đất xanh', ''),
(128, 66, 'en', 'Lao động', '<p>M&ocirc; tả lao động</p>\r\n', '', '', '', '', '', '', 0, 'lao-dong', '', 'Lao động', ''),
(131, 68, 'vn', 'Tin tuyển dụng', '', NULL, '', '', '', '', '', 1, 'tin-tuyen-dung', '', 'Tin tuyển dụng', ''),
(132, 68, 'en', 'News Origanic', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-tin-tuc', '', 'Tin tức', ''),
(133, 69, 'vn', 'Tin thị trường', '', NULL, '', '', '', '', '', 1, 'tin-thi-truong', '', 'Tin thị trường', ''),
(134, 69, 'en', 'Technology Transfer', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-chuyen-giao-cong-nghe', '', 'Chuyển giao công nghệ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(49, 25, 'vn', 'tin tuyen dung 1 ', 'Đỗ Mỹ Linh tắm sữa tươi nếu hoạt động ngoài nắng trước đó, còn H\'Hen Niê thường dùng một lớp dầu bắt nắng khi ra ngoài đường.', '<h3><strong>Hoa hậu&nbsp;Đỗ Mỹ Linh</strong></h3>\r\n\r\n<p>Theo Hoa hậu Việt Nam 2016, thời gian chăm s&oacute;c da l&yacute; tuởng nhất l&agrave; v&agrave;o buổi tối, trước khi đi ngủ v&igrave; da c&oacute; thời gian để hấp thụ tốt nhất. Đầu ti&ecirc;n v&agrave; quan trọng nhất l&agrave; l&agrave;m sạch da. Phải thường xuy&ecirc;n trang điểm, Mỹ Linh tẩy trang bằng dạng s&aacute;p để gi&uacute;p da kh&ocirc;ng bị kh&ocirc;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Cach cham soc da cua cac Hoa hau, A hau Viet Nam hinh anh 1\" src=\"https://znews-photo-td.zadn.vn/w660/Uploaded/zagtbg/2018_04_27/Hoa_hau_My_Linh.jpg\" /></p>\r\n\r\n<p><br />\r\nSau khi đợi mặt nạ thấm v&agrave;o da, Mỹ Linh b&ocirc;i serum dạng dầu trước khi kết th&uacute;c bằng kem dưỡng ẩm. C&ocirc; thực hiện đầy đủ c&aacute;c bước chăm s&oacute;c da như tr&ecirc;n khoảng 3 lần/tuần.Khi&nbsp;rửa mặt, người đẹp d&ugrave;ng nước hoa c&uacute;c nhẹ dịu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Tiếp đến l&agrave; toner gi&uacute;p c&acirc;n bằng độ ẩm sau khi rửa mặt. Đặc biệt, Hoa hậu Việt Nam đắp mặt nạ giấy mỗi ng&agrave;y gi&uacute;p cung cấp độ ẩm...</p>\r\n\r\n<p>Những l&uacute;c phải chụp h&igrave;nh hay dự sự kiện ngo&agrave;i nắng, Mỹ Linh sẽ tắm sữa tươi ngay sau đ&oacute;. B&iacute; k&iacute;p n&agrave;y gi&uacute;p l&agrave;n da Hoa hậu nhả nắng, bớt đen v&agrave; mịn m&agrave;ng hơn.</p>\r\n\r\n<h3><strong>Hoa hậu H&#39;Hen Ni&ecirc;</strong></h3>\r\n\r\n<p>Đương kim Hoa hậu Ho&agrave;n vũ Việt Nam chia sẻ v&agrave;o buổi s&aacute;ng, c&ocirc; thường l&agrave;m sạch da bước cuối c&ugrave;ng với nước chanh bỏ đ&aacute; lạnh trước khi dưỡng da. Ở c&ocirc;ng đoạn n&agrave;y, đầu ti&ecirc;n người đẹp sử dụng kho&aacute;ng, một lớp toner c&acirc;n bằng độ ẩm v&agrave; d&ugrave;ng một lớp kem dưỡng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&aacute;c với c&aacute;c mỹ nh&acirc;n kh&aacute;c, v&igrave; th&iacute;ch da n&acirc;u n&ecirc;n H&#39;Hen thường d&ugrave;ng một lớp dầu bắt nắng khi ra ngo&agrave;i đường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Về buổi tối, H&#39;Hen tiếp tục tu&acirc;n thủ nguy&ecirc;n tắc l&agrave;m sạch da. C&ocirc; x&agrave;i dầu tẩy trang l&agrave;m sạch da, sau đ&oacute; đến sữa rửa mặt v&agrave; xịt kho&aacute;ng. Tiếp đến l&agrave; lần lượt nước c&acirc;n bằng độ ẩm, kem dưỡng mắt, kem dưỡng ẩm v&agrave; một lớp kem sau c&ugrave;ng để kh&oacute;a lại phần dưỡng da của người đẹp.</p>\r\n\r\n<p>&quot;T&ocirc;i d&ugrave;ng th&ecirc;m một lớp dưỡng m&ocirc;i trước khi đi ngủ. Thỉnh thoảng, t&ocirc;i thay kem dưỡng da bằng đắp mặt nạ ngủ hoặc x&agrave;i những mặt nạ c&oacute; thể sử dụng xuy&ecirc;n đ&ecirc;m trong l&uacute;c đi ngủ&quot;, H&#39;Hen chia sẻ.</p>\r\n\r\n<p>Hoa hậu&nbsp;thường d&agrave;nh thời gian đi spa, tắm tẩy tế b&aacute;o chết. Nếu kh&ocirc;ng c&oacute; thời gian, Hoa hậu d&agrave;nh lời khuy&ecirc;n c&aacute;c bạn nữ vẫn phải tẩy tế b&agrave;o chết. Phương ph&aacute;p đơn giản c&oacute; thể tự l&agrave;m ở nh&agrave; m&agrave; người đẹp gợi &yacute; l&agrave; trộn mật ong với c&agrave; ph&ecirc; đ&atilde; pha.</p>\r\n\r\n<p>&quot;Hồi đ&oacute;, &iacute;t khi t&ocirc;i quan t&acirc;m v&agrave; d&agrave;nh thời gian dưỡng da lắm. B&acirc;y giờ, theo chia sẻ của c&aacute;c chị, t&ocirc;i tranh thủ dưỡng da c&agrave;ng nhiều c&agrave;ng tốt&quot;, người đẹp bật m&iacute;.</p>\r\n\r\n<h3><strong>&Aacute; hậu Dương T&uacute; Anh</strong></h3>\r\n\r\n<p>Mỗi buổi s&aacute;ng, T&uacute; Anh thường sử dụng một loại sữa rửa mặt h&uacute;t sạch dầu bởi sau một đ&ecirc;m, da mặt tiết rất nhiều b&atilde; nhờn. Sau đ&oacute;, c&ocirc; b&ocirc;i một lớp kem dưỡng ban ng&agrave;y mỏng v&agrave; một lớp kem chống nắng trước khi thực hiện c&aacute;c bước trang điểm tiếp theo.</p>\r\n\r\n<p><br />\r\n&Aacute; hậu Việt Nam 2012 thường sử dụng mặt nạ giấy để l&agrave;m da trắng s&aacute;ng v&agrave; mịn hơn. B&ecirc;n cạnh đ&oacute;, T&uacute; Anh kết hợp với m&aacute;y chăm s&oacute;c da mặt gi&uacute;p kem dưỡng thẩm thấu tốt hơn.Buổi tối trước khi đi ngủ, T&uacute; Anh lựa chọn phương ph&aacute;p gồm nước hoa hồng, thoa một lớp dưỡng v&agrave; sử dụng mặt nạ ngủ cấp ẩm v&agrave;i lần trong tuần để l&agrave;n da ko bị kh&ocirc;.</p>\r\n\r\n<h3><strong>&Aacute; hậu Nguyễn Thị Loan</strong></h3>\r\n\r\n<p>Nguyễn Thị Loan vốn sở hữu l&agrave;n da n&acirc;u khỏe khoắn, n&oacute;ng bỏng. D&ugrave; thừa nhận bản th&acirc;n kh&ocirc;ng sợ da đen, &Aacute; hậu lu&ocirc;n &yacute; thức chọn kem chống nắng dạng xịt để bảo vệ cơ thể trước t&aacute;c hại của &aacute;nh nắng. Với những ng&agrave;y phải hoạt động, chụp h&igrave;nh li&ecirc;n tục dưới nắng, người đẹp thường xuy&ecirc;n thoa kem chống nắng nhiều lần.</p>\r\n\r\n<p>Nguyễn Thị Loan cũng nhấn mạnh tầm quan trọng của tẩy trang v&igrave; c&ocirc;ng đoạn n&agrave;y g&acirc;y ảnh hường l&acirc;u d&agrave;i cho da. &Aacute; hậu thường d&ugrave;ng dầu dừa để tẩy trang mắt v&agrave; m&ocirc;i.</p>\r\n\r\n<p>Sau đ&oacute;, c&ocirc; d&ugrave;ng dầu tẩy trang cho cả gương mặt, th&ecirc;m một lần sữa rửa mặt v&agrave; cuối c&ugrave;ng lau sạch lại mặt bằng b&ocirc;ng thấm nước hoa hồng.</p>\r\n\r\n<p><br />\r\nĐ&ocirc;i l&uacute;c, &Aacute; hậu sử dụng mặt nạ handmade từ nước &eacute;p c&agrave; rốt, hỗn hợp sữa chua - mật ong - bột nghệ, l&ograve;ng trắng trứng - mật ong - v&agrave;i giọt chanh...Đắp mặt nạ cũng l&agrave; một bước l&agrave;m đẹp kh&ocirc;ng thể thiếu của Nguyễn Thị Loan. C&ocirc; thường chọn loại mặt nạ ốc s&ecirc;n hoặc c&oacute; c&aacute;c th&agrave;nh phần t&aacute;i tạo chống l&atilde;o ho&aacute; cho da của m&igrave;nh.</p>\r\n\r\n<h3><strong>&Aacute; hậu Th&ugrave;y Dung</strong></h3>\r\n\r\n<p>Mỗi s&aacute;ng, d&ugrave; hoạt động ngo&agrave;i trời hay trong nh&agrave;, &Aacute; hậu Việt Nam 2016 đều d&ugrave;ng kem chống nắng. Đ&acirc;y l&agrave; điều tối thiểu m&agrave; c&aacute;c c&ocirc; g&aacute;i cần l&agrave;m cho da m&igrave;nh v&igrave; gi&uacute;p bảo vệ da khỏi n&aacute;m v&agrave; l&atilde;o ho&aacute;. .</p>\r\n\r\n<p>V&igrave; t&iacute;nh chất c&ocirc;ng việc phải make up nhiều, ưu ti&ecirc;n h&agrave;ng đầu của Th&ugrave;y Dung cũng l&agrave; tẩy trang thật kỹ. C&oacute; những ng&agrave;y kh&ocirc;ng đụng đến make up, người đẹp vẫn tẩy trang thật sạch trước khi rửa mặt.</p>\r\n\r\n<p>Thay v&igrave; d&ugrave;ng c&aacute;c loại nước rửa mặt, &Aacute; hậu hay d&ugrave;ng dầu dừa tự nhi&ecirc;n, gi&uacute;p mỹ phẩm tr&ocirc;i dễ d&agrave;ng v&agrave; tr&aacute;nh việc da bị kh&ocirc;.</p>\r\n\r\n<p><br />\r\nĐể tr&aacute;nh nổi mụn, Th&ugrave;y Dung đều x&ocirc;ng mặt bằng nước s&ocirc;i v&agrave; chanh h&agrave;ng tuần. Đ&acirc;y l&agrave; phương ph&aacute;p m&agrave; &Aacute; hậu học được từ mẹ v&igrave; n&oacute; kh&ocirc;ng tốn k&eacute;m, tiện lợi v&agrave; mang lại hiệu quả rất cao.Sau khi rửa mặt thật sạch, bước quan trọng kh&ocirc;ng k&eacute;m l&agrave; dưỡng ẩm. Bước đầu, Th&ugrave;y Dung d&ugrave;ng toner nước hoa c&uacute;c. Sau đ&oacute;, &Aacute; hậu th&ecirc;m c&aacute;c bước dưỡng ẩm bằng kem, serum v&agrave; đắp mặt nạ khi c&oacute; thời gian.</p>\r\n', '', '', '', '', '', 1, 'tin-tuyen-dung-1', 'tin tuyen dung 1 ', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4', ''),
(50, 25, 'en', 'Khuyến mãi 4', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4 en', '', '', '', '', '', '', 1, 'khuyen-mai-4', 'Khuyến mãi 4', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4', ''),
(51, 26, 'vn', '5 bí quyết chăm sóc da mặt của con gái Hàn', 'Để sở hữu làn da căng bóng, mịn màng, phụ nữ Hàn Quốc phải thực hiện quá trình chăm sóc da với nhiều bước quan trọng và nghiêm ngặt, đặc biệt phải thật chăm chỉ.', '<p>Để sở hữu l&agrave;n da căng b&oacute;ng, mịn m&agrave;ng, phụ nữ H&agrave;n Quốc phải thực hiện qu&aacute; tr&igrave;nh chăm s&oacute;c da với nhiều bước quan trọng v&agrave; nghi&ecirc;m ngặt, đặc biệt phải thật chăm chỉ.</p>\r\n', '', '', '', '', '', 0, '5-bi-quyet-cham-soc-da-mat-cua-con-gai-han', '5 bí quyết chăm sóc da mặt của con gái Hàn', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', ''),
(52, 26, 'en', 'Khuyến mãi 5', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', '<p>Th&ocirc;ng tin m&ocirc; tả ngắn cho b&agrave;i Khuyến m&atilde;i 5</p>\r\n', '', '', '', '', '', 0, 'khuyen-mai-5', 'Khuyến mãi 5', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', ''),
(53, 27, 'vn', '7 mẹo chăm sóc da dầu bạn gái nên biết', 'Bạn cần biết cách kiểm soát lượng dầu khiến khuôn mặt nhờn bóng, kém xinh khi sở hữu làn da dầu.', '<h3><strong>B&iacute; quyết l&agrave;m đẹp 1. Lu&ocirc;n lu&ocirc;n thử trước khi mua</strong></h3>\r\n\r\n<p>C&oacute; một số sản phẩm trang điểm, bạn thực sự cần phải thử trước khi mua ch&uacute;ng. Bạn c&oacute; thế mua ngay m&agrave; kh&ocirc;ng cần đắn đo như b&uacute;t kẻ mắt, phấn mắt v&agrave; son b&oacute;ng; nhưng bạn cần phải kiểm tra bột, son m&ocirc;i, phấn nền v&agrave; m&aacute; hồng. V&igrave; để an to&agrave;n cho l&agrave;n da cũng như gi&uacute;p bạn tỏa s&aacute;ng hơn, th&igrave; l&agrave;m kiểm tra với sản phẩm trang điểm kh&ocirc;ng phải l&agrave; thừa, đ&acirc;y cũng c&oacute; thể xem như 1 b&iacute; quyết l&agrave;m đẹp. Bởi v&igrave;, c&oacute; một số son hay phấn chứa c&aacute;c chất h&oacute;a học khiến cho da bạn trở n&ecirc;n tệ hơn khi trang điểm một thời gian d&agrave;i.</p>\r\n\r\n<h3><strong>B&iacute; quyết l&agrave;m đẹp 2. Kh&ocirc;ng n&ecirc;n bỏ qua bơ hạt mỡ (shea butter)</strong></h3>\r\n\r\n<p>Kh&ocirc;ng c&oacute; c&ocirc; g&aacute;i n&agrave;o th&iacute;ch l&agrave;m đẹp m&agrave; kh&ocirc;ng biết đến bơ hạt mỡ. N&oacute; được lưu trong b&iacute; quyết l&agrave;m đẹp của rất nhiều chị em. Bạn c&oacute; thể sử dụng bơ hạt mỡ gi&uacute;p loại bỏ lớp trang điểm, l&agrave;m son b&oacute;ng hoặc l&agrave;m mềm cho đ&ocirc;i m&ocirc;i của bạn. Bơ hạt mỡ l&agrave; nguy&ecirc;n liệu l&agrave;m mềm đ&ocirc;i tay v&agrave; b&agrave;n ch&acirc;n tuyệt vời, v&agrave;o những ng&agrave;y trời lạnh bạn kh&ocirc;ng phải lo lắng v&igrave; da kh&ocirc; nữa. Nhưng bạn h&atilde;y thận trọng trong liều lượng sử dụng đặc biệt l&agrave; với da mặt, bởi nếu sử dụng qu&aacute; nhiều c&oacute; thể l&agrave;m g&acirc;y tắc nghẽn lỗ ch&acirc;n l&ocirc;ng v&agrave; g&acirc;y ra mụn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, '7-meo-cham-soc-da-dau-ban-gai-nen-biet', '7 mẹo chăm sóc da dầu bạn gái nên biết', '', ''),
(54, 27, 'en', 'Khuyễn mãi 6', 'Thông tin mô tả ngắn cho bài Khuyến mãi 6', '<p>Thông tin mô tả ngắn cho bài Khuyến mãi 6</p>\r\n', '', '', '', '', '', 1, 'khuyen-mai-6', 'Khuyễn mãi 6', 'Thông tin mô tả ngắn cho bài Khuyến mãi 6', ''),
(61, 31, 'vn', 'Xu hướng mua nhà thời nay: Hưởng thụ như ở khách sạn', '', '', '', '', '', '', '', 1, 'xu-huong-mua-nha-thoi-nay-huong-thu-nhu-o-khach-san', 'Xu hướng mua nhà thời nay: Hưởng thụ như ở khách sạn', '', ''),
(62, 31, 'en', 'news 4', 'Mô tả tin tức 4', '<p>Nội dung tin tức 4 en</p>\r\n', '', '', '', '', '', 1, 'tin-tuc-4', 'Tin tức 4', '', ''),
(63, 32, 'vn', 'Hà Nội: thời gian cấp sổ đỏ còn 20 ngày', '', '', '', '', '', '', '', 0, 'ha-noi-thoi-gian-cap-so-do-con-20-ngay', 'Hà Nội: thời gian cấp sổ đỏ còn 20 ngày', '', ''),
(64, 32, 'en', 'Post 1', '', '', '', '', '', '', '', 0, 'post-1', 'Post 1', '', ''),
(95, 48, 'vn', 'Những đặc quyền dành riêng cho cư dân D’. Le Roi Soleil', '', '', '', '', '', '', '', 1, 'nhung-dac-quyen-danh-rieng-cho-cu-dan-d’-le-roi-soleil', 'Những đặc quyền dành riêng cho cư dân D’. Le Roi Soleil', '', ''),
(96, 48, 'en', 'Tổng hợp những loại thực phẩm có lợi ích cho tuyến giáp của bạn', 'Tổng hợp những loại thực phẩm có lợi ích cho tuyến giáp của bạn', '<h3><strong>Ti&ecirc;u thụ c&aacute; hồi</strong></h3>\r\n\r\n<p>Những người mắc bệnh vi&ecirc;m tuyến gi&aacute;p Hashimoto thường c&oacute; nồng độ vitamin D trong cơ thể thấp hơn so với người b&igrave;nh thường. Thiếu hụt hợp chất n&agrave;y sẽ l&agrave;m tăng kh&aacute;ng thể tuyến gi&aacute;p. Những kh&aacute;ng thể n&agrave;y t&aacute;c động tới hệ miễn dịch, khiến bộ phận n&agrave;y tấn c&ocirc;ng c&aacute;c m&ocirc; tuyến gi&aacute;p. Lisa Markley, chuy&ecirc;n gia dinh dưỡng ki&ecirc;m đồng t&aacute;c giả của cuốn The Essential Essentials Thyroid Cookbook giải th&iacute;ch, hiện tượng n&agrave;y g&acirc;y vi&ecirc;m v&agrave; l&agrave;m giảm hoạt động của tuyến gi&aacute;p.</p>\r\n\r\n<p>Do đ&oacute;, mọi người cần cung cấp một lượng lớn vitamin D cho cơ thể mỗi ng&agrave;y để tuyến gi&aacute;p hoạt động tốt nhất. C&aacute; hồi l&agrave; loại thực phẩm h&agrave;ng đầu cung cấp nhiều chất n&agrave;y. Ngo&agrave;i ra, bạn c&oacute; thể dễ d&agrave;ng t&igrave;m thấy vitamin D trong nước cam &eacute;p, sữa v&agrave; trứng.</p>\r\n', '', '', '', '', '', 1, 'post-17', 'Tổng hợp những loại thực phẩm có lợi ích cho tuyến giáp của bạn', '', ''),
(97, 49, 'vn', 'Dự án mở rộng đường Vũ Trọng Phụng: đẩy nhanh tiến độ, sớm về đích', '', '', '', '', '', '', '', 1, 'du-an-mo-rong-duong-vu-trong-phung-day-nhanh-tien-do-som-ve-dich', 'Dự án mở rộng đường Vũ Trọng Phụng: đẩy nhanh tiến độ, sớm về đích', '', ''),
(98, 49, 'en', '5 thói quen giúp người trẻ tránh xa bệnh tim mạch', '5 thói quen giúp người trẻ tránh xa bệnh tim mạch', '<p>Theo GS.TS.BS. Đỗ Do&atilde;n Lợi, Viện trưởng Viện Tim mạch Việt Nam, bệnh l&iacute; tim mạch đang ng&agrave;y c&agrave;ng trẻ h&oacute;a: Cứ 4 người trẻ Việt Nam từ 25 tuổi trở l&ecirc;n, c&oacute; &iacute;t nhất 1 người c&oacute; nguy cơ mắc bệnh tim mạch.</p>\r\n\r\n<p>Bệnh tim mạch để lại những hệ luỵ kh&ocirc;n lường, ảnh hưởng đến chất lượng cuộc sống.</p>\r\n\r\n<p>Để tr&aacute;nh xa bệnh tim mạch kh&ocirc;ng qu&aacute; kh&oacute;, 5 thay đổi nhỏ trong cuộc sống h&agrave;ng ng&agrave;y sau đ&acirc;y sẽ gi&uacute;p bạn.</p>\r\n\r\n<h3><strong>Ngủ đủ giấc</strong></h3>\r\n\r\n<p>Thức khuya, ngủ kh&ocirc;ng đủ giấc kh&ocirc;ng những l&agrave;m hệ thống miễn dịch của cơ thể suy yếu dần m&agrave; c&ograve;n tăng tỉ lệ mắc bệnh tim mạch. Khi thiếu ngủ, c&aacute;c mạch m&aacute;u co lại, huyết &aacute;p tăng, tạo &aacute;p lực l&ecirc;n tim nhiều hơn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến c&aacute;c bệnh l&iacute; tim mạch như: bệnh mạch v&agrave;nh, xơ vữa động mạch, cao huyết &aacute;p...</p>\r\n\r\n<p>Ngủ đủ giấc từ 7 - 8 tiếng/ng&agrave;y l&agrave; thay đổi nhỏ đầu ti&ecirc;n v&agrave; cũng hết sức đơn giản gi&uacute;p ngăn ngừa bệnh l&iacute; tim mạch.</p>\r\n\r\n<p>Để c&oacute; giấc ngủ s&acirc;u v&agrave; ngon, duy tr&igrave; nhịp sinh học của cơ thể một c&aacute;ch c&acirc;n bằng, bạn n&ecirc;n đi ngủ đ&uacute;ng giờ, kh&ocirc;ng thức qu&aacute; khuya, tr&aacute;nh ăn no hoặc uống nhiều nước trước khi đi ngủ.</p>\r\n\r\n<h3><strong>Tập thể dục thường xuy&ecirc;n</strong></h3>\r\n\r\n<p>Người trẻ thường hay than thở thời gian ăn, ngủ, l&agrave;m việc c&ograve;n chưa đủ huống chi l&agrave; tập thể dục mỗi ng&agrave;y.</p>\r\n\r\n<p>Nhưng thật ra nếu biết c&aacute;ch sắp sếp c&ocirc;ng việc, bạn c&oacute; thể đi ngủ v&agrave;o 11g đ&ecirc;m, thức dậy v&agrave;o 6 - 7g s&aacute;ng h&ocirc;m sau để c&oacute; thời gian luyện tập thể dục trước khi c&oacute; mặt ở văn ph&ograve;ng l&agrave;m việc.</p>\r\n\r\n<p>GS.TS.BS. Đỗ Do&atilde;n Lợi chia sẻ &ldquo;N<em>gười trẻ cần d&agrave;nh thời gian hoạt động thể lực từ 30 - 60 ph&uacute;t/ng&agrave;y, &iacute;t nhất 4 ng&agrave;y/tuần, tốt nhất l&agrave; đều đặn h&agrave;ng ng&agrave;y để tăng cường sức khỏe tim mạch&rdquo;.</em></p>\r\n\r\n<p>Những b&agrave;i tập thể dục nhẹ nh&agrave;ng như: đi bộ, chạy bộ, đạp xe, bơi, yoga rất tốt cho sức khỏe tr&aacute;i tim, gi&uacute;p ph&ograve;ng tr&aacute;nh c&aacute;c bệnh mạch v&agrave;nh, tăng huyết &aacute;p, đột quỵ.</p>\r\n', '', '', '', '', '', 1, 'post-18', '5 thói quen giúp người trẻ tránh xa bệnh tim mạch', '', ''),
(99, 50, 'vn', 'Quận Thanh Xuân nóng với loạt dự án sắp bàn giao', '', '', '', '', '', '', '', 1, 'quan-thanh-xuan-nong-voi-loat-du-an-sap-ban-giao', 'Quận Thanh Xuân nóng với loạt dự án sắp bàn giao', '', ''),
(100, 50, 'en', '20 thực phẩm lành mạnh', '20 thực phẩm lành mạnh', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 1, 'post-19', '20 thực phẩm lành mạnh', 'b', '2'),
(101, 51, 'vn', 'Tin tức đất xanh 1 ', 'Mô tả ngắn', '<p>Nội dung tin tức đất xanh</p>\r\n', '', '', '', '', '', 0, 'tin-tuc-dat-xanh-1', 'Tin tức đất xanh 1 ', '', ''),
(102, 51, 'en', 'english version Tin tức đất xanh 1 ', 'english version Mô tả ngắn', 'english version <p>Nội dung tin tức đất xanh</p>\r\n', '', '', '', '', '', 0, 'en-tin-tuc-dat-xanh-1', 'Tin tức đất xanh 1 ', '', ''),
(103, 52, 'vn', 'tin tuyen dung 2', '', '', '', '', '', '', '', 0, 'tin-tuyen-dung-2', 'tin tuyen dung 2', '', ''),
(104, 52, 'en', 'english version tin tuyen dung 2', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuyen-dung-2', 'tin tuyen dung 2', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Giới thiệu vn', '', '', 'pa5.jpg', '2017-05-11 16:05:22', '2018-11-23 18:11:37', 1, '', '', '', '', '', '', 'Giới thiệu', '', 'gioi-thieu-vn', 1),
(36, 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', 'pa4.jpg', '2017-05-11 16:05:03', '2018-04-07 11:04:55', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Báo giá', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-giao-cong-nghe', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', 'pa3.jpg', '2017-05-18 02:05:05', '2017-12-03 17:12:45', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', 'pa2.jpg', '2017-07-10 15:07:50', '2017-12-03 17:12:33', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', 'pa1.jpg', '2017-07-10 22:07:44', '2017-12-03 17:12:20', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', 'pa5.jpg', '2017-07-10 22:07:03', '2017-12-03 17:12:06', 1, '', '', '', '', '', '', 'Chính sách đổi - trả', '', 'chinh-sach-doi-tra', 1),
(42, 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', 'pa4.jpg', '2017-07-10 22:07:22', '2017-12-03 17:12:52', 1, '', '', '', '', '', '', 'Hệ thống nhà thuốc', '', 'he-thong-nha-thuoc', 1),
(43, 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', 'pa3.jpg', '2017-07-10 22:07:41', '2017-12-03 17:12:42', 1, '', '', '', '', '', '', 'Hình thức giao hàng', '', 'hinh-thuc-giao-hang', 1),
(44, 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', 'pa2.jpg', '2017-07-10 22:07:55', '2017-12-03 17:12:31', 1, '', '', '', '', '', '', 'Hình thức thanh toán', '', 'hinh-thuc-thanh-toan', 1),
(45, 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', 'pa1.jpg', '2017-07-10 22:07:51', '2017-12-03 17:12:21', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung', 1),
(46, 'page test 1', '', '', '', '2017-12-08 14:12:11', NULL, 1, '', '', '', '', '', '', 'page test 1', '', 'page-test-1', 1),
(47, 'page test 2', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 2', '', 'page-test-2', 1),
(48, 'page test 3', '', '', '', '2017-12-08 14:12:34', NULL, 1, '', '', '', '', '', '', 'page test 3', '', 'page-test-3', 1),
(49, 'page test 4', '', '', '', '2017-12-08 14:12:56', NULL, 1, '', '', '', '', '', '', 'page test 4', '', 'page-test-4', 1),
(50, 'page test 5', '', '', '', '2017-12-08 14:12:09', NULL, 1, '', '', '', '', '', '', 'page test 5', '', 'page-test-5', 1),
(51, 'page test 6', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 6', '', 'page-test-6', 1),
(52, 'page test 7', '', '', '', '2017-12-08 14:12:35', NULL, 1, '', '', '', '', '', '', 'page test 7', '', 'page-test-7', 1);
INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(53, 'Quy định', 'Quy định', '<h2><strong>Quy tr&igrave;nh Mua b&aacute;n, Chuyển nhượng nh&agrave; đất như sau:</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Bước 1:</strong>&nbsp;B&ecirc;n mua v&agrave; b&ecirc;n b&aacute;n thỏa thuận, chốt gi&aacute; mua gi&aacute; b&aacute;n nh&agrave; đất;</li>\r\n	<li><strong>Bước 2:</strong>&nbsp;K&yacute; hợp đồng đặt cọc (Hợp đồng đặt cọc c&oacute; c&ocirc;ng chứng hoặc kh&ocirc;ng c&ocirc;ng chứng đều hợp ph&aacute;p);</li>\r\n	<li><strong>Bước 3:</strong>&nbsp;B&ecirc;n mua, b&ecirc;n b&aacute;n chuẩn bị đầy đủ Hồ sơ, giấy tờ để đi C&ocirc;ng chứng (Hồ sơ hướng dẫn chi tiết b&ecirc;n dưới);</li>\r\n	<li><strong>Bước 4:</strong>&nbsp;Hai b&ecirc;n mua b&aacute;n lựa chọn Văn ph&ograve;ng c&ocirc;ng chứng v&agrave; đi C&ocirc;ng chứng Hợp đồng Mua b&aacute;n, Chuyển nhượng nh&agrave; đất;</li>\r\n	<li><strong>Bước 5:</strong>&nbsp;B&ecirc;n ph&iacute;a người mua thực hiện thủ tục k&ecirc; khai, đăng k&yacute; Sang t&ecirc;n Sổ đỏ (Sang t&ecirc;n Giấy chứng nhận QSDĐ);</li>\r\n	<li><strong>Bước 6:</strong>&nbsp;Người mua, người b&aacute;n đi đ&oacute;ng thuế v&agrave; nhận kết quả Sổ đỏ mới đứng t&ecirc;n b&ecirc;n mua.</li>\r\n</ul>\r\n\r\n<p><strong>Để thực hiện đầy đủ theo đ&uacute;ng Quy tr&igrave;nh 6 Bước tr&ecirc;n th&igrave; ph&iacute;a người mua, người b&aacute;n cần chuẩn bị Hồ sơ giấy tờ v&agrave; l&agrave;m theo c&aacute;c thủ tục sau:</strong></p>\r\n\r\n<h3><strong>Về Th&agrave;nh phần Hồ sơ:</strong></h3>\r\n\r\n<ol>\r\n	<li>Sổ đỏ (Nh&agrave; đất đem b&aacute;n đ&atilde; được cấp Sổ đỏ &ndash; Giấy chứng nhận QSDĐ);</li>\r\n	<li>CMND, Sổ hộ khẩu, Đăng k&yacute; kết h&ocirc;n của cả hai vợ chồng b&ecirc;n b&aacute;n (Trường hợp b&ecirc;n b&aacute;n đang độc th&acirc;n phải c&oacute; Giấy x&aacute;c nhận t&igrave;nh trạng h&ocirc;n nh&acirc;n);</li>\r\n	<li>CMND, Sổ hộ khẩu, Đăng k&yacute; kết h&ocirc;n của cả hai vợ chồng b&ecirc;n mua (Trường hợp b&ecirc;n mua đang độc th&acirc;n phải c&oacute; Giấy x&aacute;c nhận t&igrave;nh trạng h&ocirc;n nh&acirc;n);</li>\r\n</ol>\r\n\r\n<p><strong>Tr&ecirc;n đ&acirc;y l&agrave; to&agrave;n bộ Hồ sơ để l&agrave;m thủ tục C&ocirc;ng chứng Hợp đồng đặt cọc v&agrave; cũng l&agrave; Hồ sơ để C&ocirc;ng chứng Hợp đồng Mua b&aacute;n, Chuyển nhượng nh&agrave; đất. Sau khi chuẩn bị đầy đủ Hồ sơ th&igrave; thực hiện C&ocirc;ng chứng Hợp đồng mua b&aacute;n, chuyển nhượng.</strong></p>\r\n\r\n<h3><strong>Thủ tục C&ocirc;ng chứng Hợp đồng như sau:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Bước 1:</strong>&nbsp;Hai b&ecirc;n mua b&aacute;n lựa chọn Văn ph&ograve;ng C&ocirc;ng chứng để l&agrave;m thủ tục C&ocirc;ng chứng;</li>\r\n	<li><strong>Bước 2:</strong>&nbsp;B&ecirc;n mua, b&ecirc;n b&aacute;n xuất tr&igrave;nh to&agrave;n bộ Hồ sơ giấy tờ&nbsp;<strong>(BẢN GỐC)</strong>&nbsp;theo thứ tự th&agrave;nh phần Hồ sơ n&ecirc;u tr&ecirc;n cho Cơ quan C&ocirc;ng chứng;</li>\r\n	<li><strong>Bước 3:</strong>&nbsp;Văn ph&ograve;ng C&ocirc;ng chứng kiểm tra Hồ sơ v&agrave; Soạn thảo Hợp đồng mua b&aacute;n, chuyển nhượng;</li>\r\n	<li><strong>Bước 4:</strong>&nbsp;Người mua, người b&aacute;n đọc v&agrave; k&yacute; Hợp đồng mua b&aacute;n, chuyển nhượng do Văn ph&ograve;ng C&ocirc;ng chứng soạn;</li>\r\n	<li><strong>Bước 5:</strong>&nbsp;Văn ph&ograve;ng C&ocirc;ng chứng đối chiếu, kiểm tra chữ k&yacute;, V&acirc;n tay của người k&yacute; hợp đồng;</li>\r\n	<li><strong>Bước 6:</strong>&nbsp;C&ocirc;ng chứng vi&ecirc;n k&yacute; v&agrave; đ&oacute;ng dấu v&agrave;o Hợp đồng mua b&aacute;n, chuyển nhượng Nh&agrave; đất.</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi thực hiện đủ 6 Bước tr&ecirc;n l&agrave; xong giai đoạn C&ocirc;ng chứng hợp đồng.</strong></p>\r\n\r\n<p>Việc giao nhận tiền giữa người mua v&agrave; người b&aacute;n cần phải được thỏa thuận v&agrave; thống nhất trước đ&oacute;. Để hiểu hơn về việc giao nhận tiền xem b&agrave;i viết:&nbsp;<strong>Quy tr&igrave;nh thanh to&aacute;n Tiền mua b&aacute;n Nh&agrave; đất</strong></p>\r\n\r\n<p>Sau khi Văn ph&ograve;ng C&ocirc;ng chứng Chứng nhận v&agrave; đ&oacute;ng dấu th&igrave; chuyển sang giai đoạn tiết theo: B&ecirc;n mua đi l&agrave;m thủ tục Sang t&ecirc;n sổ đỏ (Sang t&ecirc;n Giấy chứng nhận Quyền SDĐ, Quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản gắn liền với đất) tại Văn ph&ograve;ng đăng k&yacute; đất đai.</p>\r\n\r\n<h2><strong>Th&agrave;nh phần Hồ sơ Sang t&ecirc;n Sổ đỏ bao gồm (14 loại giấy tờ):</strong></h2>\r\n\r\n<ol>\r\n	<li>Sổ đỏ bản gốc (Khi sang t&ecirc;n bắt buộc phải nộp lại bản gốc Sổ đỏ);</li>\r\n	<li>Nộp th&ecirc;m 02 bản Sổ đỏ c&oacute; Sao y c&ocirc;ng chứng;</li>\r\n	<li>Hợp đồng mua b&aacute;n, chuyển nhượng&nbsp;<strong>đ&atilde; c&ocirc;ng chứng</strong>&nbsp;(02 bản gốc);</li>\r\n	<li>CMND hoặc Căn cước c&ocirc;ng d&acirc;n hoặc Hộ chiếu của từng người b&ecirc;n mua, b&ecirc;n b&aacute;n (Mỗi người 02 bản sao y c&oacute; c&ocirc;ng chứng);</li>\r\n	<li>Sổ hộ khẩu của b&ecirc;n mua v&agrave; b&ecirc;n b&aacute;n (02 bản Hộ khẩu c&oacute; sao y c&ocirc;ng chứng của cả hai b&ecirc;n);</li>\r\n	<li>Đăng k&yacute; kết h&ocirc;n của b&ecirc;n mua (02 bản sao y c&oacute; c&ocirc;ng chứng chứng thực);</li>\r\n	<li>Đăng k&yacute; kết h&ocirc;n của b&ecirc;n b&aacute;n (02 bản sao y c&oacute; c&ocirc;ng chứng chứng thực);</li>\r\n	<li>Bi&ecirc;n lai đ&oacute;ng thuế đất phi n&ocirc;ng nghiệp hoặc Giấy x&aacute;c nhận đ&atilde; đ&oacute;ng thuế đất phi n&ocirc;ng nghiệp đối với nh&agrave; đất đang mua b&aacute;n&nbsp;<strong>(Một số Quận, huyện ở H&agrave; Nội y&ecirc;u cầu bắt buộc phải c&oacute; giấy n&agrave;y nhưng một số Quận, huyện th&igrave; kh&ocirc;ng bắt buộc);</strong></li>\r\n	<li>Tờ khai thuế thu nhập c&aacute; nh&acirc;n 02 bản;</li>\r\n	<li>Tờ khai lệ ph&iacute; trước bạ 02 bản;</li>\r\n	<li>Đơn đăng k&yacute; biến động;</li>\r\n	<li>Sơ đồ vị tr&iacute; thửa đất;</li>\r\n	<li>Tờ khai xin Cấp đổi ph&ocirc;i Sổ đỏ mới;</li>\r\n	<li>B&igrave;a Hồ sơ sang t&ecirc;n sổ đỏ (l&agrave; tờ b&igrave;a k&ecirc; khai đầu mục Hồ sơ sẽ nộp v&agrave;o bộ phận một cửa khi sang t&ecirc;n sổ đỏ).</li>\r\n</ol>\r\n', NULL, '2017-12-08 14:12:46', '2019-04-12 22:04:56', 1, '', '', '', '', '', '', 'Quy định', '', 'quy-dinh', 1),
(54, 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', NULL, '2017-12-08 14:12:56', '2018-04-02 00:04:08', 1, '', '', '', '', '', '', 'Chính sách vận chuyển', '', 'chinh-sach-van-chuyen', 1),
(55, 'Hướng dẫn mua hàng', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>SPRO.VN</strong>&nbsp;- L&agrave; 1 giải ph&aacute;p mua h&agrave;ng tuyệt vời đối với qu&yacute; kh&aacute;ch h&agrave;ng xa gần, bởi n&oacute; được đảm bảo t&iacute;nh ph&aacute;p l&yacute; của 1 c&ocirc;ng ty thiết bị l&acirc;u năm trong l&atilde;nh vực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Thị trường rộng lớn đ&atilde; v&agrave; đang li&ecirc;n kết được với nhiều đối t&aacute;c giao h&agrave;ng, tiện lợi, uy t&iacute;nh v&agrave; chuy&ecirc;n nghiệp.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Vận chuyển h&agrave;ng h&oacute;a tận nơi, đối với những sản phẩm kh&oacute; lắp đặt đ&atilde; c&oacute; đội ngũ kỹ thuật lắp đặt hướng dẫn ngay tại nh&agrave; m&agrave; kh&ocirc;ng cần mất th&ecirc;m chi ph&iacute;.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Điều đ&oacute; đồng nghĩa với việc kh&aacute;ch h&agrave;ng c&oacute; thể mua h&agrave;ng ngay khi ngồi tại nh&agrave; m&agrave; vẫn đảm bảo 100% những m&ocirc; tả của ch&uacute;ng t&ocirc;i l&agrave; ch&iacute;nh x&aacute;c, h&igrave;nh ảnh v&agrave; video l&agrave; x&aacute;c thực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>C&Aacute;CH MUA H&Agrave;NG NHƯ THẾ N&Agrave;O?</strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng tại cửa h&agrave;ng:&nbsp;</u>&nbsp;</strong>143 B&igrave;nh Lợi, Phường 13, Quận B&igrave;nh Thạnh</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Li&ecirc;n hệ với số&nbsp;<strong>Hotline</strong>:&nbsp;<strong>028.35.534.298</strong>&nbsp;&nbsp;của cửa h&agrave;ng để biết ch&iacute;nh x&aacute;c về t&igrave;nh trạng h&agrave;ng h&oacute;a &ndash; Địa chỉ x&aacute;c thực v&agrave; t&ecirc;n người phụ tr&aacute;ch b&aacute;n h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp;Mua h&agrave;ng + Đặt cọc + l&ecirc;n lịch giao h&agrave;ng (thỏa thuận)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Nhận h&agrave;ng tại nh&agrave;, kiểm tra đầy đủ phụ kiện, thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng số tiền c&ograve;n lại.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng online:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Truy cập v&agrave;o website&nbsp;<strong>SPRO.VN</strong>&nbsp;t&igrave;m sản phẩm tr&ecirc;n menu hoặc tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">V&iacute; dụ: mua m&aacute;y gia xe gia đ&igrave;nh chỉ cần g&otilde; v&agrave;o thanh t&igrave;m kiếm &ldquo;M&aacute;y rửa xe gia đ&igrave;nh&rdquo; hoặc &ldquo;may rua xe gia dinh&rdquo; hoặc &ldquo;gia đ&igrave;nh&rdquo;, &ldquo;gia dinh&rdquo; tuy nhi&ecirc;n t&igrave;m c&agrave;ng chi tiết th&igrave; c&agrave;ng dễ chọn được sản phẩm ph&ugrave; hợp. Hoặc t&igrave;m theo m&atilde; sản phẩm v&iacute; dụ: &ldquo;k2 360&rdquo;...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp; Gọi điện thoại tr&ecirc;n website để được nh&acirc;n vi&ecirc;n tư vấn v&agrave; mua h&agrave;ng lu&ocirc;n qua điện thoại, hoặc click v&agrave;o n&uacute;t đặt h&agrave;ng l&agrave;m theo hướng dẫn sau đ&acirc;y để mua h&agrave;ng:</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Tiếp nhận điện thoại x&aacute;c nhận đơn h&agrave;ng của c&aacute;c tổng đ&agrave;i vi&ecirc;n &ndash; Thỏa thuận c&aacute;c phương thức vận chuyển thanh to&aacute;n sao cho ph&ugrave; hợp nhất.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 4:</strong>&nbsp;Nhận h&agrave;ng v&agrave; kiểm tra h&agrave;ng h&oacute;a tại nh&agrave;, li&ecirc;n hệ số điện thoại kỹ thuật để nhận được tư vấn khi sử dụng hoặc thắc mắc về sự cố: 0961.958.460 (Mr. Tuấn).</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng qua điện thoại:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Hồ Ch&iacute; Minh:</u></strong><br />\r\n<br />\r\n<strong>&nbsp;Hotline</strong>: 0835.534.298</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Ph&uacute;: 0986.954.423</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Ms.Hường: 0909.115.704</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Biển: 0965.570.643</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Hưng: 0962.073.945 (Tiếp nhận kh&aacute;ch h&agrave;ng c&oacute; nhu cầu l&agrave;m đại l&yacute;)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>H&agrave; Nội:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Hotline</strong>: 0976.666.906 Mr.Hưng</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Đạo: 0964.063.553</span></span></span></p>\r\n', NULL, '2017-12-08 14:12:06', '2018-04-02 00:04:26', 1, '', '', '', '', '', '', 'Hướng dẫn mua hàng', '', 'huong-dan-mua-hang', 1),
(56, 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', NULL, '2017-12-08 14:12:15', '2018-04-02 00:04:15', 1, '', '', '', '', '', '', 'Phương thức thanh toán', '', 'phuong-thuc-thanh-toan', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Giới thiệu vn', '', '', '', '', '', '', '', 1, 'gioi-thieu-vn', 'Giới thiệu', '', ''),
(36, 35, 'en', 'Giới thiệu en', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu-en', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe', 'Báo giá', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe-en', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(53, 44, 'vn', 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(55, 45, 'vn', 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(57, 46, 'vn', 'page test 1', '', '', '', '', '', '', '', 0, 'page-test-1', 'page test 1', '', ''),
(58, 46, 'en', 'page test 1', '', '', '', '', '', '', '', 0, 'page-test-1', 'page test 1', '', ''),
(59, 47, 'vn', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(60, 47, 'en', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(61, 48, 'vn', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(62, 48, 'en', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(63, 49, 'vn', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(64, 49, 'en', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(65, 50, 'vn', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(66, 50, 'en', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(67, 51, 'vn', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(68, 51, 'en', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(69, 52, 'vn', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(70, 52, 'en', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(71, 53, 'vn', 'Quy định', 'Quy định', '<h2><strong>Quy tr&igrave;nh Mua b&aacute;n, Chuyển nhượng nh&agrave; đất như sau:</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Bước 1:</strong>&nbsp;B&ecirc;n mua v&agrave; b&ecirc;n b&aacute;n thỏa thuận, chốt gi&aacute; mua gi&aacute; b&aacute;n nh&agrave; đất;</li>\r\n	<li><strong>Bước 2:</strong>&nbsp;K&yacute; hợp đồng đặt cọc (Hợp đồng đặt cọc c&oacute; c&ocirc;ng chứng hoặc kh&ocirc;ng c&ocirc;ng chứng đều hợp ph&aacute;p);</li>\r\n	<li><strong>Bước 3:</strong>&nbsp;B&ecirc;n mua, b&ecirc;n b&aacute;n chuẩn bị đầy đủ Hồ sơ, giấy tờ để đi C&ocirc;ng chứng (Hồ sơ hướng dẫn chi tiết b&ecirc;n dưới);</li>\r\n	<li><strong>Bước 4:</strong>&nbsp;Hai b&ecirc;n mua b&aacute;n lựa chọn Văn ph&ograve;ng c&ocirc;ng chứng v&agrave; đi C&ocirc;ng chứng Hợp đồng Mua b&aacute;n, Chuyển nhượng nh&agrave; đất;</li>\r\n	<li><strong>Bước 5:</strong>&nbsp;B&ecirc;n ph&iacute;a người mua thực hiện thủ tục k&ecirc; khai, đăng k&yacute; Sang t&ecirc;n Sổ đỏ (Sang t&ecirc;n Giấy chứng nhận QSDĐ);</li>\r\n	<li><strong>Bước 6:</strong>&nbsp;Người mua, người b&aacute;n đi đ&oacute;ng thuế v&agrave; nhận kết quả Sổ đỏ mới đứng t&ecirc;n b&ecirc;n mua.</li>\r\n</ul>\r\n\r\n<p><strong>Để thực hiện đầy đủ theo đ&uacute;ng Quy tr&igrave;nh 6 Bước tr&ecirc;n th&igrave; ph&iacute;a người mua, người b&aacute;n cần chuẩn bị Hồ sơ giấy tờ v&agrave; l&agrave;m theo c&aacute;c thủ tục sau:</strong></p>\r\n\r\n<h3><strong>Về Th&agrave;nh phần Hồ sơ:</strong></h3>\r\n\r\n<ol>\r\n	<li>Sổ đỏ (Nh&agrave; đất đem b&aacute;n đ&atilde; được cấp Sổ đỏ &ndash; Giấy chứng nhận QSDĐ);</li>\r\n	<li>CMND, Sổ hộ khẩu, Đăng k&yacute; kết h&ocirc;n của cả hai vợ chồng b&ecirc;n b&aacute;n (Trường hợp b&ecirc;n b&aacute;n đang độc th&acirc;n phải c&oacute; Giấy x&aacute;c nhận t&igrave;nh trạng h&ocirc;n nh&acirc;n);</li>\r\n	<li>CMND, Sổ hộ khẩu, Đăng k&yacute; kết h&ocirc;n của cả hai vợ chồng b&ecirc;n mua (Trường hợp b&ecirc;n mua đang độc th&acirc;n phải c&oacute; Giấy x&aacute;c nhận t&igrave;nh trạng h&ocirc;n nh&acirc;n);</li>\r\n</ol>\r\n\r\n<p><strong>Tr&ecirc;n đ&acirc;y l&agrave; to&agrave;n bộ Hồ sơ để l&agrave;m thủ tục C&ocirc;ng chứng Hợp đồng đặt cọc v&agrave; cũng l&agrave; Hồ sơ để C&ocirc;ng chứng Hợp đồng Mua b&aacute;n, Chuyển nhượng nh&agrave; đất. Sau khi chuẩn bị đầy đủ Hồ sơ th&igrave; thực hiện C&ocirc;ng chứng Hợp đồng mua b&aacute;n, chuyển nhượng.</strong></p>\r\n\r\n<h3><strong>Thủ tục C&ocirc;ng chứng Hợp đồng như sau:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Bước 1:</strong>&nbsp;Hai b&ecirc;n mua b&aacute;n lựa chọn Văn ph&ograve;ng C&ocirc;ng chứng để l&agrave;m thủ tục C&ocirc;ng chứng;</li>\r\n	<li><strong>Bước 2:</strong>&nbsp;B&ecirc;n mua, b&ecirc;n b&aacute;n xuất tr&igrave;nh to&agrave;n bộ Hồ sơ giấy tờ&nbsp;<strong>(BẢN GỐC)</strong>&nbsp;theo thứ tự th&agrave;nh phần Hồ sơ n&ecirc;u tr&ecirc;n cho Cơ quan C&ocirc;ng chứng;</li>\r\n	<li><strong>Bước 3:</strong>&nbsp;Văn ph&ograve;ng C&ocirc;ng chứng kiểm tra Hồ sơ v&agrave; Soạn thảo Hợp đồng mua b&aacute;n, chuyển nhượng;</li>\r\n	<li><strong>Bước 4:</strong>&nbsp;Người mua, người b&aacute;n đọc v&agrave; k&yacute; Hợp đồng mua b&aacute;n, chuyển nhượng do Văn ph&ograve;ng C&ocirc;ng chứng soạn;</li>\r\n	<li><strong>Bước 5:</strong>&nbsp;Văn ph&ograve;ng C&ocirc;ng chứng đối chiếu, kiểm tra chữ k&yacute;, V&acirc;n tay của người k&yacute; hợp đồng;</li>\r\n	<li><strong>Bước 6:</strong>&nbsp;C&ocirc;ng chứng vi&ecirc;n k&yacute; v&agrave; đ&oacute;ng dấu v&agrave;o Hợp đồng mua b&aacute;n, chuyển nhượng Nh&agrave; đất.</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi thực hiện đủ 6 Bước tr&ecirc;n l&agrave; xong giai đoạn C&ocirc;ng chứng hợp đồng.</strong></p>\r\n\r\n<p>Việc giao nhận tiền giữa người mua v&agrave; người b&aacute;n cần phải được thỏa thuận v&agrave; thống nhất trước đ&oacute;. Để hiểu hơn về việc giao nhận tiền xem b&agrave;i viết:&nbsp;<strong>Quy tr&igrave;nh thanh to&aacute;n Tiền mua b&aacute;n Nh&agrave; đất</strong></p>\r\n\r\n<p>Sau khi Văn ph&ograve;ng C&ocirc;ng chứng Chứng nhận v&agrave; đ&oacute;ng dấu th&igrave; chuyển sang giai đoạn tiết theo: B&ecirc;n mua đi l&agrave;m thủ tục Sang t&ecirc;n sổ đỏ (Sang t&ecirc;n Giấy chứng nhận Quyền SDĐ, Quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản gắn liền với đất) tại Văn ph&ograve;ng đăng k&yacute; đất đai.</p>\r\n\r\n<h2><strong>Th&agrave;nh phần Hồ sơ Sang t&ecirc;n Sổ đỏ bao gồm (14 loại giấy tờ):</strong></h2>\r\n\r\n<ol>\r\n	<li>Sổ đỏ bản gốc (Khi sang t&ecirc;n bắt buộc phải nộp lại bản gốc Sổ đỏ);</li>\r\n	<li>Nộp th&ecirc;m 02 bản Sổ đỏ c&oacute; Sao y c&ocirc;ng chứng;</li>\r\n	<li>Hợp đồng mua b&aacute;n, chuyển nhượng&nbsp;<strong>đ&atilde; c&ocirc;ng chứng</strong>&nbsp;(02 bản gốc);</li>\r\n	<li>CMND hoặc Căn cước c&ocirc;ng d&acirc;n hoặc Hộ chiếu của từng người b&ecirc;n mua, b&ecirc;n b&aacute;n (Mỗi người 02 bản sao y c&oacute; c&ocirc;ng chứng);</li>\r\n	<li>Sổ hộ khẩu của b&ecirc;n mua v&agrave; b&ecirc;n b&aacute;n (02 bản Hộ khẩu c&oacute; sao y c&ocirc;ng chứng của cả hai b&ecirc;n);</li>\r\n	<li>Đăng k&yacute; kết h&ocirc;n của b&ecirc;n mua (02 bản sao y c&oacute; c&ocirc;ng chứng chứng thực);</li>\r\n	<li>Đăng k&yacute; kết h&ocirc;n của b&ecirc;n b&aacute;n (02 bản sao y c&oacute; c&ocirc;ng chứng chứng thực);</li>\r\n	<li>Bi&ecirc;n lai đ&oacute;ng thuế đất phi n&ocirc;ng nghiệp hoặc Giấy x&aacute;c nhận đ&atilde; đ&oacute;ng thuế đất phi n&ocirc;ng nghiệp đối với nh&agrave; đất đang mua b&aacute;n&nbsp;<strong>(Một số Quận, huyện ở H&agrave; Nội y&ecirc;u cầu bắt buộc phải c&oacute; giấy n&agrave;y nhưng một số Quận, huyện th&igrave; kh&ocirc;ng bắt buộc);</strong></li>\r\n	<li>Tờ khai thuế thu nhập c&aacute; nh&acirc;n 02 bản;</li>\r\n	<li>Tờ khai lệ ph&iacute; trước bạ 02 bản;</li>\r\n	<li>Đơn đăng k&yacute; biến động;</li>\r\n	<li>Sơ đồ vị tr&iacute; thửa đất;</li>\r\n	<li>Tờ khai xin Cấp đổi ph&ocirc;i Sổ đỏ mới;</li>\r\n	<li>B&igrave;a Hồ sơ sang t&ecirc;n sổ đỏ (l&agrave; tờ b&igrave;a k&ecirc; khai đầu mục Hồ sơ sẽ nộp v&agrave;o bộ phận một cửa khi sang t&ecirc;n sổ đỏ).</li>\r\n</ol>\r\n', '', '', '', '', '', 0, 'quy-dinh', 'Quy định', '', ''),
(72, 53, 'en', 'page test 8', '', '', '', '', '', '', '', 0, 'page-test-8', 'page test 8', '', ''),
(73, 54, 'vn', 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-van-chuyen', 'Chính sách vận chuyển', '', ''),
(74, 54, 'en', 'page test 9', '', '', '', '', '', '', '', 0, 'page-test-9', 'page test 9', '', ''),
(75, 55, 'vn', 'Hướng dẫn mua hàng', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>SPRO.VN</strong>&nbsp;- L&agrave; 1 giải ph&aacute;p mua h&agrave;ng tuyệt vời đối với qu&yacute; kh&aacute;ch h&agrave;ng xa gần, bởi n&oacute; được đảm bảo t&iacute;nh ph&aacute;p l&yacute; của 1 c&ocirc;ng ty thiết bị l&acirc;u năm trong l&atilde;nh vực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Thị trường rộng lớn đ&atilde; v&agrave; đang li&ecirc;n kết được với nhiều đối t&aacute;c giao h&agrave;ng, tiện lợi, uy t&iacute;nh v&agrave; chuy&ecirc;n nghiệp.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Vận chuyển h&agrave;ng h&oacute;a tận nơi, đối với những sản phẩm kh&oacute; lắp đặt đ&atilde; c&oacute; đội ngũ kỹ thuật lắp đặt hướng dẫn ngay tại nh&agrave; m&agrave; kh&ocirc;ng cần mất th&ecirc;m chi ph&iacute;.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Điều đ&oacute; đồng nghĩa với việc kh&aacute;ch h&agrave;ng c&oacute; thể mua h&agrave;ng ngay khi ngồi tại nh&agrave; m&agrave; vẫn đảm bảo 100% những m&ocirc; tả của ch&uacute;ng t&ocirc;i l&agrave; ch&iacute;nh x&aacute;c, h&igrave;nh ảnh v&agrave; video l&agrave; x&aacute;c thực.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>C&Aacute;CH MUA H&Agrave;NG NHƯ THẾ N&Agrave;O?</strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng tại cửa h&agrave;ng:&nbsp;</u>&nbsp;</strong>143 B&igrave;nh Lợi, Phường 13, Quận B&igrave;nh Thạnh</span></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Li&ecirc;n hệ với số&nbsp;<strong>Hotline</strong>:&nbsp;<strong>028.35.534.298</strong>&nbsp;&nbsp;của cửa h&agrave;ng để biết ch&iacute;nh x&aacute;c về t&igrave;nh trạng h&agrave;ng h&oacute;a &ndash; Địa chỉ x&aacute;c thực v&agrave; t&ecirc;n người phụ tr&aacute;ch b&aacute;n h&agrave;ng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp;Mua h&agrave;ng + Đặt cọc + l&ecirc;n lịch giao h&agrave;ng (thỏa thuận)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Nhận h&agrave;ng tại nh&agrave;, kiểm tra đầy đủ phụ kiện, thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng số tiền c&ograve;n lại.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng online:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 1:</strong>&nbsp;Truy cập v&agrave;o website&nbsp;<strong>SPRO.VN</strong>&nbsp;t&igrave;m sản phẩm tr&ecirc;n menu hoặc tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">V&iacute; dụ: mua m&aacute;y gia xe gia đ&igrave;nh chỉ cần g&otilde; v&agrave;o thanh t&igrave;m kiếm &ldquo;M&aacute;y rửa xe gia đ&igrave;nh&rdquo; hoặc &ldquo;may rua xe gia dinh&rdquo; hoặc &ldquo;gia đ&igrave;nh&rdquo;, &ldquo;gia dinh&rdquo; tuy nhi&ecirc;n t&igrave;m c&agrave;ng chi tiết th&igrave; c&agrave;ng dễ chọn được sản phẩm ph&ugrave; hợp. Hoặc t&igrave;m theo m&atilde; sản phẩm v&iacute; dụ: &ldquo;k2 360&rdquo;...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 2:</strong>&nbsp; Gọi điện thoại tr&ecirc;n website để được nh&acirc;n vi&ecirc;n tư vấn v&agrave; mua h&agrave;ng lu&ocirc;n qua điện thoại, hoặc click v&agrave;o n&uacute;t đặt h&agrave;ng l&agrave;m theo hướng dẫn sau đ&acirc;y để mua h&agrave;ng:</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 3:</strong>&nbsp;Tiếp nhận điện thoại x&aacute;c nhận đơn h&agrave;ng của c&aacute;c tổng đ&agrave;i vi&ecirc;n &ndash; Thỏa thuận c&aacute;c phương thức vận chuyển thanh to&aacute;n sao cho ph&ugrave; hợp nhất.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Bước 4:</strong>&nbsp;Nhận h&agrave;ng v&agrave; kiểm tra h&agrave;ng h&oacute;a tại nh&agrave;, li&ecirc;n hệ số điện thoại kỹ thuật để nhận được tư vấn khi sử dụng hoặc thắc mắc về sự cố: 0961.958.460 (Mr. Tuấn).</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Mua h&agrave;ng qua điện thoại:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>Hồ Ch&iacute; Minh:</u></strong><br />\r\n<br />\r\n<strong>&nbsp;Hotline</strong>: 0835.534.298</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Ph&uacute;: 0986.954.423</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Ms.Hường: 0909.115.704</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Biển: 0965.570.643</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Hưng: 0962.073.945 (Tiếp nhận kh&aacute;ch h&agrave;ng c&oacute; nhu cầu l&agrave;m đại l&yacute;)</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong><u>H&agrave; Nội:</u></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><strong>Hotline</strong>: 0976.666.906 Mr.Hưng</span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\">Mr.Đạo: 0964.063.553</span></span></span></p>\r\n', '', '', '', '', '', 0, 'huong-dan-mua-hang', 'Hướng dẫn mua hàng', '', ''),
(76, 55, 'en', 'page test 10', '', '', '', '', '', '', '', 0, 'page-test-10', 'page test 10', '', ''),
(77, 56, 'vn', 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', '', '', '', '', '', 1, 'phuong-thuc-thanh-toan', 'Phương thức thanh toán', '', ''),
(78, 56, 'en', 'page test 11', '', '<p>2</p>\r\n', '', '', '', '', '', 1, 'page-test-11', 'page test 11', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phap_ly`
--

CREATE TABLE `phap_ly` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phap_ly`
--

INSERT INTO `phap_ly` (`id`, `name`) VALUES
(1, 'Sổ đỏ'),
(2, 'Không sổ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuong`
--

CREATE TABLE `phuong` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `quan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phuong`
--

INSERT INTO `phuong` (`id`, `name`, `note`, `quan_id`) VALUES
(1, 'Yên Hòa', '1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price_sale` text COLLATE utf8_unicode_ci,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_high` int(11) NOT NULL,
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` date DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `quan` int(11) NOT NULL,
  `tai_chinh` int(11) NOT NULL,
  `loai` int(11) NOT NULL,
  `dien_tich` text COLLATE utf8_unicode_ci,
  `huong_nha` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `product_address` text COLLATE utf8_unicode_ci,
  `product_ngayban` date DEFAULT NULL,
  `dien_tich_loc` int(11) NOT NULL,
  `vi_tri` int(11) NOT NULL,
  `hien_trang` int(11) NOT NULL,
  `phap_ly` int(11) NOT NULL,
  `duong_rong` int(11) NOT NULL,
  `mat_tien` text COLLATE utf8_unicode_ci,
  `lien_he` text COLLATE utf8_unicode_ci,
  `ten_duong` text COLLATE utf8_unicode_ci,
  `follow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_high`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `quan`, `tai_chinh`, `loai`, `dien_tich`, `huong_nha`, `trang_thai`, `product_address`, `product_ngayban`, `dien_tich_loc`, `vi_tri`, `hien_trang`, `phap_ly`, `duong_rong`, `mat_tien`, `lien_he`, `ten_duong`, `follow`) VALUES
(47, 'KIM MÃ - KIM MÃ - BA ĐÌNH - MS001', '', '<p><strong>ĐƯỜNG KIM M&Atilde; - BA Đ&Igrave;NH - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>ĐỂ Ở - KINH DOANH NHỎ - &Ocirc; T&Ocirc; ĐỖ CỬA - C&Aacute;CH ĐƯỜNG 20M.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>M&ocirc; tả chi tiết:</strong></p>\r\n\r\n<p><strong>- Th&ocirc;ng số&nbsp;22m2, 5 tầng,&nbsp;3m mt, 4.7 tỷ.<br />\r\n- Vị tr&iacute; đặc địa cực hiếm, chỉ c&aacute;ch mặt phố 20m. Đường trước nh&agrave; &Ocirc; t&ocirc; đỗ cửa, kinh doanh nhỏ sầm uất.&nbsp;Vị tr&iacute; tốt&nbsp;hiếm trung t&acirc;m Ba Đ&igrave;nh.&nbsp;<br />\r\n- Thiết kế th&ocirc;ng s&agrave;n, 4 tầng 1 tum, mỗi tầng 1 ph&ograve;ng, cầu thang cuối.&nbsp;<br />\r\n- Nh&agrave; đẹp chủ vừa sang sửa rất mới. Ph&ugrave; hợp l&agrave;m nail hay kinh doanh nhỏ rất tuyệt vời.&nbsp;</strong></p>\r\n', '', '', '4,7', '', 0, '56398427_2158495140937273_6827475396078862336_n.jpg', '[\"{\\\"image\\\":\\\"56711092_2158495117603942_5447212893013540864_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56760743_2158495034270617_201251185259184128_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56453096_2158494957603958_716581040973414400_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56398427_2158495140937273_6827475396078862336_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56247961_2158494997603954_5567070642672500736_n.jpg\\\"}\"]', '2019-04-11 04:04:52', '2019-04-14 22:04:03', 0, 0, 0, 1, 0, '2019-04-10', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'KIM MÃ - KIM MÃ - BA ĐÌNH - MS001', '', 'kim-ma-kim-ma-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 2, 2, '22', 2, 2, '371.13', '0000-00-00', 1, 2, 2, 1, 5, '3', 'CV Thắng BÍ KÍP - PHÚ QUÝ', 'Kim Mã', 2),
(48, 'THÁI HÀ - TRUNG LIỆT - ĐỐNG ĐA - MS001', '', '<p><strong>TH&Aacute;I H&Agrave; - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong><strong>PH&Acirc;N L&Ocirc; TH&Ocirc;NG&nbsp;- L&Ocirc;</strong> G&Oacute;C - &Ocirc; T&Ocirc; TR&Aacute;NH - KINH DOANH.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:&nbsp;<br />\r\n+ Ng&otilde; Th&aacute;i H&agrave; l&agrave; khu ph&acirc;n l&ocirc; &ocirc; t&ocirc; v&ograve;ng quanh, th&ocirc;ng 2 phố Th&aacute;i H&agrave; - Đặng Tiến Đ&ocirc;ng, trục kinh doanh kh&ocirc;ng thể đẹp hơn.<br />\r\n+ Nh&agrave; nằm tại vị tr&iacute; l&ocirc; g&oacute;c, tho&aacute;ng 3 mặt, trước nh&agrave; &ocirc; t&ocirc; tr&aacute;nh, c&oacute; vỉa h&egrave; để xe kinh doanh.<br />\r\n+ Thiết kế cầu thang giữa mỗi tầng 2 ph&ograve;ng, T1 &ocirc; t&ocirc; v&agrave;o nh&agrave; thoải m&aacute;i.<br />\r\n+ Hiện đang kinh doanh cho thu&ecirc; 30tr/ th&aacute;ng, kh&aacute;ch mua lấy nh&agrave; bất cứ l&uacute;c n&agrave;o.</strong></p>\r\n', '', '', '16,5', '', 0, '57328134_1335840779873746_2786088140375326720_n.jpg', '[\"{\\\"image\\\":\\\"MAP.jpg\\\"}\",\"{\\\"image\\\":\\\"57096984_1335840693207088_1955231415658348544_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57328134_1335840779873746_2786088140375326720_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57198739_1335840996540391_5028626389662695424_o.jpg\\\"}\"]', '2019-04-11 05:04:11', '2019-04-13 20:04:17', 0, 0, 0, 1, 0, '2019-04-10', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'THÁI HÀ - TRUNG LIỆT - ĐỐNG ĐA - MS001', '', 'thai-ha-trung-liet-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 6, 2, '55', 5, 2, '178.1.15', '0000-00-00', 3, 2, 2, 1, 6, '4.6', 'CV Chương Khối Thiên Khôi 0914331992', 'Thái Hà', 2),
(49, 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS001', '', '<p>MẶT ĐƯỜNG PHAN Đ&Igrave;NH PH&Ugrave;NG - BA Đ&Igrave;NH - H&Agrave; NỘI.</p>\r\n\r\n<p>205M2 - 7.6M MẶT TIỀN - H&Egrave; RỘNG KINH DOANH TRUNG T&Acirc;M H&Agrave; NỘI.</p>\r\n', '', '', '', '', '', '127', '', 0, 'Untitled.jpg', '[\"{\\\"image\\\":\\\"MAP.jpg\\\"}\"]', '2019-04-11 18:04:47', '2019-04-14 22:04:51', 0, 0, 0, 1, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS001', '', 'phan-dinh-phung-quan-thanh-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 2, '205', 0, 2, '21B', '0000-00-00', 4, 1, 2, 1, 6, '7.6', 'CV Chung Khối Nhà Vua 0912239168', 'Phan Đình Phùng', 1),
(50, 'CỬA BẮC - TRÚC BẠCH - BA ĐÌNH - MS001', '', '<p>PHỐ CỬA BẮC - BA Đ&Igrave;NH - H&Agrave; NỘI.</p>\r\n\r\n<p>NH&Agrave; L&Ocirc; G&Oacute;C ĐẸP LUNG LINH, Đ&Atilde; V&Agrave;O NH&Agrave; L&Agrave; KH&Ocirc;NG MUỐN VỀ NỮA, THIẾT KẾ THEO PHONG C&Aacute;CH HƯỞNG THỤ.</p>\r\n', '', '', '<p>M&ocirc; tả:&nbsp;<br />\r\n+ Hướng: Nam - T&acirc;y(Chọn hướng n&agrave;o cũng hợp).<br />\r\n+ Vị tr&iacute;: Trung t&acirc;m Ba Đ&igrave;nh, c&aacute;ch mặt phố Cửa Bắc 20m, trước nh&agrave; ng&otilde; 3.5m. Gần Bộ Quốc Ph&ograve;ng an ninh cực tốt.<br />\r\n+ Thiết kế: Nh&agrave; l&ocirc; g&oacute;c 2 mặt tho&aacute;ng m&aacute;t, trước mở qu&aacute;n cafe to&agrave;n kh&aacute;ch t&acirc;y, nay chủ thiết kế lại theo phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại. Vừa ở vừa hưởng thụ. Chủ mua nh&agrave; chỉ l&agrave;m nơi tr&uacute; ch&acirc;n khi ra H&agrave; Nội, nay nhu cầu &iacute;t ra hơn để kh&ocirc;ng sợ nh&agrave; mốc n&ecirc;n b&aacute;n nhanh cho ai cần.<br />\r\n&bull; Tầng 1: Chủ đang để trống, kh&aacute;ch mua về c&oacute; thể kinh doanh, l&agrave;m văn ph&ograve;ng...Tuỳ th&iacute;ch.<br />\r\n&bull; Tầng 2: Diện t&iacute;ch sử dụng 70m2 kh&ocirc;ng gian mở bao gồm ph&ograve;ng kh&aacute;ch, bếp, ph&ograve;ng ăn, ban c&ocirc;ng.<br />\r\n&bull; Tầng 3: Ph&ograve;ng ngủ m&aacute;ter kh&ocirc;ng gian mở gồm tỉ thay đồ, vệ sinh, b&agrave;n tr&agrave;, ban c&ocirc;ng...<br />\r\n&bull; Tầng 4: Ph&ograve;ng thờ, s&acirc;n vườn BBQ ngắm xung quanh.<br />\r\n&bull; V&igrave; nhu cầu ở kh&ocirc;ng cần nhiều ph&ograve;ng ngủ n&ecirc;n kh&aacute;ch mới về nếu cần th&ecirc;m ph&ograve;ng ngủ chỉ việc ngăn v&aacute;ch ở tầng 2 hoặc tầng 3 l&agrave; c&oacute; ngay th&ecirc;m ph&ograve;ng ngủ.<br />\r\n&bull; Nh&agrave; c&oacute; hệ thống camera gi&aacute;m s&aacute;t v&agrave; cửa cuốn theo d&otilde;i mở cửa qua điện thoại.</p>\r\n', '', '', '14,6', '', 0, '56220351_617363188689729_5070095570215895040_n.jpg', '[\"{\\\"image\\\":\\\"56450537_617363168689731_1225261273701154816_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56262489_617363208689727_8664930605093355520_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56242765_617363128689735_1930822154442506240_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56220351_617363188689729_5070095570215895040_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56215549_617363148689733_3950886947542532096_n.jpg\\\"}\"]', '2019-04-11 21:04:01', '2019-04-14 22:04:40', 0, 0, 1, 0, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'CỬA BẮC - TRÚC BẠCH - BA ĐÌNH - MS001', '', 'cua-bac-truc-bach-ba-dinh-ms001', '', 6, '', '', '', NULL, NULL, '243,243', '', 7, 5, 2, '52', 3, 2, '92.2A', '0000-00-00', 3, 2, 2, 1, 3, '9', 'CV Thắng P. Phú Quý 0944428882', 'Cửa Bắc', 2),
(51, 'ĐÀO TẤN - CỐNG VỊ - BA ĐÌNH - MS001', '', '<p><strong>NG&Otilde; ĐẸP NHẤT Đ&Agrave;O TẤN - TRUNG T&Acirc;M BA Đ&Igrave;NH - H&Agrave; NỘI.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:&nbsp;<br />\r\n+ Nh&agrave; nằm trong ng&otilde; 12 l&agrave; ng&otilde; to đẹp nhất phố Đ&agrave;o Tấn, cạnh phố Linh Lang. Nom nhiều chấm thế nhưng rất gần mặt ng&otilde;. C&aacute;ch &ocirc; t&ocirc; chỉ 5m. Ra mặt phố chỉ hai ph&uacute;t.&nbsp;<br />\r\n+ Khu vực hiếm nh&agrave; b&aacute;n. D&acirc;n tr&iacute; cao, xung quanh to&agrave;n c&aacute;n bộ c&ocirc;ng chức v&agrave; người nước ngo&agrave;i sinh sống. Đất nơi đ&acirc;y rất vượng kh&iacute;, đ&oacute; l&agrave; l&yacute; do m&agrave; người Nhật chọn nơi đ&acirc;y để l&agrave;m nơi ở v&agrave; KD.&nbsp;<br />\r\n+ Tiện &iacute;ch xung quanh đủ thứ: v&agrave;i bước ch&acirc;n ra TTTM Lotte, C&ocirc;ng vi&ecirc;n, gần Trường học, Bệnh viện ... giao th&ocirc;ng th&ocirc;ng thương khắp ngả.&nbsp;<br />\r\n+ Nếu ai đ&atilde; ở khu n&agrave;y th&igrave; sẽ kh&ocirc;ng bao giờ muốn chuyển đi.&nbsp;<br />\r\n+ Nh&agrave; 5 tầng chủ nh&agrave; tự x&acirc;y, c&oacute; thu&ecirc; thiết kế cực cầu kỳ v&agrave; cẩn thận từng chi tiết. V&agrave;o nh&agrave; cảm thấy cực thoải m&aacute;i, th&iacute;ch v&agrave; kh&ocirc;ng muốn ra. Tổng 4PN v&agrave; c&oacute; thể th&agrave;nh 5PN thoải m&aacute;i, 4 vs.&nbsp;<br />\r\n-Tầng 1 c&oacute; cổng, s&acirc;n nhỏ rất đẹp v&agrave; tho&aacute;ng. Chỗ để xe thoải m&aacute;i, bếp, vs.&nbsp;<br />\r\n- Tầng 2: Ph&ograve;ng kh&aacute;ch rộng + ph&ograve;ng Thờ đẹp, rộng.&nbsp;<br />\r\n- Tầng 3,4 l&agrave; 4 ph&ograve;ng ngủ đủ tiện nghi.&nbsp;<br />\r\n- Tầng 5 Ph&ograve;ng để đồ, ph&ograve;ng giặt v&agrave; s&acirc;n phơi rộng r&atilde;i.&nbsp;<br />\r\nNội thất trong nh&agrave; to&agrave;n gỗ gụ xịn, tủ bếp, tủ quần &aacute;o, cửa, cầu thang. Nguy&ecirc;n bếp nấu chủ nh&agrave; đ&atilde; mua 40 triệu, c&ograve;n c&aacute;c nội thất gỗ trong nh&agrave; to&agrave;n sắm của h&atilde;ng ...</strong></p>\r\n', '', '', '10,6', '', 0, '56697069_2122275914547263_6308018145512652800_n.jpg', '[\"{\\\"image\\\":\\\"56474575_2122276374547217_9069242664376860672_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56781223_2122276231213898_1044014993839751168_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56749071_2122275044547350_7610611460724490240_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56629281_2122275621213959_5357483359683477504_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56721519_2122276037880584_3496988919596056576_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57154748_2122276107880577_7150330170778320896_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56985409_2122275667880621_2915772959891128320_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57311670_2122275417880646_6575028007377829888_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56459545_2122276321213889_6643919433129525248_n.jpg\\\"}\"]', '2019-04-12 00:04:35', '2019-04-14 22:04:30', 0, 0, 1, 0, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐÀO TẤN - CỐNG VỊ - BA ĐÌNH - MS001', '', 'dao-tan-cong-vi-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 4, 2, '55', 8, 2, '12.37.2.6', '0000-00-00', 3, 2, 2, 1, 2, '5.2', 'CV Thu Hiền P.Hoàng Kim', 'Đào Tấn', 3),
(52, 'SƠN TÂY - KIM MÃ - BA ĐÌNH - MS001', '', '<p>MẶT ĐƯỜNG SƠN T&Acirc;Y, BA Đ&Igrave;NH, 135M2, ĐẤT, 7.7M MẶT TIỀN.</p>\r\n', '', '', '<p>Diện t&iacute;ch = 49.69 &times; 2 + 34.9 = 134.29m2.<br />\r\nMặt tiền = 3.23 x 2 + 1.2 = 7.66m.<br />\r\n2 hộ chia đ&ocirc;i diện t&iacute;ch sử dụng v&agrave; chung lối đi 34.9m2.</p>\r\n', '', '', '48', '', 0, 'bbst1.jpg', '[\"{\\\"image\\\":\\\"57303962_2619970448074155_3797658070792798208_n.jpg\\\"}\"]', '2019-04-12 02:04:10', '2019-04-14 22:04:19', 0, 0, 0, 1, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'SƠN TÂY - KIM MÃ - BA ĐÌNH - MS001', '', 'son-tay-kim-ma-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 1, '135', 3, 2, '96', '0000-00-00', 4, 1, 3, 1, 6, '7.7', 'CV Hoàng Hiếu P. Nữ Hoàng 0913358836', 'Sơn Tây', 0),
(53, 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS002', '', '<p><strong>MẶT ĐƯỜNG PHAN Đ&Igrave;NH PH&Ugrave;NG, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;151M2,&nbsp;8M MẶT TIỀN.</strong></p>\r\n', '', '', '', '', '', '80', '', 0, 'Untitled.jpg', '[]', '2019-04-12 03:04:08', '2019-04-14 22:04:05', 0, 0, 0, 1, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS002', '', 'phan-dinh-phung-quan-thanh-ba-dinh-ms002', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 0, '151', 4, 2, '8', '0000-00-00', 4, 1, 3, 1, 6, '8', 'CV Von P. Thần Tốc 0977265473', 'Phan Đình Phùng', 0),
(54, 'NAM ĐỒNG - NAM ĐỒNG - ĐỐNG ĐA - MS001', '', '<p>T&Ograve;A NH&Agrave; VĂN PH&Ograve;NG 1 MẶT ĐƯỜNG, 1 MẶT NG&Otilde;, PHỐ&nbsp;NAM ĐỒNG, ĐỐNG ĐA, H&Agrave; NỘI.</p>\r\n\r\n<p>130M2,&nbsp;8 TẦNG, THANG M&Aacute;Y,&nbsp;6M MẶT TIỀN.</p>\r\n\r\n<p>CHO THU&Ecirc; 120TR/TH&Aacute;NG.</p>\r\n', '', '', '<p>- Hiện chủ cho&nbsp;thu&ecirc; 5 tầng, thu 120tr/th.<br />\r\n- Chủ thiết kế mỗi tầng 1 ph&ograve;ng phủ rộng to&agrave;n diện t&iacute;ch s&agrave;n<br />\r\n- T&ograve;a n&agrave;y đặc biệt th&ocirc;ng 2 mặt phố, gara tầng hầm đi xuy&ecirc;n cả 2 cửa.<br />\r\n- Chủ thiết kế đ&uacute;ng chuẩn cho thu&ecirc; văn ph&ograve;ng, kh&ocirc;ng thiếu hạng mục n&agrave;o.</p>\r\n', '', '', '65', '', 0, '17352371_1251436764974154_9219061179426231402_n.jpg', '[\"{\\\"image\\\":\\\"17352133_1251429121641585_2648410238986111375_n.jpg\\\"}\",\"{\\\"image\\\":\\\"17361551_1251436694974161_3809275115898014927_n.jpg\\\"}\"]', '2019-04-12 03:04:35', '2019-04-14 22:04:53', 0, 0, 0, 1, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'NAM ĐỒNG - NAM ĐỒNG - ĐỐNG ĐA - MS001', '', 'nam-dong-nam-dong-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 7, 0, '130', 6, 2, '145', '0000-00-00', 4, 1, 2, 1, 6, '6', 'ĐN Xuân', 'Nam Đồng', 0),
(55, 'HÀNG MẮM - HÀNG BẠC - HOÀN KIẾM - MS001', '', '<p><strong>MẶT ĐƯỜNG PHỐ CỔ, PHỐ H&Agrave;NG MẮM, P.H&Agrave;NG BẠC, Q.HO&Agrave;N KIẾM.</strong></p>\r\n\r\n<p><strong>140M2, 3 TẦNG, 8.6M MẶT TIỀN.</strong></p>\r\n', '', '', '<p>+ Sổ đỏ đẹp, mặt tiền rộng.&nbsp;<br />\r\n+ Nh&agrave; nằm ngay ng&atilde; tư H&agrave;ng Mắm + H&agrave;ng Tre vị tr&iacute; cực đỉnh.<br />\r\n+ Nh&agrave; một chủ, sổ sạch, ri&ecirc;ng biệt, b&agrave;n giao ngay, giao dịch thuận tiện.<br />\r\n+ Nh&agrave; hiện đang cho thu&ecirc; l&agrave;m Nh&agrave; H&agrave;ng gần 2 tỷ/ năm, rất đ&ocirc;ng kh&aacute;ch T&acirc;y.<br />\r\n+ Nh&agrave; nằm tr&ecirc;n tuyến phố cực thuận lợi giao nhau với phố Nguyễn Hữu Hu&acirc;n v&agrave; H&agrave;ng Tre.&nbsp;<br />\r\n+ Chủ nh&agrave; mong muốn b&aacute;n cho Kh&aacute;ch mua v&agrave; cho thu&ecirc; lại v&igrave; 2020 mới hết HĐ thu&ecirc;.<br />\r\n+ Kh&aacute;ch mua được nh&agrave; n&agrave;y th&igrave; c&oacute; cơ hội mua th&ecirc;m nh&agrave; b&ecirc;n trong rất rẻ v&agrave; nh&agrave; mặt phố H&agrave;ng Tre th&igrave; th&agrave;nh hai mặt phố cực Đắc địa.</p>\r\n', '', '', '120', '', 0, 'hangmam1.jpg', '[\"{\\\"image\\\":\\\"53137504_1206574739509463_6435118094795931648_n.jpg\\\"}\"]', '2019-04-12 03:04:51', '2019-04-13 20:04:25', 0, 0, 1, 0, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HÀNG MẮM - HÀNG BẠC - HOÀN KIẾM - MS001', '', 'hang-mam-hang-bac-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 2, '140', 0, 2, '11 + 13', '0000-00-00', 4, 1, 2, 1, 6, '8.6', 'CV Đích Khối Thiên Khôi.', 'Hàng Mắm', 0),
(56, 'KIM NGƯU - THANH LƯƠNG - HA BÀ TRƯNG - MS001', '', '<p><strong>PHỐ KIM NGƯU - HAI B&Agrave; TRƯNG</strong></p>\r\n\r\n<p><strong>VỈA H&Egrave; Đ&Aacute; B&Oacute;NG - &Ocirc; T&Ocirc; TR&Aacute;NH - AN NINH TUYỆT ĐỐI.</strong></p>\r\n', '', '', '<p><strong>Đặc điểm:<br />\r\n+ Hướng: T&acirc;y chếch Nam.&nbsp;<br />\r\n+ Sổ đỏ: Nở hậu.&nbsp;<br />\r\n+ Quận Hai B&agrave; Trưng, gần&nbsp;phường Thanh Lương. Đường &ocirc; t&ocirc; tr&aacute;nh, vỉa h&egrave; 5m.<br />\r\n+ Ng&otilde; 325 Kim Ngưu sắp lấp s&ocirc;ng v&agrave; mở rộng, dự đẹp tuyệt vời.&nbsp;<br />\r\n+ Thiết kế 4 tầng đẹp, chắc chắn, mặt tiền rộng hết sức lợi thế. Từng cho trường mầm non thu&ecirc; kinh doanh. Hiện đ&atilde; lấy nh&agrave; về để b&aacute;n.<br />\r\n+ Nh&agrave; cũ chủ mới tặng em ấy một lớp &aacute;o hẳn sẽ lộng lẫy.<br />\r\n+ An ninh tuyệt đối, bảo vệ 24/24.</strong></p>\r\n', '', '', '9,2', '', 0, '57068508_2722260314457269_4992588787960774656_n.jpg', '[\"{\\\"image\\\":\\\"57216689_2722260451123922_6674463548321562624_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57109894_2722260551123912_7363940364949913600_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56970990_2722260514457249_9146957460488060928_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56742649_2722260651123902_7543121465621610496_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56603201_2722260354457265_8048867368102789120_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56622475_2722260421123925_4465456160253673472_n.jpg\\\"}\"]', '2019-04-12 04:04:19', '2019-04-13 21:04:56', 0, 0, 1, 0, 0, '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'KIM NGƯU - THANH LƯƠNG - HA BÀ TRƯNG - MS001', '', 'kim-nguu-thanh-luong-ha-ba-trung-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 4, 4, 2, '86', 2, 2, '325.115', '0000-00-00', 3, 2, 2, 1, 6, '6.2', 'CV Hiển P. Thiên Khôi 0912967369', 'Kim Ngưu', 0),
(57, 'TRẦN DUY HƯNG - TRUNG HÒA - CẦU GIẤY - MS001', '', '<p>MẶT NG&Otilde; KINH DOANH, &Ocirc; T&Ocirc; TR&Aacute;NH, C&Aacute;CH ĐƯỜNG 30M.</p>\r\n\r\n<p>ĐƯỜNG TRẦN DUY HƯNG, CẦU GIẤY, H&Agrave; NỘI,&nbsp;57M2,&nbsp;5 TẦNG,&nbsp;4.7M MT.</p>\r\n', '', '', '', '', '', '10,5', '', 0, '56721534_323884068326059_6030353668081975296_n.jpg', '[\"{\\\"image\\\":\\\"57088156_323884181659381_3630950409847177216_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57232150_323884308326035_5839526956860702720_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57352894_323884148326051_9153039155654033408_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56744678_323884261659373_2469242029217939456_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56816069_323884204992712_7599663666396397568_n.jpg\\\"}\"]', '2019-04-12 17:04:55', '2019-04-13 20:04:15', 0, 0, 1, 0, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'TRẦN DUY HƯNG - TRUNG HÒA - CẦU GIẤY - MS001', '', 'tran-duy-hung-trung-hoa-cau-giay-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 1, 4, 2, '57', 0, 2, '204.5D', '0000-00-00', 3, 2, 2, 1, 6, '4.7', 'CV Biên Phòng Tràng An 0983005586', 'Trần Duy Hưng', 0),
(58, 'TRƯỜNG CHINH - KHƯƠNG THƯỢNG - ĐỐNG ĐA - MS001', '', '<p><strong>ĐƯỜNG TRƯỜNG CHINH - P.KHƯƠNG THƯỢNG - ĐỐNG ĐA.</strong></p>\r\n\r\n<p><strong>Ng&otilde; Th&ocirc;ng - Kinh Doanh -&nbsp; Đong Đ&uacute;c, Sầm Uất - Hiếm 77 tr/m2</strong></p>\r\n\r\n<p><strong>47m2, 3.1m Mặt tiền, Ng&otilde; Rộng 2.5M</strong></p>\r\n', '', '', '<p><strong>+ L&ocirc; đất vu&ocirc;ng vắn, nhỏ tiền vừa miếng m&agrave; biết bao người săn đ&oacute;n ở Trường Chinh.<br />\r\n+ Đất từ thời cha &ocirc;ng để lại, nở hậu. C&aacute;ch mặt phố Trường Chinh rất gần, ng&otilde; trước nh&agrave; th&ocirc;ng sang Hồ Khương Thượng sau đ&oacute; th&ocirc;ng tứ ph&iacute;a. Chiều t&agrave; bước 3 bước ra Hồ uống bia ngắm cảnh chơi cờ.<br />\r\n+ Đường trước nh&agrave; 3.5m, &ocirc; t&ocirc; th&igrave; t&ugrave;y tay l&aacute;i c&ograve;n xe thương binh th&igrave; nhắm mắt m&agrave; đi cũng được.&nbsp;<br />\r\n*** Tư vấn :&nbsp;<br />\r\nTh&ecirc;m 1 tỷ x&acirc;y nh&agrave; th&igrave; sẽ c&oacute; nh&agrave; mới đẹp 100tr/m2 khu vực l&otilde;i Đống Đa kinh doanh tốt, ở cũng th&iacute;ch.<br />\r\nSau khi ho&agrave;n th&agrave;nh quy hoạch đường Trường Chinh th&igrave; hạ tầng khu vực sẽ tăng l&ecirc;n, đẹp hơn k&eacute;o theo gi&aacute; trị căn nh&agrave; sẽ tốt hơn nhiều.<br />\r\nMiếng đất hiếm hoi c&ograve;n lại vừa miếng, tư vấn kh&aacute;ch ko mua nhanh l&agrave; mất.<br />\r\nGia chủ hiền l&agrave;nh, phong thủy tốt, nở hậu sau c&oacute; khe tho&aacute;ng rất tiện để x&acirc;y dựng.</strong></p>\r\n', '', '', '3,65', '', 0, '56723956_2690706930946379_564418617488179200_n.jpg', '[\"{\\\"image\\\":\\\"57155138_2690779277605811_3966566369901674496_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57155646_2690706997613039_1104851702349037568_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57044174_2690707080946364_4255291290062684160_n.jpg\\\"}\"]', '2019-04-12 17:04:20', '2019-04-14 22:04:37', 0, 0, 1, 0, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'TRƯỜNG CHINH - KHƯƠNG THƯỢNG - ĐỐNG ĐA - MS001', '', 'truong-chinh-khuong-thuong-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 2, 1, '47', 7, 2, '554.78.3', '0000-00-00', 2, 2, 3, 1, 3, '3.1', 'CV Trần Tuấn Khối Số 1 0911069458', 'Trường Chinh', 0),
(59, 'NGUYỄN THÁI HỌC - KIM MÃ - BA ĐÌNH - MS001', '', '<p><strong>KH&Aacute;CH SẠN PHỐ NGUYỄN TH&Aacute;I HỌC, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>&nbsp;105M2, 7 TẦNG, THANG M&Aacute;Y,&nbsp;4.3M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>+ Nh&agrave; c&oacute; vị tr&iacute; đẹp, ngay đầu Giảng V&otilde; &ndash; Nguyễn Th&aacute;i Học &ndash; Kim M&atilde;, hiện đang cho Kh&aacute;ch sạn A25 thu&ecirc; với gi&aacute; 3200USD/th&aacute;ng.<br />\r\n+ Kh&aacute;ch sạn&nbsp;với 21 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n cho thu&ecirc; gồm ph&ograve;ng ti&ecirc;u chuẩn, ph&ograve;ng cao cấp, ph&ograve;ng sang trọng; doanh thu 650 triệu / th&aacute;ng. T&ograve;a nh&agrave; gồm 7 tầng x&acirc;y BTCT chắc chắn, thang m&aacute;y chạy &ecirc;m ru được kh&aacute;ch sạn bảo tr&igrave; định kỳ h&agrave;ng th&aacute;ng.<br />\r\n- Tầng 1: Sảnh lễ t&acirc;n, WC v&agrave; 1 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n.<br />\r\n- Tầng 2-6: Mỗi tầng 4 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n.<br />\r\n- Tầng 7: Ph&ograve;ng nghỉ nh&acirc;n vi&ecirc;n, giặt l&agrave; v&agrave; khu phơi đồ vải.<br />\r\n+ Tọa lạc tại vị tr&iacute; trung t&acirc;m quận Ba Đ&igrave;nh - H&agrave; Nội, từ&nbsp;Nguyễn Th&aacute;i Học Qu&yacute; chỉ cần khoảng 5 ph&uacute;t đi bộ để tới Lăng chủ tịch Hồ Ch&iacute; Minh hoặc Văn Miếu Quốc Tử Gi&aacute;m.&nbsp;</strong></p>\r\n', '', '', '38,6', '', 0, '57096887_456978315113567_8850731946880270336_n.jpg', '[]', '2019-04-12 17:04:49', '2019-04-14 22:04:27', 0, 0, 0, 1, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'NGUYỄN THÁI HỌC - KIM MÃ - BA ĐÌNH - MS001', '', 'nguyen-thai-hoc-kim-ma-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 2, '150', 0, 2, '150', '0000-00-00', 4, 1, 2, 1, 6, '4.3', 'Chuyên viên Trung Phòng Thịnh Vượng 0911546960 0964441982', 'Nguyễn Thái Học', 0),
(60, 'NGUYỄN NHƯ ĐỔ - VĂN MIẾU - ĐỐNG ĐA - MS001', '', '<p><strong>MẶT PHỐ NGUYỄN NHƯ ĐỔ, ĐỐNG ĐA, KINH DOANH, H&Agrave; NỘI&nbsp;- 8 TẦNG - 5.4M MẶT TIỀN -&nbsp;7.9 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Hướng: Bắc.&nbsp;<br />\r\n+ Sổ vu&ocirc;ng đ&eacute;t. Từ tầng 2 đua ra th&agrave;nh 29m2.&nbsp;<br />\r\n+ Mặt phố Đống Đa, kinh doanh sầm uất, tầm tiền cực hiếm.&nbsp;<br />\r\n+ Nh&agrave; x&acirc;y 8 tầng ki&ecirc;n cố, mỗi tầng chia 2 ph&ograve;ng kh&eacute;p k&iacute;n, tổng 12 ph&ograve;ng. Ph&ugrave; hợp kinh doanh nh&agrave; nghỉ, kh&aacute;ch sạn.&nbsp;</strong></p>\r\n', '', '', '7,9', '', 0, '56818998_690628038002229_5496144961495629824_o.jpg', '[\"{\\\"image\\\":\\\"56764490_690628091335557_5614536624068100096_o.jpg\\\"}\",\"{\\\"image\\\":\\\"56757372_690628064668893_2566791443863568384_o.jpg\\\"}\"]', '2019-04-12 18:04:57', '2019-04-14 22:04:15', 0, 0, 0, 1, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'NGUYỄN NHƯ ĐỔ - VĂN MIẾU - ĐỐNG ĐA - MS001', '', 'nguyen-nhu-do-van-mieu-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 3, 2, '20', 4, 2, '11', '0000-00-00', 1, 1, 2, 1, 6, '5.4', 'CV Nam Khối Thiên Khôi. ', 'Nguyễn Như Đổ', 0),
(61, 'CAO BÁ QUÁT - ĐIỆN BIÊN - BA ĐÌNH - MS001', '', '<p><strong>MẶT ĐƯỜNG CAO B&Aacute; QU&Aacute;T, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>45M2, 4 TẦNG, L&Ocirc; G&Oacute;C. KINH DOANH, 5.2M MẶT TIỀN.</strong></p>\r\n', '', '', '<p>+ Nh&agrave; 4 tầng x&acirc;y dựng chắc chắn.<br />\r\n+ Khu trung t&acirc;m quận Ba Đ&igrave;nh, phố chuy&ecirc;n d&aacute;n, t&acirc;n trang &ocirc; t&ocirc;, xe m&aacute;y nổi tiếng, kinh doanh tấp nập.&nbsp;<br />\r\n+ Chủ đang cho thu&ecirc; tạm 20 triệu/th&aacute;ng để giữ nh&agrave;, chờ b&aacute;n. Thực tế trước l&agrave; 50 triệu/th&aacute;ng.</p>\r\n', '', '', '23,5', '', 0, 'caobaquat.jpg', '[]', '2019-04-12 18:04:11', '2019-04-14 22:04:54', 0, 0, 0, 1, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'CAO BÁ QUÁT - ĐIỆN BIÊN - BA ĐÌNH - MS001', '', 'cao-ba-quat-dien-bien-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 2, '45', 4, 2, '11', '0000-00-00', 2, 1, 2, 1, 6, '5.4', 'CV Nam P. Thăng Hoa 0979934340', 'Cao Bá Quát', 0),
(62, 'BÁT SỨ - HÀNG BỒ - HOÀN KIẾM - MS001', '', '<p><strong>L&Ocirc; G&Oacute;C 2 MẶT PHỐ -&nbsp;MẶT ĐƯỜNG&nbsp;B&Aacute;T SỨ - HO&Agrave;N KIẾM - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>60M2, 4 TẦNG,&nbsp;15M MẶT TIỀN, KINH DOANH DỊCH VỤ TỐT.</strong></p>\r\n', '', '', '', '', '', '35', '', 0, '34309102_979174202238789_8039334597995003904_n.jpg', '[\"{\\\"image\\\":\\\"34414268_979174125572130_3632947204567597056_o.jpg\\\"}\"]', '2019-04-12 20:04:27', '2019-04-14 22:04:42', 0, 0, 0, 1, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'BÁT SỨ - HÀNG BỒ - HOÀN KIẾM - MS001', '', 'bat-su-hang-bo-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 2, '60', 0, 2, '21', '0000-00-00', 3, 1, 2, 1, 6, '15', 'CV Von P. Thần Tốc 0977265473', 'Bát Sứ', 1),
(63, 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS002', '', '<p><strong>MẶT ĐƯỜNG CỬA Đ&Ocirc;NG, HO&Agrave;N KIẾM, H&Agrave; NỘI,&nbsp;VỈA H&Egrave; TO, KINH DOANH TỐT.</strong></p>\r\n\r\n<p><strong>86M2, 5 TẦNG,&nbsp;3.5M MẶT TIỀN,&nbsp;32 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ M&ocirc; tả: Vị tr&iacute; căn nh&agrave; cực đẹp nằm tr&ecirc;n mặt phố Cửa Đ&ocirc;ng giao cắt ng&atilde; ba L&yacute; Nam Đế, đoạn vỉa h&egrave; đẹp nhất. Kinh doanh tốt.&nbsp;<br />\r\n+ Nh&agrave; x&acirc;y cực chắc chắn thiết kế cầu thang giữa chia đ&ocirc;i, đằng sau nh&agrave; c&oacute; giếng trời. Hiện đang cho h&atilde;ng Spa nổi tiếng nhất Phố cổ thu&ecirc;, c&ocirc;ng năng được sử dụng tối đa.&nbsp;<br />\r\n+ Với tầm ph&acirc;n kh&uacute;c gi&aacute; qu&aacute; hợp l&yacute; với gi&aacute; ch&agrave;o 370TR/M2 như n&agrave;y tuy mặt tiền c&oacute; hơi nhỏ so với tổng diện t&iacute;ch nhưng rất xứng đ&aacute;ng với tầm tiền, tầm gi&aacute; trị, khả năng thanh khoản v&agrave; độ hiếm nhất định. Hiện đang cho thuệ nhẹ nh&agrave;ng 80TR/Th&aacute;ng.&nbsp;</strong></p>\r\n', '', '', '32', '', 0, 'cua-dong_8403b.jpg', '[\"{\\\"image\\\":\\\"54220481_2170179679958754_2293667142001754112_n.jpg\\\"}\"]', '2019-04-12 20:04:27', '2019-04-14 22:04:32', 0, 0, 1, 0, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS002', '', 'cua-dong-cua-dong-hoan-kiem-ms002', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 0, '86', 3, 2, '40A', '0000-00-00', 3, 1, 2, 1, 6, '3.5', 'CV Quyền P. Sao Thổ 0942816116', 'Cửa Đông', 0),
(64, 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS001', '', '<p><strong>KH&Aacute;CH SẠN PHỐ CỬA Đ&Ocirc;NG, HO&Agrave;N KIẾM,&nbsp;80M2, 6 TẦNG, THANG M&Aacute;Y, 4.2M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>+ Vị tr&iacute; rất đẹp ngay cạnh Dung Ho&agrave; Palace, v&agrave;i bước ch&acirc;n ra ng&atilde; 5 H&agrave;ng G&agrave; - Cửa Đ&ocirc;ng - H&agrave;ng Ph&egrave;n - Nh&agrave; Hoả. Đường 2 chiều vỉa h&egrave; rộng, để xe m&aacute;y, &ocirc; t&ocirc; dừng đỗ thoải m&aacute;i.<br />\r\n+ Nh&agrave; x&acirc;y 6 tầng thang m&aacute;y, thiết kế tầng 3 ph&ograve;ng thang m&aacute;y giữa(trước 2 ph&ograve;ng, sau 1 ph&ograve;ng). Tổng 17 ph&ograve;ng, gi&aacute; cho thu&ecirc; hữu nghị 50 triệu/th&aacute;ng.</strong></p>\r\n', '', '', '52', '', 0, '42619788_1875692449217545_7183053629685760000_n.jpg', '[\"{\\\"image\\\":\\\"42494576_1875513349235455_4049105552452616192_n.jpg\\\"}\",\"{\\\"image\\\":\\\"42654173_1875693575884099_6795315582909546496_n.jpg\\\"}\"]', '2019-04-12 20:04:17', '2019-04-14 22:04:08', 0, 0, 0, 1, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS001', '', 'cua-dong-cua-dong-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 0, '80', 0, 2, '7', '0000-00-00', 3, 1, 2, 1, 6, '4.2', 'ĐB Thắng P. Đại Bàng 0944428882', 'Cửa Đông', 0),
(65, 'DÃ TƯỢNG - TRẦN HƯNG ĐẠO - HOÀN KIẾM - MS001', '', '<p><strong>MẶT ĐƯỜNG L&Ocirc; G&Oacute;C, PHỐ D&Atilde; TƯỢNG, HO&Agrave;N KIẾM, KINH DOANH H&Egrave; RỘNG.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>+ Hướng TTT.<br />\r\n+ Nh&agrave; l&ocirc; g&oacute;c, 3 mặt tho&aacute;ng vĩnh viễn, x&acirc;y cuối năm 2009, tầng 2 ph&ograve;ng ngủ, 1wc, c&ograve;n đầy đủ GPXD; Vỉa h&egrave; 2 b&ecirc;n rộng th&ecirc;nh thang, khu n&agrave;y rất &iacute;t nh&agrave; b&aacute;n, c&oacute; nhiều người nước ngo&agrave;i sinh sống, tọa lạc giữa trung t&acirc;m quận Ho&agrave;n Kiếm, kinh doanh sầm uất ng&agrave;y đ&ecirc;m.</strong></p>\r\n', '', '', '23', '', 0, '1_dnnm.jpg', '[\"{\\\"image\\\":\\\"Untitled.jpg\\\"}\"]', '2019-04-12 21:04:57', '2019-04-14 22:04:20', 0, 0, 1, 0, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'DÃ TƯỢNG - TRẦN HƯNG ĐẠO - HOÀN KIẾM - MS001', '', 'da-tuong-tran-hung-dao-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 0, '42', 8, 2, '7', '0000-00-00', 2, 1, 2, 1, 6, '4', 'CV Thành P. TQ Giang 0983078172 0901050888', 'Dã Tượng', 0),
(66, 'ĐÀO DUY TỪ - HÀNG BUỒM - HOÀN KIẾM - MS001', '', '<p><strong>KH&Aacute;CH SẠN PHỐ Đ&Agrave;O DUY TỪ, 9 TẦNG, THANG M&Aacute;Y, 84M2,&nbsp;HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n', '', '', '<p><strong>+ Sổ đỏ nở hậu, một sổ một chủ đứng t&ecirc;n.<br />\r\n+ Chủ nh&agrave; trước tự kinh doanh, nay cho thu&ecirc; lại với gi&aacute; 150 triệu/th&aacute;ng. Tổng 22 ph&ograve;ng, chủ ở 2 tầng tr&ecirc;n c&ograve;n lại 16 ph&ograve;ng cho thu&ecirc; l&uacute;c n&agrave;o cũng k&iacute;n ph&ograve;ng, l&agrave; nh&agrave; duy nhất trong phố c&oacute; tầng hầm, hiện l&agrave;m ph&ograve;ng ăn cho kh&aacute;ch, c&oacute; thể chuyển đổi c&ocirc;ng năng th&agrave;nh ph&ograve;ng massage cho kh&aacute;ch hoặc nhiều chức năng kh&aacute;c.<br />\r\n+ Nh&agrave; nằm đ&uacute;ng ng&atilde; tư Chợ Gạo, Đ&agrave;o Duy Từ.</strong></p>\r\n', '', '', '64', '', 0, '42186092_700206010342818_6857716149140848640_o.jpg', '[\"{\\\"image\\\":\\\"42199142_700206040342815_3154875816484012032_o.jpg\\\"}\",\"{\\\"image\\\":\\\"42153758_700206097009476_8024097806375452672_o.jpg\\\"}\"]', '2019-04-12 21:04:16', '2019-04-14 22:04:58', 0, 0, 1, 0, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐÀO DUY TỪ - HÀNG BUỒM - HOÀN KIẾM - MS001', '', 'dao-duy-tu-hang-buom-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 2, '84', 5, 2, '20', '0000-00-00', 3, 1, 2, 1, 6, '3.9', 'CV Hồng Anh P. Nhà Vua 0976977733', 'Đào Duy Từ', 0),
(67, 'TRẦN PHÚ - KIM MÃ - BA ĐÌNH - MS001', '', '<p><strong>ĐẤT MẶT ĐƯỜNG TRẦN PH&Uacute;, KIM M&Atilde;, 2 MẶT ĐƯỜNG, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>60M2, 4.2M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>Trần Ph&uacute; gần đoạn giao Kim M&atilde;, hiện chủ cho thu&ecirc; Cửa h&agrave;ng sắt vụn.<br />\r\nHiện trạng nh&agrave; Cấp 4, vị tr&iacute; rất đẹp lại hai mặt phố đẹp Quận Ba Đ&igrave;nh l&agrave; Sơn T&acirc;y v&agrave; Trần Ph&uacute;</strong></p>\r\n', '', '', '25', '', 0, '394cde18-73bf-4f06-9f7c-a7bc814a64dd.jpg', '[\"{\\\"image\\\":\\\"Untitled.jpg\\\"}\"]', '2019-04-12 21:04:39', '2019-04-14 22:04:47', 0, 0, 0, 1, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'TRẦN PHÚ - KIM MÃ - BA ĐÌNH - MS001', '', 'tran-phu-kim-ma-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 1, '60', 3, 2, '53', '0000-00-00', 3, 1, 1, 1, 6, '4.2', 'CV Cương P. Số 1 0904949868', 'Trần Phú', 0),
(68, 'ĐINH LIỆT - HÀNG BẠC - HOÀN KIẾM - MS001', '', '<p><strong>TRUNG T&Acirc;M PHỐ CỔ.</strong></p>\r\n\r\n<p><strong>MẶT ĐƯỜNG ĐINH LIỆT, HO&Agrave;N KIẾM, 64M2, 5 TẦNG, 3.3M MẶT TIỀN, KINH DOANH ĐỈNH.</strong></p>\r\n', '', '', '<p><strong>- Sổ đỏ đẹp.<br />\r\n- Nh&agrave; toạ lạc phố Đinh Liệt đi bộ 2 ph&uacute;t ra hồ Ho&agrave;n Kiếm, nối với phố Tạ Hiện nổi tiếng về ăn chơi. Kh&aacute;ch nước ngo&agrave;i đi như chẩy hội suốt ng&agrave;y.<br />\r\n- Chủ nh&agrave; đang vừa ở vừa cho thu&ecirc; 60 triệu/ th&aacute;ng, chủ b&aacute;n đi để chia cho c&aacute;c con.<br />\r\n- Kh&aacute;ch h&agrave;ng sở hữu được căn nh&agrave; n&agrave;y thể hiện được đẳng cấp v&agrave; được hưởng thụ văn ho&aacute; m&agrave; c&aacute;c du kh&aacute;ch quốc tế phải đổ dồn về đ&acirc;y.</strong></p>\r\n', '', '', '45', '', 0, '20161015215505-c0f2.jpg', '[]', '2019-04-12 21:04:47', '2019-04-14 22:04:35', 0, 0, 0, 1, 0, '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐINH LIỆT - HÀNG BẠC - HOÀN KIẾM - MS001', '', 'dinh-liet-hang-bac-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 2, '64', 0, 2, '10C', '0000-00-00', 3, 1, 2, 1, 6, '3.3', 'CV Đích P. Thiên Khôi 0969323666', 'Đinh Liệt', 2),
(69, 'TRẦN QUANG DIỆU - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '', '<p><strong>PH&Acirc;N L&Ocirc; KINH DOANH, &Ocirc; T&Ocirc; TR&Aacute;NH, PHỐ TRẦN QUANG DIỆU.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH 45M2, 5 TẦNG, 3.7M MẶT TIỀN, CH&Agrave;O 10.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Sổ đỏ vu&ocirc;ng.<br />\r\n+ Khu ph&acirc;n l&ocirc; c&aacute;n bộ cấp cao, đường th&ocirc;ng ra V&otilde; Văn Dũng v&agrave; Ho&agrave;ng Cầu vỉa h&egrave; &ocirc; t&ocirc; dừng đỗ.&nbsp;<br />\r\n+ Nh&agrave; 5 tầng gia đ&igrave;nh tự x&acirc;y rất chắc chắn, m&oacute;ng c&oacute; thể l&ecirc;n tầng thoải m&aacute;i.&nbsp;<br />\r\n+ Thiết kế cầu thang v&agrave; vệ sinh cuối, mỗi tầng một ph&ograve;ng rộng.<br />\r\n+ Ng&otilde;&nbsp;ng&otilde; rộng v&agrave; kinh doanh cafe, văn ph&ograve;ng c&ocirc;ng ty sầm uất nhất tại Trần Quang Diệu.&nbsp;<br />\r\n+ Nh&agrave; hiện cho c&ocirc;ng ty của người quen thu&ecirc; l&agrave;m văn ph&ograve;ng.&nbsp;<br />\r\n+ Khu vực hiếm nh&agrave; b&aacute;n, rất nhiều kh&aacute;ch th&iacute;ch.</strong></p>\r\n', '', '', '10,5', '', 0, '57484561_1235809789919291_7690887504748085248_n.jpg', '[\"{\\\"image\\\":\\\"56954335_1236061579894112_5535317013150302208_n.jpg\\\"}\"]', '2019-04-13 17:04:26', '2019-04-14 22:04:10', 0, 0, 0, 1, 0, '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'TRẦN QUANG DIỆU - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '', 'tran-quang-dieu-o-cho-dua-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 4, 2, '45', 5, 2, '56.8', '0000-00-00', 2, 2, 2, 1, 6, '3.7', 'CV Đích P. Thiên Khôi 0969323666', 'Trần Quang Diệu', 0),
(70, 'NGUYỄN ĐÌNH THI - THỤY KHUÊ - TÂY HỒ - MS001', '', '<p><strong>VIEW HỒ T&Acirc;Y, PHỐ NGUYỄN THỊ ĐỊNH, T&Acirc;Y HỒ, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;368M2, 4 TẦNG,&nbsp;22M MẶT TIỀN, CH&Agrave;O&nbsp;125 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Vị tr&iacute; mặt phố Nguyễn Đ&igrave;nh Thi mặt HỒ T&Acirc;Y lộng gi&oacute; cực đẹp l&yacute; tưởng, 3 mặt cực tho&aacute;ng, phong thuỷ qu&aacute; l&yacute; tưởng.<br />\r\n- Với mặt tiền ch&iacute;nh (trước) bao la 22m, vỉa h&egrave; cực rộng.&nbsp;<br />\r\n- Một mặt ng&otilde; Thuỵ Khu&ecirc; rất rộng &ocirc; t&ocirc; v&agrave;o nh&agrave;.<br />\r\n+ Thửa đất với 2 khối nh&agrave;:<br />\r\n- Diện t&iacute;ch 1:&nbsp;232m2, mặt tiền 22m.<br />\r\n- Diện t&iacute;ch 2 nh&agrave; trong ng&otilde;: 171m2, ng&otilde; rộng 4m &ocirc; t&ocirc; với diện t&iacute;ch ng&otilde; đi chung: 34m2.<br />\r\n+ Nh&agrave; mặt phố Nguyễn Đ&igrave;nh Thi chủ cho thu&ecirc; 60 triệu/th&aacute;ng, nhưng giờ chủ để b&aacute;n n&ecirc;n kh&ocirc;ng cho thu&ecirc; nữa.<br />\r\n+ Vị tr&iacute; nh&agrave; đẹp kh&aacute;ch x&aacute;c định mua vị tr&iacute; về đập đi x&acirc;y to&agrave; nh&agrave; lớn 5 tầng mặt GỒ T&Acirc;Y kinh doanh nh&agrave; h&agrave;ng hoặc kh&aacute;ch sạn cho T&Acirc;Y thu&ecirc; ở.<br />\r\n+ Ph&aacute;p l&yacute;: Giấy tờ hợp đồng, quyết định, chứng từ cũng như thuế h&agrave;ng năm đầy đủ, đủ điều kiện l&agrave;m sổ đỏ. Chủ b&aacute;n hiện trạng, kh&aacute;ch mua tự l&agrave;m sổ đỏ chủ cung cấp đầy đủ giấy tờ đủ điều kiện l&agrave;m được sổ đỏ hoặc chủ giới thiệu b&ecirc;n dịch vụ nhận l&agrave;m sổ.</strong></p>\r\n', '', '', '125', '', 0, '56960565_2250361345280828_3723556682207330304_n.jpg', '[\"{\\\"image\\\":\\\"56852722_2250362065280756_209642005167341568_n.jpg\\\"}\"]', '2019-04-13 17:04:21', '2019-04-14 22:04:57', 0, 0, 0, 1, 0, '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'NGUYỄN ĐÌNH THI - THỤY KHUÊ - TÂY HỒ - MS001', '', 'nguyen-dinh-thi-thuy-khue-tay-ho-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 8, 7, 2, '339', 0, 2, '11', '0000-00-00', 4, 1, 2, 2, 6, '22', 'CV Khanh P. Đại Cát', 'Nguyễn Đình Thi', 0),
(71, 'ĐINH TIÊN HOÀNG - LÝ THÁI TỔ - HOÀN KIẾM - MS001', '', '<p><strong>VIEW HỒ GƯƠM, PHỐ ĐINH TI&Ecirc;N HO&Agrave;NG, HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH, 418M2, 3 TẦNG, 17M MẶT TIỀN, CH&Agrave;O&nbsp;593&nbsp;TỶ.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>- Nh&agrave; toạ lạc mặt phố nổi tiếng nhất Việt Nam.<br />\r\n- Kh&aacute;ch h&agrave;ng mua được căn nh&agrave; n&agrave;y để thể hiện Thương hiệu của c&aacute; nh&acirc;n, Doanh nghiệp của m&igrave;nh, chỉ cần x&acirc;y một to&agrave; nh&agrave; ở đ&acirc;y th&igrave; kh&ocirc;ng cần phải Quảng C&aacute;o g&igrave; th&ecirc;m nữa đ&atilde; khẳng định được Đẳng Cấp rồi.<br />\r\n- H&agrave;ng ng&agrave;y được ngắm Th&aacute;p R&ugrave;a, tối ngắm cảnh lung linh quanh Hồ, được hưởng thụ đa Văn ho&aacute;, đa sắc m&agrave;u của Thế giới hội tụ nơi đ&acirc;y.<br />\r\n- Ph&aacute;p l&yacute; căn nh&agrave; r&otilde; r&agrave;ng sẵn s&agrave;ng giao dịch được ngay.</strong></p>\r\n', '', '', '593', '', 0, 'tuyen_pho_dinh_tien_hoang-16_48_13_482.jpg', '[]', '2019-04-13 18:04:28', '2019-04-13 18:04:52', 0, 0, 0, 1, 0, '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐINH TIÊN HOÀNG - LÝ THÁI TỔ - HOÀN KIẾM - MS001', '', 'dinh-tien-hoang-ly-thai-to-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 2, '418', 0, 2, '63A + 65 + 67', '0000-00-00', 4, 1, 2, 1, 6, '17', 'CV Đích P. Thiên Khôi 0969323666', 'Đinh Tiên Hoàng', 0),
(72, 'ĐÔNG THÁI - HÀNG BUỒM - HOÀN KIẾM - MS001', '', '<p><strong>PHỐ Đ&Ocirc;NG TH&Aacute;I, HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH 96M2, 10M MẶT TIỀN, CH&Agrave;O 38 TỶ.</strong></p>\r\n', '', '', '', '', '', '38', '', 0, 'Untitled.jpg', '[]', '2019-04-13 18:04:29', NULL, 0, 0, 0, 1, 0, '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐÔNG THÁI - HÀNG BUỒM - HOÀN KIẾM - MS001', '', 'dong-thai-hang-buom-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 2, '96', 0, 2, '12A+B', '0000-00-00', 3, 1, 2, 1, 4, '10', 'CV Oanh P. TQ Giang.', 'Đông Thái', 0),
(73, 'ĐƯỜNG THÀNH - CỬA ĐÔNG - HOÀN KIẾM - MS001', '', '<p><strong>MẶT ĐƯỜNG PHỐ ĐƯỜNG TH&Agrave;NH - CỬA Đ&Ocirc;NG - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;48M2,&nbsp;4M MẶT TIỀN, CH&Agrave;O&nbsp;35 TỶ.</strong></p>\r\n', '', '', '<p><strong>&nbsp;Sổ đỏ đẹp.<br />\r\n- Nh&agrave; toạ lạc ngay ng&atilde; tư H&agrave;ng B&ocirc;ng + Đường Th&agrave;nh, vị tr&iacute; cực Đắc địa.<br />\r\n- Chủ nh&agrave; đang vừa ở vừa cho thu&ecirc;.<br />\r\n- Nh&agrave; cũ x&aacute;c định mua đập đi x&acirc;y mới đẹp lung linh.<br />\r\n- Ph&aacute;p l&yacute; căn nh&agrave; r&otilde; r&agrave;ng sẵn s&agrave;ng giao dịch được ngay.</strong></p>\r\n', '', '', '35', '', 0, 'DUONGTHANH.jpg', '[]', '2019-04-13 20:04:20', '2019-04-13 20:04:05', 0, 0, 1, 0, 0, '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐƯỜNG THÀNH - CỬA ĐÔNG - HOÀN KIẾM - MS001', '', 'duong-thanh-cua-dong-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 2, '48', 5, 2, '50', '0000-00-00', 2, 1, 2, 1, 6, '4', 'CV Đích P. Thiên Khôi 0969323666', 'Đường Thành', 1),
(74, 'KIM ĐỒNG - GIÁP BÁT - HOÀNG MAI - MS001', '', '<p><strong>KIM ĐỒNG - P.GI&Aacute;P B&Aacute;T - Q.HO&Agrave;NG MAI - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>KINH DOANH - 2 &Ocirc; T&Ocirc; - 58M2 - 4&nbsp;TẦNG - 3.8 MẶT TIỀN - CH&Agrave;O 7.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Vị tr&iacute; đẹp lắm. Ng&otilde; thẳng &ocirc; t&ocirc; tr&aacute;nh, vỉa h&egrave; rộng. Nh&agrave; c&aacute;ch mặt phố 30m.<br />\r\n+ Nh&agrave; 4 tầng vẫn mới đẹp, ở lu&ocirc;n. Hai tho&aacute;ng lắm.<br />\r\n+ Sổ 66m2 nhưng thực x&acirc;y 58m2. Cắt phần sau cho vu&ocirc;ng đất.<br />\r\n+ Nở hậu 5m đấy. Đẹp, lộc.<br />\r\n+ Gi&aacute; đẹp.</strong></p>\r\n', '', '', '7,5', '', 0, '56894563_875340492838369_4610147088695558144_n.jpg', '[\"{\\\"image\\\":\\\"57710724_875340869504998_1975231575117266944_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56751253_875340836171668_39456876705873920_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56915804_875340666171685_1888302600982364160_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56905080_875340719505013_618370231428972544_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56899544_875340689505016_7523389874762678272_n.jpg\\\"}\"]', '2019-04-13 21:04:26', '2019-04-14 22:04:39', 0, 0, 1, 0, 0, '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'KIM ĐỒNG - GIÁP BÁT - HOÀNG MAI - MS001', '', 'kim-dong-giap-bat-hoang-mai-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 5, 3, 2, '58', 2, 2, '43.10', '0000-00-00', 3, 2, 2, 1, 6, '3.8', 'CV Thoa P. Hoàng Kim 0976949281.', 'Kim Đồng', 0),
(75, 'CẦU GIẤY - YÊN HÒA - CẦU GIẤY - MS001', '', '<p><strong>ĐƯỜNG CẦU GIẤY - NGUYỄN KHANG, Y&Ecirc;N H&Ograve;A, CẦU GIẤY, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>&Ocirc; T&Ocirc; V&Agrave;O NH&Agrave;, NG&Otilde; TH&Ocirc;NG,&nbsp;70M2, 4 TẦNG, 6.1M MT, CH&Agrave;O 7.9 TỶ</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; x&acirc;y ki&ecirc;n cố chắc chắn v&ocirc; c&ugrave;ng, thiết kế mỗi tầng 2 ph&ograve;ng. Hiện chủ đang cho&nbsp;thu&ecirc; 15 triệu/th&aacute;ng.<br />\r\n+ Mặt tiền rộng r&atilde;i l&agrave; điểm mạnh v&agrave; cuốn h&uacute;t, cho thu&ecirc; dễ d&agrave;ng nhiều hạng mục.<br />\r\n+ Đằng sau c&oacute; mặt tho&aacute;ng vĩnh viễn, rất tho&aacute;ng m&aacute;t.<br />\r\n+ Nh&agrave; c&aacute;ch MP Nguyễn Khang 70m, rất gần. Khu vực đ&ocirc;ng d&acirc;n kinh doanh tốt.<br />\r\n+ Ng&otilde; th&ocirc;ng, &ocirc; t&ocirc; chạy thoải m&aacute;i. Đi v&agrave;o từ 79 Cầu Giấy hoặc 381 Nguyễn Khang đều được.<br />\r\n+ Nh&agrave; tho&aacute;ng trước sau.<br />\r\n+ Sắp c&oacute; quy hoạch ng&otilde; 381 th&ocirc;ng sang phố Hạ Y&ecirc;n tương lai c&ograve;n đẹp theo từng ng&agrave;y.</strong></p>\r\n', '', '', '7,9', '', 0, '56742661_2692974740719598_1139132864290357248_n.jpg', '[\"{\\\"image\\\":\\\"56927223_2692974600719612_483212575606046720_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56770540_2692974690719603_6099574135573184512_n.jpg\\\"}\"]', '2019-04-13 22:04:48', NULL, 0, 0, 0, 1, 0, '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'CẦU GIẤY - YÊN HÒA - CẦU GIẤY - MS001', '', 'cau-giay-yen-hoa-cau-giay-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 1, 3, 2, '70', 1, 2, '79.114', '0000-00-00', 3, 2, 2, 1, 5, '6.1', 'CV Trần Tuấn 0911069458 Khối Số 1', 'Cầu Giấy', 0),
(76, 'TÂY SƠN - THỊNH QUANG - ĐỐNG ĐA - MS001', '', '<p><strong>MẶT ĐƯỜNG T&Acirc;Y SƠN, VIEW ĐẸP, L&Ocirc; G&Oacute;C, 14M MẶT TIỀN, CH&Agrave;O 23 TỶ.</strong></p>\r\n\r\n<p><strong>50M2 - 5 TẦNG - 14M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>- Tầng 1,2 được 45 triệu/th&aacute;ng. </strong></p>\r\n\r\n<p><strong>- Với lợi thế l&ocirc; g&oacute;c v&ocirc; c&ugrave;ng tho&aacute;ng cộng với mặt tiền rộng, nh&igrave;n căn nh&agrave; bề thế nhất phố.<br />\r\n- Chủ thiết kế tầng 1,2 th&ocirc;ng s&agrave;n để cho thu&ecirc;. Tầng 3: Gồm ph&ograve;ng kh&aacute;ch, bếp v&agrave; một ph&ograve;ng ngủ. Tầng 4: Gồm 2 ph&ograve;ng ngủ rộng, vệ sinh giữa. Tầng 5: Ph&ograve;ng thờ v&agrave; s&acirc;n phơi. Kh&aacute;ch mua về c&oacute; thể tiếp quản hợp đồng thu&ecirc; v&agrave; ở lu&ocirc;n hoặc muốn lấy nh&agrave; lu&ocirc;n chủ nh&agrave; sẽ tất to&aacute;n hết hợp đồng thu&ecirc; để giao nh&agrave;.</strong></p>\r\n', '', '', '23', '', 0, '56488584_1299151970248842_4430383049292644352_n.jpg', '[\"{\\\"image\\\":\\\"57039990_1299151490248890_1483210605702676480_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57170567_1299150956915610_7160077942653976576_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56954349_1299151186915587_6012632190637047808_n.jpg\\\"}\"]', '2019-04-15 17:04:38', '2019-04-15 18:04:02', 0, 0, 1, 0, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'TÂY SƠN - THỊNH QUANG - ĐỐNG ĐA - MS001', '', 'tay-son-thinh-quang-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 7, 2, '50', 3, 2, '426', '0000-00-00', 2, 1, 2, 1, 6, '14', 'CV My Khối Nhà Vua ', 'Tây Sơn', 0),
(77, 'HOÀNG QUỐC VIỆT - NGHĨA TÂN - CẦU GIẤY - MS001', '', '<p><strong>T&Ograve;A NH&Agrave; MẶT ĐƯỜNG HO&Agrave;NG QUỐC VIỆT, 500M2, 9 TẦNG, 35M MẶT TIỀN, CH&Agrave;O 110 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Vị tr&iacute; đẹp nhất phố Ho&agrave;ng Quốc Việt. Sổ 50 năm, c&ograve;n 30 năm.<br />\r\n+ Mặt tiền rộng, vỉa h&egrave; rất rất rộng. Đoạn phố được ph&eacute;p dừng đỗ xe &ocirc; t&ocirc; thoải m&aacute;i.&nbsp;<br />\r\n+ Nh&agrave; thiết kế trang bị thang m&aacute;y lớn, thang bộ rộng, mỗi s&agrave;n 7 ph&ograve;ng chức năng.&nbsp;<br />\r\n+ Doanh thu b&egrave;o th&igrave; 1 tỷ/ th&aacute;ng.&nbsp;</strong></p>\r\n', '', '', '110', '', 0, 'hoangquocviet.jpg', '[]', '2019-04-15 18:04:17', NULL, 0, 0, 0, 1, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HOÀNG QUỐC VIỆT - NGHĨA TÂN - CẦU GIẤY - MS001', '', 'hoang-quoc-viet-nghia-tan-cau-giay-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 1, 7, 2, '486', 0, 2, '249', '0000-00-00', 4, 1, 2, 1, 6, '35', 'CV Trường P. Phú Quý', 'Hoàng Quốc Việt', 0),
(78, 'YÊN PHỤ - TRÚC BẠCH - BA ĐÌNH - MS001', '', '<p><strong>KH&Aacute;CH SẠN 17 PH&Ograve;NG MẶT ĐƯỜNG Y&Ecirc;N PHỤ, BA Đ&Igrave;NH.</strong></p>\r\n\r\n<p><strong>112M2 -&nbsp;9 TẦNG - 5M MẶT TIỀN - CH&Agrave;O 45 TỶ.</strong></p>\r\n', '', '', '<p><strong>Tọa lạc tại th&agrave;nh phố H&agrave; Nội, Kh&aacute;ch sạn c&aacute;ch c&aacute;c điểm tham quan như Hồ T&acirc;y v&agrave; Đền Qu&aacute;n Th&aacute;nh một đoạn ngắn. Ch&ugrave;a Trấn Quốc v&agrave; Chợ Đồng Xu&acirc;n c&aacute;ch kh&aacute;ch sạn lần lượt chưa đến 1 km v&agrave; 1,9 km.</strong></p>\r\n\r\n<p><strong>Tất cả c&aacute;c ph&ograve;ng tại kh&aacute;ch sạn được trang bị m&aacute;y pha c&agrave; ph&ecirc; v&agrave; tủ lạnh. Một số ph&ograve;ng c&ograve;n c&oacute; bếp với l&ograve; nướng v&agrave; l&ograve; vi s&oacute;ng.</strong></p>\r\n\r\n<p><strong>Nh&acirc;n vi&ecirc;n lễ t&acirc;n c&oacute; thể giải đ&aacute;p mọi thắc mắc của du kh&aacute;ch.</strong></p>\r\n\r\n<p><strong>C&aacute;ch &Ocirc; Quan Chưởng 1,9 km v&agrave; s&acirc;n bay gần nhất l&agrave; s&acirc;n bay quốc tế Nội B&agrave;i 23 km.</strong></p>\r\n\r\n<p><strong>Quận Ba Đ&igrave;nh l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch&nbsp;lịch sử,&nbsp;ngắm cảnh&nbsp;v&agrave;&nbsp;đi dạo trong th&agrave;nh phố.</strong></p>\r\n', '', '', '45', '', 0, '55576935_1202858986536975_7442752460780732416_n.jpg', '[\"{\\\"image\\\":\\\"55959633_1202859093203631_7808340570937491456_o.jpg\\\"}\"]', '2019-04-15 18:04:25', NULL, 0, 0, 0, 1, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'YÊN PHỤ - TRÚC BẠCH - BA ĐÌNH - MS001', '', 'yen-phu-truc-bach-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 2, '112', 5, 2, '18', '0000-00-00', 4, 1, 0, 1, 6, '5', 'CV Von P. Thần Tốc 0977265473', 'Yên Phụ', 0),
(79, 'HÀNG VẢI - HÀNG BỒ - HOÀN KIẾM - MS001', '', '<p>MẶT ĐƯỜNG PHỐ CỔ - H&Agrave;NG VẢI - HO&Agrave;N KIẾM.</p>\r\n\r\n<p>136M2, ĐẤT,&nbsp;6.6M MẶT TIỀN, CH&Agrave;O&nbsp;53 TỶ.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>+ Sổ đỏ đẹp, vu&ocirc;ng vức.<br />\r\n+ Nh&agrave; cũ x&aacute;c định mua đất, xin GPXD 7 tầng được, giải ph&oacute;ng mặt bằng nhanh.<br />\r\n+ Thuận tiện để x&acirc;y Kh&aacute;ch sạn hoặc to&agrave; căn hộ cao cấp cho T&acirc;y thu&ecirc;.<br />\r\n+ Rất hiếm những căn đẹp m&agrave; rẻ như n&agrave;y.&nbsp;<br />\r\n+ Mua đầu tư cũng cực kỳ tốt.</strong></p>\r\n', '', '', '53', '', 0, 'Untitled.jpg', '[\"{\\\"image\\\":\\\"Untsitled.jpg\\\"}\"]', '2019-04-15 18:04:55', NULL, 0, 0, 0, 1, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'HÀNG VẢI - HÀNG BỒ - HOÀN KIẾM - MS001', '', 'hang-vai-hang-bo-hoan-kiem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 3, 7, 1, '136', 3, 2, '50', '0000-00-00', 4, 0, 3, 1, 0, '6.6', 'CV Đích P. Thiên Khôi 0969323666', 'Hàng Vải', 0);
INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_high`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `quan`, `tai_chinh`, `loai`, `dien_tich`, `huong_nha`, `trang_thai`, `product_address`, `product_ngayban`, `dien_tich_loc`, `vi_tri`, `hien_trang`, `phap_ly`, `duong_rong`, `mat_tien`, `lien_he`, `ten_duong`, `follow`) VALUES
(80, 'NGUYỄN HOÀNG - MỸ ĐÌNH - NAM TỪ LIÊM - MS001', '', '<p><strong>T&Ograve;A NH&Agrave; MẶT PHỐ NGUYỄN HO&Agrave;NG, CHO THU&Ecirc; HOẶC KINH DOANH ĐỀU ỔN, MẶT TIỀN RỘNG.&nbsp;</strong></p>\r\n\r\n<p><strong>126M2 - 8 TẦNG - 22M MẶT TIỀN - H&Egrave; RỘNG 5M - THANG M&Aacute;Y - CH&Agrave;O 40 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ T&ograve;a nh&agrave; c&oacute; vị tr&iacute; đẹp nhất phố Nguyễn Ho&agrave;ng, kinh doanh sầm uất, hiện nh&agrave; đang cho h&atilde;ng thời trang&nbsp;thu&ecirc; cả t&ograve;a 150 tr/ th&aacute;ng. Nguy&ecirc;n cho b&ecirc;n quảng c&aacute;o treo biển cũng thu rất nhiều tiền. Vỉa h&egrave; m&ecirc;nh m&ocirc;ng.<br />\r\n<br />\r\n+ Nh&agrave; x&acirc;y chắc chắn đẹp. Tổng 7,5 tầng. Thang m&aacute;y nhập ngoại.<br />\r\n<br />\r\n+ Sổ đỏ 126m nhưng thực tế 140m, từ tầng 2 đua 170m.<br />\r\n<br />\r\n- Tầng 1,2, 3, 4: Th&ocirc;ng tầng.<br />\r\n- Tầng 5: gồm 4 ph&ograve;ng ngủ.<br />\r\n- Tầng 6: Kh&aacute;ch bếp th&ocirc;ng tầng.<br />\r\n- Tầng 7, 8: 1 ngủ, vệ sinh, s&acirc;n phơi, trồng rau.<br />\r\n<br />\r\n+ Chủ thiện tr&iacute;, cần b&aacute;n nhanh.</strong></p>\r\n', '', '', '40', '', 0, 'NGUYENHOANG.jpg', '[]', '2019-04-15 18:04:50', '2019-04-15 18:04:03', 0, 0, 1, 0, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'NGUYỄN HOÀNG - MỸ ĐÌNH - NAM TỪ LIÊM - MS001', '', 'nguyen-hoang-my-dinh-nam-tu-liem-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 9, 0, 2, '126', 0, 2, '43 + 45', '0000-00-00', 4, 1, 2, 1, 6, '22', 'CV Thúy P. Nữ Hoàng 0979518166', 'Nguyễn Hoàng', 0),
(81, 'ĐÊ LA THÀNH - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '', '<p><strong>KHU HIẾM! HO&Agrave;NG CẦU - PH&Acirc;N L&Ocirc; B&Agrave;N CỜ - 7 TẦNG THANG M&Aacute;Y - &Ocirc; T&Ocirc; TR&Aacute;NH - KINH DOANH V&Ocirc; ĐỊCH.</strong></p>\r\n\r\n<p><strong>&nbsp;63M2 - 7 TẦNG -&nbsp;4.5M MẶT TIỀN - CH&Agrave;O&nbsp;16.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; thuộc khu ph&acirc;n l&ocirc; của Viện Y học cổ truyền, view Nh&agrave; kh&aacute;ch Quốc hội. Anh chị em c&oacute; thể dẫn kh&aacute;ch theo lối 217 Đ&ecirc; La Th&agrave;nh, 16 Ho&agrave;ng Cầu, Nguyễn Ph&uacute;c Lai.&nbsp;<br />\r\n+ Nh&agrave; 7 tầng tuyệt đẹp, thang may c&ograve;n nguy&ecirc;n tem chưa b&oacute;c vỏ. Tổng hiện trạng c&oacute; 8 ph&ograve;ng ngủ c&oacute; thể thiết kế th&agrave;nh 10 ph&ograve;ng ngủ vệ sinh kh&eacute;p k&iacute;n, gara &ocirc; t&ocirc;.<br />\r\n+ Khu VIP c&aacute;ch mặt phố Đ&ecirc; La Th&agrave;nh 70m. Hiện đường Đ&ecirc; La Th&agrave;nh đang c&oacute; dự &aacute;n mở đường đến qu&yacute; 3 năm 2018 sẽ tiến h&agrave;nh, đến khi đ&oacute; căn nh&agrave; sẽ c&aacute;ch mặt phố chưa đầy 30m. Tương lai sẽ c&ograve;n tươi v&agrave; s&aacute;ng hơn rất nhiều.<br />\r\n+ T&ograve;a nh&agrave; đầy đủ c&ocirc;ng năng, vị tr&iacute; đẹp, ph&ugrave; hợp với rất nhiều loại h&igrave;nh kinh doanh: Văn ph&ograve;ng, trung t&acirc;m giảng dạy, Spa, nh&agrave; nghỉ, kh&aacute;ch sạn, ...Hiện đang c&oacute; 1 đơn vị Spa muốn thu&ecirc; 80tr/ th&aacute;ng nhưng chủ kh&ocirc;ng đồng &yacute; m&agrave; để tập trung b&aacute;n.&nbsp;<br />\r\n+ Sổ đẹp, chủ thiện tr&iacute;.</strong><br />\r\n&nbsp;</p>\r\n', '', '', '16,5', '', 0, '56993935_2140694232717336_5756493694156931072_n.jpg', '[\"{\\\"image\\\":\\\"57048993_2140694309383995_350840128765165568_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57368850_2140694296050663_8696078090176036864_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57019585_2140694212717338_8085744936558788608_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57009177_2140694329383993_7856842030293450752_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56970989_2140694269383999_5429654302203314176_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56902360_2140694392717320_3198821183122309120_n.jpg\\\"}\"]', '2019-04-15 19:04:20', NULL, 0, 0, 0, 1, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐÊ LA THÀNH - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '', 'de-la-thanh-o-cho-dua-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 6, 2, '63', 0, 2, '5 Lô 1 Ngõ 217', '0000-00-00', 3, 2, 2, 1, 6, '4.5', 'CV Hà P. Hoàng Kim', 'Đê La Thành', 0),
(82, 'ĐÊ TÔ HOÀNG - CẦU DỀN - HAI BÀ TRƯNG - MS001', '', '<p><strong>NG&Otilde; TO NHƯ&nbsp;PHỐ - L&Ocirc; G&Oacute;C - KINH DOANH.</strong></p>\r\n\r\n<p><strong>50M2, 5 TẦNG,&nbsp;4.7M MẶT TIỀN, CH&Agrave;O&nbsp;13&nbsp;TỶ.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; 5 tầng tuyệt đẹp, thiết kế th&ocirc;ng s&agrave;n rộng r&atilde;i.<br />\r\nTầng 1: Gara, c&oacute; thể cho thu&ecirc; kinh doanh hiệu suất đ&aacute;ng nể.<br />\r\nTầng 2: Ph&ograve;ng kh&aacute;ch, bếp.<br />\r\nTầng 3,4: Ph&ograve;ng ngủ si&ecirc;u rộng, vệ sinh.<br />\r\nTầng 5: Ph&ograve;ng thờ, s&acirc;n phơi.<br />\r\n+ Địa chỉ tr&ecirc;n sổ l&agrave; ng&otilde; T&ocirc; Ho&agrave;ng nhưng thực tế l&agrave; ng&otilde; 27 Đại Cồ Việt đi v&agrave;o qu&aacute; gần, đường qu&aacute; rộng. Khu vực đ&ocirc;ng đ&uacute;c, văn ph&ograve;ng đại diện, shop thời trang nhiều như nấm sau mưa. View nh&agrave; thẳng ra đường Đại Cồ Việt.</strong></p>\r\n', '', '', '13', '12,5', 0, '42962872_1867728323347263_7884198721406107648_n.jpg', '[\"{\\\"image\\\":\\\"43047824_1867808103339285_5407542328799789056_n.jpg\\\"}\",\"{\\\"image\\\":\\\"43030769_1867788683341227_1645781865249898496_n.jpg\\\"}\",\"{\\\"image\\\":\\\"42987664_1867732740013488_6997707721935945728_o.jpg\\\"}\",\"{\\\"image\\\":\\\"42967040_1867731796680249_5475376028660531200_n.jpg\\\"}\",\"{\\\"image\\\":\\\"42650908_1867761120010650_5193055591932624896_o.jpg\\\"}\",\"{\\\"image\\\":\\\"42935349_1867759106677518_6561939047298629632_o.jpg\\\"}\"]', '2019-04-15 19:04:55', NULL, 0, 0, 0, 1, 0, '2019-03-02', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐÊ TÔ HOÀNG - CẦU DỀN - HAI BÀ TRƯNG - MS001', '', 'de-to-hoang-cau-den-hai-ba-trung-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 4, 5, 2, '50', 0, 2, '66.32 ( 27.23 Đại Cồ Việt )', '2019-04-15', 0, 2, 2, 1, 6, '4.7', 'CV Hà P. Hoàng Kim 0888990666 0399963333', 'Đê Tô Hoàng', 0),
(83, 'PHÓ ĐỨC CHÍNH - TRÚC BẠCH - BA ĐÌNH - MS001', '', '<p><strong>&nbsp;MẶT PHỐ HIẾM - BA Đ&Igrave;NH GI&Aacute;P HO&Agrave;N KIẾM - GẦN HỒ TR&Uacute;C BẠCH - GI&Aacute; TỐT.</strong></p>\r\n\r\n<p><strong>137M2 - 5 TẦNG CŨ -&nbsp;4.5M MẶT TIỀN - CH&Agrave;O&nbsp;39.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>- Vị tr&iacute; cực đẹp, đoạn gần ng&atilde; 3 Ngũ X&atilde;, ph&iacute;a trước tho&aacute;ng vĩnh viễn do b&ecirc;n đ&oacute; xưa l&agrave; s&acirc;n trường nay cho thu&ecirc; l&agrave;m nh&agrave; h&agrave;ng.&nbsp;<br />\r\n- Ba Đ&igrave;nh gi&aacute;p Ho&agrave;n Kiếm, gần hồ Tr&uacute;c Bạch, xung quanh d&acirc;n tr&iacute; cao, nhiều du kh&aacute;ch v&agrave; người nước ngo&agrave;i sinh sống, m&ocirc;i trường sống rất tuyệt.&nbsp;<br />\r\n- Hướng: Đ&ocirc;ng Bắc.<br />\r\n- Phố Ph&oacute; Đức Ch&iacute;nh hiện l&agrave; 1 trong &iacute;t tuyến phố c&ograve;n lại của H&agrave; Nội c&oacute; thể để &ocirc; t&ocirc; cả ng&agrave;y lẫn đ&ecirc;m.<br />\r\n- Gia chủ người gốc H&agrave; Nội, nhiều đời sống tại nơi đ&acirc;y. L&agrave; c&ocirc;ng chức nh&agrave; nước, sống thanh bạch, sạch sẽ b&igrave;nh dị. Nh&agrave; mặt phố nhưng chỉ để ở, kh&ocirc;ng kinh doanh v&agrave; cũng chẳng cho thu&ecirc;, từ xa xưa vẫn thế.<br />\r\n- Hiện trạng nh&agrave; 5 tầng, x&acirc;y khung b&ecirc; t&ocirc;ng chắc chắn, 4 PN. Nội thất đơn giản m&agrave; đẹp. Đặc biệt c&ograve;n mảnh vườn ph&iacute;a sau rất đẹp v&agrave; tho&aacute;ng.&nbsp;<br />\r\n- Khu&ocirc;n đất đẹp, Vu&ocirc;ng vức, nở hậu 20 cm. Ph&ugrave; hợp x&acirc;y t&ograve;a nh&agrave; cao 9-10 tầng như h&agrave;ng x&oacute;m b&ecirc;n cạnh, KD kh&aacute;ch sạn, appartment cho người nước ngo&agrave;i thu&ecirc;...<br />\r\n- Sổ đỏ ph&aacute;p l&yacute; chuẩn, để ở nh&agrave;, sẵn s&agrave;ng giao dịch.</strong></p>\r\n', '', '', '39,5', '', 0, '20151204155810-95c0.jpg', '[\"{\\\"image\\\":\\\"56815970_2122231924551662_9126912835232727040_n.jpg\\\"}\",\"{\\\"image\\\":\\\"57092759_2122235181218003_8369056346795933696_n.jpg\\\"}\"]', '2019-04-15 20:04:07', NULL, 0, 0, 0, 1, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'PHÓ ĐỨC CHÍNH - TRÚC BẠCH - BA ĐÌNH - MS001', '', 'pho-duc-chinh-truc-bach-ba-dinh-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 7, 7, 1, '137', 5, 2, '120', '0000-00-00', 4, 0, 2, 1, 6, '4.5', 'CV Thu Hiền P.Hoàng Kim', 'Phó Đức Chính', 1),
(84, 'ĐẶNG TIẾN ĐÔNG - TRUNG LIỆT - ĐỐNG ĐA - MS001', '', '<p><strong>NH&Agrave; ĐỂ Ở - NG&Otilde; 2M - NG&Otilde; N&Ocirc;NG C&Aacute;CH ĐƯỜNG 50M - NH&Agrave; MỚI X&Acirc;Y 2 NĂM.</strong></p>\r\n\r\n<p><strong>PHỐ ĐẶNG TIẾN Đ&Ocirc;NG&nbsp;35M2, 5 TẦNG,&nbsp;4M MẶT TIỀN, CH&Agrave;O&nbsp;4.3 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Ng&otilde; trước nh&agrave; xe ba g&aacute;c đi lại được, nh&agrave; c&aacute;ch mặt đường &ocirc; t&ocirc; tr&aacute;nh chỉ khoảng 30m.<br />\r\n+ Nh&agrave; mới x&acirc;y được 2 năm cho con g&aacute;i nhưng con g&aacute;i kh&ocirc;ng ở, hiện tại đang cho bạn th&acirc;n thu&ecirc; với gi&aacute; hữu nghị 10 triệu/th&aacute;ng.<br />\r\n+ Thiết kế tầng 1 ph&ograve;ng rộng, tổng nh&agrave; c&oacute; 3 ph&ograve;ng ngủ.</strong></p>\r\n', '', '', '4,3', '', 0, '56500783_1718875361591847_6845958135002169344_o.jpg', '[\"{\\\"image\\\":\\\"56962014_1718875818258468_5808483225302990848_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56816037_1718875781591805_6873515912188657664_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56795686_1718875464925170_5110360807011516416_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56610472_1718875598258490_8898610713287720960_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56605007_1718875268258523_824887815392198656_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56599775_1718875301591853_7573157851254751232_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56571245_1718875714925145_4410497561165561856_n.jpg\\\"}\",\"{\\\"image\\\":\\\"56536126_1718875408258509_6819799778419802112_o.jpg\\\"}\"]', '2019-04-15 22:04:41', NULL, 0, 0, 0, 1, 0, '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'ĐẶNG TIẾN ĐÔNG - TRUNG LIỆT - ĐỐNG ĐA - MS001', '', 'dang-tien-dong-trung-liet-dong-da-ms001', '', NULL, '', '', '', NULL, NULL, '243,243', '', 6, 0, 2, '35', 7, 2, '183.31.3', '0000-00-00', 2, 2, 0, 1, 2, '4', 'TN Sự P. Trạng Nguyên 0983965705 0915646894', 'Đặng Tiến Đông', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(227, 'Bán bất động sản', '', '', 0, 0, 'vegetable.png', '2018-06-12 14:06:15', NULL, '', '', '', '', '', 1, 'Bán bất động sản', '', 'ban-bat-dong-san', '', 1),
(231, 'Dự án Vinhomes', '', '', 0, 0, '227345.png', '2018-06-12 08:06:56', NULL, '', '', '', '', '', 1, 'Dự án Vinhomes', '', 'du-an-vinhomes', '', 1),
(232, 'Sự kiện nóng trong tuần', '', '', 0, 0, 'meat.png', '2018-06-09 17:06:30', NULL, '', '', '', '', '', 1, 'Sự kiện nóng trong tuần', '', 'su-kien-nong-trong-tuan', '', 1),
(233, 'Nghỉ dưỡng', '', '', 227, 0, NULL, '2018-06-12 14:06:45', NULL, '', '', '', '', '', 1, 'Nghỉ dưỡng', '', 'nghi-duong', '', 1),
(234, 'Liền kề biệt thự', '', '', 227, 0, NULL, '2018-06-12 14:06:08', NULL, '', '', '', '', '', 1, 'Liền kề biệt thự', '', 'lien-ke-biet-thu', '', 1),
(235, 'Căn hộ đẳng cấp', '', '', 227, 0, '', '2018-06-12 14:06:21', NULL, '', '', '', '', '', 1, 'Căn hộ đẳng cấp', '', 'can-ho-dang-cap', '', 1),
(236, 'Bán chung cư', '', '', 227, 0, NULL, '2018-06-12 14:06:05', NULL, '', '', '', '', '', 1, 'Bán chung cư', '', 'ban-chung-cu', '', 1),
(237, 'Cho thuê bất động sản', '', '', 0, 0, '', '2018-06-12 14:06:53', NULL, '', '', '', '', '', 1, 'Cho thuê bất động sản', '', 'cho-thue-bat-dong-san', '', 1),
(238, 'Văn phòng', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', 237, 0, '14.jpg', '2018-11-23 17:11:34', NULL, '', '', '', '', '', 1, 'Văn phòng', '', 'van-phong', '', 1),
(239, 'Mặt bằng thương mại', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', 237, 0, '12.jpg', '2018-11-23 17:11:42', NULL, '', '', '', '', '', 1, 'Mặt bằng thương mại', '', 'mat-bang-thuong-mai', '', 1),
(240, 'Cho thuê chung cư', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', 237, 0, '13.jpg', '2018-11-23 17:11:47', NULL, '', '', '', '', '', 1, 'Cho thuê chung cư', '', 'cho-thue-chung-cu', '', 1),
(241, 'Nhà phố', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', 237, 0, '11.jpg', '2018-11-23 17:11:58', NULL, '', '', '', '', '', 1, 'Nhà phố', '', 'nha-pho', '', 1),
(242, 'Dự án khác', '', '', 237, 0, '', '2018-06-12 14:06:43', NULL, '', '', '', '', '', 1, 'Dự án khác', '', 'du-an-khac', '', 1),
(243, 'Quản lý bất động sản', '', '', 0, 0, '', '2018-06-12 14:06:08', NULL, '', '', '', '', '', 1, 'Quản lý bất động sản', '', 'quan-ly-bat-dong-san', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(439, 227, 'Bán bất động sản', 'vn', '', '', '', '', '', '', '', 1, 'ban-bat-dong-san', '', 'Bán bất động sản', ''),
(440, 227, 'Organic Vegetables', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-rau-huu-co', '', 'Rau hữu cơ', ''),
(447, 231, 'Dự án Vinhomes', 'vn', '', '', '', '', '', '', '', 1, 'du-an-vinhomes', '', 'Dự án Vinhomes', ''),
(448, 231, 'Fruits Origanic', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-do-uong', '', 'Đồ uống', ''),
(449, 232, 'Sự kiện nóng trong tuần', 'vn', '', '', '', '', '', '', '', 1, 'su-kien-nong-trong-tuan', '', 'Sự kiện nóng trong tuần', ''),
(450, 232, 'Organic Fish - Meat', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-thit-ca-huu-co', '', 'Thịt cá hữu cơ', ''),
(451, 233, 'Nghỉ dưỡng', 'vn', '', '', '', '', '', '', '', 0, 'nghi-duong', '', 'Nghỉ dưỡng', ''),
(452, 233, 'english version Nghỉ dưỡng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-nghi-duong', '', 'Nghỉ dưỡng', ''),
(453, 234, 'Liền kề biệt thự', 'vn', '', '', '', '', '', '', '', 0, 'lien-ke-biet-thu', '', 'Liền kề biệt thự', ''),
(454, 234, 'english version Liền kề biệt thự', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-lien-ke-biet-thu', '', 'Liền kề biệt thự', ''),
(455, 235, 'Căn hộ đẳng cấp', 'vn', '', '', '', '', '', '', '', 0, 'can-ho-dang-cap', '', 'Căn hộ đẳng cấp', ''),
(456, 235, 'english version Căn hộ đẳng cấp', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-can-ho-dang-cap', '', 'Căn hộ đẳng cấp', ''),
(457, 236, 'Bán chung cư', 'vn', '', '', '', '', '', '', '', 0, 'ban-chung-cu', '', 'Bán chung cư', ''),
(458, 236, 'english version Chung cư', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chung-cu', '', 'Chung cư', ''),
(459, 237, 'Cho thuê bất động sản', 'vn', '', '', '', '', '', '', '', 0, 'cho-thue-bat-dong-san', '', 'Cho thuê bất động sản', ''),
(460, 237, 'english version Cho thuê bất động sản', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cho-thue-bat-dong-san', '', 'Cho thuê bất động sản', ''),
(461, 238, 'Văn phòng', 'vn', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', '', '', '', '', '', 0, 'van-phong', '', 'Văn phòng', ''),
(462, 238, 'english version Văn phòng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-van-phong', '', 'Văn phòng', ''),
(463, 239, 'Mặt bằng thương mại', 'vn', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', '', '', '', '', '', 0, 'mat-bang-thuong-mai', '', 'Mặt bằng thương mại', ''),
(464, 239, 'english version Mặt bằng thương mại', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-mat-bang-thuong-mai', '', 'Mặt bằng thương mại', ''),
(465, 240, 'Cho thuê chung cư', 'vn', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', '', '', '', '', '', 0, 'cho-thue-chung-cu', '', 'Cho thuê chung cư', ''),
(466, 240, 'english version Chung cư', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chung-cu-1', '', 'Chung cư', ''),
(467, 241, 'Nhà phố', 'vn', '<p>TMS Luxury qu&yacute; c&ocirc;ng ty nhanh ch&oacute;ng &amp; dễ d&agrave;ng t&igrave;m cho m&igrave;nh giải ph&aacute;p mặt bằng &amp; kh&ocirc;ng gian văn ph&ograve;ng ph&ugrave; hợp cả về diện t&iacute;ch v&agrave; địa điểm đ&aacute;p ứng tốt nhất nhu cầu kinh doanh &amp; vận h&agrave;nh doanh nghiệp.</p>\r\n', '', '', '', '', '', '', 0, 'nha-pho', '', 'Nhà phố', ''),
(468, 241, 'english version Nhà phố', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-nha-pho', '', 'Nhà phố', ''),
(469, 242, 'Dự án khác', 'vn', '', '', '', '', '', '', '', 0, 'du-an-khac', '', 'Dự án khác', ''),
(470, 242, 'english version Dự án khác', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-du-an-khac', '', 'Dự án khác', ''),
(471, 243, 'Quản lý bất động sản', 'vn', '', '', '', '', '', '', '', 0, 'quan-ly-bat-dong-san', '', 'Quản lý bất động sản', ''),
(472, 243, 'english version Quản lý bất động sản', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-quan-ly-bat-dong-san', '', 'Quản lý bất động sản', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(81, 47, 'vn', 'KIM MÃ - KIM MÃ - BA ĐÌNH - MS001', '<p><strong>ĐƯỜNG KIM M&Atilde; - BA Đ&Igrave;NH - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>ĐỂ Ở - KINH DOANH NHỎ - &Ocirc; T&Ocirc; ĐỖ CỬA - C&Aacute;CH ĐƯỜNG 20M.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>M&ocirc; tả chi tiết:</strong></p>\r\n\r\n<p><strong>- Th&ocirc;ng số&nbsp;22m2, 5 tầng,&nbsp;3m mt, 4.7 tỷ.<br />\r\n- Vị tr&iacute; đặc địa cực hiếm, chỉ c&aacute;ch mặt phố 20m. Đường trước nh&agrave; &Ocirc; t&ocirc; đỗ cửa, kinh doanh nhỏ sầm uất.&nbsp;Vị tr&iacute; tốt&nbsp;hiếm trung t&acirc;m Ba Đ&igrave;nh.&nbsp;<br />\r\n- Thiết kế th&ocirc;ng s&agrave;n, 4 tầng 1 tum, mỗi tầng 1 ph&ograve;ng, cầu thang cuối.&nbsp;<br />\r\n- Nh&agrave; đẹp chủ vừa sang sửa rất mới. Ph&ugrave; hợp l&agrave;m nail hay kinh doanh nhỏ rất tuyệt vời.&nbsp;</strong></p>\r\n', '', '', '2019-04-10', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'kim-ma-kim-ma-ba-dinh-ms001', 'KIM MÃ - KIM MÃ - BA ĐÌNH - MS001', '', ''),
(82, 47, 'en', 'english version BB-KM-1', 'english version <p>ĐỂ Ở - KINH DOANH NHỎ - &Ocirc; T&Ocirc; ĐỖ CỬA - C&Aacute;CH ĐƯỜNG 20M.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'english version <p><strong>M&ocirc; tả chi tiết:</strong></p>\r\n\r\n<p><strong>- Th&ocirc;ng số&nbsp;22m2, 5 tầng,&nbsp;3m mt, 4.7 tỷ.<br />\r\n- Vị tr&iacute; đặc địa cực hiếm, chỉ c&aacute;ch mặt phố 20m. Đường trước nh&agrave; &Ocirc; t&ocirc; đỗ cửa, kinh doanh nhỏ sầm uất.&nbsp;Vị tr&iacute; tốt&nbsp;hiếm trung t&acirc;m Ba Đ&igrave;nh.&nbsp;<br />\r\n- Thiết kế th&ocirc;ng s&agrave;n, 4 tầng 1 tum, mỗi tầng 1 ph&ograve;ng, cầu thang cuối.&nbsp;<br />\r\n- Nh&agrave; đẹp chủ vừa sang sửa rất mới. Ph&ugrave; hợp l&agrave;m nail hay kinh doanh nhỏ rất tuyệt vời.&nbsp;</strong></p>\r\n', '', '', '2019-04-10', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bb-km-1', 'BB-KM-1', '', ''),
(83, 48, 'vn', 'THÁI HÀ - TRUNG LIỆT - ĐỐNG ĐA - MS001', '<p><strong>TH&Aacute;I H&Agrave; - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong><strong>PH&Acirc;N L&Ocirc; TH&Ocirc;NG&nbsp;- L&Ocirc;</strong> G&Oacute;C - &Ocirc; T&Ocirc; TR&Aacute;NH - KINH DOANH.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:&nbsp;<br />\r\n+ Ng&otilde; Th&aacute;i H&agrave; l&agrave; khu ph&acirc;n l&ocirc; &ocirc; t&ocirc; v&ograve;ng quanh, th&ocirc;ng 2 phố Th&aacute;i H&agrave; - Đặng Tiến Đ&ocirc;ng, trục kinh doanh kh&ocirc;ng thể đẹp hơn.<br />\r\n+ Nh&agrave; nằm tại vị tr&iacute; l&ocirc; g&oacute;c, tho&aacute;ng 3 mặt, trước nh&agrave; &ocirc; t&ocirc; tr&aacute;nh, c&oacute; vỉa h&egrave; để xe kinh doanh.<br />\r\n+ Thiết kế cầu thang giữa mỗi tầng 2 ph&ograve;ng, T1 &ocirc; t&ocirc; v&agrave;o nh&agrave; thoải m&aacute;i.<br />\r\n+ Hiện đang kinh doanh cho thu&ecirc; 30tr/ th&aacute;ng, kh&aacute;ch mua lấy nh&agrave; bất cứ l&uacute;c n&agrave;o.</strong></p>\r\n', '', '', '2019-04-10', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thai-ha-trung-liet-dong-da-ms001', 'THÁI HÀ - TRUNG LIỆT - ĐỐNG ĐA - MS001', '', ''),
(84, 48, 'en', 'english version DD-TH-1', 'english version <p><strong>PH&Acirc;N L&Ocirc; TH&Ocirc;NG&nbsp;- L&Ocirc; G&Oacute;C - &Ocirc; T&Ocirc; TR&Aacute;NH - KINH DOANH.</strong></p>\r\n', '', '', 'english version <p><strong>M&ocirc; tả:&nbsp;<br />\r\n+ Ng&otilde; Th&aacute;i H&agrave; l&agrave; khu ph&acirc;n l&ocirc; &ocirc; t&ocirc; v&ograve;ng quanh, th&ocirc;ng 2 phố Th&aacute;i H&agrave; - Đặng Tiến Đ&ocirc;ng, trục kinh doanh kh&ocirc;ng thể đẹp hơn.<br />\r\n+ Nh&agrave; nằm tại vị tr&iacute; l&ocirc; g&oacute;c, tho&aacute;ng 3 mặt, trước nh&agrave; &ocirc; t&ocirc; tr&aacute;nh, c&oacute; vỉa h&egrave; để xe kinh doanh.<br />\r\n+ Thiết kế cầu thang giữa mỗi tầng 2 ph&ograve;ng, T1 &ocirc; t&ocirc; v&agrave;o nh&agrave; thoải m&aacute;i.<br />\r\n+ Hiện đang kinh doanh cho thu&ecirc; 30tr/ th&aacute;ng, kh&aacute;ch mua lấy nh&agrave; bất cứ l&uacute;c n&agrave;o.</strong></p>\r\n', '', '', '2019-04-10', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dd-th-1', 'DD-TH-1', '', ''),
(85, 49, 'vn', 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS001', '<p>MẶT ĐƯỜNG PHAN Đ&Igrave;NH PH&Ugrave;NG - BA Đ&Igrave;NH - H&Agrave; NỘI.</p>\r\n\r\n<p>205M2 - 7.6M MẶT TIỀN - H&Egrave; RỘNG KINH DOANH TRUNG T&Acirc;M H&Agrave; NỘI.</p>\r\n', '', '', '', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phan-dinh-phung-quan-thanh-ba-dinh-ms001', 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS001', '', ''),
(86, 49, 'en', 'english version BBPDP1', 'english version <p>MẶT ĐƯỜNG PHAN Đ&Igrave;NH PH&Ugrave;NG - BA Đ&Igrave;NH - H&Agrave; NỘI.</p>\r\n\r\n<p>205M2 - 7.6M MẶT TIỀN - H&Egrave; RỘNG KINH DOANH TRUNG T&Acirc;M H&Agrave; NỘI.</p>\r\n', '', '', 'english version ', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bbpdp1', 'BBPDP1', '', ''),
(87, 50, 'vn', 'CỬA BẮC - TRÚC BẠCH - BA ĐÌNH - MS001', '<p>PHỐ CỬA BẮC - BA Đ&Igrave;NH - H&Agrave; NỘI.</p>\r\n\r\n<p>NH&Agrave; L&Ocirc; G&Oacute;C ĐẸP LUNG LINH, Đ&Atilde; V&Agrave;O NH&Agrave; L&Agrave; KH&Ocirc;NG MUỐN VỀ NỮA, THIẾT KẾ THEO PHONG C&Aacute;CH HƯỞNG THỤ.</p>\r\n', '', '', '<p>M&ocirc; tả:&nbsp;<br />\r\n+ Hướng: Nam - T&acirc;y(Chọn hướng n&agrave;o cũng hợp).<br />\r\n+ Vị tr&iacute;: Trung t&acirc;m Ba Đ&igrave;nh, c&aacute;ch mặt phố Cửa Bắc 20m, trước nh&agrave; ng&otilde; 3.5m. Gần Bộ Quốc Ph&ograve;ng an ninh cực tốt.<br />\r\n+ Thiết kế: Nh&agrave; l&ocirc; g&oacute;c 2 mặt tho&aacute;ng m&aacute;t, trước mở qu&aacute;n cafe to&agrave;n kh&aacute;ch t&acirc;y, nay chủ thiết kế lại theo phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại. Vừa ở vừa hưởng thụ. Chủ mua nh&agrave; chỉ l&agrave;m nơi tr&uacute; ch&acirc;n khi ra H&agrave; Nội, nay nhu cầu &iacute;t ra hơn để kh&ocirc;ng sợ nh&agrave; mốc n&ecirc;n b&aacute;n nhanh cho ai cần.<br />\r\n&bull; Tầng 1: Chủ đang để trống, kh&aacute;ch mua về c&oacute; thể kinh doanh, l&agrave;m văn ph&ograve;ng...Tuỳ th&iacute;ch.<br />\r\n&bull; Tầng 2: Diện t&iacute;ch sử dụng 70m2 kh&ocirc;ng gian mở bao gồm ph&ograve;ng kh&aacute;ch, bếp, ph&ograve;ng ăn, ban c&ocirc;ng.<br />\r\n&bull; Tầng 3: Ph&ograve;ng ngủ m&aacute;ter kh&ocirc;ng gian mở gồm tỉ thay đồ, vệ sinh, b&agrave;n tr&agrave;, ban c&ocirc;ng...<br />\r\n&bull; Tầng 4: Ph&ograve;ng thờ, s&acirc;n vườn BBQ ngắm xung quanh.<br />\r\n&bull; V&igrave; nhu cầu ở kh&ocirc;ng cần nhiều ph&ograve;ng ngủ n&ecirc;n kh&aacute;ch mới về nếu cần th&ecirc;m ph&ograve;ng ngủ chỉ việc ngăn v&aacute;ch ở tầng 2 hoặc tầng 3 l&agrave; c&oacute; ngay th&ecirc;m ph&ograve;ng ngủ.<br />\r\n&bull; Nh&agrave; c&oacute; hệ thống camera gi&aacute;m s&aacute;t v&agrave; cửa cuốn theo d&otilde;i mở cửa qua điện thoại.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-bac-truc-bach-ba-dinh-ms001', 'CỬA BẮC - TRÚC BẠCH - BA ĐÌNH - MS001', '', ''),
(88, 50, 'en', 'english version BDCB1', 'english version <p>NH&Agrave; L&Ocirc; G&Oacute;C ĐẸP LUNG LINH, Đ&Atilde; V&Agrave;O NH&Agrave; L&Agrave; KH&Ocirc;NG MUỐN VỀ NỮA, THIẾT KẾ THEO PHONG C&Aacute;CH HƯỞNG THỤ.</p>\r\n', '', '', 'english version <p>M&ocirc; tả:&nbsp;<br />\r\n+ Hướng: Nam - T&acirc;y(Chọn hướng n&agrave;o cũng hợp).<br />\r\n+ Vị tr&iacute;: Trung t&acirc;m Ba Đ&igrave;nh, c&aacute;ch mặt phố Cửa Bắc 20m, trước nh&agrave; ng&otilde; 3.5m. Gần Bộ Quốc Ph&ograve;ng an ninh cực tốt.<br />\r\n+ Thiết kế: Nh&agrave; l&ocirc; g&oacute;c 2 mặt tho&aacute;ng m&aacute;t, trước mở qu&aacute;n cafe to&agrave;n kh&aacute;ch t&acirc;y, nay chủ thiết kế lại theo phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại. Vừa ở vừa hưởng thụ. Chủ mua nh&agrave; chỉ l&agrave;m nơi tr&uacute; ch&acirc;n khi ra H&agrave; Nội, nay nhu cầu &iacute;t ra hơn để kh&ocirc;ng sợ nh&agrave; mốc n&ecirc;n b&aacute;n nhanh cho ai cần.<br />\r\n&bull; Tầng 1: Chủ đang để trống, kh&aacute;ch mua về c&oacute; thể kinh doanh, l&agrave;m văn ph&ograve;ng...Tuỳ th&iacute;ch.<br />\r\n&bull; Tầng 2: Diện t&iacute;ch sử dụng 70m2 kh&ocirc;ng gian mở bao gồm ph&ograve;ng kh&aacute;ch, bếp, ph&ograve;ng ăn, ban c&ocirc;ng.<br />\r\n&bull; Tầng 3: Ph&ograve;ng ngủ m&aacute;ter kh&ocirc;ng gian mở gồm tỉ thay đồ, vệ sinh, b&agrave;n tr&agrave;, ban c&ocirc;ng...<br />\r\n&bull; Tầng 4: Ph&ograve;ng thờ, s&acirc;n vườn BBQ ngắm xung quanh.<br />\r\n&bull; V&igrave; nhu cầu ở kh&ocirc;ng cần nhiều ph&ograve;ng ngủ n&ecirc;n kh&aacute;ch mới về nếu cần th&ecirc;m ph&ograve;ng ngủ chỉ việc ngăn v&aacute;ch ở tầng 2 hoặc tầng 3 l&agrave; c&oacute; ngay th&ecirc;m ph&ograve;ng ngủ.<br />\r\n&bull; Nh&agrave; c&oacute; hệ thống camera gi&aacute;m s&aacute;t v&agrave; cửa cuốn theo d&otilde;i mở cửa qua điện thoại.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bdcb1', 'BDCB1', '', ''),
(89, 51, 'vn', 'ĐÀO TẤN - CỐNG VỊ - BA ĐÌNH - MS001', '<p><strong>NG&Otilde; ĐẸP NHẤT Đ&Agrave;O TẤN - TRUNG T&Acirc;M BA Đ&Igrave;NH - H&Agrave; NỘI.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:&nbsp;<br />\r\n+ Nh&agrave; nằm trong ng&otilde; 12 l&agrave; ng&otilde; to đẹp nhất phố Đ&agrave;o Tấn, cạnh phố Linh Lang. Nom nhiều chấm thế nhưng rất gần mặt ng&otilde;. C&aacute;ch &ocirc; t&ocirc; chỉ 5m. Ra mặt phố chỉ hai ph&uacute;t.&nbsp;<br />\r\n+ Khu vực hiếm nh&agrave; b&aacute;n. D&acirc;n tr&iacute; cao, xung quanh to&agrave;n c&aacute;n bộ c&ocirc;ng chức v&agrave; người nước ngo&agrave;i sinh sống. Đất nơi đ&acirc;y rất vượng kh&iacute;, đ&oacute; l&agrave; l&yacute; do m&agrave; người Nhật chọn nơi đ&acirc;y để l&agrave;m nơi ở v&agrave; KD.&nbsp;<br />\r\n+ Tiện &iacute;ch xung quanh đủ thứ: v&agrave;i bước ch&acirc;n ra TTTM Lotte, C&ocirc;ng vi&ecirc;n, gần Trường học, Bệnh viện ... giao th&ocirc;ng th&ocirc;ng thương khắp ngả.&nbsp;<br />\r\n+ Nếu ai đ&atilde; ở khu n&agrave;y th&igrave; sẽ kh&ocirc;ng bao giờ muốn chuyển đi.&nbsp;<br />\r\n+ Nh&agrave; 5 tầng chủ nh&agrave; tự x&acirc;y, c&oacute; thu&ecirc; thiết kế cực cầu kỳ v&agrave; cẩn thận từng chi tiết. V&agrave;o nh&agrave; cảm thấy cực thoải m&aacute;i, th&iacute;ch v&agrave; kh&ocirc;ng muốn ra. Tổng 4PN v&agrave; c&oacute; thể th&agrave;nh 5PN thoải m&aacute;i, 4 vs.&nbsp;<br />\r\n-Tầng 1 c&oacute; cổng, s&acirc;n nhỏ rất đẹp v&agrave; tho&aacute;ng. Chỗ để xe thoải m&aacute;i, bếp, vs.&nbsp;<br />\r\n- Tầng 2: Ph&ograve;ng kh&aacute;ch rộng + ph&ograve;ng Thờ đẹp, rộng.&nbsp;<br />\r\n- Tầng 3,4 l&agrave; 4 ph&ograve;ng ngủ đủ tiện nghi.&nbsp;<br />\r\n- Tầng 5 Ph&ograve;ng để đồ, ph&ograve;ng giặt v&agrave; s&acirc;n phơi rộng r&atilde;i.&nbsp;<br />\r\nNội thất trong nh&agrave; to&agrave;n gỗ gụ xịn, tủ bếp, tủ quần &aacute;o, cửa, cầu thang. Nguy&ecirc;n bếp nấu chủ nh&agrave; đ&atilde; mua 40 triệu, c&ograve;n c&aacute;c nội thất gỗ trong nh&agrave; to&agrave;n sắm của h&atilde;ng ...</strong></p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dao-tan-cong-vi-ba-dinh-ms001', 'ĐÀO TẤN - CỐNG VỊ - BA ĐÌNH - MS001', '', ''),
(90, 51, 'en', 'english version NGÕ ĐÀO TẤN 55M2, 5 TẦNG, 5.2M MT ( BDDT1 )', 'english version <p><strong>NG&Otilde; ĐẸP NHẤT Đ&Agrave;O TẤN - TRUNG T&Acirc;M BA Đ&Igrave;NH</strong></p>\r\n', '', '', 'english version <p><strong>M&ocirc; tả:&nbsp;<br />\r\n+ Nh&agrave; nằm trong ng&otilde; 12 l&agrave; ng&otilde; to đẹp nhất phố Đ&agrave;o Tấn, cạnh phố Linh Lang. Nom nhiều chấm thế nhưng rất gần mặt ng&otilde;. C&aacute;ch &ocirc; t&ocirc; chỉ 5m. Ra mặt phố chỉ hai ph&uacute;t.&nbsp;<br />\r\n+ Khu vực hiếm nh&agrave; b&aacute;n. D&acirc;n tr&iacute; cao, xung quanh to&agrave;n c&aacute;n bộ c&ocirc;ng chức v&agrave; người nước ngo&agrave;i sinh sống. Đất nơi đ&acirc;y rất vượng kh&iacute;, đ&oacute; l&agrave; l&yacute; do m&agrave; người Nhật chọn nơi đ&acirc;y để l&agrave;m nơi ở v&agrave; KD.&nbsp;<br />\r\n+ Tiện &iacute;ch xung quanh đủ thứ: v&agrave;i bước ch&acirc;n ra TTTM Lotte, C&ocirc;ng vi&ecirc;n, gần Trường học, Bệnh viện ... giao th&ocirc;ng th&ocirc;ng thương khắp ngả.&nbsp;<br />\r\n+ Nếu ai đ&atilde; ở khu n&agrave;y th&igrave; sẽ kh&ocirc;ng bao giờ muốn chuyển đi.&nbsp;<br />\r\n+ Nh&agrave; 5 tầng chủ nh&agrave; tự x&acirc;y, c&oacute; thu&ecirc; thiết kế cực cầu kỳ v&agrave; cẩn thận từng chi tiết. V&agrave;o nh&agrave; cảm thấy cực thoải m&aacute;i, th&iacute;ch v&agrave; kh&ocirc;ng muốn ra. Tổng 4PN v&agrave; c&oacute; thể th&agrave;nh 5PN thoải m&aacute;i, 4 vs.&nbsp;<br />\r\n-Tầng 1 c&oacute; cổng, s&acirc;n nhỏ rất đẹp v&agrave; tho&aacute;ng. Chỗ để xe thoải m&aacute;i, bếp, vs.&nbsp;<br />\r\n- Tầng 2: Ph&ograve;ng kh&aacute;ch rộng + ph&ograve;ng Thờ đẹp, rộng.&nbsp;<br />\r\n- Tầng 3,4 l&agrave; 4 ph&ograve;ng ngủ đủ tiện nghi.&nbsp;<br />\r\n- Tầng 5 Ph&ograve;ng để đồ, ph&ograve;ng giặt v&agrave; s&acirc;n phơi rộng r&atilde;i.&nbsp;<br />\r\nNội thất trong nh&agrave; to&agrave;n gỗ gụ xịn, tủ bếp, tủ quần &aacute;o, cửa, cầu thang. Nguy&ecirc;n bếp nấu chủ nh&agrave; đ&atilde; mua 40 triệu, c&ograve;n c&aacute;c nội thất gỗ trong nh&agrave; to&agrave;n sắm của h&atilde;ng ...</strong></p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ngo-dao-tan-55m2-5-tang-52m-mt-bddt1', 'NGÕ ĐÀO TẤN 55M2, 5 TẦNG, 5.2M MT ( BDDT1 )', '', ''),
(91, 52, 'vn', 'SƠN TÂY - KIM MÃ - BA ĐÌNH - MS001', '<p>MẶT ĐƯỜNG SƠN T&Acirc;Y, BA Đ&Igrave;NH, 135M2, ĐẤT, 7.7M MẶT TIỀN.</p>\r\n', '', '', '<p>Diện t&iacute;ch = 49.69 &times; 2 + 34.9 = 134.29m2.<br />\r\nMặt tiền = 3.23 x 2 + 1.2 = 7.66m.<br />\r\n2 hộ chia đ&ocirc;i diện t&iacute;ch sử dụng v&agrave; chung lối đi 34.9m2.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'son-tay-kim-ma-ba-dinh-ms001', 'SƠN TÂY - KIM MÃ - BA ĐÌNH - MS001', '', ''),
(92, 52, 'en', 'english version BDST1', 'english version <p>MẶT ĐƯỜNG SƠN T&Acirc;Y, BA Đ&Igrave;NH, 135M2, ĐẤT, 7.7M MẶT TIỀN.</p>\r\n', '', '', 'english version <p>Diện t&iacute;ch = 49.69 &times; 2 + 34.9 = 134.29m2.<br />\r\nMặt tiền = 3.23 x 2 + 1.2 = 7.66m.<br />\r\n2 hộ chia đ&ocirc;i diện t&iacute;ch sử dụng v&agrave; chung lối đi 34.9m2.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bdst1', 'BDST1', '', ''),
(93, 53, 'vn', 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS002', '<p><strong>MẶT ĐƯỜNG PHAN Đ&Igrave;NH PH&Ugrave;NG, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;151M2,&nbsp;8M MẶT TIỀN.</strong></p>\r\n', '', '', '', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phan-dinh-phung-quan-thanh-ba-dinh-ms002', 'PHAN ĐÌNH PHÙNG - QUÁN THÁNH - BA ĐÌNH - MS002', '', ''),
(94, 53, 'en', 'english version BDPDP2', 'english version <p><strong>MẶT ĐƯỜNG PHAN Đ&Igrave;NH PH&Ugrave;NG, BA Đ&Igrave;NH.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;151M2,&nbsp;8M MẶT TIỀN.</strong></p>\r\n', '', '', 'english version ', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bdpdp2', 'BDPDP2', '', ''),
(95, 54, 'vn', 'NAM ĐỒNG - NAM ĐỒNG - ĐỐNG ĐA - MS001', '<p>T&Ograve;A NH&Agrave; VĂN PH&Ograve;NG 1 MẶT ĐƯỜNG, 1 MẶT NG&Otilde;, PHỐ&nbsp;NAM ĐỒNG, ĐỐNG ĐA, H&Agrave; NỘI.</p>\r\n\r\n<p>130M2,&nbsp;8 TẦNG, THANG M&Aacute;Y,&nbsp;6M MẶT TIỀN.</p>\r\n\r\n<p>CHO THU&Ecirc; 120TR/TH&Aacute;NG.</p>\r\n', '', '', '<p>- Hiện chủ cho&nbsp;thu&ecirc; 5 tầng, thu 120tr/th.<br />\r\n- Chủ thiết kế mỗi tầng 1 ph&ograve;ng phủ rộng to&agrave;n diện t&iacute;ch s&agrave;n<br />\r\n- T&ograve;a n&agrave;y đặc biệt th&ocirc;ng 2 mặt phố, gara tầng hầm đi xuy&ecirc;n cả 2 cửa.<br />\r\n- Chủ thiết kế đ&uacute;ng chuẩn cho thu&ecirc; văn ph&ograve;ng, kh&ocirc;ng thiếu hạng mục n&agrave;o.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nam-dong-nam-dong-dong-da-ms001', 'NAM ĐỒNG - NAM ĐỒNG - ĐỐNG ĐA - MS001', '', ''),
(96, 54, 'en', 'english version DDND1', 'english version <p>T&Ograve;A NH&Agrave; VĂN PH&Ograve;NG 1 MẶT ĐƯỜNG, 1 MẶT NG&Otilde;, PHỐ&nbsp;NAM ĐỒNG, ĐỐNG ĐA, H&Agrave; NỘI.</p>\r\n\r\n<p>130M2,&nbsp;8 TẦNG, THANG M&Aacute;Y,&nbsp;6M MẶT TIỀN.</p>\r\n\r\n<p>CHO THU&Ecirc; 120TR/TH&Aacute;NG.</p>\r\n', '', '', 'english version <p>- Hiện chủ cho&nbsp;thu&ecirc; 5 tầng, thu 120tr/th.<br />\r\n- Chủ thiết kế mỗi tầng 1 ph&ograve;ng phủ rộng to&agrave;n diện t&iacute;ch s&agrave;n<br />\r\n- T&ograve;a n&agrave;y đặc biệt th&ocirc;ng 2 mặt phố, gara tầng hầm đi xuy&ecirc;n cả 2 cửa.<br />\r\n- Chủ thiết kế đ&uacute;ng chuẩn cho thu&ecirc; văn ph&ograve;ng, kh&ocirc;ng thiếu hạng mục n&agrave;o.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ddnd1', 'DDND1', '', ''),
(97, 55, 'vn', 'HÀNG MẮM - HÀNG BẠC - HOÀN KIẾM - MS001', '<p><strong>MẶT ĐƯỜNG PHỐ CỔ, PHỐ H&Agrave;NG MẮM, P.H&Agrave;NG BẠC, Q.HO&Agrave;N KIẾM.</strong></p>\r\n\r\n<p><strong>140M2, 3 TẦNG, 8.6M MẶT TIỀN.</strong></p>\r\n', '', '', '<p>+ Sổ đỏ đẹp, mặt tiền rộng.&nbsp;<br />\r\n+ Nh&agrave; nằm ngay ng&atilde; tư H&agrave;ng Mắm + H&agrave;ng Tre vị tr&iacute; cực đỉnh.<br />\r\n+ Nh&agrave; một chủ, sổ sạch, ri&ecirc;ng biệt, b&agrave;n giao ngay, giao dịch thuận tiện.<br />\r\n+ Nh&agrave; hiện đang cho thu&ecirc; l&agrave;m Nh&agrave; H&agrave;ng gần 2 tỷ/ năm, rất đ&ocirc;ng kh&aacute;ch T&acirc;y.<br />\r\n+ Nh&agrave; nằm tr&ecirc;n tuyến phố cực thuận lợi giao nhau với phố Nguyễn Hữu Hu&acirc;n v&agrave; H&agrave;ng Tre.&nbsp;<br />\r\n+ Chủ nh&agrave; mong muốn b&aacute;n cho Kh&aacute;ch mua v&agrave; cho thu&ecirc; lại v&igrave; 2020 mới hết HĐ thu&ecirc;.<br />\r\n+ Kh&aacute;ch mua được nh&agrave; n&agrave;y th&igrave; c&oacute; cơ hội mua th&ecirc;m nh&agrave; b&ecirc;n trong rất rẻ v&agrave; nh&agrave; mặt phố H&agrave;ng Tre th&igrave; th&agrave;nh hai mặt phố cực Đắc địa.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hang-mam-hang-bac-hoan-kiem-ms001', 'HÀNG MẮM - HÀNG BẠC - HOÀN KIẾM - MS001', '', ''),
(98, 55, 'en', 'english version HKHM1', 'english version <p><strong>MẶT ĐƯỜNG PHỐ CỔ, PHỐ H&Agrave;NG MẮM, HO&Agrave;N KIẾM.</strong></p>\r\n\r\n<p><strong>140M2, 3 TẦNG, 8.6M MẶT TIỀN.</strong></p>\r\n', '', '', 'english version <p>+ Sổ đỏ đẹp, mặt tiền rộng.&nbsp;<br />\r\n+ Nh&agrave; nằm ngay ng&atilde; tư H&agrave;ng Mắm + H&agrave;ng Tre vị tr&iacute; cực đỉnh.<br />\r\n+ Nh&agrave; một chủ, sổ sạch, ri&ecirc;ng biệt, b&agrave;n giao ngay, giao dịch thuận tiện.<br />\r\n+ Nh&agrave; hiện đang cho thu&ecirc; l&agrave;m Nh&agrave; H&agrave;ng gần 2 tỷ/ năm, rất đ&ocirc;ng kh&aacute;ch T&acirc;y.<br />\r\n+ Nh&agrave; nằm tr&ecirc;n tuyến phố cực thuận lợi giao nhau với phố Nguyễn Hữu Hu&acirc;n v&agrave; H&agrave;ng Tre.&nbsp;<br />\r\n+ Chủ nh&agrave; mong muốn b&aacute;n cho Kh&aacute;ch mua v&agrave; cho thu&ecirc; lại v&igrave; 2020 mới hết HĐ thu&ecirc;.<br />\r\n+ Kh&aacute;ch mua được nh&agrave; n&agrave;y th&igrave; c&oacute; cơ hội mua th&ecirc;m nh&agrave; b&ecirc;n trong rất rẻ v&agrave; nh&agrave; mặt phố H&agrave;ng Tre th&igrave; th&agrave;nh hai mặt phố cực Đắc địa.</p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hkhm1', 'HKHM1', '', ''),
(99, 56, 'vn', 'KIM NGƯU - THANH LƯƠNG - HA BÀ TRƯNG - MS001', '<p><strong>PHỐ KIM NGƯU - HAI B&Agrave; TRƯNG</strong></p>\r\n\r\n<p><strong>VỈA H&Egrave; Đ&Aacute; B&Oacute;NG - &Ocirc; T&Ocirc; TR&Aacute;NH - AN NINH TUYỆT ĐỐI.</strong></p>\r\n', '', '', '<p><strong>Đặc điểm:<br />\r\n+ Hướng: T&acirc;y chếch Nam.&nbsp;<br />\r\n+ Sổ đỏ: Nở hậu.&nbsp;<br />\r\n+ Quận Hai B&agrave; Trưng, gần&nbsp;phường Thanh Lương. Đường &ocirc; t&ocirc; tr&aacute;nh, vỉa h&egrave; 5m.<br />\r\n+ Ng&otilde; 325 Kim Ngưu sắp lấp s&ocirc;ng v&agrave; mở rộng, dự đẹp tuyệt vời.&nbsp;<br />\r\n+ Thiết kế 4 tầng đẹp, chắc chắn, mặt tiền rộng hết sức lợi thế. Từng cho trường mầm non thu&ecirc; kinh doanh. Hiện đ&atilde; lấy nh&agrave; về để b&aacute;n.<br />\r\n+ Nh&agrave; cũ chủ mới tặng em ấy một lớp &aacute;o hẳn sẽ lộng lẫy.<br />\r\n+ An ninh tuyệt đối, bảo vệ 24/24.</strong></p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'kim-nguu-thanh-luong-ha-ba-trung-ms001', 'KIM NGƯU - THANH LƯƠNG - HA BÀ TRƯNG - MS001', '', ''),
(100, 56, 'en', 'english version HBTKN1', 'english version <p><strong>VỈA H&Egrave; Đ&Aacute; B&Oacute;NG - &Ocirc; T&Ocirc; TR&Aacute;NH - AN NINH TUYỆT ĐỐI.</strong></p>\r\n', '', '', 'english version <p><strong>Đặc điểm:<br />\r\n+ Hướng: T&acirc;y chếch Nam.&nbsp;<br />\r\n+ Sổ đỏ: Nở hậu.&nbsp;<br />\r\n+ Quận Hai B&agrave; Trưng, gần&nbsp;phường Thanh Lương. Đường &ocirc; t&ocirc; tr&aacute;nh, vỉa h&egrave; 5m.<br />\r\n+ Ng&otilde; 325 Kim Ngưu sắp lấp s&ocirc;ng v&agrave; mở rộng, dự đẹp tuyệt vời.&nbsp;<br />\r\n+ Thiết kế 4 tầng đẹp, chắc chắn, mặt tiền rộng hết sức lợi thế. Từng cho trường mầm non thu&ecirc; kinh doanh. Hiện đ&atilde; lấy nh&agrave; về để b&aacute;n.<br />\r\n+ Nh&agrave; cũ chủ mới tặng em ấy một lớp &aacute;o hẳn sẽ lộng lẫy.<br />\r\n+ An ninh tuyệt đối, bảo vệ 24/24.</strong></p>\r\n', '', '', '2019-04-11', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hbtkn1', 'HBTKN1', '', ''),
(101, 57, 'vn', 'TRẦN DUY HƯNG - TRUNG HÒA - CẦU GIẤY - MS001', '<p>MẶT NG&Otilde; KINH DOANH, &Ocirc; T&Ocirc; TR&Aacute;NH, C&Aacute;CH ĐƯỜNG 30M.</p>\r\n\r\n<p>ĐƯỜNG TRẦN DUY HƯNG, CẦU GIẤY, H&Agrave; NỘI,&nbsp;57M2,&nbsp;5 TẦNG,&nbsp;4.7M MT.</p>\r\n', '', '', '', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tran-duy-hung-trung-hoa-cau-giay-ms001', 'TRẦN DUY HƯNG - TRUNG HÒA - CẦU GIẤY - MS001', '', ''),
(102, 57, 'en', 'english version CGTDH1', 'english version <p>MẶT NG&Otilde; KINH DOANH, &Ocirc; T&Ocirc; TR&Aacute;NH, C&Aacute;CH ĐƯỜNG 30M.</p>\r\n\r\n<p>ĐƯỜNG TRẦN DUY HƯNG, CẦU GIẤY, H&Agrave; NỘI,&nbsp;57M2,&nbsp;5 TẦNG,&nbsp;4.7M MT.</p>\r\n', '', '', 'english version ', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cgtdh1', 'CGTDH1', '', ''),
(103, 58, 'vn', 'TRƯỜNG CHINH - KHƯƠNG THƯỢNG - ĐỐNG ĐA - MS001', '<p><strong>ĐƯỜNG TRƯỜNG CHINH - P.KHƯƠNG THƯỢNG - ĐỐNG ĐA.</strong></p>\r\n\r\n<p><strong>Ng&otilde; Th&ocirc;ng - Kinh Doanh -&nbsp; Đong Đ&uacute;c, Sầm Uất - Hiếm 77 tr/m2</strong></p>\r\n\r\n<p><strong>47m2, 3.1m Mặt tiền, Ng&otilde; Rộng 2.5M</strong></p>\r\n', '', '', '<p><strong>+ L&ocirc; đất vu&ocirc;ng vắn, nhỏ tiền vừa miếng m&agrave; biết bao người săn đ&oacute;n ở Trường Chinh.<br />\r\n+ Đất từ thời cha &ocirc;ng để lại, nở hậu. C&aacute;ch mặt phố Trường Chinh rất gần, ng&otilde; trước nh&agrave; th&ocirc;ng sang Hồ Khương Thượng sau đ&oacute; th&ocirc;ng tứ ph&iacute;a. Chiều t&agrave; bước 3 bước ra Hồ uống bia ngắm cảnh chơi cờ.<br />\r\n+ Đường trước nh&agrave; 3.5m, &ocirc; t&ocirc; th&igrave; t&ugrave;y tay l&aacute;i c&ograve;n xe thương binh th&igrave; nhắm mắt m&agrave; đi cũng được.&nbsp;<br />\r\n*** Tư vấn :&nbsp;<br />\r\nTh&ecirc;m 1 tỷ x&acirc;y nh&agrave; th&igrave; sẽ c&oacute; nh&agrave; mới đẹp 100tr/m2 khu vực l&otilde;i Đống Đa kinh doanh tốt, ở cũng th&iacute;ch.<br />\r\nSau khi ho&agrave;n th&agrave;nh quy hoạch đường Trường Chinh th&igrave; hạ tầng khu vực sẽ tăng l&ecirc;n, đẹp hơn k&eacute;o theo gi&aacute; trị căn nh&agrave; sẽ tốt hơn nhiều.<br />\r\nMiếng đất hiếm hoi c&ograve;n lại vừa miếng, tư vấn kh&aacute;ch ko mua nhanh l&agrave; mất.<br />\r\nGia chủ hiền l&agrave;nh, phong thủy tốt, nở hậu sau c&oacute; khe tho&aacute;ng rất tiện để x&acirc;y dựng.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'truong-chinh-khuong-thuong-dong-da-ms001', 'TRƯỜNG CHINH - KHƯƠNG THƯỢNG - ĐỐNG ĐA - MS001', '', ''),
(104, 58, 'en', 'english version DDTC1', 'english version <p><strong>ĐỐNG ĐA - NG&Otilde; TH&Ocirc;NG - KINH DOANH - Đ&Ocirc;NG Đ&Uacute;C, SẦM UẤT - HIẾM - 77tr/m2</strong></p>\r\n\r\n<p><strong>47M2, 3.1M MẶT TIỀN, NG&Otilde; RỘNG 2.5M.</strong></p>\r\n', '', '', 'english version <p><strong>+ L&ocirc; đất vu&ocirc;ng vắn, nhỏ tiền vừa miếng m&agrave; biết bao người săn đ&oacute;n ở Trường Chinh.<br />\r\n+ Đất từ thời cha &ocirc;ng để lại, nở hậu. C&aacute;ch mặt phố Trường Chinh rất gần, ng&otilde; trước nh&agrave; th&ocirc;ng sang Hồ Khương Thượng sau đ&oacute; th&ocirc;ng tứ ph&iacute;a. Chiều t&agrave; bước 3 bước ra Hồ uống bia ngắm cảnh chơi cờ.<br />\r\n+ Đường trước nh&agrave; 3.5m, &ocirc; t&ocirc; th&igrave; t&ugrave;y tay l&aacute;i c&ograve;n xe thương binh th&igrave; nhắm mắt m&agrave; đi cũng được.&nbsp;<br />\r\n*** Tư vấn :&nbsp;<br />\r\nTh&ecirc;m 1 tỷ x&acirc;y nh&agrave; th&igrave; sẽ c&oacute; nh&agrave; mới đẹp 100tr/m2 khu vực l&otilde;i Đống Đa kinh doanh tốt, ở cũng th&iacute;ch.<br />\r\nSau khi ho&agrave;n th&agrave;nh quy hoạch đường Trường Chinh th&igrave; hạ tầng khu vực sẽ tăng l&ecirc;n, đẹp hơn k&eacute;o theo gi&aacute; trị căn nh&agrave; sẽ tốt hơn nhiều.<br />\r\nMiếng đất hiếm hoi c&ograve;n lại vừa miếng, tư vấn kh&aacute;ch ko mua nhanh l&agrave; mất.<br />\r\nGia chủ hiền l&agrave;nh, phong thủy tốt, nở hậu sau c&oacute; khe tho&aacute;ng rất tiện để x&acirc;y dựng.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ddtc1', 'DDTC1', '', ''),
(105, 59, 'vn', 'NGUYỄN THÁI HỌC - KIM MÃ - BA ĐÌNH - MS001', '<p><strong>KH&Aacute;CH SẠN PHỐ NGUYỄN TH&Aacute;I HỌC, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>&nbsp;105M2, 7 TẦNG, THANG M&Aacute;Y,&nbsp;4.3M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>+ Nh&agrave; c&oacute; vị tr&iacute; đẹp, ngay đầu Giảng V&otilde; &ndash; Nguyễn Th&aacute;i Học &ndash; Kim M&atilde;, hiện đang cho Kh&aacute;ch sạn A25 thu&ecirc; với gi&aacute; 3200USD/th&aacute;ng.<br />\r\n+ Kh&aacute;ch sạn&nbsp;với 21 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n cho thu&ecirc; gồm ph&ograve;ng ti&ecirc;u chuẩn, ph&ograve;ng cao cấp, ph&ograve;ng sang trọng; doanh thu 650 triệu / th&aacute;ng. T&ograve;a nh&agrave; gồm 7 tầng x&acirc;y BTCT chắc chắn, thang m&aacute;y chạy &ecirc;m ru được kh&aacute;ch sạn bảo tr&igrave; định kỳ h&agrave;ng th&aacute;ng.<br />\r\n- Tầng 1: Sảnh lễ t&acirc;n, WC v&agrave; 1 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n.<br />\r\n- Tầng 2-6: Mỗi tầng 4 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n.<br />\r\n- Tầng 7: Ph&ograve;ng nghỉ nh&acirc;n vi&ecirc;n, giặt l&agrave; v&agrave; khu phơi đồ vải.<br />\r\n+ Tọa lạc tại vị tr&iacute; trung t&acirc;m quận Ba Đ&igrave;nh - H&agrave; Nội, từ&nbsp;Nguyễn Th&aacute;i Học Qu&yacute; chỉ cần khoảng 5 ph&uacute;t đi bộ để tới Lăng chủ tịch Hồ Ch&iacute; Minh hoặc Văn Miếu Quốc Tử Gi&aacute;m.&nbsp;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nguyen-thai-hoc-kim-ma-ba-dinh-ms001', 'NGUYỄN THÁI HỌC - KIM MÃ - BA ĐÌNH - MS001', '', ''),
(106, 59, 'en', 'english version BBNTH1', 'english version <p><strong>KH&Aacute;CH SẠN PHỐ NGUYỄN TH&Aacute;I HỌC, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>&nbsp;105M2, 7 TẦNG, THANG M&Aacute;Y,&nbsp;4.3M MẶT TIỀN.</strong></p>\r\n', '', '', 'english version <p><strong>+ Nh&agrave; c&oacute; vị tr&iacute; đẹp, ngay đầu Giảng V&otilde; &ndash; Nguyễn Th&aacute;i Học &ndash; Kim M&atilde;, hiện đang cho Kh&aacute;ch sạn A25 thu&ecirc; với gi&aacute; 3200USD/th&aacute;ng.<br />\r\n+ Kh&aacute;ch sạn&nbsp;với 21 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n cho thu&ecirc; gồm ph&ograve;ng ti&ecirc;u chuẩn, ph&ograve;ng cao cấp, ph&ograve;ng sang trọng; doanh thu 650 triệu / th&aacute;ng. T&ograve;a nh&agrave; gồm 7 tầng x&acirc;y BTCT chắc chắn, thang m&aacute;y chạy &ecirc;m ru được kh&aacute;ch sạn bảo tr&igrave; định kỳ h&agrave;ng th&aacute;ng.<br />\r\n- Tầng 1: Sảnh lễ t&acirc;n, WC v&agrave; 1 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n.<br />\r\n- Tầng 2-6: Mỗi tầng 4 ph&ograve;ng nghỉ kh&eacute;p k&iacute;n.<br />\r\n- Tầng 7: Ph&ograve;ng nghỉ nh&acirc;n vi&ecirc;n, giặt l&agrave; v&agrave; khu phơi đồ vải.<br />\r\n+ Tọa lạc tại vị tr&iacute; trung t&acirc;m quận Ba Đ&igrave;nh - H&agrave; Nội, từ&nbsp;Nguyễn Th&aacute;i Học Qu&yacute; chỉ cần khoảng 5 ph&uacute;t đi bộ để tới Lăng chủ tịch Hồ Ch&iacute; Minh hoặc Văn Miếu Quốc Tử Gi&aacute;m.&nbsp;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bbnth1', 'BBNTH1', '', ''),
(107, 60, 'vn', 'NGUYỄN NHƯ ĐỔ - VĂN MIẾU - ĐỐNG ĐA - MS001', '<p><strong>MẶT PHỐ NGUYỄN NHƯ ĐỔ, ĐỐNG ĐA, KINH DOANH, H&Agrave; NỘI&nbsp;- 8 TẦNG - 5.4M MẶT TIỀN -&nbsp;7.9 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Hướng: Bắc.&nbsp;<br />\r\n+ Sổ vu&ocirc;ng đ&eacute;t. Từ tầng 2 đua ra th&agrave;nh 29m2.&nbsp;<br />\r\n+ Mặt phố Đống Đa, kinh doanh sầm uất, tầm tiền cực hiếm.&nbsp;<br />\r\n+ Nh&agrave; x&acirc;y 8 tầng ki&ecirc;n cố, mỗi tầng chia 2 ph&ograve;ng kh&eacute;p k&iacute;n, tổng 12 ph&ograve;ng. Ph&ugrave; hợp kinh doanh nh&agrave; nghỉ, kh&aacute;ch sạn.&nbsp;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nguyen-nhu-do-van-mieu-dong-da-ms001', 'NGUYỄN NHƯ ĐỔ - VĂN MIẾU - ĐỐNG ĐA - MS001', '', ''),
(108, 60, 'en', 'english version DDNND1', 'english version <p><strong>MẶT PHỐ ĐỐNG ĐA, KINH DOANH, H&Agrave; NỘI&nbsp;- 8 TẦNG - 5.4M MẶT TIỀN -&nbsp;7.9 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>+ Hướng: Bắc.&nbsp;<br />\r\n+ Sổ vu&ocirc;ng đ&eacute;t. Từ tầng 2 đua ra th&agrave;nh 29m2.&nbsp;<br />\r\n+ Mặt phố Đống Đa, kinh doanh sầm uất, tầm tiền cực hiếm.&nbsp;<br />\r\n+ Nh&agrave; x&acirc;y 8 tầng ki&ecirc;n cố, mỗi tầng chia 2 ph&ograve;ng kh&eacute;p k&iacute;n, tổng 12 ph&ograve;ng. Ph&ugrave; hợp kinh doanh nh&agrave; nghỉ, kh&aacute;ch sạn.&nbsp;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ddnnd1', 'DDNND1', '', ''),
(109, 61, 'vn', 'CAO BÁ QUÁT - ĐIỆN BIÊN - BA ĐÌNH - MS001', '<p><strong>MẶT ĐƯỜNG CAO B&Aacute; QU&Aacute;T, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>45M2, 4 TẦNG, L&Ocirc; G&Oacute;C. KINH DOANH, 5.2M MẶT TIỀN.</strong></p>\r\n', '', '', '<p>+ Nh&agrave; 4 tầng x&acirc;y dựng chắc chắn.<br />\r\n+ Khu trung t&acirc;m quận Ba Đ&igrave;nh, phố chuy&ecirc;n d&aacute;n, t&acirc;n trang &ocirc; t&ocirc;, xe m&aacute;y nổi tiếng, kinh doanh tấp nập.&nbsp;<br />\r\n+ Chủ đang cho thu&ecirc; tạm 20 triệu/th&aacute;ng để giữ nh&agrave;, chờ b&aacute;n. Thực tế trước l&agrave; 50 triệu/th&aacute;ng.</p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cao-ba-quat-dien-bien-ba-dinh-ms001', 'CAO BÁ QUÁT - ĐIỆN BIÊN - BA ĐÌNH - MS001', '', ''),
(110, 61, 'en', 'english version BBCBQ1', 'english version <p><strong>MẶT ĐƯỜNG CAO B&Aacute; QU&Aacute;T, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>45M2, 4 TẦNG, L&Ocirc; G&Oacute;C. KINH DOANH, 5.2M MẶT TIỀN.</strong></p>\r\n', '', '', 'english version <p>+ Nh&agrave; 4 tầng x&acirc;y dựng chắc chắn.<br />\r\n+ Khu trung t&acirc;m quận Ba Đ&igrave;nh, phố chuy&ecirc;n d&aacute;n, t&acirc;n trang &ocirc; t&ocirc;, xe m&aacute;y nổi tiếng, kinh doanh tấp nập.&nbsp;<br />\r\n+ Chủ đang cho thu&ecirc; tạm 20 triệu/th&aacute;ng để giữ nh&agrave;, chờ b&aacute;n. Thực tế trước l&agrave; 50 triệu/th&aacute;ng.</p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bbcbq1', 'BBCBQ1', '', ''),
(111, 62, 'vn', 'BÁT SỨ - HÀNG BỒ - HOÀN KIẾM - MS001', '<p><strong>L&Ocirc; G&Oacute;C 2 MẶT PHỐ -&nbsp;MẶT ĐƯỜNG&nbsp;B&Aacute;T SỨ - HO&Agrave;N KIẾM - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>60M2, 4 TẦNG,&nbsp;15M MẶT TIỀN, KINH DOANH DỊCH VỤ TỐT.</strong></p>\r\n', '', '', '', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bat-su-hang-bo-hoan-kiem-ms001', 'BÁT SỨ - HÀNG BỒ - HOÀN KIẾM - MS001', '', ''),
(112, 62, 'en', 'english version HKBS1', 'english version <p><strong>L&Ocirc; G&Oacute;C 2 MẶT PHỐ -&nbsp;MẶT ĐƯỜNG&nbsp;B&Aacute;T SỨ - HO&Agrave;N KIẾM - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>60M2, 4 TẦNG,&nbsp;15M MẶT TIỀN, KINH DOANH DỊCH VỤ TỐT.</strong></p>\r\n', '', '', 'english version ', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hkbs1', 'HKBS1', '', ''),
(113, 63, 'vn', 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS002', '<p><strong>MẶT ĐƯỜNG CỬA Đ&Ocirc;NG, HO&Agrave;N KIẾM, H&Agrave; NỘI,&nbsp;VỈA H&Egrave; TO, KINH DOANH TỐT.</strong></p>\r\n\r\n<p><strong>86M2, 5 TẦNG,&nbsp;3.5M MẶT TIỀN,&nbsp;32 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ M&ocirc; tả: Vị tr&iacute; căn nh&agrave; cực đẹp nằm tr&ecirc;n mặt phố Cửa Đ&ocirc;ng giao cắt ng&atilde; ba L&yacute; Nam Đế, đoạn vỉa h&egrave; đẹp nhất. Kinh doanh tốt.&nbsp;<br />\r\n+ Nh&agrave; x&acirc;y cực chắc chắn thiết kế cầu thang giữa chia đ&ocirc;i, đằng sau nh&agrave; c&oacute; giếng trời. Hiện đang cho h&atilde;ng Spa nổi tiếng nhất Phố cổ thu&ecirc;, c&ocirc;ng năng được sử dụng tối đa.&nbsp;<br />\r\n+ Với tầm ph&acirc;n kh&uacute;c gi&aacute; qu&aacute; hợp l&yacute; với gi&aacute; ch&agrave;o 370TR/M2 như n&agrave;y tuy mặt tiền c&oacute; hơi nhỏ so với tổng diện t&iacute;ch nhưng rất xứng đ&aacute;ng với tầm tiền, tầm gi&aacute; trị, khả năng thanh khoản v&agrave; độ hiếm nhất định. Hiện đang cho thuệ nhẹ nh&agrave;ng 80TR/Th&aacute;ng.&nbsp;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-dong-cua-dong-hoan-kiem-ms002', 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS002', '', ''),
(114, 63, 'en', 'english version KHCD1', 'english version <p><strong>MẶT ĐƯỜNG CỬA Đ&Ocirc;NG, HO&Agrave;N KIẾM, H&Agrave; NỘI,&nbsp;VỈA H&Egrave; TO, KINH DOANH TỐT.</strong></p>\r\n\r\n<p><strong>86M2, 5 TẦNG,&nbsp;3.5M MẶT TIỀN,&nbsp;32 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>+ M&ocirc; tả: Vị tr&iacute; căn nh&agrave; cực đẹp nằm tr&ecirc;n mặt phố Cửa Đ&ocirc;ng giao cắt ng&atilde; ba L&yacute; Nam Đế, đoạn vỉa h&egrave; đẹp nhất. Kinh doanh tốt.&nbsp;<br />\r\n+ Nh&agrave; x&acirc;y cực chắc chắn thiết kế cầu thang giữa chia đ&ocirc;i, đằng sau nh&agrave; c&oacute; giếng trời. Hiện đang cho h&atilde;ng Spa nổi tiếng nhất Phố cổ thu&ecirc;, c&ocirc;ng năng được sử dụng tối đa.&nbsp;<br />\r\n+ Với tầm ph&acirc;n kh&uacute;c gi&aacute; qu&aacute; hợp l&yacute; với gi&aacute; ch&agrave;o 370TR/M2 như n&agrave;y tuy mặt tiền c&oacute; hơi nhỏ so với tổng diện t&iacute;ch nhưng rất xứng đ&aacute;ng với tầm tiền, tầm gi&aacute; trị, khả năng thanh khoản v&agrave; độ hiếm nhất định. Hiện đang cho thuệ nhẹ nh&agrave;ng 80TR/Th&aacute;ng.&nbsp;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-khcd1', 'KHCD1', '', ''),
(115, 64, 'vn', 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS001', '<p><strong>KH&Aacute;CH SẠN PHỐ CỬA Đ&Ocirc;NG, HO&Agrave;N KIẾM,&nbsp;80M2, 6 TẦNG, THANG M&Aacute;Y, 4.2M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>+ Vị tr&iacute; rất đẹp ngay cạnh Dung Ho&agrave; Palace, v&agrave;i bước ch&acirc;n ra ng&atilde; 5 H&agrave;ng G&agrave; - Cửa Đ&ocirc;ng - H&agrave;ng Ph&egrave;n - Nh&agrave; Hoả. Đường 2 chiều vỉa h&egrave; rộng, để xe m&aacute;y, &ocirc; t&ocirc; dừng đỗ thoải m&aacute;i.<br />\r\n+ Nh&agrave; x&acirc;y 6 tầng thang m&aacute;y, thiết kế tầng 3 ph&ograve;ng thang m&aacute;y giữa(trước 2 ph&ograve;ng, sau 1 ph&ograve;ng). Tổng 17 ph&ograve;ng, gi&aacute; cho thu&ecirc; hữu nghị 50 triệu/th&aacute;ng.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cua-dong-cua-dong-hoan-kiem-ms001', 'CỬA ĐÔNG - CỬA ĐÔNG - HOÀN KIẾM - MS001', '', ''),
(116, 64, 'en', 'english version HKCD2', 'english version <p><strong>KH&Aacute;CH SẠN PHỐ CỬA Đ&Ocirc;NG, HO&Agrave;N KIẾM,&nbsp;80M2, 6 TẦNG, THANG M&Aacute;Y, 4.2M MẶT TIỀN.</strong></p>\r\n', '', '', 'english version <p><strong>+ Vị tr&iacute; rất đẹp ngay cạnh Dung Ho&agrave; Palace, v&agrave;i bước ch&acirc;n ra ng&atilde; 5 H&agrave;ng G&agrave; - Cửa Đ&ocirc;ng - H&agrave;ng Ph&egrave;n - Nh&agrave; Hoả. Đường 2 chiều vỉa h&egrave; rộng, để xe m&aacute;y, &ocirc; t&ocirc; dừng đỗ thoải m&aacute;i.<br />\r\n+ Nh&agrave; x&acirc;y 6 tầng thang m&aacute;y, thiết kế tầng 3 ph&ograve;ng thang m&aacute;y giữa(trước 2 ph&ograve;ng, sau 1 ph&ograve;ng). Tổng 17 ph&ograve;ng, gi&aacute; cho thu&ecirc; hữu nghị 50 triệu/th&aacute;ng.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hkcd2', 'HKCD2', '', ''),
(117, 65, 'vn', 'DÃ TƯỢNG - TRẦN HƯNG ĐẠO - HOÀN KIẾM - MS001', '<p><strong>MẶT ĐƯỜNG L&Ocirc; G&Oacute;C, PHỐ D&Atilde; TƯỢNG, HO&Agrave;N KIẾM, KINH DOANH H&Egrave; RỘNG.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>+ Hướng TTT.<br />\r\n+ Nh&agrave; l&ocirc; g&oacute;c, 3 mặt tho&aacute;ng vĩnh viễn, x&acirc;y cuối năm 2009, tầng 2 ph&ograve;ng ngủ, 1wc, c&ograve;n đầy đủ GPXD; Vỉa h&egrave; 2 b&ecirc;n rộng th&ecirc;nh thang, khu n&agrave;y rất &iacute;t nh&agrave; b&aacute;n, c&oacute; nhiều người nước ngo&agrave;i sinh sống, tọa lạc giữa trung t&acirc;m quận Ho&agrave;n Kiếm, kinh doanh sầm uất ng&agrave;y đ&ecirc;m.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'da-tuong-tran-hung-dao-hoan-kiem-ms001', 'DÃ TƯỢNG - TRẦN HƯNG ĐẠO - HOÀN KIẾM - MS001', '', ''),
(118, 65, 'en', 'english version HKDT1', 'english version <p><strong>MẶT ĐƯỜNG L&Ocirc; G&Oacute;C, PHỐ D&Atilde; TƯỢNG, HO&Agrave;N KIẾM, KINH DOANH H&Egrave; RỘNG.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'english version <p><strong>+ Hướng TTT.<br />\r\n+ Nh&agrave; l&ocirc; g&oacute;c, 3 mặt tho&aacute;ng vĩnh viễn, x&acirc;y cuối năm 2009, tầng 2 ph&ograve;ng ngủ, 1wc, c&ograve;n đầy đủ GPXD; Vỉa h&egrave; 2 b&ecirc;n rộng th&ecirc;nh thang, khu n&agrave;y rất &iacute;t nh&agrave; b&aacute;n, c&oacute; nhiều người nước ngo&agrave;i sinh sống, tọa lạc giữa trung t&acirc;m quận Ho&agrave;n Kiếm, kinh doanh sầm uất ng&agrave;y đ&ecirc;m.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hkdt1', 'HKDT1', '', ''),
(119, 66, 'vn', 'ĐÀO DUY TỪ - HÀNG BUỒM - HOÀN KIẾM - MS001', '<p><strong>KH&Aacute;CH SẠN PHỐ Đ&Agrave;O DUY TỪ, 9 TẦNG, THANG M&Aacute;Y, 84M2,&nbsp;HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n', '', '', '<p><strong>+ Sổ đỏ nở hậu, một sổ một chủ đứng t&ecirc;n.<br />\r\n+ Chủ nh&agrave; trước tự kinh doanh, nay cho thu&ecirc; lại với gi&aacute; 150 triệu/th&aacute;ng. Tổng 22 ph&ograve;ng, chủ ở 2 tầng tr&ecirc;n c&ograve;n lại 16 ph&ograve;ng cho thu&ecirc; l&uacute;c n&agrave;o cũng k&iacute;n ph&ograve;ng, l&agrave; nh&agrave; duy nhất trong phố c&oacute; tầng hầm, hiện l&agrave;m ph&ograve;ng ăn cho kh&aacute;ch, c&oacute; thể chuyển đổi c&ocirc;ng năng th&agrave;nh ph&ograve;ng massage cho kh&aacute;ch hoặc nhiều chức năng kh&aacute;c.<br />\r\n+ Nh&agrave; nằm đ&uacute;ng ng&atilde; tư Chợ Gạo, Đ&agrave;o Duy Từ.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dao-duy-tu-hang-buom-hoan-kiem-ms001', 'ĐÀO DUY TỪ - HÀNG BUỒM - HOÀN KIẾM - MS001', '', ''),
(120, 66, 'en', 'english version HKDDT', 'english version <p><strong>KH&Aacute;CH SẠN PHỐ Đ&Agrave;O DUY TỪ, 9 TẦNG, THANG M&Aacute;Y, 84M2,&nbsp;HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n', '', '', 'english version <p><strong>+ Sổ đỏ nở hậu, một sổ một chủ đứng t&ecirc;n.<br />\r\n+ Chủ nh&agrave; trước tự kinh doanh, nay cho thu&ecirc; lại với gi&aacute; 150 triệu/th&aacute;ng. Tổng 22 ph&ograve;ng, chủ ở 2 tầng tr&ecirc;n c&ograve;n lại 16 ph&ograve;ng cho thu&ecirc; l&uacute;c n&agrave;o cũng k&iacute;n ph&ograve;ng, l&agrave; nh&agrave; duy nhất trong phố c&oacute; tầng hầm, hiện l&agrave;m ph&ograve;ng ăn cho kh&aacute;ch, c&oacute; thể chuyển đổi c&ocirc;ng năng th&agrave;nh ph&ograve;ng massage cho kh&aacute;ch hoặc nhiều chức năng kh&aacute;c.<br />\r\n+ Nh&agrave; nằm đ&uacute;ng ng&atilde; tư Chợ Gạo, Đ&agrave;o Duy Từ.</strong></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hkddt', 'HKDDT', '', ''),
(121, 67, 'vn', 'TRẦN PHÚ - KIM MÃ - BA ĐÌNH - MS001', '<p><strong>ĐẤT MẶT ĐƯỜNG TRẦN PH&Uacute;, KIM M&Atilde;, 2 MẶT ĐƯỜNG, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>60M2, 4.2M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>Trần Ph&uacute; gần đoạn giao Kim M&atilde;, hiện chủ cho thu&ecirc; Cửa h&agrave;ng sắt vụn.<br />\r\nHiện trạng nh&agrave; Cấp 4, vị tr&iacute; rất đẹp lại hai mặt phố đẹp Quận Ba Đ&igrave;nh l&agrave; Sơn T&acirc;y v&agrave; Trần Ph&uacute;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tran-phu-kim-ma-ba-dinh-ms001', 'TRẦN PHÚ - KIM MÃ - BA ĐÌNH - MS001', '', ''),
(122, 67, 'en', 'english version BBTP1', 'english version <p><strong>ĐẤT MẶT ĐƯỜNG TRẦN PH&Uacute;, KIM M&Atilde;, 2 MẶT ĐƯỜNG, BA Đ&Igrave;NH, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>60M2, 4.2M MẶT TIỀN.</strong></p>\r\n', '', '', 'english version <p><strong>Trần Ph&uacute; gần đoạn giao Kim M&atilde;, hiện chủ cho thu&ecirc; Cửa h&agrave;ng sắt vụn.<br />\r\nHiện trạng nh&agrave; Cấp 4, vị tr&iacute; rất đẹp lại hai mặt phố đẹp Quận Ba Đ&igrave;nh l&agrave; Sơn T&acirc;y v&agrave; Trần Ph&uacute;</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bbtp1', 'BBTP1', '', ''),
(123, 68, 'vn', 'ĐINH LIỆT - HÀNG BẠC - HOÀN KIẾM - MS001', '<p><strong>TRUNG T&Acirc;M PHỐ CỔ.</strong></p>\r\n\r\n<p><strong>MẶT ĐƯỜNG ĐINH LIỆT, HO&Agrave;N KIẾM, 64M2, 5 TẦNG, 3.3M MẶT TIỀN, KINH DOANH ĐỈNH.</strong></p>\r\n', '', '', '<p><strong>- Sổ đỏ đẹp.<br />\r\n- Nh&agrave; toạ lạc phố Đinh Liệt đi bộ 2 ph&uacute;t ra hồ Ho&agrave;n Kiếm, nối với phố Tạ Hiện nổi tiếng về ăn chơi. Kh&aacute;ch nước ngo&agrave;i đi như chẩy hội suốt ng&agrave;y.<br />\r\n- Chủ nh&agrave; đang vừa ở vừa cho thu&ecirc; 60 triệu/ th&aacute;ng, chủ b&aacute;n đi để chia cho c&aacute;c con.<br />\r\n- Kh&aacute;ch h&agrave;ng sở hữu được căn nh&agrave; n&agrave;y thể hiện được đẳng cấp v&agrave; được hưởng thụ văn ho&aacute; m&agrave; c&aacute;c du kh&aacute;ch quốc tế phải đổ dồn về đ&acirc;y.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dinh-liet-hang-bac-hoan-kiem-ms001', 'ĐINH LIỆT - HÀNG BẠC - HOÀN KIẾM - MS001', '', ''),
(124, 68, 'en', 'english version HKDL1', 'english version <p><strong>TRUNG T&Acirc;M PHỐ CỔ.</strong></p>\r\n\r\n<p><strong>MẶT ĐƯỜNG ĐINH LIỆT, HO&Agrave;N KIẾM, 64M2, 5 TẦNG, 3.3M MẶT TIỀN, KINH DOANH ĐỈNH.</strong></p>\r\n', '', '', 'english version <p><strong>- Sổ đỏ đẹp.<br />\r\n- Nh&agrave; toạ lạc phố Đinh Liệt đi bộ 2 ph&uacute;t ra hồ Ho&agrave;n Kiếm, nối với phố Tạ Hiện nổi tiếng về ăn chơi. Kh&aacute;ch nước ngo&agrave;i đi như chẩy hội suốt ng&agrave;y.<br />\r\n- Chủ nh&agrave; đang vừa ở vừa cho thu&ecirc; 60 triệu/ th&aacute;ng, chủ b&aacute;n đi để chia cho c&aacute;c con.<br />\r\n- Kh&aacute;ch h&agrave;ng sở hữu được căn nh&agrave; n&agrave;y thể hiện được đẳng cấp v&agrave; được hưởng thụ văn ho&aacute; m&agrave; c&aacute;c du kh&aacute;ch quốc tế phải đổ dồn về đ&acirc;y.</strong></p>\r\n', '', '', '2019-04-12', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hkdl1', 'HKDL1', '', ''),
(125, 69, 'vn', 'TRẦN QUANG DIỆU - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '<p><strong>PH&Acirc;N L&Ocirc; KINH DOANH, &Ocirc; T&Ocirc; TR&Aacute;NH, PHỐ TRẦN QUANG DIỆU.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH 45M2, 5 TẦNG, 3.7M MẶT TIỀN, CH&Agrave;O 10.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Sổ đỏ vu&ocirc;ng.<br />\r\n+ Khu ph&acirc;n l&ocirc; c&aacute;n bộ cấp cao, đường th&ocirc;ng ra V&otilde; Văn Dũng v&agrave; Ho&agrave;ng Cầu vỉa h&egrave; &ocirc; t&ocirc; dừng đỗ.&nbsp;<br />\r\n+ Nh&agrave; 5 tầng gia đ&igrave;nh tự x&acirc;y rất chắc chắn, m&oacute;ng c&oacute; thể l&ecirc;n tầng thoải m&aacute;i.&nbsp;<br />\r\n+ Thiết kế cầu thang v&agrave; vệ sinh cuối, mỗi tầng một ph&ograve;ng rộng.<br />\r\n+ Ng&otilde;&nbsp;ng&otilde; rộng v&agrave; kinh doanh cafe, văn ph&ograve;ng c&ocirc;ng ty sầm uất nhất tại Trần Quang Diệu.&nbsp;<br />\r\n+ Nh&agrave; hiện cho c&ocirc;ng ty của người quen thu&ecirc; l&agrave;m văn ph&ograve;ng.&nbsp;<br />\r\n+ Khu vực hiếm nh&agrave; b&aacute;n, rất nhiều kh&aacute;ch th&iacute;ch.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tran-quang-dieu-o-cho-dua-dong-da-ms001', 'TRẦN QUANG DIỆU - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '', ''),
(126, 69, 'en', 'english version DDTQD1', 'english version <p><strong>PH&Acirc;N L&Ocirc; KINH DOANH, &Ocirc; T&Ocirc; TR&Aacute;NH, PHỐ TRẦN QUANG DIỆU.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH 45M2, 5 TẦNG, 3.7M MẶT TIỀN, CH&Agrave;O 10.5 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>+ Sổ đỏ vu&ocirc;ng.<br />\r\n+ Khu ph&acirc;n l&ocirc; c&aacute;n bộ cấp cao, đường th&ocirc;ng ra V&otilde; Văn Dũng v&agrave; Ho&agrave;ng Cầu vỉa h&egrave; &ocirc; t&ocirc; dừng đỗ.&nbsp;<br />\r\n+ Nh&agrave; 5 tầng gia đ&igrave;nh tự x&acirc;y rất chắc chắn, m&oacute;ng c&oacute; thể l&ecirc;n tầng thoải m&aacute;i.&nbsp;<br />\r\n+ Thiết kế cầu thang v&agrave; vệ sinh cuối, mỗi tầng một ph&ograve;ng rộng.<br />\r\n+ Ng&otilde;&nbsp;ng&otilde; rộng v&agrave; kinh doanh cafe, văn ph&ograve;ng c&ocirc;ng ty sầm uất nhất tại Trần Quang Diệu.&nbsp;<br />\r\n+ Nh&agrave; hiện cho c&ocirc;ng ty của người quen thu&ecirc; l&agrave;m văn ph&ograve;ng.&nbsp;<br />\r\n+ Khu vực hiếm nh&agrave; b&aacute;n, rất nhiều kh&aacute;ch th&iacute;ch.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ddtqd1', 'DDTQD1', '', ''),
(127, 70, 'vn', 'NGUYỄN ĐÌNH THI - THỤY KHUÊ - TÂY HỒ - MS001', '<p><strong>VIEW HỒ T&Acirc;Y, PHỐ NGUYỄN THỊ ĐỊNH, T&Acirc;Y HỒ, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;368M2, 4 TẦNG,&nbsp;22M MẶT TIỀN, CH&Agrave;O&nbsp;125 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Vị tr&iacute; mặt phố Nguyễn Đ&igrave;nh Thi mặt HỒ T&Acirc;Y lộng gi&oacute; cực đẹp l&yacute; tưởng, 3 mặt cực tho&aacute;ng, phong thuỷ qu&aacute; l&yacute; tưởng.<br />\r\n- Với mặt tiền ch&iacute;nh (trước) bao la 22m, vỉa h&egrave; cực rộng.&nbsp;<br />\r\n- Một mặt ng&otilde; Thuỵ Khu&ecirc; rất rộng &ocirc; t&ocirc; v&agrave;o nh&agrave;.<br />\r\n+ Thửa đất với 2 khối nh&agrave;:<br />\r\n- Diện t&iacute;ch 1:&nbsp;232m2, mặt tiền 22m.<br />\r\n- Diện t&iacute;ch 2 nh&agrave; trong ng&otilde;: 171m2, ng&otilde; rộng 4m &ocirc; t&ocirc; với diện t&iacute;ch ng&otilde; đi chung: 34m2.<br />\r\n+ Nh&agrave; mặt phố Nguyễn Đ&igrave;nh Thi chủ cho thu&ecirc; 60 triệu/th&aacute;ng, nhưng giờ chủ để b&aacute;n n&ecirc;n kh&ocirc;ng cho thu&ecirc; nữa.<br />\r\n+ Vị tr&iacute; nh&agrave; đẹp kh&aacute;ch x&aacute;c định mua vị tr&iacute; về đập đi x&acirc;y to&agrave; nh&agrave; lớn 5 tầng mặt GỒ T&Acirc;Y kinh doanh nh&agrave; h&agrave;ng hoặc kh&aacute;ch sạn cho T&Acirc;Y thu&ecirc; ở.<br />\r\n+ Ph&aacute;p l&yacute;: Giấy tờ hợp đồng, quyết định, chứng từ cũng như thuế h&agrave;ng năm đầy đủ, đủ điều kiện l&agrave;m sổ đỏ. Chủ b&aacute;n hiện trạng, kh&aacute;ch mua tự l&agrave;m sổ đỏ chủ cung cấp đầy đủ giấy tờ đủ điều kiện l&agrave;m được sổ đỏ hoặc chủ giới thiệu b&ecirc;n dịch vụ nhận l&agrave;m sổ.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nguyen-dinh-thi-thuy-khue-tay-ho-ms001', 'NGUYỄN ĐÌNH THI - THỤY KHUÊ - TÂY HỒ - MS001', '', ''),
(128, 70, 'en', 'english version THNTD1', 'english version <p><strong>VIEW HỒ T&Acirc;Y, PHỐ NGUYỄN THỊ ĐỊNH, T&Acirc;Y HỒ, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;368M2, 4 TẦNG,&nbsp;22M MẶT TIỀN, CH&Agrave;O&nbsp;125 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>+ Vị tr&iacute; mặt phố Nguyễn Đ&igrave;nh Thi mặt HỒ T&Acirc;Y lộng gi&oacute; cực đẹp l&yacute; tưởng, 3 mặt cực tho&aacute;ng, phong thuỷ qu&aacute; l&yacute; tưởng.<br />\r\n- Với mặt tiền ch&iacute;nh (trước) bao la 22m, vỉa h&egrave; cực rộng.&nbsp;<br />\r\n- Một mặt ng&otilde; Thuỵ Khu&ecirc; rất rộng &ocirc; t&ocirc; v&agrave;o nh&agrave;.<br />\r\n+ Thửa đất với 2 khối nh&agrave;:<br />\r\n- Diện t&iacute;ch 1:&nbsp;232m2, mặt tiền 22m.<br />\r\n- Diện t&iacute;ch 2 nh&agrave; trong ng&otilde;: 171m2, ng&otilde; rộng 4m &ocirc; t&ocirc; với diện t&iacute;ch ng&otilde; đi chung: 34m2.<br />\r\n+ Nh&agrave; mặt phố Nguyễn Đ&igrave;nh Thi chủ cho thu&ecirc; 60 triệu/th&aacute;ng, nhưng giờ chủ để b&aacute;n n&ecirc;n kh&ocirc;ng cho thu&ecirc; nữa.<br />\r\n+ Vị tr&iacute; nh&agrave; đẹp kh&aacute;ch x&aacute;c định mua vị tr&iacute; về đập đi x&acirc;y to&agrave; nh&agrave; lớn 5 tầng mặt GỒ T&Acirc;Y kinh doanh nh&agrave; h&agrave;ng hoặc kh&aacute;ch sạn cho T&Acirc;Y thu&ecirc; ở.<br />\r\n+ Ph&aacute;p l&yacute;: Giấy tờ hợp đồng, quyết định, chứng từ cũng như thuế h&agrave;ng năm đầy đủ, đủ điều kiện l&agrave;m sổ đỏ. Chủ b&aacute;n hiện trạng, kh&aacute;ch mua tự l&agrave;m sổ đỏ chủ cung cấp đầy đủ giấy tờ đủ điều kiện l&agrave;m được sổ đỏ hoặc chủ giới thiệu b&ecirc;n dịch vụ nhận l&agrave;m sổ.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thntd1', 'THNTD1', '', '');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(129, 71, 'vn', 'ĐINH TIÊN HOÀNG - LÝ THÁI TỔ - HOÀN KIẾM - MS001', '<p><strong>VIEW HỒ GƯƠM, PHỐ ĐINH TI&Ecirc;N HO&Agrave;NG, HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH, 418M2, 3 TẦNG, 17M MẶT TIỀN, CH&Agrave;O&nbsp;593&nbsp;TỶ.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>- Nh&agrave; toạ lạc mặt phố nổi tiếng nhất Việt Nam.<br />\r\n- Kh&aacute;ch h&agrave;ng mua được căn nh&agrave; n&agrave;y để thể hiện Thương hiệu của c&aacute; nh&acirc;n, Doanh nghiệp của m&igrave;nh, chỉ cần x&acirc;y một to&agrave; nh&agrave; ở đ&acirc;y th&igrave; kh&ocirc;ng cần phải Quảng C&aacute;o g&igrave; th&ecirc;m nữa đ&atilde; khẳng định được Đẳng Cấp rồi.<br />\r\n- H&agrave;ng ng&agrave;y được ngắm Th&aacute;p R&ugrave;a, tối ngắm cảnh lung linh quanh Hồ, được hưởng thụ đa Văn ho&aacute;, đa sắc m&agrave;u của Thế giới hội tụ nơi đ&acirc;y.<br />\r\n- Ph&aacute;p l&yacute; căn nh&agrave; r&otilde; r&agrave;ng sẵn s&agrave;ng giao dịch được ngay.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dinh-tien-hoang-ly-thai-to-hoan-kiem-ms001', 'ĐINH TIÊN HOÀNG - LÝ THÁI TỔ - HOÀN KIẾM - MS001', '', ''),
(130, 71, 'en', 'english version HKDTH1', 'english version <p><strong>VIEW HỒ GƯƠM, PHỐ ĐINH TI&Ecirc;N HO&Agrave;NG, HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH, 143M2, 3 TẦNG,&nbsp;6M MẶT TIỀN, CH&Agrave;O&nbsp;243 TỶ.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'english version <p><strong>- Sổ đỏ đẹp.<br />\r\n- Nh&agrave; toạ lạc mặt phố nổi tiếng nhất Việt Nam.<br />\r\n- Kh&aacute;ch h&agrave;ng mua được căn nh&agrave; n&agrave;y để thể hiện Thương hiệu của c&aacute; nh&acirc;n, Doanh nghiệp của m&igrave;nh, chỉ cần x&acirc;y một to&agrave; nh&agrave; ở đ&acirc;y th&igrave; kh&ocirc;ng cần phải Quảng C&aacute;o g&igrave; th&ecirc;m nữa đ&atilde; khẳng định được Đẳng Cấp rồi.<br />\r\n- H&agrave;ng ng&agrave;y được ngắm Th&aacute;p R&ugrave;a, tối ngắm cảnh lung linh quanh Hồ, được hưởng thụ đa Văn ho&aacute;, đa sắc m&agrave;u của Thế giới hội tụ nơi đ&acirc;y.<br />\r\n- Ph&aacute;p l&yacute; căn nh&agrave; r&otilde; r&agrave;ng sẵn s&agrave;ng giao dịch được ngay.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hkdth1', 'HKDTH1', '', ''),
(131, 72, 'vn', 'ĐÔNG THÁI - HÀNG BUỒM - HOÀN KIẾM - MS001', '<p><strong>PHỐ Đ&Ocirc;NG TH&Aacute;I, HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH 96M2, 10M MẶT TIỀN, CH&Agrave;O 38 TỶ.</strong></p>\r\n', '', '', '', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dong-thai-hang-buom-hoan-kiem-ms001', 'ĐÔNG THÁI - HÀNG BUỒM - HOÀN KIẾM - MS001', '', ''),
(132, 72, 'en', 'english version ĐÔNG THÁI - HÀNG BUỒM - HOÀN KIẾM - MS001', 'english version <p><strong>PHỐ Đ&Ocirc;NG TH&Aacute;I, HO&Agrave;N KIẾM, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH 96M2, 10M MẶT TIỀN, CH&Agrave;O 38 TỶ.</strong></p>\r\n', '', '', 'english version ', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dong-thai-hang-buom-hoan-kiem-ms001', 'ĐÔNG THÁI - HÀNG BUỒM - HOÀN KIẾM - MS001', '', ''),
(133, 73, 'vn', 'ĐƯỜNG THÀNH - CỬA ĐÔNG - HOÀN KIẾM - MS001', '<p><strong>MẶT ĐƯỜNG PHỐ ĐƯỜNG TH&Agrave;NH - CỬA Đ&Ocirc;NG - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;48M2,&nbsp;4M MẶT TIỀN, CH&Agrave;O&nbsp;35 TỶ.</strong></p>\r\n', '', '', '<p><strong>&nbsp;Sổ đỏ đẹp.<br />\r\n- Nh&agrave; toạ lạc ngay ng&atilde; tư H&agrave;ng B&ocirc;ng + Đường Th&agrave;nh, vị tr&iacute; cực Đắc địa.<br />\r\n- Chủ nh&agrave; đang vừa ở vừa cho thu&ecirc;.<br />\r\n- Nh&agrave; cũ x&aacute;c định mua đập đi x&acirc;y mới đẹp lung linh.<br />\r\n- Ph&aacute;p l&yacute; căn nh&agrave; r&otilde; r&agrave;ng sẵn s&agrave;ng giao dịch được ngay.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'duong-thanh-cua-dong-hoan-kiem-ms001', 'ĐƯỜNG THÀNH - CỬA ĐÔNG - HOÀN KIẾM - MS001', '', ''),
(134, 73, 'en', 'english version ĐƯỜNG THÀNH - CỬA ĐÔNG - HOÀN KIẾM - MS001', 'english version <p><strong>MẶT ĐƯỜNG PHỐ ĐƯỜNG TH&Agrave;NH - CỬA Đ&Ocirc;NG - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>DIỆN T&Iacute;CH&nbsp;48M2,&nbsp;4M MẶT TIỀN, CH&Agrave;O&nbsp;35 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>&nbsp;Sổ đỏ đẹp.<br />\r\n- Nh&agrave; toạ lạc ngay ng&atilde; tư H&agrave;ng B&ocirc;ng + Đường Th&agrave;nh, vị tr&iacute; cực Đắc địa.<br />\r\n- Chủ nh&agrave; đang vừa ở vừa cho thu&ecirc;.<br />\r\n- Nh&agrave; cũ x&aacute;c định mua đập đi x&acirc;y mới đẹp lung linh.<br />\r\n- Ph&aacute;p l&yacute; căn nh&agrave; r&otilde; r&agrave;ng sẵn s&agrave;ng giao dịch được ngay.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-duong-thanh-cua-dong-hoan-kiem-ms001', 'ĐƯỜNG THÀNH - CỬA ĐÔNG - HOÀN KIẾM - MS001', '', ''),
(135, 74, 'vn', 'KIM ĐỒNG - GIÁP BÁT - HOÀNG MAI - MS001', '<p><strong>KIM ĐỒNG - P.GI&Aacute;P B&Aacute;T - Q.HO&Agrave;NG MAI - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>KINH DOANH - 2 &Ocirc; T&Ocirc; - 58M2 - 4&nbsp;TẦNG - 3.8 MẶT TIỀN - CH&Agrave;O 7.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Vị tr&iacute; đẹp lắm. Ng&otilde; thẳng &ocirc; t&ocirc; tr&aacute;nh, vỉa h&egrave; rộng. Nh&agrave; c&aacute;ch mặt phố 30m.<br />\r\n+ Nh&agrave; 4 tầng vẫn mới đẹp, ở lu&ocirc;n. Hai tho&aacute;ng lắm.<br />\r\n+ Sổ 66m2 nhưng thực x&acirc;y 58m2. Cắt phần sau cho vu&ocirc;ng đất.<br />\r\n+ Nở hậu 5m đấy. Đẹp, lộc.<br />\r\n+ Gi&aacute; đẹp.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'kim-dong-giap-bat-hoang-mai-ms001', 'KIM ĐỒNG - GIÁP BÁT - HOÀNG MAI - MS001', '', ''),
(136, 74, 'en', 'english version KIM ĐỒNG - GIÁP BÁT - HÀ NỘI - MS001', 'english version <p><strong>KIM ĐỒNG - P.GI&Aacute;P B&Aacute;T - Q.HO&Agrave;NG MAI - H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>KINH DOANH - 2 &Ocirc; T&Ocirc; - 58M2 - 4&nbsp;TẦNG - 3.8 MẶT TIỀN - CH&Agrave;O 7.5 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>M&ocirc; tả:<br />\r\n+ Vị tr&iacute; đẹp lắm. Ng&otilde; thẳng &ocirc; t&ocirc; tr&aacute;nh, vỉa h&egrave; rộng. Nh&agrave; c&aacute;ch mặt phố 30m.<br />\r\n+ Nh&agrave; 4 tầng vẫn mới đẹp, ở lu&ocirc;n. Hai tho&aacute;ng lắm.<br />\r\n+ Sổ 66m2 nhưng thực x&acirc;y 58m2. Cắt phần sau cho vu&ocirc;ng đất.<br />\r\n+ Nở hậu 5m đấy. Đẹp, lộc.<br />\r\n+ Gi&aacute; đẹp.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-kim-dong-giap-bat-ha-noi-ms001', 'KIM ĐỒNG - GIÁP BÁT - HÀ NỘI - MS001', '', ''),
(137, 75, 'vn', 'CẦU GIẤY - YÊN HÒA - CẦU GIẤY - MS001', '<p><strong>ĐƯỜNG CẦU GIẤY - NGUYỄN KHANG, Y&Ecirc;N H&Ograve;A, CẦU GIẤY, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>&Ocirc; T&Ocirc; V&Agrave;O NH&Agrave;, NG&Otilde; TH&Ocirc;NG,&nbsp;70M2, 4 TẦNG, 6.1M MT, CH&Agrave;O 7.9 TỶ</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; x&acirc;y ki&ecirc;n cố chắc chắn v&ocirc; c&ugrave;ng, thiết kế mỗi tầng 2 ph&ograve;ng. Hiện chủ đang cho&nbsp;thu&ecirc; 15 triệu/th&aacute;ng.<br />\r\n+ Mặt tiền rộng r&atilde;i l&agrave; điểm mạnh v&agrave; cuốn h&uacute;t, cho thu&ecirc; dễ d&agrave;ng nhiều hạng mục.<br />\r\n+ Đằng sau c&oacute; mặt tho&aacute;ng vĩnh viễn, rất tho&aacute;ng m&aacute;t.<br />\r\n+ Nh&agrave; c&aacute;ch MP Nguyễn Khang 70m, rất gần. Khu vực đ&ocirc;ng d&acirc;n kinh doanh tốt.<br />\r\n+ Ng&otilde; th&ocirc;ng, &ocirc; t&ocirc; chạy thoải m&aacute;i. Đi v&agrave;o từ 79 Cầu Giấy hoặc 381 Nguyễn Khang đều được.<br />\r\n+ Nh&agrave; tho&aacute;ng trước sau.<br />\r\n+ Sắp c&oacute; quy hoạch ng&otilde; 381 th&ocirc;ng sang phố Hạ Y&ecirc;n tương lai c&ograve;n đẹp theo từng ng&agrave;y.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cau-giay-yen-hoa-cau-giay-ms001', 'CẦU GIẤY - YÊN HÒA - CẦU GIẤY - MS001', '', ''),
(138, 75, 'en', 'english version CẦU GIẤY - YÊN HÒA - CẦU GIẤY - MS001', 'english version <p><strong>ĐƯỜNG CẦU GIẤY - NGUYỄN KHANG, Y&Ecirc;N H&Ograve;A, CẦU GIẤY, H&Agrave; NỘI.</strong></p>\r\n\r\n<p><strong>&Ocirc; T&Ocirc; V&Agrave;O NH&Agrave;, NG&Otilde; TH&Ocirc;NG,&nbsp;70M2, 4 TẦNG, 6.1M MT, CH&Agrave;O 7.9 TỶ</strong></p>\r\n', '', '', 'english version <p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; x&acirc;y ki&ecirc;n cố chắc chắn v&ocirc; c&ugrave;ng, thiết kế mỗi tầng 2 ph&ograve;ng. Hiện chủ đang cho&nbsp;thu&ecirc; 15 triệu/th&aacute;ng.<br />\r\n+ Mặt tiền rộng r&atilde;i l&agrave; điểm mạnh v&agrave; cuốn h&uacute;t, cho thu&ecirc; dễ d&agrave;ng nhiều hạng mục.<br />\r\n+ Đằng sau c&oacute; mặt tho&aacute;ng vĩnh viễn, rất tho&aacute;ng m&aacute;t.<br />\r\n+ Nh&agrave; c&aacute;ch MP Nguyễn Khang 70m, rất gần. Khu vực đ&ocirc;ng d&acirc;n kinh doanh tốt.<br />\r\n+ Ng&otilde; th&ocirc;ng, &ocirc; t&ocirc; chạy thoải m&aacute;i. Đi v&agrave;o từ 79 Cầu Giấy hoặc 381 Nguyễn Khang đều được.<br />\r\n+ Nh&agrave; tho&aacute;ng trước sau.<br />\r\n+ Sắp c&oacute; quy hoạch ng&otilde; 381 th&ocirc;ng sang phố Hạ Y&ecirc;n tương lai c&ograve;n đẹp theo từng ng&agrave;y.</strong></p>\r\n', '', '', '2019-04-13', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cau-giay-yen-hoa-cau-giay-ms001', 'CẦU GIẤY - YÊN HÒA - CẦU GIẤY - MS001', '', ''),
(139, 76, 'vn', 'TÂY SƠN - THỊNH QUANG - ĐỐNG ĐA - MS001', '<p><strong>MẶT ĐƯỜNG T&Acirc;Y SƠN, VIEW ĐẸP, L&Ocirc; G&Oacute;C, 14M MẶT TIỀN, CH&Agrave;O 23 TỶ.</strong></p>\r\n\r\n<p><strong>50M2 - 5 TẦNG - 14M MẶT TIỀN.</strong></p>\r\n', '', '', '<p><strong>- Tầng 1,2 được 45 triệu/th&aacute;ng. </strong></p>\r\n\r\n<p><strong>- Với lợi thế l&ocirc; g&oacute;c v&ocirc; c&ugrave;ng tho&aacute;ng cộng với mặt tiền rộng, nh&igrave;n căn nh&agrave; bề thế nhất phố.<br />\r\n- Chủ thiết kế tầng 1,2 th&ocirc;ng s&agrave;n để cho thu&ecirc;. Tầng 3: Gồm ph&ograve;ng kh&aacute;ch, bếp v&agrave; một ph&ograve;ng ngủ. Tầng 4: Gồm 2 ph&ograve;ng ngủ rộng, vệ sinh giữa. Tầng 5: Ph&ograve;ng thờ v&agrave; s&acirc;n phơi. Kh&aacute;ch mua về c&oacute; thể tiếp quản hợp đồng thu&ecirc; v&agrave; ở lu&ocirc;n hoặc muốn lấy nh&agrave; lu&ocirc;n chủ nh&agrave; sẽ tất to&aacute;n hết hợp đồng thu&ecirc; để giao nh&agrave;.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tay-son-thinh-quang-dong-da-ms001', 'TÂY SƠN - THỊNH QUANG - ĐỐNG ĐA - MS001', '', ''),
(140, 76, 'en', 'english version TÂY SƠN - THỊNH QUANG - ĐỐNG ĐA - MS001', 'english version <p><strong>MẶT ĐƯỜNG T&Acirc;Y SƠN, VIEW ĐẸP, L&Ocirc; G&Oacute;C, 14M MẶT TIỀN, CH&Agrave;O 23 TỶ.</strong></p>\r\n\r\n<p><strong>50M2 - 5 TẦNG - 14M MẶT TIỀN.</strong></p>\r\n', '', '', 'english version <p><strong>- Tầng 1,2 được 45 triệu/th&aacute;ng. </strong></p>\r\n\r\n<p><strong>- Với lợi thế l&ocirc; g&oacute;c v&ocirc; c&ugrave;ng tho&aacute;ng cộng với mặt tiền rộng, nh&igrave;n căn nh&agrave; bề thế nhất phố.<br />\r\n- Chủ thiết kế tầng 1,2 th&ocirc;ng s&agrave;n để cho thu&ecirc;. Tầng 3: Gồm ph&ograve;ng kh&aacute;ch, bếp v&agrave; một ph&ograve;ng ngủ. Tầng 4: Gồm 2 ph&ograve;ng ngủ rộng, vệ sinh giữa. Tầng 5: Ph&ograve;ng thờ v&agrave; s&acirc;n phơi. Kh&aacute;ch mua về c&oacute; thể tiếp quản hợp đồng thu&ecirc; v&agrave; ở lu&ocirc;n hoặc muốn lấy nh&agrave; lu&ocirc;n chủ nh&agrave; sẽ tất to&aacute;n hết hợp đồng thu&ecirc; để giao nh&agrave;.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tay-son-thinh-quang-dong-da-ms001', 'TÂY SƠN - THỊNH QUANG - ĐỐNG ĐA - MS001', '', ''),
(141, 77, 'vn', 'HOÀNG QUỐC VIỆT - NGHĨA TÂN - CẦU GIẤY - MS001', '<p><strong>T&Ograve;A NH&Agrave; MẶT ĐƯỜNG HO&Agrave;NG QUỐC VIỆT, 500M2, 9 TẦNG, 35M MẶT TIỀN, CH&Agrave;O 110 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Vị tr&iacute; đẹp nhất phố Ho&agrave;ng Quốc Việt. Sổ 50 năm, c&ograve;n 30 năm.<br />\r\n+ Mặt tiền rộng, vỉa h&egrave; rất rất rộng. Đoạn phố được ph&eacute;p dừng đỗ xe &ocirc; t&ocirc; thoải m&aacute;i.&nbsp;<br />\r\n+ Nh&agrave; thiết kế trang bị thang m&aacute;y lớn, thang bộ rộng, mỗi s&agrave;n 7 ph&ograve;ng chức năng.&nbsp;<br />\r\n+ Doanh thu b&egrave;o th&igrave; 1 tỷ/ th&aacute;ng.&nbsp;</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hoang-quoc-viet-nghia-tan-cau-giay-ms001', 'HOÀNG QUỐC VIỆT - NGHĨA TÂN - CẦU GIẤY - MS001', '', ''),
(142, 77, 'en', 'english version HOÀNG QUỐC VIỆT - NGHĨA TÂN - CẦU GIẤY - MS001', 'english version <p><strong>T&Ograve;A NH&Agrave; MẶT ĐƯỜNG HO&Agrave;NG QUỐC VIỆT, 500M2, 9 TẦNG, 35M MẶT TIỀN, CH&Agrave;O 110 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>+ Vị tr&iacute; đẹp nhất phố Ho&agrave;ng Quốc Việt. Sổ 50 năm, c&ograve;n 30 năm.<br />\r\n+ Mặt tiền rộng, vỉa h&egrave; rất rất rộng. Đoạn phố được ph&eacute;p dừng đỗ xe &ocirc; t&ocirc; thoải m&aacute;i.&nbsp;<br />\r\n+ Nh&agrave; thiết kế trang bị thang m&aacute;y lớn, thang bộ rộng, mỗi s&agrave;n 7 ph&ograve;ng chức năng.&nbsp;<br />\r\n+ Doanh thu b&egrave;o th&igrave; 1 tỷ/ th&aacute;ng.&nbsp;</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hoang-quoc-viet-nghia-tan-cau-giay-ms001', 'HOÀNG QUỐC VIỆT - NGHĨA TÂN - CẦU GIẤY - MS001', '', ''),
(143, 78, 'vn', 'YÊN PHỤ - TRÚC BẠCH - BA ĐÌNH - MS001', '<p><strong>KH&Aacute;CH SẠN 17 PH&Ograve;NG MẶT ĐƯỜNG Y&Ecirc;N PHỤ, BA Đ&Igrave;NH.</strong></p>\r\n\r\n<p><strong>112M2 -&nbsp;9 TẦNG - 5M MẶT TIỀN - CH&Agrave;O 45 TỶ.</strong></p>\r\n', '', '', '<p><strong>Tọa lạc tại th&agrave;nh phố H&agrave; Nội, Kh&aacute;ch sạn c&aacute;ch c&aacute;c điểm tham quan như Hồ T&acirc;y v&agrave; Đền Qu&aacute;n Th&aacute;nh một đoạn ngắn. Ch&ugrave;a Trấn Quốc v&agrave; Chợ Đồng Xu&acirc;n c&aacute;ch kh&aacute;ch sạn lần lượt chưa đến 1 km v&agrave; 1,9 km.</strong></p>\r\n\r\n<p><strong>Tất cả c&aacute;c ph&ograve;ng tại kh&aacute;ch sạn được trang bị m&aacute;y pha c&agrave; ph&ecirc; v&agrave; tủ lạnh. Một số ph&ograve;ng c&ograve;n c&oacute; bếp với l&ograve; nướng v&agrave; l&ograve; vi s&oacute;ng.</strong></p>\r\n\r\n<p><strong>Nh&acirc;n vi&ecirc;n lễ t&acirc;n c&oacute; thể giải đ&aacute;p mọi thắc mắc của du kh&aacute;ch.</strong></p>\r\n\r\n<p><strong>C&aacute;ch &Ocirc; Quan Chưởng 1,9 km v&agrave; s&acirc;n bay gần nhất l&agrave; s&acirc;n bay quốc tế Nội B&agrave;i 23 km.</strong></p>\r\n\r\n<p><strong>Quận Ba Đ&igrave;nh l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch&nbsp;lịch sử,&nbsp;ngắm cảnh&nbsp;v&agrave;&nbsp;đi dạo trong th&agrave;nh phố.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'yen-phu-truc-bach-ba-dinh-ms001', 'YÊN PHỤ - TRÚC BẠCH - BA ĐÌNH - MS001', '', ''),
(144, 78, 'en', 'english version YÊN PHỤ - TRÚC BẠCH - BA ĐÌNH - MS001', 'english version <p><strong>KH&Aacute;CH SẠN 17 PH&Ograve;NG MẶT ĐƯỜNG Y&Ecirc;N PHỤ, BA Đ&Igrave;NH.</strong></p>\r\n\r\n<p><strong>112M2 -&nbsp;9 TẦNG - 5M MẶT TIỀN - CH&Agrave;O 45 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>Tọa lạc tại th&agrave;nh phố H&agrave; Nội, Kh&aacute;ch sạn c&aacute;ch c&aacute;c điểm tham quan như Hồ T&acirc;y v&agrave; Đền Qu&aacute;n Th&aacute;nh một đoạn ngắn. Ch&ugrave;a Trấn Quốc v&agrave; Chợ Đồng Xu&acirc;n c&aacute;ch kh&aacute;ch sạn lần lượt chưa đến 1 km v&agrave; 1,9 km.</strong></p>\r\n\r\n<p><strong>Tất cả c&aacute;c ph&ograve;ng tại kh&aacute;ch sạn được trang bị m&aacute;y pha c&agrave; ph&ecirc; v&agrave; tủ lạnh. Một số ph&ograve;ng c&ograve;n c&oacute; bếp với l&ograve; nướng v&agrave; l&ograve; vi s&oacute;ng.</strong></p>\r\n\r\n<p><strong>Nh&acirc;n vi&ecirc;n lễ t&acirc;n c&oacute; thể giải đ&aacute;p mọi thắc mắc của du kh&aacute;ch.</strong></p>\r\n\r\n<p><strong>C&aacute;ch &Ocirc; Quan Chưởng 1,9 km v&agrave; s&acirc;n bay gần nhất l&agrave; s&acirc;n bay quốc tế Nội B&agrave;i 23 km.</strong></p>\r\n\r\n<p><strong>Quận Ba Đ&igrave;nh l&agrave; lựa chọn tuyệt vời cho du kh&aacute;ch th&iacute;ch&nbsp;lịch sử,&nbsp;ngắm cảnh&nbsp;v&agrave;&nbsp;đi dạo trong th&agrave;nh phố.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-yen-phu-truc-bach-ba-dinh-ms001', 'YÊN PHỤ - TRÚC BẠCH - BA ĐÌNH - MS001', '', ''),
(145, 79, 'vn', 'HÀNG VẢI - HÀNG BỒ - HOÀN KIẾM - MS001', '<p>MẶT ĐƯỜNG PHỐ CỔ - H&Agrave;NG VẢI - HO&Agrave;N KIẾM.</p>\r\n\r\n<p>136M2, ĐẤT,&nbsp;6.6M MẶT TIỀN, CH&Agrave;O&nbsp;53 TỶ.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '<p><strong>+ Sổ đỏ đẹp, vu&ocirc;ng vức.<br />\r\n+ Nh&agrave; cũ x&aacute;c định mua đất, xin GPXD 7 tầng được, giải ph&oacute;ng mặt bằng nhanh.<br />\r\n+ Thuận tiện để x&acirc;y Kh&aacute;ch sạn hoặc to&agrave; căn hộ cao cấp cho T&acirc;y thu&ecirc;.<br />\r\n+ Rất hiếm những căn đẹp m&agrave; rẻ như n&agrave;y.&nbsp;<br />\r\n+ Mua đầu tư cũng cực kỳ tốt.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hang-vai-hang-bo-hoan-kiem-ms001', 'HÀNG VẢI - HÀNG BỒ - HOÀN KIẾM - MS001', '', ''),
(146, 79, 'en', 'english version HÀNG VẢI - HÀNG BỒ - HOÀN KIẾM - MS001', 'english version <p>MẶT ĐƯỜNG PHỐ CỔ - H&Agrave;NG VẢI - HO&Agrave;N KIẾM.</p>\r\n\r\n<p>136M2, ĐẤT,&nbsp;6.6M MẶT TIỀN, CH&Agrave;O&nbsp;53 TỶ.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'english version <p><strong>+ Sổ đỏ đẹp, vu&ocirc;ng vức.<br />\r\n+ Nh&agrave; cũ x&aacute;c định mua đất, xin GPXD 7 tầng được, giải ph&oacute;ng mặt bằng nhanh.<br />\r\n+ Thuận tiện để x&acirc;y Kh&aacute;ch sạn hoặc to&agrave; căn hộ cao cấp cho T&acirc;y thu&ecirc;.<br />\r\n+ Rất hiếm những căn đẹp m&agrave; rẻ như n&agrave;y.&nbsp;<br />\r\n+ Mua đầu tư cũng cực kỳ tốt.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hang-vai-hang-bo-hoan-kiem-ms001', 'HÀNG VẢI - HÀNG BỒ - HOÀN KIẾM - MS001', '', ''),
(147, 80, 'vn', 'NGUYỄN HOÀNG - MỸ ĐÌNH - NAM TỪ LIÊM - MS001', '<p><strong>T&Ograve;A NH&Agrave; MẶT PHỐ NGUYỄN HO&Agrave;NG, CHO THU&Ecirc; HOẶC KINH DOANH ĐỀU ỔN, MẶT TIỀN RỘNG.&nbsp;</strong></p>\r\n\r\n<p><strong>126M2 - 8 TẦNG - 22M MẶT TIỀN - H&Egrave; RỘNG 5M - THANG M&Aacute;Y - CH&Agrave;O 40 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ T&ograve;a nh&agrave; c&oacute; vị tr&iacute; đẹp nhất phố Nguyễn Ho&agrave;ng, kinh doanh sầm uất, hiện nh&agrave; đang cho h&atilde;ng thời trang&nbsp;thu&ecirc; cả t&ograve;a 150 tr/ th&aacute;ng. Nguy&ecirc;n cho b&ecirc;n quảng c&aacute;o treo biển cũng thu rất nhiều tiền. Vỉa h&egrave; m&ecirc;nh m&ocirc;ng.<br />\r\n<br />\r\n+ Nh&agrave; x&acirc;y chắc chắn đẹp. Tổng 7,5 tầng. Thang m&aacute;y nhập ngoại.<br />\r\n<br />\r\n+ Sổ đỏ 126m nhưng thực tế 140m, từ tầng 2 đua 170m.<br />\r\n<br />\r\n- Tầng 1,2, 3, 4: Th&ocirc;ng tầng.<br />\r\n- Tầng 5: gồm 4 ph&ograve;ng ngủ.<br />\r\n- Tầng 6: Kh&aacute;ch bếp th&ocirc;ng tầng.<br />\r\n- Tầng 7, 8: 1 ngủ, vệ sinh, s&acirc;n phơi, trồng rau.<br />\r\n<br />\r\n+ Chủ thiện tr&iacute;, cần b&aacute;n nhanh.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nguyen-hoang-my-dinh-nam-tu-liem-ms001', 'NGUYỄN HOÀNG - MỸ ĐÌNH - NAM TỪ LIÊM - MS001', '', ''),
(148, 80, 'en', 'english version NGUYỄN HOÀNG - MỸ ĐÌNH - NAM TỪ LIÊM - MS001', 'english version <p><strong>T&Ograve;A NH&Agrave; MẶT PHỐ NGUYỄN HO&Agrave;NG, CHO THU&Ecirc; HOẶC KINH DOANH ĐỀU ỔN, MẶT TIỀN RỘNG.&nbsp;</strong></p>\r\n\r\n<p><strong>126M2 - 8 TẦNG - 22M MẶT TIỀN - H&Egrave; RỘNG 5M - THANG M&Aacute;Y - CH&Agrave;O 40 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>+ T&ograve;a nh&agrave; c&oacute; vị tr&iacute; đẹp nhất phố Nguyễn Ho&agrave;ng, kinh doanh sầm uất, hiện nh&agrave; đang cho h&atilde;ng thời trang&nbsp;thu&ecirc; cả t&ograve;a 150 tr/ th&aacute;ng. Nguy&ecirc;n cho b&ecirc;n quảng c&aacute;o treo biển cũng thu rất nhiều tiền. Vỉa h&egrave; m&ecirc;nh m&ocirc;ng.<br />\r\n<br />\r\n+ Nh&agrave; x&acirc;y chắc chắn đẹp. Tổng 7,5 tầng. Thang m&aacute;y nhập ngoại.<br />\r\n<br />\r\n+ Sổ đỏ 126m nhưng thực tế 140m, từ tầng 2 đua 170m.<br />\r\n<br />\r\n- Tầng 1,2, 3, 4: Th&ocirc;ng tầng.<br />\r\n- Tầng 5: gồm 4 ph&ograve;ng ngủ.<br />\r\n- Tầng 6: Kh&aacute;ch bếp th&ocirc;ng tầng.<br />\r\n- Tầng 7, 8: 1 ngủ, vệ sinh, s&acirc;n phơi, trồng rau.<br />\r\n<br />\r\n+ Chủ thiện tr&iacute;, cần b&aacute;n nhanh.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-nguyen-hoang-my-dinh-nam-tu-liem-ms001', 'NGUYỄN HOÀNG - MỸ ĐÌNH - NAM TỪ LIÊM - MS001', '', ''),
(149, 81, 'vn', 'ĐÊ LA THÀNH - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '<p><strong>KHU HIẾM! HO&Agrave;NG CẦU - PH&Acirc;N L&Ocirc; B&Agrave;N CỜ - 7 TẦNG THANG M&Aacute;Y - &Ocirc; T&Ocirc; TR&Aacute;NH - KINH DOANH V&Ocirc; ĐỊCH.</strong></p>\r\n\r\n<p><strong>&nbsp;63M2 - 7 TẦNG -&nbsp;4.5M MẶT TIỀN - CH&Agrave;O&nbsp;16.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; thuộc khu ph&acirc;n l&ocirc; của Viện Y học cổ truyền, view Nh&agrave; kh&aacute;ch Quốc hội. Anh chị em c&oacute; thể dẫn kh&aacute;ch theo lối 217 Đ&ecirc; La Th&agrave;nh, 16 Ho&agrave;ng Cầu, Nguyễn Ph&uacute;c Lai.&nbsp;<br />\r\n+ Nh&agrave; 7 tầng tuyệt đẹp, thang may c&ograve;n nguy&ecirc;n tem chưa b&oacute;c vỏ. Tổng hiện trạng c&oacute; 8 ph&ograve;ng ngủ c&oacute; thể thiết kế th&agrave;nh 10 ph&ograve;ng ngủ vệ sinh kh&eacute;p k&iacute;n, gara &ocirc; t&ocirc;.<br />\r\n+ Khu VIP c&aacute;ch mặt phố Đ&ecirc; La Th&agrave;nh 70m. Hiện đường Đ&ecirc; La Th&agrave;nh đang c&oacute; dự &aacute;n mở đường đến qu&yacute; 3 năm 2018 sẽ tiến h&agrave;nh, đến khi đ&oacute; căn nh&agrave; sẽ c&aacute;ch mặt phố chưa đầy 30m. Tương lai sẽ c&ograve;n tươi v&agrave; s&aacute;ng hơn rất nhiều.<br />\r\n+ T&ograve;a nh&agrave; đầy đủ c&ocirc;ng năng, vị tr&iacute; đẹp, ph&ugrave; hợp với rất nhiều loại h&igrave;nh kinh doanh: Văn ph&ograve;ng, trung t&acirc;m giảng dạy, Spa, nh&agrave; nghỉ, kh&aacute;ch sạn, ...Hiện đang c&oacute; 1 đơn vị Spa muốn thu&ecirc; 80tr/ th&aacute;ng nhưng chủ kh&ocirc;ng đồng &yacute; m&agrave; để tập trung b&aacute;n.&nbsp;<br />\r\n+ Sổ đẹp, chủ thiện tr&iacute;.</strong><br />\r\n&nbsp;</p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'de-la-thanh-o-cho-dua-dong-da-ms001', 'ĐÊ LA THÀNH - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '', ''),
(150, 81, 'en', 'english version ĐÊ LA THÀNH - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', 'english version <p><strong>KHU HIẾM! HO&Agrave;NG CẦU - PH&Acirc;N L&Ocirc; B&Agrave;N CỜ - 7 TẦNG THANG M&Aacute;Y - &Ocirc; T&Ocirc; TR&Aacute;NH - KINH DOANH V&Ocirc; ĐỊCH.</strong></p>\r\n\r\n<p><strong>&nbsp;63M2 - 7 TẦNG -&nbsp;4.5M MẶT TIỀN - CH&Agrave;O&nbsp;16.5 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; thuộc khu ph&acirc;n l&ocirc; của Viện Y học cổ truyền, view Nh&agrave; kh&aacute;ch Quốc hội. Anh chị em c&oacute; thể dẫn kh&aacute;ch theo lối 217 Đ&ecirc; La Th&agrave;nh, 16 Ho&agrave;ng Cầu, Nguyễn Ph&uacute;c Lai.&nbsp;<br />\r\n+ Nh&agrave; 7 tầng tuyệt đẹp, thang may c&ograve;n nguy&ecirc;n tem chưa b&oacute;c vỏ. Tổng hiện trạng c&oacute; 8 ph&ograve;ng ngủ c&oacute; thể thiết kế th&agrave;nh 10 ph&ograve;ng ngủ vệ sinh kh&eacute;p k&iacute;n, gara &ocirc; t&ocirc;.<br />\r\n+ Khu VIP c&aacute;ch mặt phố Đ&ecirc; La Th&agrave;nh 70m. Hiện đường Đ&ecirc; La Th&agrave;nh đang c&oacute; dự &aacute;n mở đường đến qu&yacute; 3 năm 2018 sẽ tiến h&agrave;nh, đến khi đ&oacute; căn nh&agrave; sẽ c&aacute;ch mặt phố chưa đầy 30m. Tương lai sẽ c&ograve;n tươi v&agrave; s&aacute;ng hơn rất nhiều.<br />\r\n+ T&ograve;a nh&agrave; đầy đủ c&ocirc;ng năng, vị tr&iacute; đẹp, ph&ugrave; hợp với rất nhiều loại h&igrave;nh kinh doanh: Văn ph&ograve;ng, trung t&acirc;m giảng dạy, Spa, nh&agrave; nghỉ, kh&aacute;ch sạn, ...Hiện đang c&oacute; 1 đơn vị Spa muốn thu&ecirc; 80tr/ th&aacute;ng nhưng chủ kh&ocirc;ng đồng &yacute; m&agrave; để tập trung b&aacute;n.&nbsp;<br />\r\n+ Sổ đẹp, chủ thiện tr&iacute;.</strong><br />\r\n&nbsp;</p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-de-la-thanh-o-cho-dua-dong-da-ms001', 'ĐÊ LA THÀNH - Ô CHỢ DỪA - ĐỐNG ĐA - MS001', '', ''),
(151, 82, 'vn', 'ĐÊ TÔ HOÀNG - CẦU DỀN - HAI BÀ TRƯNG - MS001', '<p><strong>NG&Otilde; TO NHƯ&nbsp;PHỐ - L&Ocirc; G&Oacute;C - KINH DOANH.</strong></p>\r\n\r\n<p><strong>50M2, 5 TẦNG,&nbsp;4.7M MẶT TIỀN, CH&Agrave;O&nbsp;13&nbsp;TỶ.</strong></p>\r\n', '', '', '<p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; 5 tầng tuyệt đẹp, thiết kế th&ocirc;ng s&agrave;n rộng r&atilde;i.<br />\r\nTầng 1: Gara, c&oacute; thể cho thu&ecirc; kinh doanh hiệu suất đ&aacute;ng nể.<br />\r\nTầng 2: Ph&ograve;ng kh&aacute;ch, bếp.<br />\r\nTầng 3,4: Ph&ograve;ng ngủ si&ecirc;u rộng, vệ sinh.<br />\r\nTầng 5: Ph&ograve;ng thờ, s&acirc;n phơi.<br />\r\n+ Địa chỉ tr&ecirc;n sổ l&agrave; ng&otilde; T&ocirc; Ho&agrave;ng nhưng thực tế l&agrave; ng&otilde; 27 Đại Cồ Việt đi v&agrave;o qu&aacute; gần, đường qu&aacute; rộng. Khu vực đ&ocirc;ng đ&uacute;c, văn ph&ograve;ng đại diện, shop thời trang nhiều như nấm sau mưa. View nh&agrave; thẳng ra đường Đại Cồ Việt.</strong></p>\r\n', '', '', '2019-03-02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'de-to-hoang-cau-den-hai-ba-trung-ms001', 'ĐÊ TÔ HOÀNG - CẦU DỀN - HAI BÀ TRƯNG - MS001', '', ''),
(152, 82, 'en', 'english version ĐÊ TÔ HOÀNG - CẦU DỀN - HAI BÀ TRƯNG - MS001', 'english version <p><strong>NG&Otilde; TO NHƯ&nbsp;PHỐ - L&Ocirc; G&Oacute;C - KINH DOANH.</strong></p>\r\n\r\n<p><strong>50M2, 5 TẦNG,&nbsp;4.7M MẶT TIỀN, CH&Agrave;O&nbsp;13&nbsp;TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>M&ocirc; tả:<br />\r\n+ Nh&agrave; 5 tầng tuyệt đẹp, thiết kế th&ocirc;ng s&agrave;n rộng r&atilde;i.<br />\r\nTầng 1: Gara, c&oacute; thể cho thu&ecirc; kinh doanh hiệu suất đ&aacute;ng nể.<br />\r\nTầng 2: Ph&ograve;ng kh&aacute;ch, bếp.<br />\r\nTầng 3,4: Ph&ograve;ng ngủ si&ecirc;u rộng, vệ sinh.<br />\r\nTầng 5: Ph&ograve;ng thờ, s&acirc;n phơi.<br />\r\n+ Địa chỉ tr&ecirc;n sổ l&agrave; ng&otilde; T&ocirc; Ho&agrave;ng nhưng thực tế l&agrave; ng&otilde; 27 Đại Cồ Việt đi v&agrave;o qu&aacute; gần, đường qu&aacute; rộng. Khu vực đ&ocirc;ng đ&uacute;c, văn ph&ograve;ng đại diện, shop thời trang nhiều như nấm sau mưa. View nh&agrave; thẳng ra đường Đại Cồ Việt.</strong></p>\r\n', '', '', '2019-03-02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-de-to-hoang-cau-den-hai-ba-trung-ms001', 'ĐÊ TÔ HOÀNG - CẦU DỀN - HAI BÀ TRƯNG - MS001', '', ''),
(153, 83, 'vn', 'PHÓ ĐỨC CHÍNH - TRÚC BẠCH - BA ĐÌNH - MS001', '<p><strong>&nbsp;MẶT PHỐ HIẾM - BA Đ&Igrave;NH GI&Aacute;P HO&Agrave;N KIẾM - GẦN HỒ TR&Uacute;C BẠCH - GI&Aacute; TỐT.</strong></p>\r\n\r\n<p><strong>137M2 - 5 TẦNG CŨ -&nbsp;4.5M MẶT TIỀN - CH&Agrave;O&nbsp;39.5 TỶ.</strong></p>\r\n', '', '', '<p><strong>- Vị tr&iacute; cực đẹp, đoạn gần ng&atilde; 3 Ngũ X&atilde;, ph&iacute;a trước tho&aacute;ng vĩnh viễn do b&ecirc;n đ&oacute; xưa l&agrave; s&acirc;n trường nay cho thu&ecirc; l&agrave;m nh&agrave; h&agrave;ng.&nbsp;<br />\r\n- Ba Đ&igrave;nh gi&aacute;p Ho&agrave;n Kiếm, gần hồ Tr&uacute;c Bạch, xung quanh d&acirc;n tr&iacute; cao, nhiều du kh&aacute;ch v&agrave; người nước ngo&agrave;i sinh sống, m&ocirc;i trường sống rất tuyệt.&nbsp;<br />\r\n- Hướng: Đ&ocirc;ng Bắc.<br />\r\n- Phố Ph&oacute; Đức Ch&iacute;nh hiện l&agrave; 1 trong &iacute;t tuyến phố c&ograve;n lại của H&agrave; Nội c&oacute; thể để &ocirc; t&ocirc; cả ng&agrave;y lẫn đ&ecirc;m.<br />\r\n- Gia chủ người gốc H&agrave; Nội, nhiều đời sống tại nơi đ&acirc;y. L&agrave; c&ocirc;ng chức nh&agrave; nước, sống thanh bạch, sạch sẽ b&igrave;nh dị. Nh&agrave; mặt phố nhưng chỉ để ở, kh&ocirc;ng kinh doanh v&agrave; cũng chẳng cho thu&ecirc;, từ xa xưa vẫn thế.<br />\r\n- Hiện trạng nh&agrave; 5 tầng, x&acirc;y khung b&ecirc; t&ocirc;ng chắc chắn, 4 PN. Nội thất đơn giản m&agrave; đẹp. Đặc biệt c&ograve;n mảnh vườn ph&iacute;a sau rất đẹp v&agrave; tho&aacute;ng.&nbsp;<br />\r\n- Khu&ocirc;n đất đẹp, Vu&ocirc;ng vức, nở hậu 20 cm. Ph&ugrave; hợp x&acirc;y t&ograve;a nh&agrave; cao 9-10 tầng như h&agrave;ng x&oacute;m b&ecirc;n cạnh, KD kh&aacute;ch sạn, appartment cho người nước ngo&agrave;i thu&ecirc;...<br />\r\n- Sổ đỏ ph&aacute;p l&yacute; chuẩn, để ở nh&agrave;, sẵn s&agrave;ng giao dịch.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'pho-duc-chinh-truc-bach-ba-dinh-ms001', 'PHÓ ĐỨC CHÍNH - TRÚC BẠCH - BA ĐÌNH - MS001', '', ''),
(154, 83, 'en', 'english version PHÓ ĐỨC CHÍNH - TRÚC BẠCH - BA ĐÌNH - MS001', 'english version <p><strong>&nbsp;MẶT PHỐ HIẾM - BA Đ&Igrave;NH GI&Aacute;P HO&Agrave;N KIẾM - GẦN HỒ TR&Uacute;C BẠCH - GI&Aacute; TỐT.</strong></p>\r\n\r\n<p><strong>137M2 - 5 TẦNG CŨ -&nbsp;4.5M MẶT TIỀN - CH&Agrave;O&nbsp;39.5 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>- Vị tr&iacute; cực đẹp, đoạn gần ng&atilde; 3 Ngũ X&atilde;, ph&iacute;a trước tho&aacute;ng vĩnh viễn do b&ecirc;n đ&oacute; xưa l&agrave; s&acirc;n trường nay cho thu&ecirc; l&agrave;m nh&agrave; h&agrave;ng.&nbsp;<br />\r\n- Ba Đ&igrave;nh gi&aacute;p Ho&agrave;n Kiếm, gần hồ Tr&uacute;c Bạch, xung quanh d&acirc;n tr&iacute; cao, nhiều du kh&aacute;ch v&agrave; người nước ngo&agrave;i sinh sống, m&ocirc;i trường sống rất tuyệt.&nbsp;<br />\r\n- Hướng: Đ&ocirc;ng Bắc.<br />\r\n- Phố Ph&oacute; Đức Ch&iacute;nh hiện l&agrave; 1 trong &iacute;t tuyến phố c&ograve;n lại của H&agrave; Nội c&oacute; thể để &ocirc; t&ocirc; cả ng&agrave;y lẫn đ&ecirc;m.<br />\r\n- Gia chủ người gốc H&agrave; Nội, nhiều đời sống tại nơi đ&acirc;y. L&agrave; c&ocirc;ng chức nh&agrave; nước, sống thanh bạch, sạch sẽ b&igrave;nh dị. Nh&agrave; mặt phố nhưng chỉ để ở, kh&ocirc;ng kinh doanh v&agrave; cũng chẳng cho thu&ecirc;, từ xa xưa vẫn thế.<br />\r\n- Hiện trạng nh&agrave; 5 tầng, x&acirc;y khung b&ecirc; t&ocirc;ng chắc chắn, 4 PN. Nội thất đơn giản m&agrave; đẹp. Đặc biệt c&ograve;n mảnh vườn ph&iacute;a sau rất đẹp v&agrave; tho&aacute;ng.&nbsp;<br />\r\n- Khu&ocirc;n đất đẹp, Vu&ocirc;ng vức, nở hậu 20 cm. Ph&ugrave; hợp x&acirc;y t&ograve;a nh&agrave; cao 9-10 tầng như h&agrave;ng x&oacute;m b&ecirc;n cạnh, KD kh&aacute;ch sạn, appartment cho người nước ngo&agrave;i thu&ecirc;...<br />\r\n- Sổ đỏ ph&aacute;p l&yacute; chuẩn, để ở nh&agrave;, sẵn s&agrave;ng giao dịch.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-pho-duc-chinh-truc-bach-ba-dinh-ms001', 'PHÓ ĐỨC CHÍNH - TRÚC BẠCH - BA ĐÌNH - MS001', '', ''),
(155, 84, 'vn', 'ĐẶNG TIẾN ĐÔNG - TRUNG LIỆT - ĐỐNG ĐA - MS001', '<p><strong>NH&Agrave; ĐỂ Ở - NG&Otilde; 2M - NG&Otilde; N&Ocirc;NG C&Aacute;CH ĐƯỜNG 50M - NH&Agrave; MỚI X&Acirc;Y 2 NĂM.</strong></p>\r\n\r\n<p><strong>PHỐ ĐẶNG TIẾN Đ&Ocirc;NG&nbsp;35M2, 5 TẦNG,&nbsp;4M MẶT TIỀN, CH&Agrave;O&nbsp;4.3 TỶ.</strong></p>\r\n', '', '', '<p><strong>+ Ng&otilde; trước nh&agrave; xe ba g&aacute;c đi lại được, nh&agrave; c&aacute;ch mặt đường &ocirc; t&ocirc; tr&aacute;nh chỉ khoảng 30m.<br />\r\n+ Nh&agrave; mới x&acirc;y được 2 năm cho con g&aacute;i nhưng con g&aacute;i kh&ocirc;ng ở, hiện tại đang cho bạn th&acirc;n thu&ecirc; với gi&aacute; hữu nghị 10 triệu/th&aacute;ng.<br />\r\n+ Thiết kế tầng 1 ph&ograve;ng rộng, tổng nh&agrave; c&oacute; 3 ph&ograve;ng ngủ.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dang-tien-dong-trung-liet-dong-da-ms001', 'ĐẶNG TIẾN ĐÔNG - TRUNG LIỆT - ĐỐNG ĐA - MS001', '', ''),
(156, 84, 'en', 'english version ĐẶNG TIẾN ĐÔNG - TRUNG LIỆT - ĐỐNG ĐA - MS001', 'english version <p><strong>NH&Agrave; ĐỂ Ở - NG&Otilde; 2M - NG&Otilde; N&Ocirc;NG C&Aacute;CH ĐƯỜNG 50M - NH&Agrave; MỚI X&Acirc;Y 2 NĂM.</strong></p>\r\n\r\n<p><strong>PHỐ ĐẶNG TIẾN Đ&Ocirc;NG&nbsp;35M2, 5 TẦNG,&nbsp;4M MẶT TIỀN, CH&Agrave;O&nbsp;4.3 TỶ.</strong></p>\r\n', '', '', 'english version <p><strong>+ Ng&otilde; trước nh&agrave; xe ba g&aacute;c đi lại được, nh&agrave; c&aacute;ch mặt đường &ocirc; t&ocirc; tr&aacute;nh chỉ khoảng 30m.<br />\r\n+ Nh&agrave; mới x&acirc;y được 2 năm cho con g&aacute;i nhưng con g&aacute;i kh&ocirc;ng ở, hiện tại đang cho bạn th&acirc;n thu&ecirc; với gi&aacute; hữu nghị 10 triệu/th&aacute;ng.<br />\r\n+ Thiết kế tầng 1 ph&ograve;ng rộng, tổng nh&agrave; c&oacute; 3 ph&ograve;ng ngủ.</strong></p>\r\n', '', '', '2019-04-15', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dang-tien-dong-trung-liet-dong-da-ms001', 'ĐẶNG TIẾN ĐÔNG - TRUNG LIỆT - ĐỐNG ĐA - MS001', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `region_id` varchar(5) CHARACTER SET utf8 NOT NULL,
  `region_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `region_type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`region_id`, `region_name`, `region_type`) VALUES
('01', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('02', 'Tỉnh Hà Giang', 'Tỉnh'),
('04', 'Tỉnh Cao Bằng', 'Tỉnh'),
('06', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('08', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan`
--

CREATE TABLE `quan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quan`
--

INSERT INTO `quan` (`id`, `name`, `note`, `city_id`) VALUES
(1, 'Cầu Giấy', 'Việt Nam', 1),
(2, 'Thanh Xuân', 'Việt Nam', 1),
(3, 'Hoàn Kiếm', 'Việt Nam', 1),
(4, 'Hai Bà Trưng', 'Việt Nam', 1),
(5, 'Hoàng Mai', 'Việt Nam', 1),
(6, 'Đống Đa', 'Việt Nam', 1),
(7, 'Ba Đình', 'Việt Nam', 1),
(8, 'Tây Hồ', 'Việt Nam', 1),
(9, 'Nam Từ Liêm', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `regMember_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_phone`, `regMember_name`, `regMember_createdDate`) VALUES
(11, 'ádgf', '', '', '2017-07-16'),
(12, 'xvdfg', '', '', '2017-07-16'),
(14, 'viethung95cute@gmail.com', '1672523165', 'Viet Hung', '2018-06-12'),
(15, 'tuan@gmail.com', '0987654321', 'nam', '2019-04-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`) VALUES
(57, 'Tắm trắng & làm đẹp', 'Phương thức tắm trắng không lột tẩy, không bong tróc, vừa giúp làm da mặt trắng hồng tươi sáng, vừa se khít lỗ chân lông, đồng thời loại bỏ mụn cám và đầu đen.', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', '5.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Tắm trắng & làm đẹp', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'tam-trang-lam-dep', 'Thi công rèm', NULL, ''),
(58, 'Massage Đá Nóng', 'Đây là phương pháp tác động từ bên ngoài vào sâu bên trong cơ thể, các dây thần kinh giúp lưu thông khí huyết và giải phóng năng lượng qua các huyệt đạo, tốt cho hệ tiêu hóa.', '', '2.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Massage Đá Nóng', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'massage-da-nong', 'Thi công rèm', NULL, ''),
(59, 'Liệu pháp thảo dược', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…Các loại thảo dược này không những kết hợp tạo mùi hương dễ chịu mà còn có tác dụng rất tốt .', '', '3.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Liệu pháp thảo dược', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'lieu-phap-thao-duoc', 'Thi công rèm', NULL, ''),
(60, 'Triệt lông công nghệ cao', 'Dịch vụ triệt lông tay, triệt lông chân, triệt lông nách, triệt lông mặt và vùng kín của Galaxy Spa sử dụng công nghệ triệt lông IPL 2016 của Hoa Kỳ, giúp chị em thoải mái tự tin khoe đôi chân và đôi cánh tay mịn màng, trắng đẹp với những bộ cánh thời trang gợi cảm mà không phải lo lắng vì lông sẽ mọc rậm trở lại.', '', 'tay-long-nach-nhu-the-nao-6.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Triệt lông công nghệ cao', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'triet-long-cong-nghe-cao', 'Thi công rèm', NULL, ''),
(61, 'Chung cư Xuân Mai Complex', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư:&nbsp;</strong>C&ocirc;ng ty Cổ phần Đầu tư v&agrave; X&acirc;y dựng Xu&acirc;n Mai</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển:&nbsp;</strong>Căn hộ chung cư</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n:&nbsp;</strong>5 t&ograve;a căn hộ trong 2 Block K-L &amp; H-G-F</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng:&nbsp;</strong>Tầng dịch vụ: Từ tầng 1 đến tầng lửng Tầng căn hộ: Từ tầng 2 đến tầng 25</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n</ul>\r\n', '', 'tong-quan-du-an-xuan-mai-complex.png', '17 triệu/m2', 5, 'KĐT Dương Nội, Tố Hữu, Hà Đông', '2017-05-22', '2018-07-18', 1, NULL, NULL, NULL, NULL, NULL, 'Chung cư Xuân Mai Complex', '', 'chung-cu-xuan-mai-complex', '', NULL, ''),
(62, 'Chung cư TNR Sky Park', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư:&nbsp;</strong>C&ocirc;ng ty TNHH TM - QC - XD - Địa ốc Việt H&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu:&nbsp;</strong>113.909(m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng:&nbsp;</strong>26.597(m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng:&nbsp;</strong>23.3%</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển:&nbsp;</strong>Căn hộ chung cư</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t:&nbsp;</strong>TNR Holdings Việt Nam</p>\r\n	</li>\r\n</ul>\r\n', '<p>Thị trường&nbsp;<strong>bất động sản</strong>&nbsp;những ng&agrave;y đầu năm 2018 đang dậy s&oacute;ng với sự ra mắt của dự &aacute;n&nbsp;<strong>TNR Sky Park</strong>. Với nhiều ưu điểm về vị tr&iacute;, thiết kế v&agrave; hệ thống tiện &iacute;ch độc đ&aacute;o,&nbsp;<strong>TNR Sky Park</strong>&nbsp;thu h&uacute;t sự quan t&acirc;m của đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng c&ugrave;ng giới đầu tư.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chung</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>T&ecirc;n dự &aacute;n:&nbsp;TNR Sky Park&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Chủ đầu tư: C&ocirc;ng ty TNHH TM - QC - XD - Địa ốc Việt H&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Đơn vị độc quyền quản l&yacute;, điều h&agrave;nh v&agrave; ph&aacute;t triển:&nbsp;TNR Holdings Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p>Tổng thầu thi c&ocirc;ng:&nbsp;Delta &amp; Coteccons</p>\r\n	</li>\r\n	<li>\r\n	<p>Vị tr&iacute; dự &aacute;n:&nbsp;136 Hồ T&ugrave;ng Mậu, Bắc Từ Li&ecirc;m, H&agrave; Nội</p>\r\n	</li>\r\n	<li>\r\n	<p>Diện t&iacute;ch khu đất: 113.909 m2</p>\r\n	</li>\r\n	<li>\r\n	<p>Diện t&iacute;ch x&acirc;y dựng:&nbsp;26.597 m2</p>\r\n	</li>\r\n	<li>\r\n	<p>Mật độ x&acirc;y dựng: 23.3%</p>\r\n	</li>\r\n	<li>\r\n	<p>70% diện t&iacute;ch d&agrave;nh cho tiện &iacute;ch cảnh quan v&agrave; kh&ocirc;ng gian xanh</p>\r\n	</li>\r\n	<li>\r\n	<p>Chiều cao:&nbsp;40 tầng/ to&agrave;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tổng số căn hộ: 663 căn</p>\r\n	</li>\r\n	<li>\r\n	<p>Số căn hộ/s&agrave;n : 17 Căn</p>\r\n	</li>\r\n	<li>\r\n	<p>06 thang m&aacute;y tốc độ cao</p>\r\n	</li>\r\n	<li>\r\n	<p>Diện t&iacute;ch căn hộ : từ 67.97 m2 đến 115.96 m2</p>\r\n	</li>\r\n</ul>\r\n', 'Banner_tnr-skypark_800x450.jpg', '24 triệu/m2', 5, '136 Hồ Tùng Mậu, Bắc Từ Liêm, Hà Nội', '2018-05-03', '2018-07-30', 1, NULL, NULL, NULL, NULL, NULL, 'Chung cư TNR Sky Park', '', 'chung-cu-tnr-sky-park', '', 1, ''),
(63, 'Chung cư Mỹ Đình Plaza 2', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư:&nbsp;</strong>C&ocirc;ng ty cổ phần Đầu Tư Địa Ốc Mỹ Đ&igrave;nh &amp; C&ocirc;ng ty cổ phần tập đo&agrave;n T&acirc;n Mai</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu:&nbsp;</strong>5.000 (m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng:&nbsp;</strong>2.340,13 (m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng:&nbsp;</strong>48.22%</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển:&nbsp;</strong>Căn hộ</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n:&nbsp;</strong>02 t&ograve;a CT1 &amp; CT2 cao 28 tầng v&agrave; 03 tầng hầm</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng:&nbsp;</strong>Khu TTTM, văn ph&ograve;ng v&agrave; nh&agrave; ở</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nằm trong khu vực ph&aacute;t triển bậc nhất quận Cầu Giấy &ndash; Mỹ Đ&igrave;nh, dự &aacute;n&nbsp;<strong>Mỹ Đ&igrave;nh Plaza 2</strong>&nbsp;hứa hẹn sẽ đem đến cho cư d&acirc;n cuộc sống vi&ecirc;n m&atilde;n, tiện nghi, hiện đại với hệ thống tiện &iacute;ch đa dạng, c&aacute;c căn hộ thiết kế hợp l&yacute;, tinh tế.</p>\r\n\r\n<p><strong>Kết cấu bền vững - an to&agrave;n - m&ocirc;i trường của Mỹ Đ&igrave;nh Plaza 2:</strong></p>\r\n\r\n<p>Trang bị hệ thống năng lượng xanh cho dự &aacute;n</p>\r\n\r\n<p>Hệ thống PCCC ti&ecirc;u chuẩn, chất lượng cao</p>\r\n\r\n<p>Hệ thống thang m&aacute;y hiện đại &amp; c&aacute;c thang bộ phục vụ cư d&acirc;n kh&ocirc;ng kể hệ thống thang phục vụ khối đế</p>\r\n\r\n<p>Trạm điện c&oacute; c&ocirc;ng suất dự ph&ograve;ng, m&aacute;y ph&aacute;t điện dự ph&ograve;ng</p>\r\n\r\n<p>Trạm xử l&yacute; nước thải c&ocirc;ng nghệ ti&ecirc;n tiến</p>\r\n\r\n<p>Nước sạch (C&ocirc;ng ty nước sạch S&ocirc;ng Đ&agrave; &ndash; VIWACO)</p>\r\n\r\n<p>S&agrave;n dự ứng lực trước, kh&ocirc;ng c&oacute; dầm trong căn hộ</p>\r\n', 'banner-mydinh-plaza-2-7-6.jpg', '27 triệu/m2', 5, 'P.Mỹ Đình 2, Q.Nam Từ Liêm, Hà Nội', '2018-05-03', '2018-06-30', 1, NULL, NULL, NULL, NULL, NULL, 'Chung cư Mỹ Đình Plaza 2', '', 'chung-cu-my-dinh-plaza-2', '', 1, ''),
(64, 'Chung cư Amber Riverside', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư: </strong>C&ocirc;ng ty cổ phần kỹ nghệ v&agrave; hạ tầng Telin</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu: </strong>6.361,56 (m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng: </strong>2.065(m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng: </strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển: </strong>Căn hộ chung cư</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n: </strong>T&ograve;a th&aacute;p cao 23 tầng &amp; 3 tầng hầm</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng: </strong>Khu TTTM v&agrave; nh&agrave; ở</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế: </strong>C&ocirc;ng ty cổ phần tư vấn v&agrave; x&acirc;y dựng CDCC &amp; C&ocirc;ng ty cổ phần West Green Design</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t: </strong>Đang cập nhật</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>Dự &aacute;n Amber Riverside</strong>&nbsp;l&agrave; tổ hợp t&ograve;a th&aacute;p&nbsp;<strong>chung cư</strong>&nbsp;cao tầng kết hợp trung t&acirc;m thương mại tại 622 Minh Khai mang biểu tượng của năng lượng, sự b&igrave;nh an v&agrave; hưng thịnh. Với mong muốn kiến tạo tổ ấm l&yacute; tưởng cho cư d&acirc;n, chủ đầu tư d&agrave;nh trọn t&acirc;m huyết tạo n&ecirc;n những căn hộ ngập tr&agrave;n &aacute;nh s&aacute;ng v&agrave; gi&oacute;, bố tr&iacute; căn hộ th&ocirc;ng minh, mật độ thấp, phần lớn kh&ocirc;ng gian d&agrave;nh cho s&acirc;n vườn v&agrave; tiện &iacute;ch nội khu. Amber Riverside hiện diện đầy đủ c&aacute;c tiện t&iacute;ch ho&agrave;n hảo c&ugrave;ng kh&ocirc;ng gian sống tiện nghi hiện đại phục vụ cho cuộc sống vẹn to&agrave;n của cư d&acirc;n nơi đ&acirc;y.</p>\r\n\r\n<p>Th&ocirc;ng tin tổng quan:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>T&ecirc;n dự &aacute;n</strong>: Chung cư Amber Riverside</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chủ đầu tư</strong>:&nbsp;C&ocirc;ng ty cổ phần kỹ nghệ v&agrave; hạ tầng Telin</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Vị tr&iacute;</strong>: 622 Minh Khai, quận Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Đơn vị thi c&ocirc;ng</strong>: C&ocirc;ng ty cổ phần Vimeco - Vinaconex</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Đơn vị gi&aacute;m s&aacute;t</strong>: C&ocirc;ng ty cổ phần tư vấn ĐT &amp; thiết kế x&acirc;y dựng Việt Nam CDC</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tổng diện t&iacute;ch dự &aacute;n</strong>: 6.361,56m2</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tổng diện t&iacute;ch x&acirc;y dựng</strong>: 2.065 m2</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc;</strong>: T&ograve;a nh&agrave; cao 23 tầng + 3 tầng hầm, trong đ&oacute;</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Tầng 1: Nh&agrave; trẻ + Khu thương mại, dịch vụ</p>\r\n		</li>\r\n		<li>\r\n		<p>Tầng 2, 3: Khu thương mại dịch vụ</p>\r\n		</li>\r\n		<li>\r\n		<p>Tầng 4 &ndash; 22: Căn hộ chung cư</p>\r\n		</li>\r\n		<li>\r\n		<p>Tầng 23: Thương mại dịch vụ</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 'banner-amber-24-06.jpg', '29.5 triệu/m2', 5, '622 Minh Khai, quận Hai Bà Trưng, Hà Nội', '2018-05-03', '2018-06-29', 1, NULL, NULL, NULL, NULL, NULL, 'Chung cư Amber Riverside', '', 'chung-cu-amber-riverside', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Dự án nổi bật', '', '', 0, 0, '2018-06-09', NULL, 1, 'sv2.jpg', NULL, NULL, NULL, NULL, NULL, 'Dự án nổi bật', '', 'du-an-noi-bat', '', 1),
(4, 'Dự án Vinhomes', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '', 0, 0, '2018-06-09', NULL, 1, 'sv1.jpg', NULL, NULL, NULL, NULL, NULL, 'Dự án Vinhomes', '', 'du-an-vinhomes', '', 1),
(5, 'Sự kiện nóng trong tuần 1', '', '', 0, 0, '2018-06-09', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Sự kiện nóng trong tuần 1', '', 'su-kien-nong-trong-tuan-1', '', 1),
(6, 'Dự án sắp mở bán', '', '', 0, 0, '2018-06-09', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Dự án sắp mở bán', '', 'du-an-sap-mo-ban', '', 1),
(7, 'Dự án cho thuê nổi bật', '', '', 0, 0, '2018-06-09', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Dự án cho thuê nổi bật', '', 'du-an-cho-thue-noi-bat', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Dự án nổi bật', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dự án nổi bật', '', 'du-an-noi-bat', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Dự án Vinhomes', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', NULL, 1, '', '', '', '', '', 'Dự án Vinhomes', '', 'du-an-vinhomes', '', NULL, 'vn', 4),
(8, 'category service 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '1', 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'category-service-2', '', NULL, 'en', 4),
(9, 'Sự kiện nóng trong tuần 1', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Sự kiện nóng trong tuần 1', '', 'su-kien-nong-trong-tuan-1', '', NULL, 'vn', 5),
(10, 'english version Massage Trị Liệu', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Massage Trị Liệu', '', 'en-massage-tri-lieu', '', NULL, 'en', 5),
(11, 'Dự án sắp mở bán', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dự án sắp mở bán', '', 'du-an-sap-mo-ban', '', NULL, 'vn', 6),
(12, 'english version Dự án sắp mở bán', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Dự án sắp mở bán', '', 'en-du-an-sap-mo-ban', '', NULL, 'en', 6),
(13, 'Dự án cho thuê nổi bật', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dự án cho thuê nổi bật', '', 'du-an-cho-thue-noi-bat', '', NULL, 'vn', 7),
(14, 'english version Dự án cho thuê nổi bật', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Dự án cho thuê nổi bật', '', 'en-du-an-cho-thue-noi-bat', '', NULL, 'en', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(69, 'vn', 'Tắm trắng & làm đẹp', 'Phương thức tắm trắng không lột tẩy, không bong tróc, vừa giúp làm da mặt trắng hồng tươi sáng, vừa se khít lỗ chân lông, đồng thời loại bỏ mụn cám và đầu đen.', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Tắm trắng & làm đẹp', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'tam-trang-lam-dep', 'Thi công rèm', NULL, 57),
(70, 'en', 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-roal-city', 'Thi công rèm', NULL, 57),
(71, 'vn', 'Massage Đá Nóng', 'Đây là phương pháp tác động từ bên ngoài vào sâu bên trong cơ thể, các dây thần kinh giúp lưu thông khí huyết và giải phóng năng lượng qua các huyệt đạo, tốt cho hệ tiêu hóa.', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage Đá Nóng', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'massage-da-nong', 'Thi công rèm', NULL, 58),
(72, 'en', 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-vimcom-ba-trieu', 'Thi công rèm', NULL, 58),
(73, 'vn', 'Liệu pháp thảo dược', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…Các loại thảo dược này không những kết hợp tạo mùi hương dễ chịu mà còn có tác dụng rất tốt .', '', NULL, 1, '', '', '', '', '', 'Liệu pháp thảo dược', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'lieu-phap-thao-duoc', 'Thi công rèm', NULL, 59),
(74, 'en', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khu-do-thi-ecopark', 'Thi công rèm', NULL, 59),
(75, 'vn', 'Triệt lông công nghệ cao', 'Dịch vụ triệt lông tay, triệt lông chân, triệt lông nách, triệt lông mặt và vùng kín của Galaxy Spa sử dụng công nghệ triệt lông IPL 2016 của Hoa Kỳ, giúp chị em thoải mái tự tin khoe đôi chân và đôi cánh tay mịn màng, trắng đẹp với những bộ cánh thời trang gợi cảm mà không phải lo lắng vì lông sẽ mọc rậm trở lại.', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Triệt lông công nghệ cao', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'triet-long-cong-nghe-cao', 'Thi công rèm', NULL, 60),
(76, 'en', 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khach-san-thang-loi', 'Thi công rèm', NULL, 60),
(77, 'vn', 'Chung cư Xuân Mai Complex', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư:&nbsp;</strong>C&ocirc;ng ty Cổ phần Đầu tư v&agrave; X&acirc;y dựng Xu&acirc;n Mai</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển:&nbsp;</strong>Căn hộ chung cư</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n:&nbsp;</strong>5 t&ograve;a căn hộ trong 2 Block K-L &amp; H-G-F</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng:&nbsp;</strong>Tầng dịch vụ: Từ tầng 1 đến tầng lửng Tầng căn hộ: Từ tầng 2 đến tầng 25</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n</ul>\r\n', '', NULL, 1, '', '', '', '', '', 'Chung cư Xuân Mai Complex', '', 'chung-cu-xuan-mai-complex', '', NULL, 61),
(78, 'en', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-keangnam', 'Thi công rèm', NULL, 61),
(79, 'vn', 'Chung cư TNR Sky Park', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư:&nbsp;</strong>C&ocirc;ng ty TNHH TM - QC - XD - Địa ốc Việt H&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu:&nbsp;</strong>113.909(m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng:&nbsp;</strong>26.597(m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng:&nbsp;</strong>23.3%</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển:&nbsp;</strong>Căn hộ chung cư</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t:&nbsp;</strong>TNR Holdings Việt Nam</p>\r\n	</li>\r\n</ul>\r\n', '<p>Thị trường&nbsp;<strong>bất động sản</strong>&nbsp;những ng&agrave;y đầu năm 2018 đang dậy s&oacute;ng với sự ra mắt của dự &aacute;n&nbsp;<strong>TNR Sky Park</strong>. Với nhiều ưu điểm về vị tr&iacute;, thiết kế v&agrave; hệ thống tiện &iacute;ch độc đ&aacute;o,&nbsp;<strong>TNR Sky Park</strong>&nbsp;thu h&uacute;t sự quan t&acirc;m của đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng c&ugrave;ng giới đầu tư.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chung</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>T&ecirc;n dự &aacute;n:&nbsp;TNR Sky Park&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Chủ đầu tư: C&ocirc;ng ty TNHH TM - QC - XD - Địa ốc Việt H&acirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Đơn vị độc quyền quản l&yacute;, điều h&agrave;nh v&agrave; ph&aacute;t triển:&nbsp;TNR Holdings Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p>Tổng thầu thi c&ocirc;ng:&nbsp;Delta &amp; Coteccons</p>\r\n	</li>\r\n	<li>\r\n	<p>Vị tr&iacute; dự &aacute;n:&nbsp;136 Hồ T&ugrave;ng Mậu, Bắc Từ Li&ecirc;m, H&agrave; Nội</p>\r\n	</li>\r\n	<li>\r\n	<p>Diện t&iacute;ch khu đất: 113.909 m2</p>\r\n	</li>\r\n	<li>\r\n	<p>Diện t&iacute;ch x&acirc;y dựng:&nbsp;26.597 m2</p>\r\n	</li>\r\n	<li>\r\n	<p>Mật độ x&acirc;y dựng: 23.3%</p>\r\n	</li>\r\n	<li>\r\n	<p>70% diện t&iacute;ch d&agrave;nh cho tiện &iacute;ch cảnh quan v&agrave; kh&ocirc;ng gian xanh</p>\r\n	</li>\r\n	<li>\r\n	<p>Chiều cao:&nbsp;40 tầng/ to&agrave;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tổng số căn hộ: 663 căn</p>\r\n	</li>\r\n	<li>\r\n	<p>Số căn hộ/s&agrave;n : 17 Căn</p>\r\n	</li>\r\n	<li>\r\n	<p>06 thang m&aacute;y tốc độ cao</p>\r\n	</li>\r\n	<li>\r\n	<p>Diện t&iacute;ch căn hộ : từ 67.97 m2 đến 115.96 m2</p>\r\n	</li>\r\n</ul>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Chung cư TNR Sky Park', '', 'chung-cu-tnr-sky-park', '', NULL, 62),
(80, 'en', 'english version Điều trị nám và tàn nhang', 'english version Điều trị nám tàn nhang chuyên sâu với mặt nạ đánh thức giác quan và da chai sạn, giúp làm sạch chuyển hóa trao đổi chất tốt, hấp thụ nhanh sản phẩm và đưa dưỡng chất vào sâu tận trong da, ức chế sự hội tụ melanin dưới da, đem lại cho da một làn da trắng sáng.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Điều trị nám và tàn nhang', '', 'en-dieu-tri-nam-va-tan-nhang', '', NULL, 62),
(81, 'vn', 'Chung cư Mỹ Đình Plaza 2', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư:&nbsp;</strong>C&ocirc;ng ty cổ phần Đầu Tư Địa Ốc Mỹ Đ&igrave;nh &amp; C&ocirc;ng ty cổ phần tập đo&agrave;n T&acirc;n Mai</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu:&nbsp;</strong>5.000 (m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng:&nbsp;</strong>2.340,13 (m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng:&nbsp;</strong>48.22%</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển:&nbsp;</strong>Căn hộ</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n:&nbsp;</strong>02 t&ograve;a CT1 &amp; CT2 cao 28 tầng v&agrave; 03 tầng hầm</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng:&nbsp;</strong>Khu TTTM, văn ph&ograve;ng v&agrave; nh&agrave; ở</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t:&nbsp;</strong>Đang cập nhật</p>\r\n	</li>\r\n</ul>\r\n', '<p>Nằm trong khu vực ph&aacute;t triển bậc nhất quận Cầu Giấy &ndash; Mỹ Đ&igrave;nh, dự &aacute;n&nbsp;<strong>Mỹ Đ&igrave;nh Plaza 2</strong>&nbsp;hứa hẹn sẽ đem đến cho cư d&acirc;n cuộc sống vi&ecirc;n m&atilde;n, tiện nghi, hiện đại với hệ thống tiện &iacute;ch đa dạng, c&aacute;c căn hộ thiết kế hợp l&yacute;, tinh tế.</p>\r\n\r\n<p><strong>Kết cấu bền vững - an to&agrave;n - m&ocirc;i trường của Mỹ Đ&igrave;nh Plaza 2:</strong></p>\r\n\r\n<p>Trang bị hệ thống năng lượng xanh cho dự &aacute;n</p>\r\n\r\n<p>Hệ thống PCCC ti&ecirc;u chuẩn, chất lượng cao</p>\r\n\r\n<p>Hệ thống thang m&aacute;y hiện đại &amp; c&aacute;c thang bộ phục vụ cư d&acirc;n kh&ocirc;ng kể hệ thống thang phục vụ khối đế</p>\r\n\r\n<p>Trạm điện c&oacute; c&ocirc;ng suất dự ph&ograve;ng, m&aacute;y ph&aacute;t điện dự ph&ograve;ng</p>\r\n\r\n<p>Trạm xử l&yacute; nước thải c&ocirc;ng nghệ ti&ecirc;n tiến</p>\r\n\r\n<p>Nước sạch (C&ocirc;ng ty nước sạch S&ocirc;ng Đ&agrave; &ndash; VIWACO)</p>\r\n\r\n<p>S&agrave;n dự ứng lực trước, kh&ocirc;ng c&oacute; dầm trong căn hộ</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Chung cư Mỹ Đình Plaza 2', '', 'chung-cu-my-dinh-plaza-2', '', NULL, 63),
(82, 'en', 'english version Massage với tinh dầu', 'english version Massage với tinh dầu là dùng tinh dầu nguyên chất để massage tạo cảm giác thư giãn.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với tinh dầu', '', 'en-massage-voi-tinh-dau', '', NULL, 63),
(83, 'vn', 'Chung cư Amber Riverside', '<ul>\r\n	<li>\r\n	<p><strong>Chủ đầu tư: </strong>C&ocirc;ng ty cổ phần kỹ nghệ v&agrave; hạ tầng Telin</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất nghi&ecirc;n cứu: </strong>6.361,56 (m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Diện t&iacute;ch đất x&acirc;y dựng: </strong>2.065(m2)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mật độ x&acirc;y dựng: </strong>Đang cập nhật</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Loại h&igrave;nh ph&aacute;t triển: </strong>Căn hộ chung cư</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc; dự &aacute;n: </strong>T&ograve;a th&aacute;p cao 23 tầng &amp; 3 tầng hầm</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ph&acirc;n khu chức năng: </strong>Khu TTTM v&agrave; nh&agrave; ở</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tư vấn thiết kế: </strong>C&ocirc;ng ty cổ phần tư vấn v&agrave; x&acirc;y dựng CDCC &amp; C&ocirc;ng ty cổ phần West Green Design</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quản l&yacute; dự &aacute;n &amp; tư vấn gi&aacute;m s&aacute;t: </strong>Đang cập nhật</p>\r\n	</li>\r\n</ul>\r\n', '<p><strong>Dự &aacute;n Amber Riverside</strong>&nbsp;l&agrave; tổ hợp t&ograve;a th&aacute;p&nbsp;<strong>chung cư</strong>&nbsp;cao tầng kết hợp trung t&acirc;m thương mại tại 622 Minh Khai mang biểu tượng của năng lượng, sự b&igrave;nh an v&agrave; hưng thịnh. Với mong muốn kiến tạo tổ ấm l&yacute; tưởng cho cư d&acirc;n, chủ đầu tư d&agrave;nh trọn t&acirc;m huyết tạo n&ecirc;n những căn hộ ngập tr&agrave;n &aacute;nh s&aacute;ng v&agrave; gi&oacute;, bố tr&iacute; căn hộ th&ocirc;ng minh, mật độ thấp, phần lớn kh&ocirc;ng gian d&agrave;nh cho s&acirc;n vườn v&agrave; tiện &iacute;ch nội khu. Amber Riverside hiện diện đầy đủ c&aacute;c tiện t&iacute;ch ho&agrave;n hảo c&ugrave;ng kh&ocirc;ng gian sống tiện nghi hiện đại phục vụ cho cuộc sống vẹn to&agrave;n của cư d&acirc;n nơi đ&acirc;y.</p>\r\n\r\n<p>Th&ocirc;ng tin tổng quan:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>T&ecirc;n dự &aacute;n</strong>: Chung cư Amber Riverside</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chủ đầu tư</strong>:&nbsp;C&ocirc;ng ty cổ phần kỹ nghệ v&agrave; hạ tầng Telin</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Vị tr&iacute;</strong>: 622 Minh Khai, quận Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Đơn vị thi c&ocirc;ng</strong>: C&ocirc;ng ty cổ phần Vimeco - Vinaconex</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Đơn vị gi&aacute;m s&aacute;t</strong>: C&ocirc;ng ty cổ phần tư vấn ĐT &amp; thiết kế x&acirc;y dựng Việt Nam CDC</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tổng diện t&iacute;ch dự &aacute;n</strong>: 6.361,56m2</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tổng diện t&iacute;ch x&acirc;y dựng</strong>: 2.065 m2</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy m&ocirc;</strong>: T&ograve;a nh&agrave; cao 23 tầng + 3 tầng hầm, trong đ&oacute;</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Tầng 1: Nh&agrave; trẻ + Khu thương mại, dịch vụ</p>\r\n		</li>\r\n		<li>\r\n		<p>Tầng 2, 3: Khu thương mại dịch vụ</p>\r\n		</li>\r\n		<li>\r\n		<p>Tầng 4 &ndash; 22: Căn hộ chung cư</p>\r\n		</li>\r\n		<li>\r\n		<p>Tầng 23: Thương mại dịch vụ</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Chung cư Amber Riverside', '', 'chung-cu-amber-riverside', '', NULL, 64),
(84, 'en', 'english version Massage với thảo dược', 'english version Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với thảo dược', '', 'en-massage-voi-thao-duoc', '', NULL, 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_chinh`
--

CREATE TABLE `tai_chinh` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tai_chinh`
--

INSERT INTO `tai_chinh` (`id`, `name`, `note`) VALUES
(1, 'Dưới 3 tỷ', NULL),
(2, 'Từ 3 tỷ đến 6 tỷ', NULL),
(3, 'Từ 6 tỷ đến 9 tỷ', NULL),
(4, 'Từ 9 tỷ đến 12 tỷ', NULL),
(5, 'Từ 12 tỷ đến 15 tỷ', NULL),
(6, 'Từ 15 tỷ đến 20 tỷ', NULL),
(7, 'Trên 20 tỷ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci,
  `remember_me_token` text COLLATE utf8_unicode_ci,
  `user_birthday` date NOT NULL,
  `user_nick` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_sex` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `user_tinh` int(11) DEFAULT NULL,
  `user_quan` int(11) DEFAULT NULL,
  `user_phuong` int(11) DEFAULT NULL,
  `user_cmnd` text COLLATE utf8_unicode_ci,
  `user_image` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`, `user_birthday`, `user_nick`, `user_sex`, `user_type`, `user_tinh`, `user_quan`, `user_phuong`, `user_cmnd`, `user_image`) VALUES
(10, 'hung', 'hung71483@gmail.com', NULL, NULL, '$2y$10$K1pWsDER5UHre0zaC5IYyOZFnYSXYA34OO7M7Yu3wG/LzFaiXaN6O', NULL, 1, '0000-00-00', '$2y$10$agH2TActbd84Z7FltVwgYuuls12k7kwo4nIKTwYTF9NwaoD/B6Z8a', 'Ub9dhdrbOub9AnPESARe', 'zcZMIcNMkrAeVbLqbPIueU4x0JS3Q5', '0000-00-00', 'hung', 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, 'Việt Hưng', 'viethung95cute@gmail.com', NULL, NULL, '$2y$10$H/oRwht13lj1/tnj.VEIVO58qvIvEIjfTDt4HByWikd/e15e0CD2G', NULL, 1, '0000-00-00', '$2y$10$nEdTTn2WO1lwvkii8gfgpuwf9TRz72.ypUNmDUUGlVJvuR2ZC.idy', '', '', '0000-00-00', 'viethung', 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', '$2y$10$90ZKjbXjZy8KI6sMNWuiyeNJdENUJe9pl8drUNfMHbF/mzS8vyNyi', NULL, 1, '2019-04-01', '', NULL, NULL, '1970-01-01', 'daothanhnhan', 1, 0, 1, 0, 0, '001083008648', '1554138621logocopy.png'),
(16, 'Vũ Hoàng Giang', 'dieucay88@gmail.com', '0946231088', '', '$2y$10$IHlMyIr6XETiRxqxAnbbaewvVKwyTLQEmtcWVAyxmkCgmZZSspqee', NULL, 1, '2019-04-10', '', '1aGAMHtUaQ50h5TeEe6O', 'jWa338TAtoKW10iRJmGKfH7WXx1OkW', '1988-10-23', 'giangvh', 1, 0, 1, 1, 1, '0111111111111111', '1555277424home-51221.jpg'),
(17, 'Vũ Hoàng Giang', 'dieucay88@gmail.com', '0946222222', NULL, '$2y$10$pRJvE/P8FXx/nZU65aeE8OJ.RIxcvSgAwGJttRClm7aZkNPNhA.ZC', NULL, 1, '2019-04-12', '', NULL, NULL, '0000-00-00', 'giangvh1', 1, 0, 1, 0, 0, '11111111112222222', NULL),
(18, 'Vũ Hoàng Giangs', 'dieucay88@gmail.com', '3123123123', NULL, '$2y$10$gqFIQn2UPD5u7x3vE2XSMuSZAQbc.t2OmMqaqf.p98piQBdyoSz8u', NULL, 1, '2019-04-12', '', NULL, NULL, '0000-00-00', 'giangvh2', 1, 0, 1, 0, 0, '33333333333333', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vi_tri`
--

CREATE TABLE `vi_tri` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vi_tri`
--

INSERT INTO `vi_tri` (`id`, `name`) VALUES
(1, 'Mặt đường'),
(2, 'Mặt ngõ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `dien_tich`
--
ALTER TABLE `dien_tich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Chỉ mục cho bảng `duong_rong`
--
ALTER TABLE `duong_rong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hien_trang`
--
ALTER TABLE `hien_trang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `huong_nha`
--
ALTER TABLE `huong_nha`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ki_gui`
--
ALTER TABLE `ki_gui`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `phap_ly`
--
ALTER TABLE `phap_ly`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phuong`
--
ALTER TABLE `phuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`region_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `quan`
--
ALTER TABLE `quan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tai_chinh`
--
ALTER TABLE `tai_chinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `vi_tri`
--
ALTER TABLE `vi_tri`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dien_tich`
--
ALTER TABLE `dien_tich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `duong_rong`
--
ALTER TABLE `duong_rong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `hien_trang`
--
ALTER TABLE `hien_trang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `huong_nha`
--
ALTER TABLE `huong_nha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `ki_gui`
--
ALTER TABLE `ki_gui`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `phap_ly`
--
ALTER TABLE `phap_ly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phuong`
--
ALTER TABLE `phuong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quan`
--
ALTER TABLE `quan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tai_chinh`
--
ALTER TABLE `tai_chinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `vi_tri`
--
ALTER TABLE `vi_tri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
