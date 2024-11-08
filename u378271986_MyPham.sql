-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 08, 2024 lúc 02:19 PM
-- Phiên bản máy phục vụ: 10.11.9-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `u378271986_MyPham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ID` int(11) NOT NULL,
  `IDKH` int(11) DEFAULT NULL,
  `IDSP` int(11) DEFAULT NULL,
  `binhLuan` text DEFAULT NULL,
  `ngayBL` text DEFAULT NULL,
  `star` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`ID`, `IDKH`, `IDSP`, `binhLuan`, `ngayBL`, `star`) VALUES
(268, 42, 20, 'ok', '2024-10-30 16:51:44', 2),
(269, 42, 15, 'ok', '2024-8-30 16:55:20', 3),
(270, 45, 49, 'Hay', '2024-11-07 16:18:48', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `ID` int(11) NOT NULL,
  `tenBrand` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`ID`, `tenBrand`) VALUES
(1, 'Jen'),
(2, 'Beauty'),
(3, 'Top'),
(4, 'Kessy CREY'),
(5, 'Toggle'),
(6, 'Fride');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ID` int(11) NOT NULL,
  `IDDH` int(11) DEFAULT NULL,
  `IDSP` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `Size` varchar(100) NOT NULL,
  `tongTien` float NOT NULL,
  `cachThanhToan` varchar(100) DEFAULT NULL,
  `ten` varchar(100) DEFAULT NULL,
  `diaChi` varchar(200) DEFAULT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ghiChu` text DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ID`, `IDDH`, `IDSP`, `soLuong`, `Size`, `tongTien`, `cachThanhToan`, `ten`, `diaChi`, `sdt`, `email`, `ghiChu`, `status`) VALUES
(344, 193, 20, 1, '32ml', 180000, 'Chuyển khoản ngân hàng', 'user1', '1234567', 'null', 'user1@gmail.com', '', 0),
(345, 194, 15, 1, '32ml', 190000, 'Chuyển khoản ngân hàng', 'user1', '1234567', 'null', 'user1@gmail.com', '', 0),
(346, 195, 15, 1, '32ml', 190000, 'Chuyển khoản ngân hàng', 'user1', '1234567', 'null', 'user1@gmail.com', '', 0),
(347, 196, 15, 1, '32ml', 190000, 'Chuyển khoản ngân hàng', 'user1', '1234567', 'null', 'user1@gmail.com', '', 0),
(348, 196, 20, 1, '32ml', 180000, 'Chuyển khoản ngân hàng', 'user1', '1234567', 'null', 'user1@gmail.com', '', 0),
(349, 197, 15, 1, '32ml', 190000, 'Chuyển khoản ngân hàng', 'user1', '1234567', 'null', 'user1@gmail.com', '', 0),
(350, 198, 15, 1, '32ml', 190000, 'Chuyển khoản ngân hàng', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(351, 199, 15, 1, '32ml', 190000, 'Trả tiền mặt khi nhận hàng (COD)', 'duc', '1111', 'null', 'ducminhvoqn@gmail.com', '123123', 2),
(352, 201, 20, 1, '32ml', 180000, 'Chuyển khoản ngân hàng', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(353, 202, 20, 1, '32ml', 180000, 'Trả tiền mặt khi nhận hàng (COD)', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(355, 204, 49, 1, '120ml', 230000, 'Chuyển khoản ngân hàng', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(356, 205, 15, 1, '32ml', 190000, 'Chuyển khoản ngân hàng', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(357, 206, 47, 1, '32ml', 72000, 'Trả tiền mặt khi nhận hàng (COD)', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(358, 207, 15, 1, '32ml', 190000, 'Chuyển khoản ngân hàng', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(359, 208, 38, 1, '32ml', 150000, 'Chuyển khoản ngân hàng', 'aaa', 'a', 'null', 'abc@gmail.com', '', 0),
(360, 209, 15, 1, '32ml', 190000, 'Trả tiền mặt khi nhận hàng (COD)', 'Bình', 'HCM', 'null', 'hoangbinh15021998@gmail.com', '', 0),
(361, 210, 30, 1, '32ml', 150000, 'Chuyển khoản ngân hàng', 'aaa', 'a', '0935181413', 'abc@gmail.com', '', 0),
(362, 211, 20, 1, '32ml', 180000, 'Trả tiền mặt khi nhận hàng (COD)', 'Bình', 'HCM', 'null', 'hoangbinh15021998@gmail.com', '', 0),
(363, 212, 15, 1, '32ml', 190000, 'Trả tiền mặt khi nhận hàng (COD)', 'aaa', 'a', '0935181413', 'abc@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `combo`
--

CREATE TABLE `combo` (
  `ID` int(11) NOT NULL,
  `tenCombo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `combo`
