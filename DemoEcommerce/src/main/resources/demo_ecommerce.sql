-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 15, 2019 lúc 10:53 AM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo_ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`) VALUES
(1, 'Women', 'Women'),
(2, 'Men', 'Men'),
(3, 'Kids', 'Kids'),
(7, 'None', 'Loai Khac'),
(8, 'Vũ Thông', 'Test Update lần 12'),
(9, 'Test lần 2', 'Lưu tiếng việt trong CSDL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(10),
(10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `image` varchar(5000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`image_id`, `image`, `product_id`) VALUES
(1, 'images/giay_da_cao_cap_gia_vi_vn940_961d.jpg', 1),
(2, 'images/giay_da_cao_cap_gia_vi_vn940_19df.jpg', 1),
(3, 'images/giay_da_cao_cap_gia_vi_vn940_6cfa.jpg', 1),
(4, 'images/giay_da_cao_cap_gia_vi_vn940_aefd.jpg', 1),
(5, 'images/giay_sneaker_nam_cot_day_sutumi_sum008_e564.jpg', 2),
(6, 'images/giay_sneaker_nam_cot_day_sutumi_sum008_5d23.jpg', 2),
(7, 'images/giay_sneaker_nam_cot_day_sutumi_sum008_98b5.jpg', 2),
(8, 'images/giay_sneaker_nam_cot_day_sutumi_sum008_8505.jpg', 2),
(9, 'images/giay_luoi_nam_da_bo_thun_2_ben_sutumi_m138b_1afa.jpg', 3),
(10, 'images/giay_luoi_nam_da_bo_thun_2_ben_sutumi_m138b_7a19.jpg', 3),
(11, 'images/giay_luoi_nam_da_bo_thun_2_ben_sutumi_m138b_9fe3.jpg', 3),
(12, 'images/giay_luoi_nam_da_bo_thun_2_ben_sutumi_m138b_edeb.jpg', 3),
(13, 'images/giay_tay_nam_da_bo_tron_gia_vi_vp_3471_01de.jpg', 4),
(14, 'images/giay_tay_nam_da_bo_tron_gia_vi_vp_3471_50ef.jpg', 4),
(15, 'images/giay_tay_nam_da_bo_tron_gia_vi_vp_3471_ab8a.jpg', 4),
(16, 'images/giay_tay_nam_da_bo_tron_gia_vi_vp_3471_ff95.jpg', 4),
(17, 'images/giay_boot_nam_cao_co_ca_tinh_768b.jpg', 5),
(18, 'images/giay_boot_nam_cao_co_ca_tinh_0aa3.jpg', 5),
(19, 'images/giay_boot_nam_cao_co_ca_tinh_a9fd.jpg', 5),
(20, 'images/giay_boot_nam_cao_co_ca_tinh_dec4.jpg', 5),
(21, 'images/giay_sandal_nam_nang_dong_c667.jpg', 7),
(22, 'images/giay_sandal_nam_nang_dong_05da.jpg', 7),
(23, 'images/giay_sandal_nam_nang_dong_0029.jpg', 7),
(24, 'images/giay_sandal_nam_nang_dong_50e4.jpg', 7),
(25, 'images/giay_nam_top_fit_krypton_8008007_6459.jpg', 9),
(26, 'images/giay_nam_top_fit_krypton_8008007_7a55.jpg', 9),
(27, 'images/giay_nam_top_fit_krypton_8008007_b511.jpg', 9),
(28, 'images/giay_nam_top_fit_krypton_8008007_1d87.jpg', 9),
(29, 'images/giay_tay_nam_sledgers_gaspard_6e8b.jpg', 10),
(30, 'images/giay_tay_nam_sledgers_gaspard_7817.jpg', 10),
(31, 'images/giay_tay_nam_sledgers_gaspard_e8f9.jpg', 10),
(32, 'images/giay_tay_nam_sledgers_gaspard_cd68.jpg', 10),
(33, 'images/giay_nam_keep_on_andofa_thoi_trang_fcb03_15a6.jpg', 11),
(34, 'images/giay_nam_keep_on_andofa_thoi_trang_fcb03_50e0.jpg', 11),
(35, 'images/giay_nam_keep_on_andofa_thoi_trang_fcb03_666c.jpg', 11),
(36, 'images/giay_nam_keep_on_andofa_thoi_trang_fcb03_6614.jpg', 11),
(37, 'images/giay_sandal_nam_giavi_du_cao_cap_gv1603_4622.jpg', 12),
(38, 'images/giay_sandal_nam_giavi_du_cao_cap_gv1603_4cde.jpg', 12),
(39, 'images/giay_sandal_nam_giavi_du_cao_cap_gv1603_9fe3.jpg', 12),
(40, 'images/giay_sandal_nam_giavi_du_cao_cap_gv1603_a46d.jpg', 12),
(41, 'images/giay_cot_day_unisex_quickfree_pan_w160505_fa9f.jpg', 13),
(42, 'images/giay_cot_day_unisex_quickfree_pan_w160505_1ed3.jpg', 13),
(43, 'images/giay_cot_day_unisex_quickfree_pan_w160505_d695.jpg', 13),
(44, 'images/giay_cot_day_unisex_quickfree_pan_w160505_7bf7.jpg', 13),
(45, 'images/giay_boot_nu_da_bo_cot_day_sutumi_suw139_5994.jpg', 15),
(46, 'images/giay_boot_nu_da_bo_cot_day_sutumi_suw139_60c7.jpg', 15),
(47, 'images/giay_boot_nu_da_bo_cot_day_sutumi_suw139_1423.jpg', 15),
(48, 'images/giay_boot_nu_da_bo_cot_day_sutumi_suw139_9e6c.jpg', 15),
(49, 'images/giay_keep_on_andofa_fcb04_062a.jpg', 17),
(50, 'images/giay_keep_on_andofa_fcb04_0e1b.jpg', 17),
(51, 'images/giay_keep_on_andofa_fcb04_d0b7.jpg', 17),
(52, 'images/giay_keep_on_andofa_fcb04_fe41.jpg', 17),
(53, 'images/giay_bet_thun_dinh_no_sulily_babe06_6642.jpg', 14),
(54, 'images/giay_bet_thun_dinh_no_sulily_babe06_3e24.jpg', 14),
(55, 'images/giay_bet_thun_dinh_no_sulily_babe06_c6d8.jpg', 14),
(56, 'images/giay_bet_thun_dinh_no_sulily_babe06_e4c8.jpg', 14),
(57, 'images/giay_bup_be_nu_anly_quickfree_106_0aaf.jpg', 16),
(58, 'images/giay_bup_be_nu_anly_quickfree_106_b48d.jpg', 16),
(59, 'images/giay_bup_be_nu_anly_quickfree_106_ded7.jpg', 16),
(60, 'images/giay_bup_be_nu_anly_quickfree_106_ad36.jpg', 16),
(61, 'images/giay_nu_top_fit_krypton_8009005_4525.jpg', 18),
(62, 'images/giay_nu_top_fit_krypton_8009005_8caf.jpg', 18),
(63, 'images/giay_nu_top_fit_krypton_8009005_9f21.jpg', 18),
(64, 'images/giay_nu_top_fit_krypton_8009005_ed9f.jpg', 18),
(65, 'images/giay_sandal_got_vuong_sulily_sgv2i17_014f.jpg', 19),
(66, 'images/giay_sandal_got_vuong_sulily_sgv2i17_24d8.jpg', 19),
(67, 'images/giay_sandal_got_vuong_sulily_sgv2i17_a093.jpg', 19),
(68, 'images/giay_sandal_got_vuong_sulily_sgv2i17_fc77.jpg', 19),
(69, 'images/giay_slip_on_nu_quickfree_lightly_syn_202_2a3e.jpg', 20),
(70, 'images/giay_slip_on_nu_quickfree_lightly_syn_202_dc46.jpg', 20),
(71, 'images/giay_slip_on_nu_quickfree_lightly_syn_202_f9c5.jpg', 20),
(72, 'images/giay_slip_on_nu_quickfree_lightly_syn_202_9727.jpg', 20),
(73, 'images/giay_sneakers_nu_nang_dong_99c3.jpg', 21),
(74, 'images/giay_sneakers_nu_nang_dong_67d3.jpg', 21),
(75, 'images/giay_sneakers_nu_nang_dong_97cc.jpg', 21),
(76, 'images/giay_sneakers_nu_nang_dong_e387.jpg', 21),
(77, 'images/giay_the_thao_nu_mix_bac_sutumi_suw006_72da.jpg', 23),
(78, 'images/giay_the_thao_nu_mix_bac_sutumi_suw006_3d62.jpg', 23),
(79, 'images/giay_the_thao_nu_mix_bac_sutumi_suw006_f092.jpg', 23),
(80, 'images/giay_the_thao_nu_mix_bac_sutumi_suw006_84c2.jpg', 23),
(81, 'images/sandal_du_gia_vi_cao_cap_gv_1601_509e.jpg', 24),
(82, 'images/sandal_du_gia_vi_cao_cap_gv_1601_4efa.jpg', 24),
(83, 'images/sandal_du_gia_vi_cao_cap_gv_1601_2580.jpg', 24),
(84, 'images/sandal_du_gia_vi_cao_cap_gv_1601_4a0e.jpg', 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `information` varchar(5000) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_code`, `description`, `price`, `information`) VALUES
(1, 2, 'Giày da cao cấp Gia Vi VN940', 'SID64561', 'Giày tây nam luôn là một item không thể nào thiếu đối với một bộ trang phục như áo sơ mi, quần tây, quần jean.. để tạo nên sự hoàn hảo nhất cho các chàng. Mỗi người sẽ có một tính cách riêng và gu thời trang khác biệt. Chính vì thế có rất nhiều mẫu giày tây được thiết kế ra nhưng vẫn mang những nét lịch lãm, sang trọng và phong cách cho các chàng.', 50, 'Giày da cao cấp Gia Vi VN940: Chất liệu da bò cùng đế cao su bền đẹp chắc chắn cho bạn yên tâm trong quá trinh sử dụng. Thiết kế mũi nhọn sang trọng, thời trang và đầu phong cách làm toát lên vẻ nam tính và lịch lãm cho bạn.'),
(2, 2, 'Giày sneaker nam cột dây SUTUMI SUM008', 'SID63810', 'Giày sneaker mang phong cách năng động sẽ là lựa chọn hoàn hảo của nhiều anh chàng cá tính trong bất kể mùa nào trong năm. Với thiết kế đơn giản cùng màu sắc đa dạng, đôi giày này sẽ làm hài lòng nhiều sở thích của bạn nam khi đi chơi, đi dạo phố...Nếu chàng còn chưa sắm cho mình một đôi giày sneaker mới thì hãy nhanh tay lựa chọn cho bản thân một đôi giày ưng ý nhất nhé.', 100, 'Giày sneaker nam cột dây SUTUMI SUM008: Chất liệu da pu bền, có lớp lót trong cho người diện di chuyển nhẹ nhàng, êm chân, đem lại yên tâm cho người sử dụng. Thiết kế phong cách, form ôm chân cho chàng thoải mái di chuyển'),
(3, 2, 'Giày lười nam da bò thun 2 bên SUTUMI M138B', 'SID60474', 'Giày lười là kiểu giày kinh điển tượng trưng cho sự trẻ trung, thoải mái mà mọi đôi chân đều có thể mang vào vô cùng dễ dàng. Chính thiết kế thân giày thấp, không dây buộc hay khóa cài mang lại sự tiện lợi cho người mang. Ngày nay, giày lười đã trở thành món phụ kiện nổi bật, liên tục được các “chàng sành điệu” lựa chọn làm bạn đồng hành trong nhiều sự kiện khác nhau.', 200, 'Giày lười nam da bò thun 2 bên SUTUMI M138B: Chất liệu vải và da bò bền chắc, đế giày với thiết kế chống trơn trượt hiệu quả. Thiết kế kiểu giày xỏ tiện lợi, thoải mái, êm chân cho các chàng tự tin trong mọi hoạt động'),
(4, 2, 'Giày tây nam da bò trơn GIA VI VP 3471', 'SID58627', 'Nếu như phái đẹp có hàng trăm đôi giày khác nhau từ cao gót, sneakers, sandal hay những đôi dép với đầy đủ mẫu mã trong đủ đồ của mình để khẳng định phong cách nhiều màu sắc của mình, thì đối với các đấng mày râu chỉ cần một đôi giày tây da sang trọng và sành điệu là đủ rồi. Không cầu kỳ trong từng mẫu mã nhưng những đôi giày tây da bò vẫn luôn chiếm được cảm tình của các chàng trai bởi sự lịch lãm mà chúng mang lại. Chàng có thể diện chúng cùng những bộ đồ công sở thanh lịch, hay những set đồ bụi bặm cùng quần jeans áo phông, và đôi khi biển đổi sang phong cách trẻ trung cùng quần short, quần jogger nữa đấy!', 20, 'Giày tây nam da bò trơn GIA VI VP 3471: Chất liệu da bò mềm mại, êm chân, cho nam giới thoải mái di chuyển dễ dàng. Thiết kế đơn giản, tinh tế cho phái mạnh thể hiện đẳng cấp thời trang'),
(5, 2, 'Giày boot nam cao cổ cá tính', 'SID54897', 'Năm nay là năm của giày da nam lên ngôi khiến các phái mạnh mê mẩn. Xin bật mí nho nhỏ với các tín đồ yêu thích thời trang rằng những thiết kế giày boots là một item \"chất\" đang nổi bật nhất trong các kiểu giày. Thay vì chọn những kiểu giày lười công sở cơ bản và đơn giản như mốt mùa trước, thì bạn hãy thay đổi phong cách mình bằng các kiểu giày boot nam cao cổ phong trần và cá tính. Nếu bạn là một tín đồ thích sự cá tính và “chất lừ” trong phong cách street-style thì việc chọn lựa cho mình một đôi giày đẹp thiết kế thể thao năng động chính là bí quyết nhỏ giúp bạn thành một fashionista thời trang chính hiệu đấy nhé.', 150, 'Giày boot nam cao cổ cá tính: Chất liệu da pu mềm mại tạo cho bạn cảm giác êm chân, thoải mái khi sử dụng cho bạn yên tâm khi diện. Thiết kế theo kiểu giày boots cách điệu mang lại sự sang trọng lịch lãm tôn lên vẻ nam tính cho phái mạnh.'),
(7, 2, 'Giày sandal nam năng động', 'SID61322', 'Những chuyến du lịch, tham quan là những chuyến đi trải nghiệm với nhiều điều thú vị, và cũng là những chuyến đi bạn phải đi nhiều nhất. Lựa chọn một đôi giày vừa vặn, êm chân và cũng thật thời trang là điều mà bạn mong muốn. Giày sandal thì sao? Chắc hẳn là một lựa chọn tuyệt vời đấy chứ, thiếu kể đơn giản nhưng thời trang với tính năng ôm chân và chống trơn vượt trội cho bạn luôn thoải mái và tự tin nhất trên những bước chân của mình.', 50, 'Giày sandal nam năng động: Chất liệu da và cao su bền chắc với thiết kế chống trơn trượt hiệu quả, đảm bảo an toàn cho bạn. Thiết kế quai ngang đơn giản, thời trang, mang đến phong cách trẻ trung, năng động'),
(9, 2, 'Giày nam Top Fit KRYPTON 8008007', 'SID66516', 'Những mẫu giày nam kiểu dáng Top on đầy trẻ trung, năng động là một trong những item không thể nào thiếu của mỗi anh chàng, nhất là diện trong các hoạt đồng đòi hỏi phải hoạt động nhiều. Với thiết kế ôm chân vừa vặn, màu sắc nổi bật trẻ trung cùng nhấn nhá họa tiết mang đến nét mới lạ, độc đáo và nổi bật cho các chàng khi diện. Cùng ThongVu tham khảo và mua sắm mẫu giày đang hot và mới nhất hiện nay nhé!', 80, 'Giày nam Top Fit KRYPTON 8008007: Chất liệu bằng da bền, đẹp, đem lại vẻ ngoài sang trọng, làm nổi bật thêm set đồ bạn diện. Thiết kế đơn giản cùng lớp lót bên trong êm chân, dễ dàng di chuyển'),
(10, 2, 'Giày tây nam SLEDGERS GASPARD', 'SID55808', 'Trong thế giới thời trang của đàn ông, những món đồ luôn được xem là kinh điển và không thể thiếu đôi giày tây sang trọng. Đối với ngày bình thường chàng có thể năng động và trẻ trung cùng giày mọi, giày thể thao hay đơn giản là những đôi sandal nam tính. Nhưng vào những dịp quan trọng hay đơn giản là một buổi hẹn lần đầu tiên, tiếp xúc với đối tác, khách hàng thì ấn tượng về hình thức bên ngoài sẽ gây được thiện cảm hơn với người đối diện. Những chiếc áo sơ mi hay một bộ vest không có một đôi giày tây sẽ là thiếu sót lớn. Và nếu đang muốn tìm cho mình một thiết kế giày tây đẹp hoàn hảo hãy đến ngay ThongVu nhé. Chúng tôi tin chắc bạn sẽ hài lòng với những thiết kế giày tây tại đây đấy.', 120, 'Giày tây nam SLEDGERS GASPARD: Chất liệu da bò mềm mại tạo cho bạn cảm giác êm chân, thoải mái khi sử dụng. Thiết kế theo kiểu giày tây cách điệu mang lại sự sang trọng lịch lãm tôn lên vẻ nam tính cho phái mạnh.'),
(11, 2, 'Giày nam KEEP ON - ANDOFA thời trang FCB03', 'SID64914', 'Từ sau khi được giới fashionista trên khắp thế giới lăng xê nhiệt tình, những đôi giày lười đang và sẽ tiếp tục giữ vị trí quan trọng trong tủ đồ của phái mạnh. Với giày lười mọi set đồ đều mang tinh thần trẻ trung và năng động hơn nhưng đồng thời bạn vẫn có thể giữ được nét nam tính và thanh lịch. Với ưu điểm êm chân, dễ đi, dễ tháo ra hay đeo vào, những đôi giày lười luôn chiếm vị trí quan trọng trong lòng những tín đồ thời trang.', 250, 'Giày nam KEEP ON - ANDOFA thời trang FCB03: Chất liệu vải bền cùng lớp lót bên trong êm chân, cho bạn nam thoải mái di chuyển trên mọi địa hình. Thiết kế thời trang, phong cách giúp phái mạnh tự tin hơn khi mang trong các hoạt động'),
(12, 2, 'Giày Sandal nam GIAVI dù cao cấp GV1603', 'SID57342', 'Một trong những món phụ kiện thời trang mà phái mạnh luôn quan tâm chính là giày dép, vì những món phụ kiện này không chỉ mang đến cảm giác thoải mái, bảo vệ đôi chân của các chàng mà còn mang đến một phong cách thật lịch lãm và cá tính. Nếu như những đôi giày âu kết hợp cùng những chiếc quần tây, phối thêm chiếc áo sơ mi là cũng đủ cho anh chàng công sở có thể tỏa sáng mọi nơi. Nhưng mà phái mạnh đâu chỉ có những đôi giày âu, sneakers, các chàng cũng nên sắm cho mình những đôi sandal nam đầy thoải mái và trẻ trung để thỏa thích thể hiện phong cách năng động, hiện đại của mình trong mọi set đồ mà chàng diện lên người.', 220, 'Giày Sandal nam GIAVI dù cao cấp GV1603:Chất liệu giày làm bằng dù + TPR bền chắc với thiết kế chống trơn trượt hiệu quả, đảm bảo an toàn cho người sử dụng. Thiết kế quai ngang đơn giản, thời trang, mang đến phong cách trẻ trung, năng động'),
(13, 2, 'Giày Cột Dây Unisex QuickFree', 'SID56852', 'Nếu như bạn được lựa chọn một loại trang phục mang tính năng động, thoải mái đầy trẻ trung để đi chơi, đi du lịch thì bạn sẽ chọn set đồ nào đây? Một chiếc áo phông phối cùng những chiếc quần jeans phong cách, nhấn nhá thêm những đôi giày sneakers cá tính có phải là sự kết hợp hoàn hảo cho buổi đi chơi, buổi hẹn hò của bạn hay không nào. Hoặc bạn cũng có thể phối những đôi giày này với những chiếc quần short, áo sơ mi cũng thật kiểu cách và thời trang đó nhé, với những đôi giày unisex thì các chàng và các nàng còn có thể rủ \"người ấy\" cùng làm bộ đôi đồ thật ấn tượng nữa đấy.', 300, 'Giày Cột Dây Unisex QuickFree: Chất liệu vải canvas Oz20 sang trọng tự nhiên, bền chắc, tạo sự thoải mái trong mỗi bước chân. Thiết kế ôm vừa chân đẳng cấp, thời trang, mang đến cho bạn vẻ ngoài trẻ trung, năng động'),
(14, 1, 'Giày bệt thun đính nơ SULILY BABE06', 'SID64533', 'Những mẫu giày nữ với kiểu dáng bệt cùng thiết kế trơn đơn giản dễ dàng kết hợp với nhiều mẫu trang phục khác nhau chắc hẳn mỗi cô nàng phái nữ sẽ sở hữu cho mình ít nhất một đôi. Không những dễ dàng kết hợp diện với nhiều bộ trang phục khác nhau mà giày bệt nữ còn mang lại sự thoải mái, êm chân giúp nàng luôn tự tin khi tham gia bất kì hoàn cảnh nào.', 260, 'Giày bệt thun đính nơ SULILY BABE06: Chất liệu da bền chắc, đẹp và mềm mịn siêu nhẹ và êm ái, tạo sự thoải mái khi di mang. Thiết kế đơn giản nhấn nhá phối nơ đầy xinh xắn cho bạn gái thêm nữ tính và sành điệu khi diện.'),
(15, 1, 'Giày boot nữ da bò cột dây SUTUMI SUW-139', 'SID60475', 'Giày boot nữ là item thời trang rất được ưa chuộng của phái đẹp với tất cả các mùa trong năm. Khi thời tiết nắng nóng, nó sẽ thấm hút mồ hôi, tạo cảm giác thoải mái còn khi trời lạnh giúp đôi chân của bạn luôn êm ấm. Các mẫu giày nữ ngày càng nhiều vì thế nhu cầu sử dụng từ đó ngày càng tăng lên, việc sở hữu cho bản thân một đôi giày boot vừa tinh tế vừa diện được trong nhiều hoàn cảnh sẽ mang đến phong cách thời trang thêm đẳng cấp và sành điệu hơn bao giờ hết.', 240, 'Giày boot nữ da bò cột dây SUTUMI SUW-139: Chất liệu da bò bền, không bị bong tróc theo thời gian, kéo dài tuổi thọ sản phẩm, mang lại yên tâm cho người diện. Thiết kế phong cách, phối khóa kéo cho phái nữ dễ dàng tháo ra hay mang vào'),
(16, 1, 'Giày búp bê nữ Anly QUICKFREE 106', 'SID60640', 'Thiết kế ôm chân xinh xắn, cho phái đẹp dễ dàng di chuyển là những gì mà đôi giày búp bê mang lại. Item này chắc chắn không thể thiếu trong bộ sưu tập giày của nhiều cô nàng. Sự kết hợp tinh tế giữa đôi giày với trang phục sẽ đem lại cho phái đẹp một set đồ hoàn hảo, hài hòa về màu sắc. Với sản phẩm tiện dụng này, nàng có thế diện tung tăng mọi nơi, mọi hoàn cảnh mà không lo bị đau chân. Thật thoải mái đúng không nào?', 280, 'Giày búp bê nữ Anly QUICKFREE 106: Chất liệu da bền, chắc, mềm mại, kéo dài thời gian sử dụng sản phẩm, đem lại yên tâm cho người sử dụng. Thiết kế đục lỗ tinh tế, tạo cảm giác thoáng mát cho phái nữ tự tin diện'),
(17, 1, 'Giày KEEP ON - ANDOFA FCB04', 'SID64966', 'Dễ mang vào tháo ra và diện êm chân lại dễ dàng kết hợp với nhiều bộ trang phục khác nhau là những ưu điểm mà đôi giày keep on mang lại. Với thiết kế đơn giản ôm chân vừa vặn, đôi khi có nhấn nhá những họa tiết hoặc màu sắc độc đáo và bắt mắt mang lại nét trẻ trung, năng động và tràn đầy năng lượng cho bạn khi tham gia các hoạt động hàng ngày.', 275, 'Giày KEEP ON - ANDOFA FCB04: Chất liệu da bền, không bị bong tróc theo thời gian, kéo dài tuổi thọ sản phẩm, mang lại yên tâm cho người diện. Thiết kế phong cách, không dây cho phái nữ dễ dàng tháo ra hay mang vào'),
(18, 1, 'Giày nữ Top Fit KRYPTON 8009005', 'SID66524', 'Ngoài những đôi giày cao gót, giày búp bê nữ tính thì các cô nàng cũng nên sở hữu cho mình một vài đôi giày nữ kiểu sneaker hay Top Fit để thoải mái diện trong các hoạt động đầy sự trẻ trung và năng động. Với kiểu dáng trơn, thiết kế vừa vặn và êm chân, giày Top fit không những mang lại sự thoải mái nhất cho nàng trong từng bước chân mà còn là một item phối đồ rất sành điệu và bắt mắt nữa đấy.', 290, 'Giày nữ Top Fit KRYPTON 8009005: Chất liệu da bền, kéo dài tuổi thọ sản phẩm, đem lại sự yên tâm khi sử dụng. Thiết kế đơn giản nhưng đầy phong cách thể hiện sự năng động cho phái đẹp'),
(19, 1, 'Giày sandal gót vuông SULILY SGV2-I17', 'SID62612', 'Hàng ngày diện những đôi giày thấp, búp bê êm chân hay những mẫu sandanl trẻ trung năng động nhưng mỗi cô nàng đều tủ cho mình ít nhất một đôi giày cao gót phải không nào? Chọn lựa cho mình một đôi giày thật vừa vặn và ưng ý cũng là cả một quá trinh mua sắm và chọn lựa của các nàng.', 320, 'Giày sandal gót vuông SULILY SGV2-I17: Chất liệu da bền, êm ái cho nàng thoải mái diện, tự tin di chuyển và hoạt động. Thiết kế classic, nữ tính sang trọng nhưng cũng không kém phần năng động mạnh mẽ'),
(20, 1, 'Giày slip on nữ QUICKFREE Lightly Syn 202', 'SID60639', 'Nếu như những đôi giày cao gót giúp phái nữ thêm nữ tính, thướt tha thì giày slip on lại mang đến vẻ ngoài năng động, phong cách và cá tính hơn. Với nhiều ưu điểm như êm chân, dễ dàng tháo ra hay đeo vào, kết hợp được với nhiều loại trang phục khác nhau đây chính là sản phẩm được nhiều phái nữ lựa chọn. Giày slip on có thể diện được tất cả mọi địa hình và hoàn cảnh từ đi chơi, dạo phố hay đi học...Thiết kế mới tinh tế này chắc chắn sẽ làm siêu lòng bao phái đẹp.', 350, 'Giày slip on nữ QUICKFREE Lightly Syn 202: Chất liệu da bền, mềm mại, tạo sự thoải mái trên từng bước chân trong mọi hoạt động hàng ngày. Thiết kế thời trang mang đến phong cách trẻ trung, năng động cá tính cho phái nữ'),
(21, 1, 'Giày sneakers nữ năng động', 'SID63777', 'Ngoài những đôi giày bệt, giày cao gót thì các cô nàng nên sắm cho bản thân một đôi giày sneaker trong bộ sưu tập giày các nàng nhé. Với thiết kế ôm chân vừa vặn nàng sẽ rất thoải mái di chuyển trong mọi địa hình mà không lo bị đau chân. Nàng sẽ trở nên năng động và cá tính hơn khi kết hợp cùng áo thun và quần short đấy nhé.', 333, 'Giày sneakers nữ năng động: Chất liệu vải cùng đế giày được làm bằng cao su chắc chắn cùng thiết kế chống trơn trượt hiệu quả cho nàng tự tin di chuyển. Thiết kế trẻ trung, năng động cho phái nữ thêm phong cách, cá tính'),
(23, 1, 'Giày thể thao nữ mix bạc SUTUMI SUW006', 'SID60555', 'Theo xu hướng thời trang hiện nay thì những đôi giày thể thao nữ lên ngôi, được nhiều phái đẹp lựa chọn. Giày thể thao thiết kế đơn giản, với chất liệu bền đẹp cho nàng thoải mái và tự tin trên từng bước chân và khi kết hợp với những bộ trang phục khác thì nó cũng không kém phần tinh tế, năng động và sang trọng. Giày tạo cho người mang phong cách thể thao cá tính mà thể hiện được sự năng động. Khi phải sử đụng thường xuyên các đôi giày cao gót gây đau chân thì già cao cổ cho các hoạt động ngoài trời là vô cùng lý tưởng và thích hợp.', 345, 'Giày thể thao nữ mix bạc SUTUMI SUW006: Chất liệu vải bền, đẹp cùng đế làm bằng cao su chắc chắn được thiết kế chống trơn trượt giúp bạn gái dễ dàng hoạt động. Thiết kế ôm chân, mang đến phong cách năng động cho phái nữ thoải mái di chuyển'),
(24, 1, 'Sandal dù Gia Vi cao cấp GV 1601', 'SID63987', 'Mùa nắng mua hay những chuyến đi chơi xa sắm một đôi sandal dù là hợp lý và hoàn hảo nhất cho bạn đấy. Với thiết kế đơn giản, ôm chân vừa vặn cùng khả năng chống trơn hiệu quả cho bạn luôn yên tâm và tự tin trên từng bước chân của mình. Sandal còn phù hợp với hầu hết các loại trang phục khác nhau cho bạn thoải mái diện và thật thời trang ở mọi hoàn cảnh. Cùng tham khảo và mua sắm mẫu sandal mới nhất cho hè này nhé!', 380, 'Sandal dù Gia Vi cao cấp GV 1601: Chất liệu quai dù cùng đế giày làm bằng nhựa TPR đem lại sự chắc chắn, bền đẹp cho sản phẩm, chống trơn trượt hiệu quả. Thiết kế quai ngang đơn giản, mang đến phong cách trẻ trung, năng động cho bạn nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'ADMIN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `active`) VALUES
(8, 'Vũ', 'Thông', 'quathong@gmail.com', '', '$2a$10$Bba6HvjAdrbKzZAPYoD8hOMWx48jWrp9wLHFbIyQyAZkQ/b9bREhi', 1),
(9, 'Vũ', 'Thông', 'vuthong011296@gmail.com', '0964940127', '$2a$10$VUzrqXMbbyQFilLnlWXCwul2IL470mbD1P2UqYXvEneur8Wd.H6B.', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(8, 1),
(9, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_role_key` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `role_userrole` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `user_userrole` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
