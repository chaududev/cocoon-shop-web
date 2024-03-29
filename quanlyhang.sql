USE [master]
GO
/****** Object:  Database [QlHang]    Script Date: 20/12/2021 2:28:10 CH ******/
CREATE DATABASE [QlHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QlHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QlHang.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QlHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QlHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QlHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QlHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QlHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QlHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QlHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QlHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QlHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QlHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QlHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QlHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QlHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QlHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QlHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QlHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QlHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QlHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QlHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QlHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QlHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QlHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QlHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QlHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QlHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QlHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QlHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QlHang] SET  MULTI_USER 
GO
ALTER DATABASE [QlHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QlHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QlHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QlHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QlHang] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QlHang', N'ON'
GO
USE [QlHang]
GO
/****** Object:  Table [dbo].[cthd]    Script Date: 20/12/2021 2:28:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cthd](
	[macthd] [int] IDENTITY(1,1) NOT NULL,
	[mahang] [nvarchar](255) NOT NULL,
	[slmua] [int] NOT NULL,
	[mahoadon] [int] NOT NULL,
 CONSTRAINT [PK_cthd] PRIMARY KEY CLUSTERED 
(
	[macthd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dangnhap]    Script Date: 20/12/2021 2:28:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangnhap](
	[tendn] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](255) NOT NULL,
	[quyen] [bit] NOT NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[tendn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hang]    Script Date: 20/12/2021 2:28:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hang](
	[mahang] [nvarchar](255) NOT NULL,
	[tenhang] [nvarchar](255) NULL,
	[soluong] [bigint] NULL,
	[gia] [bigint] NULL,
	[anh] [nvarchar](255) NULL,
	[maloai] [nvarchar](255) NULL,
	[mota] [ntext] NULL,
	[thanhphan] [ntext] NULL,
	[hdsd] [ntext] NULL,
	[congdung] [ntext] NULL,
	[dungtich] [nvarchar](50) NULL,
 CONSTRAINT [PK_hang] PRIMARY KEY CLUSTERED 
(
	[mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 20/12/2021 2:28:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahoadon] [int] IDENTITY(1,1) NOT NULL,
	[ngaymua] [datetime] NOT NULL,
	[tinhtrang] [int] NOT NULL,
	[sdt] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[diachi] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loai]    Script Date: 20/12/2021 2:28:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai](
	[maloai] [nvarchar](255) NOT NULL,
	[tenloai] [nvarchar](255) NOT NULL,
	[anh] [nvarchar](255) NULL,
	[anhbanner] [nvarchar](255) NULL,
 CONSTRAINT [PK_loaihang] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cthd] ON 

INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (53, N'tc', 1, 44)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (54, N'gel3', 2, 44)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (55, N'son', 2, 45)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (56, N'tdc21', 1, 45)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (57, N'gel', 1, 45)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (58, N'gel', 3, 46)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (59, N'sachi', 1, 46)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (60, N'gel3', 1, 46)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (61, N'gel', 2, 47)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (62, N'gel3', 1, 47)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (63, N'gel', 1, 48)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (64, N'gel3', 1, 49)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (65, N'tc', 2, 49)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (66, N'gel', 1, 49)
INSERT [dbo].[cthd] ([macthd], [mahang], [slmua], [mahoadon]) VALUES (67, N'geltambd', 1, 50)
SET IDENTITY_INSERT [dbo].[cthd] OFF
INSERT [dbo].[dangnhap] ([tendn], [matkhau], [quyen]) VALUES (N'du', N'202cb962ac59075b964b07152d234b70', 1)
INSERT [dbo].[dangnhap] ([tendn], [matkhau], [quyen]) VALUES (N'dung', N'202cb962ac59075b964b07152d234b70', 0)
INSERT [dbo].[dangnhap] ([tendn], [matkhau], [quyen]) VALUES (N'duongsen', N'202cb962ac59075b964b07152d234b70', 1)
INSERT [dbo].[dangnhap] ([tendn], [matkhau], [quyen]) VALUES (N'duy', N'81dc9bdb52d04dc20036dbd8313ed055', 0)
INSERT [dbo].[dangnhap] ([tendn], [matkhau], [quyen]) VALUES (N'hoa', N'827ccb0eea8a706c4c34a16891f84e7b', 1)
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'gel', N'Gel tắm khuynh diệp', 1004, 165000, N'images/1611654391_gel_tam_khuynh_diep_bac_ha_1 (1).png', N'cothe', N'Có hương thơm dịu nhẹ và thanh mát, mang lại sự khoan thai, thoải mái cho tinh thần.', N'Aqua/Water, Cocamidopropyl Betaine, Sodium Laureth Sulfate, Lauric Acid, Glycerin, Myristic Acid, PEG-7 Glyceryl Cocoate, Cocamide MEA, Stearic Acid, Panthenol, Betaine, PEG-45M, PEG-120 Methyl Glucose Dioleate, Trisodium Ethylenediamine Disuccinate, Eucalyptus Globulus Leaf Oil, Mentha Piperita Oil, Limonene, Pelargonium Graveolens Flower Oil, Parfum, Ethylhexylglycerin, Phenoxyethanol. ', N'Lấy sản phẩm vào lòng bàn tay hoặc miếng bọt biển. Mát-xa nhẹ nhàng trên da ướt để tạo bọt. Tắm sạch lại với nước.', N'• Làm sạch da toàn thân, mang lại làn da mềm mịn, tươi mới • Liệu pháp mùi hương giúp thư giãn, thoải mái', N'500ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'gel3', N'Nước hoa hồng (toner)', 1000, 175000, N'images/nuoc-hoa-hong-04062020022247.jpg', N'da', N'Sản phẩm từ cánh hoa hồng tươi, Hyaluronic Acid và các thành phần giữ ẩm tự nhiên NMF, nước hoa hồng với công thức dịu nhẹ giúp cấp ẩm, làm mềm, giảm sự xuất hiện của lỗ chân lông to, mang lại làn da tươi mới chuẩn bị cho những bước chăm sóc da sau đó.', N'Aqua/Water, Rosa Damascena Flower Water, Glycerin,1,2-Hexanediol, Butylene Glycol, Sodium Hyaluronate, betaine, Glycine, Alanine, Histidine, Valine, Serine, Proline, Threonine, Isoleucine, Arginine, Phenylalanine, Sodium PCA, Aspartic Acid, PCA, Xylitol, Xylitylglucoside, Anhydroxylitol, Rosa Damascena Flower, Saccharide Isomerate, Sodium Gluconate, Propanediol, Sodium Lactate, Panthenol, Pentylene Glycol, Polysorbate 20, Xanthan Gum, Ethylhexylglycerin, PEG-40 Hydrogenated Castor Oil, Trisodium Ethylenediamine Disuccinate, Caramel, Phenoxyethanol', N'Sau khi rửa mặt, lấy một lượng nước hoa hồng vào lòng bàn tay, thoa đều lên da và vỗ nhẹ nhàng để sản phẩm thẩm thấu vào da. Tránh tiếp xúc với mắt. Dùng buổi sáng và tối.', N'• Cấp ẩm sâu, giúp làn da luôn rạng rỡ, căng bóng và mịn màng • Cân bằng độ pH, làm sạch sâu những bụi bẩn còn sót lại trong lỗ chân lông • Giảm sự xuất hiện của lỗ chân lông to, làm mềm và dịu da', N'140ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'geltambd', N'Gel tắm bí đao', 996, 245000, N'images/avatar-sp-web11-1-recovered-26082019102528.jpg', N'cothe', N'Giúp da sạch mịn màng và cải thiện mụn lưng. Sản phẩm dạng gel trong tạo bọt nhẹ nhàng và không gây khô da sau khi sử dụng.', N'Aqua/Water, Myristic Acid, Sodium Laureth Sulfate, Glycerin, Cocamidopropyl Betaine, Potassium Hydroxide, Lauric Acid, Sodium Cocoyl Glycinate, Cocamide Mea, Sodium Methyl Cocoyl Taurate, PEG-7 Glyceryl Cocoate, Polyquaternium-39, Benincasa Cerifera (Bí đao) Fruit Extract, Cymbopogon Citratus (Sả chanh) Leaf Oil, PEG-120 Methyl Glucose Dioleate, Mentha Piperita (Bạc hà) Oil, Stearic Acid, PEG-12 Dimethicone, O-Cymen-5-OL, PEG-45M, Tocopheryl Acetate, Trisodium Ethylenediamine Disuccinate, Phenoxyethanol, Ethylhexylglycerin.', N'Lấy sản phẩm vào lòng bàn tay hoặc miếng bọt biển, mát-xa nhẹ nhàng trên da ướt để tạo bọt. Tắm sạch lại với nước.', N'• Làm sạch da toàn thân, mang lại làn da mịn màng, tươi mới. • Làm cải thiện mụn vùng lưng, làm mờ vết thâm do mụn để lại. • Tạo hương thơm nhẹ nhàng.', N'300ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'ndt', N'Nước dưỡng tóc dầu bưởi', 999, 123000, N'images/xittoc.jpg', N'toc', N'Môi trường ô nhiễm và hóa chất là tác nhân gây hại đối với tóc và da đầu của bạn, chính điều này đã gây ra nấm và rụng tóc. Nước dưỡng tóc tinh dầu bưởi sẽ giúp bạn xóa đi nỗi lo rụng tóc với tinh dầu vỏ bưởi tự nhiên có đặc tính chống oxy hóa và làm sạch, kết hợp hoạt chất Xylishine và vitamin B5 cung cấp dưỡng chất tuyệt vời cho da đầu, thúc đẩy sự phát triển tóc chắc khỏe.', N'Water, C15-19 Alkane, Isododecane, Glycerin, Xylityglucoside, Anhydroxylitol, Maltitol, Xylitool, Citrus Grandis (Bưởi) Peel Oil, Betaine, Pelvetia Canaliculate Extract, Sodium Lactate, Panthenol (Vitamin B5), Sodium Gluconate, Glycereth-26, Phenoxyethanol, Trisodium Ethylenediamine Disuccinate, Bht, Ethyhexylglycerin.

', N'Lắc đều trước khi sử dụng, xịt sản phẩm lên chân tóc và mái tóc, tránh vùng mắt. Mát-xa nhẹ nhàng để dưỡng chất thấm sâu. Dùng mỗi ngày để đạt hiệu quả tốt nhất.', N'• Giảm gãy rụng và phục hồi hư tổn
• Tăng cường độ bóng và chắc khỏe của tóc
• Cung cấp dưỡng chất giúp tóc suôn mượt và mềm mại

', N'150 ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'nuoc2', N'Nước bí đao cân bằng da', 1000, 175000, N'images/c312da5e516557947db6ec590c1fb5e1.jpg', N'da', N'Nước Bí Đao Cân Bằng Da Cocoon 140ml Nước bí đao cân bằng da (toner) là sản phẩm dưỡng da dạng nước, là bước tiếp theo sau bước rửa mặt. Nước bí đao không chứa cồn giúp cân bằng cho da, cung cấp độ ẩm giúp da luôn ẩm mịn, giảm dầu thừa và mụn ẩn dưới da.', N'• Bí đao: bí đao có đặc tính làm mát • Rau má: Các hợp chất có trong rau má là những chất chính giúp tăng sinh collagen cho làn da. • Tinh dầu tràm trà: Loại tinh dầu có mùi thơm ấm áp, giúp ngừa mụn.', N'Sau khi rửa mặt, lấy một lượng nước cân bằng vào lòng bàn tay, thoa đều lên da và vỗ nhẹ nhàng để sản phẩm thẩm thấu vào da. Có thể dùng kèm bông tẩy trang, lau nhẹ trên da theo hướng từ trong ra ngoài và từ dưới lên trên. Dùng buổi sáng và tối. Tránh tiếp xúc với mắt.', N'• Làm sạch da, trả lại độ ẩm lý tưởng cho da sau rửa mặt • Kiểm soát lượng dầu tiết ra trên da, ngăn ngừa mụn ẩn hình thành • Cấp ẩm cho da luôn mịn màng, giảm thiểu các vết đỏ trên da', N'140ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'sachi', N'Serum Sa-chi phục hồi tóc', 165, 125000, N'images/2a80c2a0720a9454cd1b-25112019104009.jpg', N'toc', N'Phục hồi tóc hư tổn, khô xơ, chẻ ngọn', N'Cyclopentasiloxane, C15-19 Alkane, Dimethiconol, Phenyl trimethicone, Plukenetia volubilis (Inca Inchi) seed oil, Phospholipid, Glycine soja (soybean) sterols, Olea europaea (olive) fruit oil, Cocos nucifera (coconut) oil, Macadamia integrifolia (Macadamia) seed oil, Carthamus tinctorius (safflower) seed oil, Ocimum gratissmum, (Holy basil) herb oil, Amodime thicone, Dimethicone, Dimethicone/Vinyl demethicone crosspolymer, Tocopheryl acetate, BHT.', N'Lấy một lượng vừa đủ xoa đều vào lòng bàn tay, thoa từ chân tóc đến ngọn tóc và mát-xa nhẹ nhàng. Sản phẩm dùng trên tóc ẩm hoặc tóc khô đều được.', N'• Phục hồi tóc hư tổn, khô xơ, chẻ ngọn • Bảo vệ tóc tối ưu khỏi nhiệt và tia UV • Giúp mái tóc luôn mềm mượt.', N'70ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'son', N'Son dưỡng dầu dừa Bến Tre ', 100, 30000, N'images/4c334729fbdf2b8495d23c17d35ddfe4.jpg', N'moi', N'SON DƯỠNG DẦU DỪA BẾN TREGiúp đôi môi mềm mượt, hồng hào, chống khô môi, nứt nẻ do thời tiết.', N'COCOS NUCIFERA (COCONUT) OIL, BIS-DIGLYCERYL POLYACYLADIPATE-2, SYNTHETIC BEESWAX, C15-19 ALKANE, BUTYROSPERMUM PARKII (SHEA) BUTTER, CANDELILLA CERA, TOCOPHERYL ACETATE', N'Thoa sản phẩm trực tiếp lên môi, có thể dùng làm son dưỡng trước khi thoa son màu.Dùng mỗi ngày để đạt kết quả tốt nhất.', N'• Đem đến đôi môi mềm mượt, căng mọng• Dưỡng ẩm, chống khô môi nứt nẻ• Loại bỏ tế bào chết cho môi hồng hào', N'5g')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'suadt', N'Sữa dưỡng thể khuynh diệp', 555, 95000, N'images/1611654384_sua_duong_the_khuynh_diep_bac_ha_2.png', N'cothe', N'Sữa dưỡng thể khuynh diệp ', N'Aqua/Water, Glyceryl Stearate, Cetearyl Alcohol, Cetyl Palmitate, Ceteareth-12, Ceteareth-20, Caprylic/Capric Triglyceride, Oryza Sativa (Rice) Bran Oil, C10-18 Triglycerides, Dicaprylyl Carbonate, Butyrospermum Parkii (Shea) Butter, Panthenol, Niacinamide, Betaine, Allantoin, Glycereth-26, Tocopherol, Glycerin, Ethylhexylglycerin, Butylene Glycol, Hydroxyacetophenone, Pentylene Glycol, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Dimethicone/Vinyl Dimethicone Crosspolymer, Trisodium Ethylenediamine Disuccinate, Sodium Hydroxide, Cyclopentasiloxane, Eucalyptus Globulus Leaf Oil, Mentha Piperita Oil, Limonene, Pelargonium Graveolens Flower Oil, Phenoxyethanol.', N'Thoa sản phẩm lên cơ thể và mát - xa nhẹ nhàng cho đến khi dưỡng chất thẩm thấu.', N'• Làm mềm da • Cung cấp độ ẩm cho da • Hương thơm nhẹ nhàng, thư giãn', N'140ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'tc', N'Tinh chất hoa hồng (serum)', 119, 245000, N'images/Tinh-chất-hoa-hồng-The-Cocoon-Rose-Serum-30ml.jpg', N'da', N'Với kết cấu mọng nước, tinh chất hoa hồng sẽ thẩm thấu nhanh và mang các dưỡng chất ngậm nước đi sâu vào các tầng da, giúp dưỡng ẩm sâu, phục hồi những tổn thương do sự mất nước gây ra, đồng thời trả lại sự đầy đặn và tươi mới vốn có của làn da. Đây là cách nhanh nhất để da trở nên căng mọng và ẩm mịn.', N'Aqua/Water, Rosa Damascena Flower Water, Panthenol, Betaine, Hydroxyethyl Urea, Biosaccharide Gum-1, Arginine,  Glycine, Alanine, Serine, Valine, Proline, Threonine, Isoleucine, Histidine, Phenylalanine,  Aspartic Acid, PCA, Sodium PCA, Rosa Damascena Extract, Ectoin, Sodium Hyaluronate, Hydrolyzed Hyaluronic Acid, Saccharide Isomerate, Aloe Barbadensis Leaf Juice, Allantoin, Glycerin, Propanediol, Glycereth-26, Pentylene Glycol, Butylene Glycol, Xylitol, Hydroxyacetophenone, Xylitylglucoside, Ethylhexylglycerin, Anhydroxylitol, Hydroxyethylcellulose, Xanthan Gum, Trisodium Ethylenediamine Disuccinate, Phenoxyethanol, Sodium Lactate.', N'Lấy 4-6 giọt tinh chất vào lòng bàn tay, xoa đều và mát-xa lên da mặt sạch, tránh vùng mắt. Sử dụng sáng và tối.', N'• Cung cấp độ ẩm, dưỡng ẩm sâu cho da • Nuôi dưỡng và làm mềm da • Phục hồi những tổn thương cho da mất nước • Mang đến làn da căng mọng và ẩm mịn', N'30 ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'tdc', N'Tẩy da chết mặt cà phê ', 310, 120000, N'images/tdc.jpg', N'da', N'Những hạt cà phê Đắk Lắk xay nhuyễn giàu cafeine hòa quyện với bơ cacao Tiền Giang giúp bạn loại bỏ lớp tế bào chết già cỗi và xỉn màu, đánh thức làn da tươi mới đầy năng lượng cùng cảm giác mượt mà và mềm mịn lan tỏa.', N'Aqua/Water, Coffea Arabica (Coffee) Seed Powder, Cetearyl Alcohol, Cocamidopropyl Betaine, Carthamus Tinctorius (Safflower) Seed Oil, Glyceryl Stearate, C15-19 Alkane, Glycerin, Ceteareth-20, Ceteareth-12, Theobroma Cacao (Cocoa) Seed Butter, Butyrospermum Parkii (Shea) Butter, C10-18 Triglycerides, Olus Oil, Cetyl Palmitate, Glycine Soja (Soybean) Sterols, Phospholipids, Glycolipids, Hydroxypropyl Starch Phosphate, Glycine Soja (Soybean) Oil, Sodium Stearoyl Glutamate Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Tocopherol, Xanthan Gum, Phenoxyethanol, Sodium Hydroxide, Ethylhexylglycerin, Trisodium Ethylenediamine Disuccinate.
', N'Thoa một lượng sản phẩm vừa đủ lên da ướt. Mát-xa nhẹ nhàng tránh vùng mắt. Rửa sạch lại với nước. Dùng 2 – 3 lần một tuần để đạt hiệu quả tốt nhất.', N'• Làm sạch da chết trên mặt
• Mang lại làn da mịn màng ngay sau lần đầu sử dụng
• Giúp da sáng mịn, đều màu.', N'150ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'tdc2', N'Tẩy da chết cơ thể cà phê ', 100, 100000, N'images/tdc2.jpg', N'cothe', N'Cơ thể chúng ta hằng ngày vẫn đang đào thải hàng tỉ tế bào chết, chúng được lưu lại trên da, kết thành mảng cùng bụi bẩn, gây bít tắc lỗ chân lông, có thể khiến da nổi mụn. Vậy việc loại bỏ những lớp da chết ấy là điều cần thiết khi chăm sóc da.', N'Aqua/Water, Coffea Arabica (coffee) Seed Powder, Cetearyl Alcohol, Cocos Nucifera (coconut) Oil, Cocamidopropyl Betaine, Glyceryl Stearate, C15-19 Alkane, Glycerin, Ceteareth-20, Ceteareth-12, Theobroma Cacao (Cocoa) Seed Butter, Butyrospermum Parkii (shea) butter, Cetyl Palmitate, Glycine Soja (soybean) Sterols, Phospholipids, Glycolipids, Hydroxypropyl Starch Phosphate, Glycine Soja (Soybean) Oil, Parfum, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Tocopheryl Acetate, Xanthan gum, Phenoxyethanol, Sodium Hydroxide, BHT, Ethylhexylglycerin, Trisodium Ethylenediamine Disuccinate.', N'Thoa một lượng sản phẩm lên da ướt. Mát-xa nhẹ nhàng từ cổ đến chân, sau đó tắm sạch lại với nước. Dùng 2-3 lần một tuần để đạt kết quả tốt nhất.', N'• Làm bỏ da chết toàn thân

• Mang lại làn da mịn màng ngay sau khi sử dụng

• Giúp da sáng mịn, đều màu.', N'200ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'tdc21', N'Tẩy da chết môi cà phê', 400, 75000, N'images/2c1ed96d44617da7544f532fd3a908a4.jpg', N'moi', N'Những hạt cà phê li ti được rang xay bằng tay hòa quyện vào dầu mắc-ca và bơ hạt mỡ, sẽ nhẹ nhàng làm bong những tế bào da chết ở môi, đem lại làn môi mềm và mịn màng', N'BUTYROSPERMUM PARKII BUTTER, MACADAMIA INTEGRIFOLIA SEED OIL, COFFEA ARABICA SEED POWDER, CARTHAMUS TINCTORIUS SEED OIL, SYNTHETIC WAX, C10-18 TRIGLYCERIDES, TOCO-PHERYL ACETATE, MENTHYL LACTATE', N'Làm ẩm môi. Thoa sản phẩm trực tiếp lên môi bằng chuyển động trượt qua lại trong 30 giây, lớp tế bào chết sẽ nhẹ nhàng bong ra. Lau đi bằng khăn giấy hoặc khăn ấm. Sử dụng 3-4 lần một tuần để đạt kết quả tốt nhất.', N'• Làm bong những tế bào chết ở môi • Mang lại làn môi ẩm mềm và mịn màng', N'5g')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'thach', N' Thạch hoa hồng dưỡng ẩm ', 200, 100000, N'images/thach.jpg', N'da', N'Pentavitin (có INCI name là: Saccharide Isomerate): là một phức hợp carbonhydrate có nguồn gốc 100% từ thực vật và dễ dàng tương hợp với cấu trúc của làn da. Hoạt chất này có khả năng giữ nước và kết nối hoàn hảo với tầng da như một nam châm, giúp dưỡng ẩm sâu cho da lên đến 72H mà không dễ bị rửa trôi bởi nước. Ngoài ra, pentavitin còn tăng cường hàng rào bảo vệ tự nhiên của da và ngăn ngừa tình trạng mất nước tự nhiên.', N'AQUA/WATER, ROSA DAMASCENA FLOWER WATER, DICAPRYLYL CARBONATE, HYDROXYETHYL AC RYLATE/SODIUM ACRYLOYLDIMETHYL TAURATE COPOLYMER, BETAINE, OLUS OIL, OLEYL ERUCATE, COCO-CAPRYLATE/CAPRATE, CAPRYLIC/CAPRIC TRIGLYCERIDE, PROPANEDIOL, GLYC ERIN, SODIUM HYALURONATE, PANTHENOL, BISABOLOL, ALANINE, ARGININE, GLYCINE, HISTIDINE, PROLINE, SERINE, ISOLEUCINE, THREONINE, PHENYLALANINE, VALINE, PCA, SODIUM PCA, ASPAR TIC ACID, ARGANIA SPINOSA KERNEL OIL, XYLITOL, ALLANTOIN, TOCOPHEROL, ANHYDROXYLITOL, BUTYLENE GLYCOL, SACCHARIDE ISOMERATE, XYLITYLGLUCOSIDE, SODIUM LACTATE, BIS-PEG-18 METHYL ETHER DIMETHYL SILANE, ETHYLHEXYLGLYCERIN, XANTHAN GUM, CARAMEL, TRISODIUM ETHYLENEDIAMINE DISUCCINATE, PHENOXYETHANOL, FARNESOL, LACTIC ACID', N'Thoa đều một lượng vừa đủ lên da mặt. Dùng 2 lần mỗi ngày, sáng và tối để đạt hiệu quả tốt nhất.
', N'• Nuôi dưỡng và khóa ẩm suốt 24 giờ
• Làm dịu da tức thì, mang lại làn da đầy đặn, mềm mượt và mịn màng và tươi mới
• Giảm sự xuất hiện của lỗ chân lông to
• Cải thiện và duy trì hàng rào bảo vệ da khỏi tác nhân từ môi trường và thời tiết
', N'30ml')
INSERT [dbo].[hang] ([mahang], [tenhang], [soluong], [gia], [anh], [maloai], [mota], [thanhphan], [hdsd], [congdung], [dungtich]) VALUES (N'tt', N'Nước tẩy trang bí đao', 687, 275000, N'images/nuoc-tay-trang-hoa-hong-cocoon-300ml.jpg', N'da', N'Làn da dầu và mụn rất nhạy cảm nên cần được thiết kế một loại nước tẩy trang phù hợp. Với công nghệ Micellar, nước tẩy trang bí đao giúp làm sạch hiệu quả lớp trang điểm, bụi bẩn và dầu thừa, mang lại làn da sạch hoàn toàn và dịu nhẹ.', N'Aqua/Water, Polyglyceryl-4 Laurate/Sebacate, Polyglyceryl-4 Caprylate/Caprate, Betaine, Benincasa Cerifera Fruit Extract, Centella Asiatica Extract, o-Cymen-5-ol, Propanediol, Glycereth-26, Glycerin, Trisodium Ethylenediamine Disuccinate, Sodium Lactate, Cetylpyridinium Chloride, Melaleuca Alternifolia Leaf Oil, Lactic Acid', N'Thấm đều sản phẩm lên bông tẩy trang, nhẹ nhàng lau khắp mặt để làm sạch lớp trang điểm và bụi bẩn. Dịu nhẹ cho vùng môi và mắt.', N'• Làm sạch lớp trang điểm, bụi bẩn và bã nhờn trên bề mặt da  • Giúp giảm dầu trên da • Cung cấp độ ẩm cho da', N'500 ml')
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([mahoadon], [ngaymua], [tinhtrang], [sdt], [hoten], [diachi]) VALUES (44, CAST(N'2021-12-17 11:47:27.843' AS DateTime), 4, N'0935000888', N'Châu Duyên', N'53 Dương Văn An, Quận 1, Thành phố Hồ Chí Minh')
INSERT [dbo].[hoadon] ([mahoadon], [ngaymua], [tinhtrang], [sdt], [hoten], [diachi]) VALUES (45, CAST(N'2021-12-17 11:48:17.070' AS DateTime), 4, N'0943357474', N'Du Chau', N'69 Nguyễn Huệ, Thành phố Huế, Thừa Thiên - Huế')
INSERT [dbo].[hoadon] ([mahoadon], [ngaymua], [tinhtrang], [sdt], [hoten], [diachi]) VALUES (46, CAST(N'2021-12-19 15:08:38.873' AS DateTime), 3, N'0935000888', N'Châu Duyên', N'53 Dương Văn An, Quận 1, Thành phố Hồ Chí Minh')
INSERT [dbo].[hoadon] ([mahoadon], [ngaymua], [tinhtrang], [sdt], [hoten], [diachi]) VALUES (47, CAST(N'2021-12-19 15:30:36.043' AS DateTime), 0, N'0905099499', N'Nguyễn Văn Tài', N'23 Hai Bà Trưng, Quận Ba Đình, Hà Nội')
INSERT [dbo].[hoadon] ([mahoadon], [ngaymua], [tinhtrang], [sdt], [hoten], [diachi]) VALUES (48, CAST(N'2021-12-20 12:13:18.453' AS DateTime), 2, N'0905000000', N'Nguyễn Thị Dung', N'25 Kiệt 23 Đường Tôn Phiệt, Quận 1, Thành phố Hồ Chí Minh')
INSERT [dbo].[hoadon] ([mahoadon], [ngaymua], [tinhtrang], [sdt], [hoten], [diachi]) VALUES (49, CAST(N'2021-12-20 14:09:08.727' AS DateTime), 1, N'0943357474', N'Du Chau', N'69 Nguyễn Huệ, Thành phố Huế, Thừa Thiên - Huế')
INSERT [dbo].[hoadon] ([mahoadon], [ngaymua], [tinhtrang], [sdt], [hoten], [diachi]) VALUES (50, CAST(N'2021-12-20 14:12:35.120' AS DateTime), 2, N'0943357474', N'Du Chau', N'69 Nguyễn Huệ, Thành phố Huế, Thừa Thiên - Huế')
SET IDENTITY_INSERT [dbo].[hoadon] OFF
INSERT [dbo].[loai] ([maloai], [tenloai], [anh], [anhbanner]) VALUES (N'cothe', N'CHĂM SÓC CƠ THỂ', NULL, N'images/bannercothe.jpg')
INSERT [dbo].[loai] ([maloai], [tenloai], [anh], [anhbanner]) VALUES (N'da', N'CHĂM SÓC DA', NULL, N'images/bannerda.jpg')
INSERT [dbo].[loai] ([maloai], [tenloai], [anh], [anhbanner]) VALUES (N'moi', N'CHĂM SÓC MÔI', NULL, N'images/bannermoi.jpg')
INSERT [dbo].[loai] ([maloai], [tenloai], [anh], [anhbanner]) VALUES (N'toc', N'CHĂM SÓC TÓC', NULL, N'images/bannertoc.jpg')
USE [master]
GO
ALTER DATABASE [QlHang] SET  READ_WRITE 
GO