--

INSERT INTO `combo` (`ID`, `tenCombo`) VALUES
(1, 'Combo nước hoa'),
(2, 'Combo dầu thơm'),
(3, 'Combo dưỡng da'),
(4, 'Combo son 1'),
(5, 'Combo nước hoa vàng'),
(6, 'Kem chống nắng'),
(7, 'Sửa rửa mặt bạc hà'),
(8, 'Tẩy da chết'),
(9, 'Xịt chống nắng'),
(10, 'Sơn môi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachyeuthich`
--

CREATE TABLE `danhsachyeuthich` (
  `ID` int(11) NOT NULL,
  `IDKH` int(11) DEFAULT NULL,
  `IDSP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachyeuthich`
--

INSERT INTO `danhsachyeuthich` (`ID`, `IDKH`, `IDSP`) VALUES
(564, 42, 20),
(565, 42, 20),
(571, 42, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ID` int(11) NOT NULL,
  `IDKH` int(11) NOT NULL,
  `ngayDat` date DEFAULT NULL,
  `tinhTrang` varchar(100) DEFAULT NULL,
  `phiGD` float NOT NULL,
  `giamGia` double NOT NULL DEFAULT 0,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ID`, `IDKH`, `ngayDat`, `tinhTrang`, `phiGD`, `giamGia`, `tongTien`) VALUES
(193, 43, '2024-10-02', 'Đang xử lý', 29000, 0, 10),
(194, 43, '2024-07-02', 'Đang xử lý', 29000, 0, 10),
(195, 43, '2024-01-08', 'Đang xử lý', 29000, 10, 197100),
(196, 43, '2024-08-30', 'Đang xử lý', 29000, 10, 359100),
(197, 43, '2024-10-02', 'Đang xử lý', 29000, 10, 197100),
(198, 45, '2024-10-27', 'Đang xử lý', 29000, 0, 0),
(199, 46, '2024-10-29', 'Đang xử lý', 29000, 0, 0),
(200, 46, '2024-10-29', 'Đang xử lý', 29000, 0, 0),
(201, 45, '2024-10-30', 'Đang xử lý', 29000, 0, 0),
(202, 45, '2024-11-01', 'Đang xử lý', 29000, 0, 0),
(204, 45, '2024-11-01', 'Đang xử lý', 29000, 0, 0),
(205, 45, '2024-11-01', 'Đang xử lý', 29000, 0, 0),
(206, 45, '2024-11-01', 'Đang xử lý', 29000, 0, 0),
(207, 45, '2024-11-01', 'Đang xử lý', 29000, 0, 0),
(208, 45, '2024-11-01', 'Đang xử lý', 29000, 0, 0),
(209, 48, '2024-11-07', 'Đang xử lý', 29000, 0, 0),
(210, 45, '2024-11-07', 'Đang xử lý', 29000, 0, 0),
(211, 48, '2024-11-07', 'Đã duyệt', 29000, 0, 0),
(212, 45, '2024-11-07', 'Đã nhận hàng', 29000, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giamgia`
--

CREATE TABLE `giamgia` (
  `ID` int(11) NOT NULL,
  `IDSK` int(11) DEFAULT NULL,
  `IDSP` int(11) DEFAULT NULL,
  `giaGiam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giamgia`
--

INSERT INTO `giamgia` (`ID`, `IDSK`, `IDSP`, `giaGiam`) VALUES
(48, NULL, 20, 0),
(49, NULL, 15, 0),
(53, NULL, 30, 0),
(61, NULL, 38, 0),
(62, NULL, 39, 0),
(64, NULL, 41, 0),
(65, NULL, 42, 0),
(66, NULL, 43, 0),
(67, NULL, 44, 0),
(68, NULL, 45, 0),
(69, NULL, 46, 0),
(70, NULL, 47, 0),
(72, NULL, 49, 0),
(73, NULL, 50, 0),
(74, NULL, 51, 0),
(75, NULL, 52, 0),
(76, NULL, 53, 0),
(77, NULL, 54, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `ID` int(11) NOT NULL,
  `IDKH` int(11) DEFAULT NULL,
  `IDSP` int(11) DEFAULT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `size` text NOT NULL,
  `tongTien` float DEFAULT NULL,
  `thoiGian` date DEFAULT NULL,
  `status` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`ID`, `IDKH`, `IDSP`, `soLuong`, `size`, `tongTien`, `thoiGian`, `status`) VALUES
(1932, 42, 20, 2, '32ml', 360000, '2024-10-01', 0),
(1935, 42, 20, 1, '32ml', 180000, '2024-05-20', 0),
(1937, 42, 15, 1, '32ml', 190000, '2024-11-01', 1),
(1959, 45, 15, 1, '32ml', 190000, '2024-11-07', 1),
(1960, 45, 47, 1, '32ml', 80000, '2024-11-07', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID` int(11) NOT NULL,
  `IDTK` int(11) DEFAULT NULL,
  `hoTen` varchar(50) DEFAULT NULL,
  `ngaysinh` text DEFAULT NULL,
  `gioiTinh` varchar(50) NOT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `ranks` int(30) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID`, `IDTK`, `hoTen`, `ngaysinh`, `gioiTinh`, `sdt`, `diachi`, `ranks`, `image`) VALUES
(42, 42, 'user', '2023-11-29', 'Nam', 'null', 'Quy Nhon', 0, 'Public/image/Avatar/noavatar.png'),
(43, 41, 'ADMIN', '', '', '098724243', 'Hà Nội', 0, 'Public/image/Avatar/noavatar.png'),
(44, 43, 'user1', '2002-03-11', 'Nam', 'null', '1234567', 0, 'Public/image/Avatar/noavatar.png'),
(45, 44, 'Võ Minh Phúc', '2004-01-21', 'Nam', 'null', 'abc VMP', 0, 'Public/image/Avatar/noavatar.png'),
(46, 45, 'aaa', '2004-01-21', 'Nam', '0935181413', 'a', 0, 'Public/image/Avatar/noavatar.png'),
(48, 47, 'ADMIN', '2004-01-21', 'Nam', 'null', 'a', 0, 'Public/image/Avatar/noavatar.png'),
(49, 48, 'Bình', '2004-02-15', 'Nam', 'null', 'HCM', 0, 'Public/image/Avatar/noavatar.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichthuoc`
--

CREATE TABLE `kichthuoc` (
  `ID` int(11) NOT NULL,
  `size` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kichthuoc`
--

INSERT INTO `kichthuoc` (`ID`, `size`) VALUES
(1, '32ml'),
(2, '50ml'),
(3, '100ml'),
(4, '120ml'),
(5, '150ml'),
(6, '200ml'),
(7, '250ml'),
(8, '300ml');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsubanhang`
--

CREATE TABLE `lichsubanhang` (
  `ID` int(11) NOT NULL,
  `IDKH` int(11) DEFAULT NULL,
  `IDSP` int(11) DEFAULT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `ngayBan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichsubanhang`
--

INSERT INTO `lichsubanhang` (`ID`, `IDKH`, `IDSP`, `soLuong`, `ngayBan`) VALUES
(90, 42, 39, 1, '2024-11-09'),
(91, 42, 20, 1, '2024-10-30'),
(92, 42, 15, 1, '2024-9-30'),
(93, 42, 20, 6, '2024-11-02'),
(94, 42, 39, 1, '2024-05-30'),
(95, 42, 41, 1, '2024-10-30'),
(96, 42, 44, 1, '2024-11-10'),
(97, 45, 30, 1, '2024-11-01'),
(98, 45, 15, 1, '2024-11-07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiam`
--

CREATE TABLE `magiam` (
  `ID` int(11) NOT NULL,
  `IDSK` int(11) DEFAULT NULL,
  `codes` varchar(100) DEFAULT NULL,
  `giagiam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `magiam`
--

INSERT INTO `magiam` (`ID`, `IDSK`, `codes`, `giagiam`) VALUES
(11, 76, '123123', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausac`
--

CREATE TABLE `mausac` (
  `ID` int(11) NOT NULL,
  `tenMau` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mausac`
--

INSERT INTO `mausac` (`ID`, `tenMau`) VALUES
(1, 'Xanh lá'),
(2, 'Nâu'),
(3, 'Trắng'),
(4, 'Đen'),
(5, 'Vàng'),
(6, 'Đỏ'),
(7, 'Hồng'),
(8, 'Tím');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `IDLoai` int(11) DEFAULT NULL,
  `IDBrand` int(11) DEFAULT NULL,
  `IDSize` int(11) DEFAULT NULL,
  `IDMau` int(11) DEFAULT NULL,
  `IDSX` int(11) DEFAULT NULL,
  `tenSP` varchar(200) DEFAULT NULL,
  `giaSP` float DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `image1` text NOT NULL,
  `image2` text NOT NULL,
  `moTa` text NOT NULL,
  `congDung` text NOT NULL,
  `suDung` text NOT NULL,
  `gioiThieuTH` text NOT NULL,
  `combo` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `IDLoai`, `IDBrand`, `IDSize`, `IDMau`, `IDSX`, `tenSP`, `giaSP`, `image`, `image1`, `image2`, `moTa`, `congDung`, `suDung`, `gioiThieuTH`, `combo`, `status`) VALUES
(9, 7, 3, 1, 6, 4, 'Kẻ chân mày', 80000, 'Public/image/30.jpg', 'Public/image/30_1.jpg', 'Public/image/30_2.jpg', 'Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 2, 1),
(12, 2, 1, 1, 3, 4, 'sửa rửa mặt sun', 180000, 'Public/image/24.jpg', 'Public/image/24_1.jpg', 'Public/image/24_2.png', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 3, 1),
(14, 7, 1, 1, 3, 4, 'Cọ trang điểm', 110000, 'Public/image/14.jpg', 'Public/image/14_1.jpg', 'Public/image/14_2.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 4, 1),
(15, 7, 1, 1, 3, 5, 'Sửa rửa mặt con dê', 190000, 'Public/image/56.jpg', 'Public/image/56_1.jpg', 'Public/image/56_2.jpg', 'Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 7, 1),
(20, 7, 1, 1, 3, 2, 'Sửa rửa mặt trị mụn', 180000, 'Public/image/40.jpg', 'Public/image/40_1.jpg', 'Public/image/40_2.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 5, 1),
(30, 8, 1, 1, 1, 4, 'Dưỡng da dầu', 150000, 'Public/image/18.jpg', 'Public/image/17_2.jpg', 'Public/image/18_2.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 1, 1),
(38, 8, 1, 1, 1, 2, 'Sửa rửa mặt trị mụn', 150000, 'Public/image/37.jpg', 'Public/image/37_1.jpg', 'Public/image/37_2.jpg', 'Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 1, 1),
(39, 11, 4, 1, 7, 2, 'Nước dưỡng ẩm da hương dâu', 150000, 'Public/image/4_1.jpg', 'Public/image/4.png', 'Public/image/4_2.png', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 3, 1),
(41, 43, 6, 1, 4, 2, 'Kem chống nắng rám da', 120000, 'Public/image/7.jpg', 'Public/image/7_1.jpg', 'Public/image/7_2.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 6, 1),
(42, 8, 1, 4, 1, 2, 'Sửa rửa mặt hương vị bạc hà', 220000, 'Public/image/8.jpg', 'Public/image/8_1.jpg', 'Public/image/8_2.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 7, 1),
(43, 46, 2, 1, 3, 6, 'Phấn bảo vệ da ', 220000, 'Public/image/11.jpg', 'Public/image/11_2.jpg', 'Public/image/31.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 6, 1),
(44, 9, 5, 1, 1, 19, 'Tẩy da chết lâu ngày', 165000, 'Public/image/16.jpg', 'Public/image/16_1.jpg', 'Public/image/16_2.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 8, 1),
(45, 8, 6, 1, 3, 2, 'Sửa rửa mặt tan chất nhờn', 150000, 'Public/image/17.jpg', 'Public/image/17_1.jpg', 'Public/image/17_2.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 1, 1),
(46, 45, 4, 1, 3, 2, 'Dưỡng da dầu Oil ', 250000, 'Public/image/18.jpg', 'Public/image/18_1.jpg', 'Public/image/18_2.jpg', 'Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 9, 1),
(47, 10, 4, 1, 2, 5, 'Dưỡng ẩm cho mắt', 80000, 'Public/image/19.jpg', 'Public/image/14.jpg', 'Public/image/37_2.jpg', 'Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 1, 1),
(49, 2, 3, 4, 5, 4, 'Tẩy da chết bám lâu ngày', 230000, 'Public/image/40.jpg', 'Public/image/40_1.jpg', 'Public/image/40_2.jpg', 'Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 8, 1),
(50, 47, 1, 1, 1, 2, 'Sơn môi hương Socola', 350000, 'Public/image/13.jpg', 'Public/image/13_1.jpg', 'Public/image/13_2.jpg', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!.', 'dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 1, 1),
(51, 8, 1, 1, 3, 5, 'Sửa rửa mặt trắng mịn thơm', 180000, 'Public/image/56_2.jpg', 'Public/image/56_1.jpg', 'Public/image/56.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 1, 1),
(52, 43, 1, 1, 1, 19, 'Kem chống nắng mùa hè', 50000, 'Public/image/29.jpg', 'Public/image/23.jpg', 'Public/image/31.jpg', 'bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 6, 1),
(53, 8, 5, 3, 1, 2, 'Dưỡng da dầu Oil ', 150000, 'Public/image/7_1.jpg', 'Public/image/7_2.jpg', 'Public/image/7_2.jpg', 'Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông.', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này.kem dưỡng ẩm', 'Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình.', 'Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', 4, 1),
(54, 42, 1, 1, 1, 2, '123', 190000, 'Public/image/naruto.png', 'Public/image/naruto.png', 'Public/image/nobita.png', '123', 'sáng da', '123', 'a', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sukien`
--

CREATE TABLE `sukien` (
  `ID` int(11) NOT NULL,
  `tenSK` varchar(200) DEFAULT NULL,
  `ngayBD` text DEFAULT NULL,
  `ngayKT` text DEFAULT NULL,
  `noiDung` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sukien`
--

INSERT INTO `sukien` (`ID`, `tenSK`, `ngayBD`, `ngayKT`, `noiDung`, `image`) VALUES
(76, 'Giáng Sinh', '2024-12-02', '2025-01-01', 'Giáng Sinh', 'Public/image/SuKien/vector 5196 sale-poster-with-eventful-percent-discount.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwords` varchar(200) DEFAULT NULL,
  `role` varchar(50) NOT NULL,
  `checktk` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `email`, `passwords`, `role`, `checktk`, `status`) VALUES
(41, 'admin@gmail.com', '$2y$10$ImY4nrHN93ER2fxZ07IyzeSQrK0m7gGHHgsIKPc.byo8qlvje7GGi', 'user', 6, 0),
(42, 'user@gmail.com', '$2y$10$xUZs56GkdgiA3qdcuCH7NuFjgo2zAlEE1y8VMLU0BpmXtnxJPDA6e', 'user', 7, 0),
(43, 'user1@gmail.com', '$2y$10$UHHFDKOpNBUuvBIl0/P4AeF91gGk/e7HzDly5REwb4JclR4UpgoFa', 'user', 2, 0),
(44, 'vominhphucqn21@gmail.com', '$2y$10$2weq.1OfgDMpBhk9bambR.m0YGnZKmckvDRSweW43QsACn2lK.VkS', 'user', 1, 0),
(45, 'abc@gmail.com', '$2y$10$WjbM1ii6eXA.WdHNMNVTquZ52P0JdaPWEI2Su/alpphfs5RSpzsxO', 'user', 0, 1),
(46, 'ducminhvoqn@gmail.com', '$2y$10$QZ7I4qG4qZKdtUbVWr1IzeVdjQszXOA4S/1PiIXol8iYRjGhbp0ym', 'user', 0, 1),
(47, 'admin1@gmail.com', '$2y$10$NRxwBv3DTv8zMj9LZ7n7k.6JseccfdWHivMmFfBAaqLsX.cCli42u', 'admin', 0, 0),
(48, 'hoangbinh15021998@gmail.com', '$2y$10$uIMpLtgkNCIDyq2WfLqaLuP3q2YSHLRiLZybPjx.OSbWZcxAppmny', 'user', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `ID` int(11) NOT NULL,
  `tenTL` varchar(100) DEFAULT NULL,
  `Loai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`ID`, `tenTL`, `Loai`) VALUES
(2, 'Bông tẩy trang', '0'),
(7, 'Dầu tẩy trang', '0'),
(8, 'Sữa rửa mặt', '0'),
(9, 'Tẩy da chết', '0'),
(10, 'Dưỡng mắt', '1'),
(11, 'Dưỡng ẩm', '1'),
(12, 'Mặt nạ dưỡng', '1'),
(14, 'Xịt khoáng', '1'),
(15, 'Mặt nạ giấy', '2'),
(16, 'Mặt nạ ngủ', '2'),
(40, 'Mặt nạ rửa', '2'),
(41, 'Mặt nạ môi', '2'),
(42, 'Mặt nạ mắt', '2'),
(43, 'Kem chống nắng', '3'),
(44, 'Phấn chống nắng', '3'),
(45, 'Xịt chống nắng', '3'),
(46, 'Phấn phũ da', '3'),
(47, 'Sơn môi', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `ID` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `date_at` date DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`ID`, `title`, `date_at`, `content`, `image`, `category`) VALUES
(40, 'DƯỠNG ẨM ĐÚNG CÁCH CHO DA', '2024-09-30', '“Dưỡng ẩm cho da” là cụm từ rất phổ biến. Nếu bạn gõ cụm từ “làm thế nào để dưỡng\r\n                                        ẩm” cho ra đến 56 triệu kết quả. Điều này chứng tỏ có rất nhiều người vẫn còn\r\n                                        lúng túng...', '//file.hstatic.net/200000259653/article/kem-lot-khoang-co-nhu-innisfree_f1f69d5c34814e858caad96982c228bc_grande.jpg', 1),
(41, 'DƯỠNG ẨM ĐÚNG CÁCH CHO DA', '2024-10-31', '“Dưỡng ẩm cho da” là cụm từ rất phổ biến. Nếu bạn gõ cụm từ “làm thế nào để dưỡng\r\n                                        ẩm” cho ra đến 56 triệu kết quả. Điều này chứng tỏ có rất nhiều người vẫn còn\r\n                                        lúng túng...', '//file.hstatic.net/200000259653/article/kem-duong-danh-cho-da-mat-innisf_b946cb9a5dbd49b591b1a9e1fbc0b59c_grande.jpg', 1),
(42, '8 bước vàng để có được làn da chuẩn mực như sao Hàn', '2024-08-01', 'Primer và Makeup Base đều là sản phẩm lót trang điểm giúp bảo vệ bề mặt da, ngăn ngừa tình trạng phấn trang điểm len lỏi vào lỗ chân lông...', '//file.hstatic.net/1000187239/article/tt5_large.jpg', 2),
(43, '8 bước vàng để có được làn da chuẩn mực như sao Hàn', '2024-11-01', 'Primer và Makeup Base đều là sản phẩm lót trang điểm giúp bảo vệ bề mặt da, ngăn ngừa tình trạng phấn trang điểm len lỏi vào lỗ chân lông...', '//file.hstatic.net/1000187239/article/tt4_95e8fe0045584959b282a3381d3544f1f_large.jpg', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatxu`
--

CREATE TABLE `xuatxu` (
  `ID` int(11) NOT NULL,
  `tenSX` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `xuatxu`
--

INSERT INTO `xuatxu` (`ID`, `tenSX`) VALUES
(2, 'Hàn Quốc'),
(4, 'Nga'),
(5, 'Hoa Kỳ'),
(6, 'Nhật Bản'),
(8, 'Pháp'),
(19, 'Việt Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDKH` (`IDKH`),
  ADD KEY `IDSP` (`IDSP`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDDH` (`IDDH`);

--
-- Chỉ mục cho bảng `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `danhsachyeuthich`
--
ALTER TABLE `danhsachyeuthich`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDKH` (`IDKH`),
  ADD KEY `IDSP` (`IDSP`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDKH` (`IDKH`);

--
-- Chỉ mục cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDSK` (`IDSK`),
  ADD KEY `IDSP` (`IDSP`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDKH` (`IDKH`),
  ADD KEY `IDSP` (`IDSP`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDTK` (`IDTK`);

--
-- Chỉ mục cho bảng `kichthuoc`
--
ALTER TABLE `kichthuoc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `lichsubanhang`
--
ALTER TABLE `lichsubanhang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDKH` (`IDKH`),
  ADD KEY `IDSP` (`IDSP`);

--
-- Chỉ mục cho bảng `magiam`
--
ALTER TABLE `magiam`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDSK` (`IDSK`);

--
-- Chỉ mục cho bảng `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDLoai` (`IDLoai`),
  ADD KEY `IDBrand` (`IDBrand`),
  ADD KEY `IDSize` (`IDSize`),
  ADD KEY `IDMau` (`IDMau`),
  ADD KEY `IDSX` (`IDSX`);

--
-- Chỉ mục cho bảng `sukien`
--
ALTER TABLE `sukien`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT cho bảng `combo`
--
ALTER TABLE `combo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `danhsachyeuthich`
--
ALTER TABLE `danhsachyeuthich`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1961;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `kichthuoc`
--
ALTER TABLE `kichthuoc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `lichsubanhang`
--
ALTER TABLE `lichsubanhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `magiam`
--
ALTER TABLE `magiam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `mausac`
--
ALTER TABLE `mausac`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `sukien`
--
ALTER TABLE `sukien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`IDKH`) REFERENCES `khachhang` (`ID`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`IDSP`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`IDDH`) REFERENCES `donhang` (`ID`);

--
-- Các ràng buộc cho bảng `danhsachyeuthich`
--
ALTER TABLE `danhsachyeuthich`
  ADD CONSTRAINT `danhsachyeuthich_ibfk_1` FOREIGN KEY (`IDKH`) REFERENCES `khachhang` (`ID`),
  ADD CONSTRAINT `danhsachyeuthich_ibfk_2` FOREIGN KEY (`IDSP`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`IDKH`) REFERENCES `khachhang` (`ID`);

--
-- Các ràng buộc cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD CONSTRAINT `giamgia_ibfk_1` FOREIGN KEY (`IDSK`) REFERENCES `sukien` (`ID`),
  ADD CONSTRAINT `giamgia_ibfk_2` FOREIGN KEY (`IDSP`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`IDKH`) REFERENCES `khachhang` (`ID`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`IDSP`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`IDTK`) REFERENCES `taikhoan` (`ID`);

--
-- Các ràng buộc cho bảng `lichsubanhang`
--
ALTER TABLE `lichsubanhang`
  ADD CONSTRAINT `lichsubanhang_ibfk_1` FOREIGN KEY (`IDKH`) REFERENCES `khachhang` (`ID`),
  ADD CONSTRAINT `lichsubanhang_ibfk_2` FOREIGN KEY (`IDSP`) REFERENCES `sanpham` (`ID`);

--
-- Các ràng buộc cho bảng `magiam`
--
ALTER TABLE `magiam`
  ADD CONSTRAINT `magiam_ibfk_1` FOREIGN KEY (`IDSK`) REFERENCES `sukien` (`ID`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`IDLoai`) REFERENCES `theloai` (`ID`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`IDBrand`) REFERENCES `brand` (`ID`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`IDSize`) REFERENCES `kichthuoc` (`ID`),
  ADD CONSTRAINT `sanpham_ibfk_4` FOREIGN KEY (`IDMau`) REFERENCES `mausac` (`ID`),
  ADD CONSTRAINT `sanpham_ibfk_5` FOREIGN KEY (`IDSX`) REFERENCES `xuatxu` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
