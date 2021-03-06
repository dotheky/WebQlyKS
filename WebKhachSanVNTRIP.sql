USE [KhachSanVNTRIP]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKhachHang] [int] NOT NULL,
	[IDKhachSan] [int] NOT NULL,
	[diem] [float] NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachDichVu]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachDichVu](
	[IDKhachSan] [int] NOT NULL,
	[IDTienNghi] [int] NOT NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKhachSan] ASC,
	[IDTienNghi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhKhachSan]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhKhachSan](
	[ID] [int] NOT NULL,
	[IDKhachSan] [int] NOT NULL,
	[link] [nvarchar](100) NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKhachSan] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhPhong]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhPhong](
	[ID] [int] NOT NULL,
	[IDPhong] [int] NOT NULL,
	[link] [nvarchar](100) NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDTaiKhoan] [int] NOT NULL,
	[IDPhong] [int] NOT NULL,
	[tongtien] [float] NULL,
	[songuoi] [int] NULL,
	[NgayThue] [date] NULL,
	[NgayTra] [date] NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachSan] [nvarchar](50) NULL,
	[IDTinhThanh] [int] NULL,
	[MoTaNgan] [nvarchar](100) NULL,
	[TienNghiNgan] [int] NULL,
	[HinhAnhKS] [nvarchar](100) NULL,
	[LoaiKhachSan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LinkKS] [nvarchar](300) NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[ID] [int] NOT NULL,
	[IDQuanHuyen] [int] NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[IDQuanHuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[SoNguoi] [int] NOT NULL,
	[LoaiPhong] [nvarchar](40) NOT NULL,
	[SoGiuong] [int] NOT NULL,
	[Mota] [nvarchar](100) NOT NULL,
	[Gia] [float] NOT NULL,
	[IDKhachSan] [int] NULL,
	[DienTich] [float] NULL,
	[MoTaChiTiet] [nvarchar](200) NOT NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanHuyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenQuanHuyen] [nvarchar](50) NULL,
	[IDTinhThanh] [int] NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](20) NULL,
	[loaitk] [bit] NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienNghi]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienNghi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTienNghi] [nvarchar](50) NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 17/03/2021 13:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[ID] [int] NOT NULL,
	[TenTinhThanh] [nvarchar](50) NULL,
	[Created_at] [timestamp] NOT NULL,
	[Updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (1, 1, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (1, 2, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (1, 3, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (2, 1, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (2, 2, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (3, 1, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (3, 5, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (4, 4, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (4, 7, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (5, 2, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (5, 3, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (6, 1, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (6, 4, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (7, 3, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (7, 4, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (8, 5, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (8, 6, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (9, 1, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (10, 2, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (11, 5, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (12, 3, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (13, 4, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (14, 6, NULL)
INSERT [dbo].[DanhSachDichVu] ([IDKhachSan], [IDTienNghi], [Updated_at]) VALUES (15, 3, NULL)
GO
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (1, 1, N'/Content/Image/imageKs/imageKs1/ks1_1.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (2, 1, N'/Content/Image/imageKs/imageKs1/ks1_2.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (3, 1, N'/Content/Image/imageKs/imageKs1/ks1_3.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (4, 1, N'/Content/Image/imageKs/imageKs1/ks1_4.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (5, 1, N'/Content/Image/imageKs/imageKs1/ks1_5.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (6, 1, N'/Content/Image/imageKs/imageKs1/ks1_6.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (7, 1, N'/Content/Image/imageKs/imageKs1/ks1_7.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (8, 2, N'/Content/Image/imageKs/imageKs2/ks2_1.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (9, 2, N'/Content/Image/imageKs/imageKs2/ks2_2.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (10, 2, N'/Content/Image/imageKs/imageKs2/ks2_3.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (11, 2, N'/Content/Image/imageKs/imageKs2/ks2_4.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (12, 2, N'/Content/Image/imageKs/imageKs2/ks2_5.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (13, 2, N'/Content/Image/imageKs/imageKs2/ks2_6.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (14, 2, N'/Content/Image/imageKs/imageKs2/ks2_7.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (15, 3, N'/Content/Image/imageKs/imageKs3/ks3_1.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (16, 3, N'/Content/Image/imageKs/imageKs3/ks3_2.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (17, 3, N'/Content/Image/imageKs/imageKs3/ks3_3.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (18, 3, N'/Content/Image/imageKs/imageKs3/ks3_4.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (19, 3, N'/Content/Image/imageKs/imageKs3/ks3_5.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (20, 3, N'/Content/Image/imageKs/imageKs3/ks3_6.jpg', NULL)
INSERT [dbo].[HinhAnhKhachSan] ([ID], [IDKhachSan], [link], [Updated_at]) VALUES (21, 3, N'/Content/Image/imageKs/imageKs3/ks3_7.jpg', NULL)
GO
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (1, 6, N'/Content/Image/imageKs/imageKs1/p1.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (2, 7, N'/Content/Image/imageKs/imageKs1/p2.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (3, 8, N'/Content/Image/imageKs/imageKs1/p3.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (4, 9, N'/Content/Image/imageKs/imageKs2/p1.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (5, 10, N'/Content/Image/imageKs/imageKs2/p2.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (6, 11, N'/Content/Image/imageKs/imageKs2/p3.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (7, 13, N'/Content/Image/imageKs/imageKs3/p1.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (8, 14, N'/Content/Image/imageKs/imageKs3/p2.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (9, 15, N'/Content/Image/imageKs/imageKs3/p3.jpg', NULL)
INSERT [dbo].[HinhAnhPhong] ([ID], [IDPhong], [link], [Updated_at]) VALUES (10, 16, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([ID], [IDTaiKhoan], [IDPhong], [tongtien], [songuoi], [NgayThue], [NgayTra], [Updated_at]) VALUES (8, 1, 10, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachSan] ON 

INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (1, N'Khách sạn Kiều Anh', 61, N'test', NULL, N'/Content/Hinh Khach San/HN Kiều Anh.jpg', N'Khách sạn', N'số 23 ngõ 81 Trung Kính, Cầu Giấy, Hà Nội', N'https://www.google.com/maps/place/21%C2%B000''46.2%22N+105%C2%B047''56.9%22E/@21.012819,105.799135,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d21.0128189!4d105.7991352?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (2, N'Khách sạn Hà Nội Esplendor', 61, NULL, NULL, N'/Content/Hinh Khach San/HN Esplendor.jpg', N'Apartment', N'số 80 Hàng Gà, phường Hàng Bồ, Hoàn Kiếm ', N'https://www.google.com/maps/place/21%C2%B002''02.0%22N+105%C2%B050''49.1%22E/@21.033878,105.84698,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d21.0338783!4d105.8469797?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (3, N'Khách sạn Hà Nội Lullaby', 61, NULL, NULL, N'/Content/Hinh Khach San/HN Lullaby.jpg', N'Khách sạn', N'16 ngõ Trạm, Hàng Bông, Hoàn Kiếm', N'https://www.google.com/maps/place/21%C2%B001''50.8%22N+105%C2%B050''44.1%22E/@21.0305866,105.8457196,21z/data=!4m5!3m4!1s0x0:0x0!8m2!3d21.0307838!4d105.8455735?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (4, N'Khách sạn Patel Hà Nội', 61, NULL, NULL, N'/Content/Hinh Khach San/HN Patel.jpg', N'Hotel', N'ngõ 35 Lê Đức Thọ, Mỹ Đình 2, Từ Liêm', N'https://www.google.com/maps/place/21%C2%B001''54.8%22N+105%C2%B046''14.4%22E/@21.031898,105.770665,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d21.0318982!4d105.7706651?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (5, N'Khách sạn Hà Nội Larosa', 61, NULL, NULL, N'/Content/Hinh Khach San/HN Larosa.jpg', N'Khách sạn', N'36 Nguyễn Khuyến, Đống Đa, Hà Nội', N'https://www.google.com/maps/place/21%C2%B001''40.1%22N+105%C2%B050''25.8%22E/@21.0278,105.840504,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d21.0278!4d105.840504?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (6, N'Bunny Saigon Hotel', 62, NULL, NULL, N'/Content/Hinh Khach San/SG Bunny.jpg', N'Khách sạn', N'47 Nguyễn Trãi, Phạm Ngũ lão, Quận 1', N'https://www.google.com/maps/place/10%C2%B046''13.9%22N+106%C2%B041''32.9%22E/@10.770537,106.692467,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d10.7705366!4d106.6924673?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (7, N'Khách sạn Zazz Urban', 62, NULL, NULL, N'/Content/Hinh Khach San/SG Zazz.jpg', N'Khách sạn', N'28 Sư Vạn Hạnh, Phường 9, Quận 5', N'https://www.google.com/maps/place/10%C2%B045''28.6%22N+106%C2%B040''26.1%22E/@10.757951,106.673924,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d10.7579509!4d106.6739235?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (8, N'Khách sạn Đồng Khánh', 62, NULL, NULL, N'/Content/Hinh Khach San/SG Đồng khánh.jpg', N'Khách sạn', N'02 Trần Hưng Đạo, Phường 7, Quận 5', N'https://www.google.com/maps/place/10%C2%B045''10.8%22N+106%C2%B040''11.3%22E/@10.753004,106.669795,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d10.7530035!4d106.6697953?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (9, N'Fide Hotel', 62, NULL, NULL, N'/Content/Hinh Khach San/SG Fide.jpg', N'Apartment', N'474 Phạm Thái Bường, Tân Phong, Quận 7', N'https://www.google.com/maps/place/10%C2%B043''38.7%22N+106%C2%B042''20.0%22E/@10.727423,106.705555,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d10.727423!4d106.7055552?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (10, N'Central Park Saigon Hotel', 62, NULL, NULL, N'/Content/Hinh Khach San/SG Central park.jpg', N'Khách sạn', N'223 Hai Bà Trưng, Phường 6, Quận 3', N'https://www.google.com/maps/place/10%C2%B047''12.3%22N+106%C2%B041''35.4%22E/@10.78675,106.69316,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d10.7867495!4d106.6931595?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (11, N'Binh Duong Hotel', 59, NULL, NULL, N'/Content/Hinh Khach San/ĐN BinhDuonng.jpg', N'Khách sạn', N'30A-32-34 Đường Trần Phú, Hải Châu', N'https://www.google.com/maps/place/16%C2%B002''51.7%22N+108%C2%B013''20.7%22E/@16.047705,108.22241,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d16.0477047!4d108.2224099?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (12, N'Khách sạn An Hội Canary', 59, NULL, NULL, N'/Content/Hinh Khach San/ĐN Canary.jpg', N'Apartment', N'28 An Thượng 2, Mỹ An, Ngũ Hành Sơn', N'https://www.google.com/maps/place/16%C2%B002''57.3%22N+108%C2%B014''49.9%22E/@16.049253,108.247201,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d16.0492535!4d108.2472009?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (13, N'Khách sạn DLG Đà Nẵng', 59, NULL, NULL, N'/Content/Hinh Khach San/ĐN DLG.jpg', N'Khách sạn', N'258 Võ Nguyên Giáp, Phước Mỹ, Sơn Trà', N'https://www.google.com/maps/place/16%C2%B003''30.4%22N+108%C2%B014''47.7%22E/@16.058442,108.246582,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d16.0584422!4d108.246582?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (14, N'Khách sạn Nirvana', 59, NULL, NULL, N'/Content/Hinh Khach San/ĐN Nirvara.jpg', N'Villa', N'31 Hà Bổng, Phước Mỹ, Sơn Trà', N'https://www.google.com/maps/place/16%C2%B004''06.4%22N+108%C2%B014''39.4%22E/@16.068435,108.244267,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d16.0684351!4d108.2442668?hl=vi-VN', NULL)
INSERT [dbo].[KhachSan] ([ID], [TenKhachSan], [IDTinhThanh], [MoTaNgan], [TienNghiNgan], [HinhAnhKS], [LoaiKhachSan], [DiaChi], [LinkKS], [Updated_at]) VALUES (15, N'White Sand Hotel & Aquament', 59, NULL, NULL, N'/Content/Hinh Khach San/ĐN White Sand.jpg', N'Khách sạn', N'89-91 Võ Văn Kiệt, Phước Mỹ, Sơn Trà', N'https://www.google.com/maps/place/16%C2%B003''45.9%22N+108%C2%B014''32.2%22E/@16.06274,108.242276,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d16.0627397!4d108.2422757?hl=vi-VN', NULL)
SET IDENTITY_INSERT [dbo].[KhachSan] OFF
GO
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (1, 2, N'Phố cổ Hà Nội', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (2, 1, N'Xung quanh Hồ Tây', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (2, 3, N'Xung quanh Hồ Tây', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (3, 1, N'Lăng Chủ Tịch Hồ Chí Minh', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (3, 2, N'Lăng Chủ Tịch Hồ Chí Minh', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (3, 3, N'Lăng Chủ Tịch Hồ Chí Minh', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (3, 6, N'Lăng Chủ Tịch Hồ Chí Minh', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (3, 7, N'Lăng Chủ Tịch Hồ Chí Minh', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (4, 4, N'Sân bay Gia Lâm', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (4, 20, N'Sân bay Nội Bài', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (5, 5, N'Bến xe Mỹ Đình', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (5, 11, N'Bến xe Mỹ Đình', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (6, 7, N'Bến xe Giáp Bát', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (6, 8, N'Bến xe Giáp Bát', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (6, 9, N'Bến xe Giáp Bát', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (7, 10, N'Bến xe Hà Đông', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (8, 2, N'Bến xe Lương Yên', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (8, 7, N'Bến xe Lương Yên', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (9, 1, N'Ga Hà Nội', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (9, 2, N'Ga Hà Nội', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (9, 6, N'Ga Hà Nội', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (9, 7, N'Ga Hà Nội', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (10, 4, N'Ga Long Biên', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (11, 12, N'Ga Phú Diễn', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (12, 25, N'Bán đảo Sơn Trà', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (13, 26, N'Bãi biển Non Nước', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (14, 23, N'Sân bay quốc tế Đà Nẵng', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (15, 23, N'Trung tâm Đà Nẵng', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (15, 25, N'Trung tâm Đà Nẵng', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (15, 26, N'Trung tâm Đà Nẵng', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (16, 25, N'Chùa Linh Ứng - Bãi Bụt', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (17, 25, N'Bãi biển Mỹ An', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (17, 26, N'Bãi biển Mỹ An', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (18, 25, N'Bãi tắm T20', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (18, 26, N'Bãi tắm T20', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (19, 23, N'Cầu Rồng', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (19, 24, N'Cầu Rồng', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (19, 25, N'Cầu Rồng', NULL)
INSERT [dbo].[KhuVuc] ([ID], [IDQuanHuyen], [TenKhuVuc], [Updated_at]) VALUES (19, 26, N'Cầu Rồng', NULL)
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (6, N'VIP 1', 2, N'a', 1, N'a', 449, 1, 25, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (7, N'VIP 2', 4, N'a', 2, N'a', 499, 1, 25, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (8, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 399, 1, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (9, N'VIP 1', 2, N'a', 1, N'a', 349, 2, 25, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (10, N'VIP 2', 4, N'a', 2, N'a', 399, 2, 25, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (11, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 299, 2, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (13, N'VIP 2', 4, N'a', 2, N'a', 349, 3, 25, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (14, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 299, 3, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (15, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 299, 4, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (16, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 349, 5, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (17, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 249, 6, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (18, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 299, 7, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (19, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 349, 8, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (20, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 399, 9, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (21, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 249, 10, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (22, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 299, 11, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (25, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 349, 12, 20, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (26, N'VIP 1', 2, N'a', 1, N'a', 399, 13, 25, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (27, N'VIP 2', 4, N'a', 2, N'a', 449, 14, 25, N'a', NULL)
INSERT [dbo].[Phong] ([ID], [TenPhong], [SoNguoi], [LoaiPhong], [SoGiuong], [Mota], [Gia], [IDKhachSan], [DienTich], [MoTaChiTiet], [Updated_at]) VALUES (28, N'Phòng Tiêu Chuẩn', 2, N'a', 1, N'a', 299, 15, 25, N'a', NULL)
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanHuyen] ON 

INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (1, N'Quận Ba Đình', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (2, N'Quận Hoàn Kiếm', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (3, N'Quận Tây Hồ', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (4, N'Quận Long Biên', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (5, N'Quận Cầu Giấy', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (6, N'Quận Đống Đa', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (7, N'Quận Hai Bà Trưng', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (8, N'Quận Hoàng Mai', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (9, N'Quận Thanh Xuân', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (10, N'Quận Hà Đông', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (11, N'Quận Bắc Từ Liêm', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (12, N'Quận Nam Từ Liêm', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (13, N'Thị Xã Sơn Tây', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (14, N'Huyện Ba Vì', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (15, N'Huyện Chương Mỹ', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (16, N'Huyện Đông Anh', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (17, N'Huyện Hoài Đức', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (18, N'Huyện Mỹ Đức', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (19, N'Huyện Quốc Oai', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (20, N'Huyện Sóc Sơn', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (21, N'Huyện Thạch Thất', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (22, N'Huyện Thanh Trì', 61, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (23, N'Quận Hải Châu', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (24, N'Quận Thanh Khê', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (25, N'Quận Sơn Trà', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (26, N'Quận Ngũ Hành Sơn', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (27, N'Quận Liên Chiểu', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (28, N'Quận Cẩm Lệ', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (29, N'Huyện Hòa Vang', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (30, N'Huyện Hoàng Sa', 59, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (31, N'Quận 1', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (32, N'Quận 2', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (33, N'Quận 3', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (34, N'Quận 4', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (35, N'Quận 5', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (36, N'Quận 6', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (37, N'Quận 7', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (38, N'Quận 8', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (39, N'Quận 9', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (40, N'Quận 10', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (41, N'Quận 11', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (42, N'Quận 12', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (43, N'Quận Gò Vấp', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (44, N'Quận Tân Bình', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (45, N'Quận Tân Phú', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (46, N'Quận Bình Thạnh', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (47, N'Quận Phú Nhuận', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (48, N'Quận Thủ Đức', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (49, N'Quận Bình Tân', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (50, N'Huyện Bình Chánh', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (51, N'Huyện Củ Chi', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (52, N'Huyện Hóc Môn', 62, NULL)
INSERT [dbo].[QuanHuyen] ([ID], [TenQuanHuyen], [IDTinhThanh], [Updated_at]) VALUES (53, N'Huyện Nhà Bè', 62, NULL)
SET IDENTITY_INSERT [dbo].[QuanHuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([ID], [UserName], [Password], [loaitk], [Updated_at]) VALUES (1, N'admin', N'admin', 1, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[TienNghi] ON 

INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (1, N'Hồ bơi', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (2, N'Hồ bơi (trẻ em)', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (3, N'Hồ bơi trong nhà (theo mùa)', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (4, N'Hồ bơi trong nhà (cả năm)', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (5, N'Hồ bơi ngoài trời (theo mùa)', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (6, N'Hồ bơi ngoài trời (cả năm)', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (7, N'Spa', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (8, N'Tắm hơi (sauna)', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (9, N'Bể sục', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (10, N'Tắm hơi Thổ Nhĩ Kỳ (Turkish Bath)', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (11, N'Hồ bơi', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (12, N'Hồ bơi', NULL)
INSERT [dbo].[TienNghi] ([ID], [TenTienNghi], [Updated_at]) VALUES (13, N'Hồ bơi', NULL)
SET IDENTITY_INSERT [dbo].[TienNghi] OFF
GO
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (0, N'An Giang', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (1, N'Bà Rịa - Vũng Tàu', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (2, N'Bắc Giang', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (3, N'Bắc Kạn', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (4, N'Bạc Liêu', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (5, N'Bắc Ninh', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (6, N'Bến Tre', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (7, N'Bình Định', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (8, N'Bình Dương', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (9, N'Bình Phước', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (10, N'Bình Thuận', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (11, N'Cà Mau', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (12, N'Cao Bằng', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (13, N'Đắk Lắk', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (14, N'Đắk Nông', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (15, N'Điện Biên', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (16, N'Đồng Nai', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (17, N'Đồng Tháp', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (18, N'Gia Lai', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (19, N'Hà Giang', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (20, N'Hà Nam', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (21, N'Hà Tĩnh', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (22, N'Hải Dương', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (23, N'Hậu Giang', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (24, N'Hòa Bình', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (25, N'Hưng Yên', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (26, N'Khánh Hòa', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (27, N'Kiên Giang', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (28, N'Kon Tum', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (29, N'Lai Châu', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (30, N'Lâm Đồng', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (31, N'Lạng Sơn', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (32, N'Lào Cai', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (33, N'Long An', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (34, N'Nam Định', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (35, N'Nghệ An', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (36, N'Ninh Bình', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (37, N'Ninh Thuận', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (38, N'Phú Thọ', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (39, N'Quảng Bình', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (40, N'Quảng Nam', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (41, N'Quảng Ngãi', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (42, N'Quảng Ninh', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (43, N'Quảng Trị', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (44, N'Sóc Trăng', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (45, N'Sơn La', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (46, N'Tây Ninh', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (47, N'Thái Bình', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (48, N'Thái Nguyên', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (49, N'Thanh Hóa', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (50, N'Thừa Thiên Huế', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (51, N'Tiền Giang', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (52, N'Trà Vinh', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (53, N'Tuyên Quang', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (54, N'Vĩnh Long', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (55, N'Vĩnh Phúc', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (56, N'Yên Bái', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (57, N'Phú Yên', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (58, N'Cần Thơ', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (59, N'Đà Nẵng', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (60, N'Hải Phòng', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (61, N'Hà Nội', NULL)
INSERT [dbo].[TinhThanh] ([ID], [TenTinhThanh], [Updated_at]) VALUES (62, N'TP Hồ Chí Minh', NULL)
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_KhachHang]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_KhachSan] FOREIGN KEY([IDKhachSan])
REFERENCES [dbo].[KhachSan] ([ID])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_KhachSan]
GO
ALTER TABLE [dbo].[DanhSachDichVu]  WITH CHECK ADD FOREIGN KEY([IDKhachSan])
REFERENCES [dbo].[KhachSan] ([ID])
GO
ALTER TABLE [dbo].[DanhSachDichVu]  WITH CHECK ADD FOREIGN KEY([IDTienNghi])
REFERENCES [dbo].[TienNghi] ([ID])
GO
ALTER TABLE [dbo].[HinhAnhKhachSan]  WITH CHECK ADD FOREIGN KEY([IDKhachSan])
REFERENCES [dbo].[KhachSan] ([ID])
GO
ALTER TABLE [dbo].[HinhAnhPhong]  WITH CHECK ADD FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([ID])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Phong]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD FOREIGN KEY([IDTinhThanh])
REFERENCES [dbo].[TinhThanh] ([ID])
GO
ALTER TABLE [dbo].[KhuVuc]  WITH CHECK ADD FOREIGN KEY([IDQuanHuyen])
REFERENCES [dbo].[QuanHuyen] ([ID])
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD FOREIGN KEY([IDKhachSan])
REFERENCES [dbo].[KhachSan] ([ID])
GO
ALTER TABLE [dbo].[QuanHuyen]  WITH CHECK ADD FOREIGN KEY([IDTinhThanh])
REFERENCES [dbo].[TinhThanh] ([ID])
GO
