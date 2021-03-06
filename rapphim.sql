USE [master]
GO
/****** Object:  Database [rapphim]    Script Date: 16/01/2021 2:04:21 AM ******/
CREATE DATABASE [rapphim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'rapphim', FILENAME = N'd:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\rapphim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'rapphim_log', FILENAME = N'd:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\rapphim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [rapphim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [rapphim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [rapphim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [rapphim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [rapphim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [rapphim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [rapphim] SET ARITHABORT OFF 
GO
ALTER DATABASE [rapphim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [rapphim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [rapphim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [rapphim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [rapphim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [rapphim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [rapphim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [rapphim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [rapphim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [rapphim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [rapphim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [rapphim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [rapphim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [rapphim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [rapphim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [rapphim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [rapphim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [rapphim] SET RECOVERY FULL 
GO
ALTER DATABASE [rapphim] SET  MULTI_USER 
GO
ALTER DATABASE [rapphim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [rapphim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [rapphim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [rapphim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [rapphim] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'rapphim', N'ON'
GO
ALTER DATABASE [rapphim] SET QUERY_STORE = OFF
GO
USE [rapphim]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuanModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuanModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NguoiDung_ID] [int] NOT NULL,
	[Phim_ID] [int] NOT NULL,
	[Noi_dung] [nvarchar](max) NULL,
	[Da_xoa] [bit] NOT NULL,
 CONSTRAINT [PK_BinhLuanModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GheModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GheModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[Loai] [int] NOT NULL,
	[Da_chon] [bit] NOT NULL,
	[Da_xoa] [bit] NOT NULL,
	[PhongChieu_ID] [int] NOT NULL,
 CONSTRAINT [PK_GheModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tong_tien] [nvarchar](max) NULL,
	[Ngay_lap] [datetime2](7) NOT NULL,
	[Da_xoa] [bit] NOT NULL,
	[NguoiDung_ID] [int] NOT NULL,
 CONSTRAINT [PK_HoaDonModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieuModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieuModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ngay] [datetime2](7) NOT NULL,
	[Da_xoa] [bit] NOT NULL,
	[RapPhim_ID] [int] NOT NULL,
 CONSTRAINT [PK_LichChieuModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDungModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDungModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Dia_chi] [nvarchar](max) NULL,
	[Ngay_sinh] [datetime2](7) NOT NULL,
	[Sdt] [nvarchar](max) NULL,
	[Admin] [bit] NOT NULL,
	[Da_xoa] [bit] NOT NULL,
 CONSTRAINT [PK_NguoiDungModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhimModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhimModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten_phim] [nvarchar](max) NULL,
	[Hinh_anh] [nvarchar](max) NULL,
	[Video] [nvarchar](max) NULL,
	[Thoi_luong] [int] NOT NULL,
	[Luot_xem] [int] NOT NULL,
	[Gia_ve] [int] NOT NULL,
	[Da_xoa] [bit] NOT NULL,
 CONSTRAINT [PK_PhimModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieuModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieuModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Phong] [nvarchar](max) NULL,
	[Da_xoa] [bit] NOT NULL,
	[RapPhim_ID] [int] NULL,
 CONSTRAINT [PK_PhongChieuModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RapPhimModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RapPhimModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten_rap] [nvarchar](max) NULL,
	[Dia_chi] [nvarchar](max) NULL,
	[Da_xoa] [bit] NOT NULL,
 CONSTRAINT [PK_RapPhimModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten_dang_nhap] [nvarchar](max) NULL,
	[Mat_khau] [nvarchar](max) NULL,
	[Loai_tai_khoan] [int] NOT NULL,
	[NguoiDung_ID] [int] NOT NULL,
	[Da_xoa] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoanModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXemPhimModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXemPhimModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ghe_ID] [int] NULL,
	[PhongChieu_ID] [int] NULL,
	[RapPhim_ID] [int] NULL,
	[Phim_ID] [int] NULL,
	[HoaDon_ID] [int] NULL,
	[DaXoa] [bit] NOT NULL,
	[XuatChieu_id] [int] NULL,
 CONSTRAINT [PK_VeXemPhimModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatChieuModel]    Script Date: 16/01/2021 2:04:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatChieuModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Thoi_gian] [nvarchar](max) NULL,
	[Da_xoa] [bit] NOT NULL,
	[LichChieu_ID] [int] NULL,
	[Phim_ID] [int] NULL,
	[PhongChieu_ID] [int] NULL,
 CONSTRAINT [PK_XuatChieuModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210115105629_create', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210115140150_updateVeXemPhim', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210115143207_updateVeXemPhim1', N'3.1.10')
GO
SET IDENTITY_INSERT [dbo].[GheModel] ON 

INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (1, N'A0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (2, N'A1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (3, N'A2', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (4, N'A3', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (5, N'A4', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (6, N'A5', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (7, N'A6', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (8, N'A7', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (9, N'A8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (10, N'A9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (11, N'B0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (12, N'B1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (13, N'B2', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (14, N'B3', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (15, N'B4', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (16, N'B5', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (17, N'B6', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (18, N'B7', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (19, N'B8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (20, N'B9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (21, N'C0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (22, N'C1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (23, N'C2', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (24, N'C3', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (25, N'C4', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (26, N'C5', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (27, N'C6', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (28, N'C7', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (29, N'C8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (30, N'C9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (31, N'D0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (32, N'D1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (33, N'D2', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (34, N'D3', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (35, N'D4', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (36, N'D5', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (37, N'D6', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (38, N'D7', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (39, N'D8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (40, N'D9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (41, N'E0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (42, N'E1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (43, N'E2', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (44, N'E3', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (45, N'E4', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (46, N'E5', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (47, N'E6', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (48, N'E7', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (49, N'E8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (50, N'E9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (51, N'F0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (52, N'F1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (53, N'F2', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (54, N'F3', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (55, N'F4', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (56, N'F5', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (57, N'F6', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (58, N'F7', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (59, N'F8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (60, N'F9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (61, N'G0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (62, N'G1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (63, N'G2', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (64, N'G3', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (65, N'G4', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (66, N'G5', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (67, N'G6', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (68, N'G7', 1, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (69, N'G8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (70, N'G9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (71, N'H0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (72, N'H1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (73, N'H2', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (74, N'H3', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (75, N'H4', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (76, N'H5', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (77, N'H6', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (78, N'H7', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (79, N'H8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (80, N'H9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (81, N'I0', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (82, N'I1', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (83, N'I2', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (84, N'I3', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (85, N'I4', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (86, N'I5', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (87, N'I6', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (88, N'I7', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (89, N'I8', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (90, N'I9', 0, 0, 0, 1)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (91, N'A0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (92, N'A1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (93, N'A2', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (94, N'A3', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (95, N'A4', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (96, N'A5', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (97, N'A6', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (98, N'A7', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (99, N'A8', 0, 0, 0, 2)
GO
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (100, N'A9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (101, N'B0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (102, N'B1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (103, N'B2', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (104, N'B3', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (105, N'B4', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (106, N'B5', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (107, N'B6', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (108, N'B7', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (109, N'B8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (110, N'B9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (111, N'C0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (112, N'C1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (113, N'C2', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (114, N'C3', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (115, N'C4', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (116, N'C5', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (117, N'C6', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (118, N'C7', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (119, N'C8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (120, N'C9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (121, N'D0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (122, N'D1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (123, N'D2', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (124, N'D3', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (125, N'D4', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (126, N'D5', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (127, N'D6', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (128, N'D7', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (129, N'D8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (130, N'D9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (131, N'E0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (132, N'E1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (133, N'E2', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (134, N'E3', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (135, N'E4', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (136, N'E5', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (137, N'E6', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (138, N'E7', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (139, N'E8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (140, N'E9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (141, N'F0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (142, N'F1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (143, N'F2', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (144, N'F3', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (145, N'F4', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (146, N'F5', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (147, N'F6', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (148, N'F7', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (149, N'F8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (150, N'F9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (151, N'G0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (152, N'G1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (153, N'G2', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (154, N'G3', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (155, N'G4', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (156, N'G5', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (157, N'G6', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (158, N'G7', 1, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (159, N'G8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (160, N'G9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (161, N'H0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (162, N'H1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (163, N'H2', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (164, N'H3', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (165, N'H4', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (166, N'H5', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (167, N'H6', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (168, N'H7', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (169, N'H8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (170, N'H9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (171, N'I0', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (172, N'I1', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (173, N'I2', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (174, N'I3', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (175, N'I4', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (176, N'I5', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (177, N'I6', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (178, N'I7', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (179, N'I8', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (180, N'I9', 0, 0, 0, 2)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (181, N'A0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (182, N'A1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (183, N'A2', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (184, N'A3', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (185, N'A4', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (186, N'A5', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (187, N'A6', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (188, N'A7', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (189, N'A8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (190, N'A9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (191, N'B0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (192, N'B1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (193, N'B2', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (194, N'B3', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (195, N'B4', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (196, N'B5', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (197, N'B6', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (198, N'B7', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (199, N'B8', 0, 0, 0, 3)
GO
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (200, N'B9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (201, N'C0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (202, N'C1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (203, N'C2', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (204, N'C3', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (205, N'C4', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (206, N'C5', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (207, N'C6', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (208, N'C7', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (209, N'C8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (210, N'C9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (211, N'D0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (212, N'D1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (213, N'D2', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (214, N'D3', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (215, N'D4', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (216, N'D5', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (217, N'D6', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (218, N'D7', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (219, N'D8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (220, N'D9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (221, N'E0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (222, N'E1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (223, N'E2', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (224, N'E3', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (225, N'E4', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (226, N'E5', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (227, N'E6', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (228, N'E7', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (229, N'E8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (230, N'E9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (231, N'F0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (232, N'F1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (233, N'F2', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (234, N'F3', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (235, N'F4', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (236, N'F5', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (237, N'F6', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (238, N'F7', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (239, N'F8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (240, N'F9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (241, N'G0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (242, N'G1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (243, N'G2', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (244, N'G3', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (245, N'G4', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (246, N'G5', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (247, N'G6', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (248, N'G7', 1, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (249, N'G8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (250, N'G9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (251, N'H0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (252, N'H1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (253, N'H2', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (254, N'H3', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (255, N'H4', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (256, N'H5', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (257, N'H6', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (258, N'H7', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (259, N'H8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (260, N'H9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (261, N'I0', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (262, N'I1', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (263, N'I2', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (264, N'I3', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (265, N'I4', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (266, N'I5', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (267, N'I6', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (268, N'I7', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (269, N'I8', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (270, N'I9', 0, 0, 0, 3)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (271, N'A0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (272, N'A1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (273, N'A2', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (274, N'A3', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (275, N'A4', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (276, N'A5', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (277, N'A6', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (278, N'A7', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (279, N'A8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (280, N'A9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (281, N'B0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (282, N'B1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (283, N'B2', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (284, N'B3', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (285, N'B4', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (286, N'B5', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (287, N'B6', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (288, N'B7', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (289, N'B8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (290, N'B9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (291, N'C0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (292, N'C1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (293, N'C2', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (294, N'C3', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (295, N'C4', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (296, N'C5', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (297, N'C6', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (298, N'C7', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (299, N'C8', 0, 0, 0, 4)
GO
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (300, N'C9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (301, N'D0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (302, N'D1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (303, N'D2', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (304, N'D3', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (305, N'D4', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (306, N'D5', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (307, N'D6', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (308, N'D7', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (309, N'D8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (310, N'D9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (311, N'E0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (312, N'E1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (313, N'E2', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (314, N'E3', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (315, N'E4', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (316, N'E5', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (317, N'E6', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (318, N'E7', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (319, N'E8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (320, N'E9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (321, N'F0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (322, N'F1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (323, N'F2', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (324, N'F3', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (325, N'F4', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (326, N'F5', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (327, N'F6', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (328, N'F7', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (329, N'F8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (330, N'F9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (331, N'G0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (332, N'G1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (333, N'G2', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (334, N'G3', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (335, N'G4', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (336, N'G5', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (337, N'G6', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (338, N'G7', 1, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (339, N'G8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (340, N'G9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (341, N'H0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (342, N'H1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (343, N'H2', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (344, N'H3', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (345, N'H4', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (346, N'H5', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (347, N'H6', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (348, N'H7', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (349, N'H8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (350, N'H9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (351, N'I0', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (352, N'I1', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (353, N'I2', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (354, N'I3', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (355, N'I4', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (356, N'I5', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (357, N'I6', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (358, N'I7', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (359, N'I8', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (360, N'I9', 0, 0, 0, 4)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (361, N'A0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (362, N'A1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (363, N'A2', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (364, N'A3', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (365, N'A4', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (366, N'A5', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (367, N'A6', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (368, N'A7', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (369, N'A8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (370, N'A9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (371, N'B0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (372, N'B1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (373, N'B2', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (374, N'B3', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (375, N'B4', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (376, N'B5', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (377, N'B6', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (378, N'B7', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (379, N'B8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (380, N'B9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (381, N'C0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (382, N'C1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (383, N'C2', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (384, N'C3', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (385, N'C4', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (386, N'C5', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (387, N'C6', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (388, N'C7', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (389, N'C8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (390, N'C9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (391, N'D0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (392, N'D1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (393, N'D2', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (394, N'D3', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (395, N'D4', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (396, N'D5', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (397, N'D6', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (398, N'D7', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (399, N'D8', 0, 0, 0, 5)
GO
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (400, N'D9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (401, N'E0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (402, N'E1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (403, N'E2', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (404, N'E3', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (405, N'E4', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (406, N'E5', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (407, N'E6', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (408, N'E7', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (409, N'E8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (410, N'E9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (411, N'F0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (412, N'F1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (413, N'F2', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (414, N'F3', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (415, N'F4', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (416, N'F5', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (417, N'F6', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (418, N'F7', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (419, N'F8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (420, N'F9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (421, N'G0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (422, N'G1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (423, N'G2', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (424, N'G3', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (425, N'G4', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (426, N'G5', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (427, N'G6', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (428, N'G7', 1, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (429, N'G8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (430, N'G9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (431, N'H0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (432, N'H1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (433, N'H2', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (434, N'H3', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (435, N'H4', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (436, N'H5', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (437, N'H6', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (438, N'H7', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (439, N'H8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (440, N'H9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (441, N'I0', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (442, N'I1', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (443, N'I2', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (444, N'I3', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (445, N'I4', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (446, N'I5', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (447, N'I6', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (448, N'I7', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (449, N'I8', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (450, N'I9', 0, 0, 0, 5)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (451, N'A0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (452, N'A1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (453, N'A2', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (454, N'A3', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (455, N'A4', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (456, N'A5', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (457, N'A6', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (458, N'A7', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (459, N'A8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (460, N'A9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (461, N'B0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (462, N'B1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (463, N'B2', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (464, N'B3', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (465, N'B4', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (466, N'B5', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (467, N'B6', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (468, N'B7', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (469, N'B8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (470, N'B9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (471, N'C0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (472, N'C1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (473, N'C2', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (474, N'C3', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (475, N'C4', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (476, N'C5', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (477, N'C6', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (478, N'C7', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (479, N'C8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (480, N'C9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (481, N'D0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (482, N'D1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (483, N'D2', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (484, N'D3', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (485, N'D4', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (486, N'D5', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (487, N'D6', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (488, N'D7', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (489, N'D8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (490, N'D9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (491, N'E0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (492, N'E1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (493, N'E2', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (494, N'E3', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (495, N'E4', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (496, N'E5', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (497, N'E6', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (498, N'E7', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (499, N'E8', 0, 0, 0, 6)
GO
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (500, N'E9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (501, N'F0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (502, N'F1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (503, N'F2', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (504, N'F3', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (505, N'F4', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (506, N'F5', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (507, N'F6', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (508, N'F7', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (509, N'F8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (510, N'F9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (511, N'G0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (512, N'G1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (513, N'G2', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (514, N'G3', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (515, N'G4', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (516, N'G5', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (517, N'G6', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (518, N'G7', 1, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (519, N'G8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (520, N'G9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (521, N'H0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (522, N'H1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (523, N'H2', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (524, N'H3', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (525, N'H4', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (526, N'H5', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (527, N'H6', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (528, N'H7', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (529, N'H8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (530, N'H9', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (531, N'I0', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (532, N'I1', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (533, N'I2', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (534, N'I3', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (535, N'I4', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (536, N'I5', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (537, N'I6', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (538, N'I7', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (539, N'I8', 0, 0, 0, 6)
INSERT [dbo].[GheModel] ([ID], [Ten], [Loai], [Da_chon], [Da_xoa], [PhongChieu_ID]) VALUES (540, N'I9', 0, 0, 0, 6)
SET IDENTITY_INSERT [dbo].[GheModel] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonModel] ON 

INSERT [dbo].[HoaDonModel] ([ID], [Tong_tien], [Ngay_lap], [Da_xoa], [NguoiDung_ID]) VALUES (1, N'123123', CAST(N'0123-03-12T12:12:00.0000000' AS DateTime2), 0, 1)
SET IDENTITY_INSERT [dbo].[HoaDonModel] OFF
GO
SET IDENTITY_INSERT [dbo].[LichChieuModel] ON 

INSERT [dbo].[LichChieuModel] ([ID], [Ngay], [Da_xoa], [RapPhim_ID]) VALUES (1, CAST(N'2021-12-03T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[LichChieuModel] ([ID], [Ngay], [Da_xoa], [RapPhim_ID]) VALUES (2, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[LichChieuModel] ([ID], [Ngay], [Da_xoa], [RapPhim_ID]) VALUES (3, CAST(N'2021-03-01T00:00:00.0000000' AS DateTime2), 0, 1)
INSERT [dbo].[LichChieuModel] ([ID], [Ngay], [Da_xoa], [RapPhim_ID]) VALUES (4, CAST(N'2021-11-01T00:00:00.0000000' AS DateTime2), 0, 2)
INSERT [dbo].[LichChieuModel] ([ID], [Ngay], [Da_xoa], [RapPhim_ID]) VALUES (5, CAST(N'2021-11-11T00:00:00.0000000' AS DateTime2), 0, 2)
SET IDENTITY_INSERT [dbo].[LichChieuModel] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDungModel] ON 

INSERT [dbo].[NguoiDungModel] ([ID], [HoTen], [Email], [Dia_chi], [Ngay_sinh], [Sdt], [Admin], [Da_xoa]) VALUES (1, N'a', N'a', N'a', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'1231231231', 0, 0)
SET IDENTITY_INSERT [dbo].[NguoiDungModel] OFF
GO
SET IDENTITY_INSERT [dbo].[PhimModel] ON 

INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1, N'Chị chị em em', N'https://img.gophim.tv/images/info/chi-chi-em-em.jpg', N'https://www.youtube.com/watch?v=aqNqRYMJkfM', 150, 128, 50000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (2, N' CUA LẠI VỢ BẦU ', N'https://i.pinimg.com/originals/1d/b6/de/1db6de7960bcc885789532ca1d165b25.jpg', N'https://www.youtube.com/watch?v=7V7SBjaQQ4g', 120, 124, 55000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (3, N'Bí mật của gió', N'https://i.ytimg.com/vi/UpK2dQCowYg/maxresdefault.jpg', N'https://www.youtube.com/watch?v=L2EodPu-3DY', 123, 144, 45000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (4, N'Pokémon the movie XY&Z: Volcanion and the Ingenious Magearna Music Collection', N'https://www.comgnet.com/mitsuke/wp-content/uploads/sites/9/2016/08/76a311efad5d2dbcb8ca9806b9835aae.jpg', N'https://www.youtube.com/watch?v=NWtBDuxrcS0', 150, 15, 48000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (5, N'MONSTER HUNTER', N'https://asia.playstation.com/content/dam/pscom/japan-asia/playstation-wallpapers/monster-hunter-world/monster-hunter-world_A_3840_2160.jpg', N'https://www.youtube.com/watch?v=3od-kQMTZ9M', 120, 11111, 54000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (6, N'NOBODY', N'https://theplaylist.net/wp-content/uploads/2020/12/Nobody-Bob-Odenkirk.jpg', N'https://www.youtube.com/watch?v=8VlBkajjQm4', 90, 2014, 50000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (7, N'Marvel Studios'' Avengers: Endgame ', N'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/2540DE0A20BC441B094F26EF1A1C5CBBB6ADD6C6EC2F8D760FAB753294BD846F/scale?width=1200&aspectRatio=1.78&format=jpeg', N'https://www.youtube.com/watch?v=TcMBFSGVi1c', 182, 3546846, 150000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1005, N'Justice League Snyder Cut (2021) EPISODE IV', N'https://i.ytimg.com/vi/JN_GOgPXD00/maxresdefault.jpg', N'https://www.youtube.com/watch?v=JN_GOgPXD00', 120, 50000, 84000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1006, N'Wonder Woman 1984 ', N'https://www.wintersmedia.net/wp-content/uploads/2020/12/WW_feature.jpg', N'https://www.youtube.com/watch?v=XW2E2Fnh52w', 180, 546165, 50000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1007, N'GIA ĐÌNH CROODS: KỶ NGUYÊN MỚI', N'https://image.phimmoizz.net/post/2020/12/20/maxresdefault-5.jpg', N'https://www.youtube.com/watch?v=0qaStyeKpLo', 120, 265112, 80000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1008, N'Halloween Kills', N'https://anygoodfilms.com/wp-content/uploads/2018/10/Halloween2018-800x445.jpg', N'https://www.youtube.com/watch?v=TgWlruoQoLI', 136, 5165651, 40000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1009, N'The King''s Man', N'https://i.ytimg.com/vi/R2YTAin-WqU/maxresdefault.jpg', N'https://www.youtube.com/watch?v=5zdBG-iGfes', 130, 51658, 54000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1010, N'Dune', N'https://nerdist.com/wp-content/uploads/2020/06/dune-cropped.jpg', N'https://www.youtube.com/watch?v=n9xhJrPXop4', 96, 19222, 50000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1011, N'Chaos Walking', N'https://www.comingsoon.net/assets/uploads/2020/11/Chaos-Walking-e1605279394442.jpg', N'https://www.youtube.com/watch?v=UIrGxHhdqXo', 90, 165162, 120000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1012, N'Free guy', N'https://sciencefiction.com/wp-content/uploads/2019/12/free_guy.jpg', N'https://www.youtube.com/watch?v=X2m-08cOAbc', 130, 4516, 50000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1013, N'SKYLINES - CUỘC CHIẾN HỦY DIỆT', N'https://static2.srcdn.com/wordpress/wp-content/uploads/2020/12/Skylines-Movie-Exclusive-Poster-Art.jpg', N'https://www.youtube.com/watch?v=mFgmcsRzvOo', 120, 65165, 40000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1014, N'THE SUICIDE SQUAD 2', N'https://d13ezvd6yrslxm.cloudfront.net/wp/wp-content/images/the-suicide-squad-e1598276748906.jpeg', N'https://www.youtube.com/watch?v=aakx8RI5QSU', 100, 61515, 85000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1015, N'THE BATMAN', N'https://cosmicbook.news/sites/default/files/batman-robert-pattinson-promo-images-dc-fandome.jpg', N'https://www.youtube.com/watch?v=-FZ-pPFAjYY', 110, 52654, 45000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1016, N'The Empty Man', N'https://cdn.mos.cms.futurecdn.net/y8a6CjymkCG4P4EVrzTvbE.jpg', N'https://www.youtube.com/watch?v=tk6u9X1bW30', 123, 16516, 54000, 0)
INSERT [dbo].[PhimModel] ([ID], [Ten_phim], [Hinh_anh], [Video], [Thoi_luong], [Luot_xem], [Gia_ve], [Da_xoa]) VALUES (1017, N'Songbird', N'https://i.ytimg.com/vi/IgxXSfto6Vo/maxresdefault.jpg', N'https://www.youtube.com/watch?v=IgxXSfto6Vo', 123, 5165, 45000, 0)
SET IDENTITY_INSERT [dbo].[PhimModel] OFF
GO
SET IDENTITY_INSERT [dbo].[PhongChieuModel] ON 

INSERT [dbo].[PhongChieuModel] ([ID], [Ten_Phong], [Da_xoa], [RapPhim_ID]) VALUES (1, N'P0', 0, 1)
INSERT [dbo].[PhongChieuModel] ([ID], [Ten_Phong], [Da_xoa], [RapPhim_ID]) VALUES (2, N'P1', 0, 1)
INSERT [dbo].[PhongChieuModel] ([ID], [Ten_Phong], [Da_xoa], [RapPhim_ID]) VALUES (3, N'P2', 0, 1)
INSERT [dbo].[PhongChieuModel] ([ID], [Ten_Phong], [Da_xoa], [RapPhim_ID]) VALUES (4, N'P0', 0, 2)
INSERT [dbo].[PhongChieuModel] ([ID], [Ten_Phong], [Da_xoa], [RapPhim_ID]) VALUES (5, N'P1', 0, 2)
INSERT [dbo].[PhongChieuModel] ([ID], [Ten_Phong], [Da_xoa], [RapPhim_ID]) VALUES (6, N'P2', 0, 2)
SET IDENTITY_INSERT [dbo].[PhongChieuModel] OFF
GO
SET IDENTITY_INSERT [dbo].[RapPhimModel] ON 

INSERT [dbo].[RapPhimModel] ([ID], [Ten_rap], [Dia_chi], [Da_xoa]) VALUES (1, N'R1', N'bdawk aw123', 0)
INSERT [dbo].[RapPhimModel] ([ID], [Ten_rap], [Dia_chi], [Da_xoa]) VALUES (2, N'R2', N'dawfaw', 0)
SET IDENTITY_INSERT [dbo].[RapPhimModel] OFF
GO
SET IDENTITY_INSERT [dbo].[VeXemPhimModel] ON 

INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (1, 1, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (2, 2, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (3, 3, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (4, 5, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (5, 17, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (6, 82, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (7, 13, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (8, 14, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (9, 58, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (10, 60, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (11, 59, 1, 1, 1, 1, 0, 1)
INSERT [dbo].[VeXemPhimModel] ([ID], [Ghe_ID], [PhongChieu_ID], [RapPhim_ID], [Phim_ID], [HoaDon_ID], [DaXoa], [XuatChieu_id]) VALUES (12, 45, 1, 1, 1, 1, 0, 1)
SET IDENTITY_INSERT [dbo].[VeXemPhimModel] OFF
GO
SET IDENTITY_INSERT [dbo].[XuatChieuModel] ON 

INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (1, N'12:31', 0, 1, 1, 1)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (2, N'00:31', 0, 1, 2, 2)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (3, N'00:31', 0, 1, 3, 3)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (4, N'12:31', 0, 1, 1008, 1)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (5, N'14:31', 1, 1, 1014, 4)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (6, N'12:31', 1, 1, 1006, 4)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (7, N'14:31', 1, 1, 1017, 6)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (8, N'12:31', 0, 1, 1009, 1)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (9, N'00:31', 0, 1, 1, 3)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (10, N'15:46', 0, 1, 1, 2)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (11, N'02:03', 0, 1, 1, 1)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (12, N'12:07', 0, 1, 1, 2)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (13, N'00:03', 0, 2, 1, 1)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (14, N'17:43', 0, 2, 1, 1)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (15, N'01:02', 0, 3, 1, 1)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (16, N'00:03', 1, 3, 1, 5)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (17, N'00:03', 0, 5, 1, 6)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (18, N'14:01', 0, 5, 1, 5)
INSERT [dbo].[XuatChieuModel] ([ID], [Thoi_gian], [Da_xoa], [LichChieu_ID], [Phim_ID], [PhongChieu_ID]) VALUES (19, N'12:03', 0, 4, 1, 4)
SET IDENTITY_INSERT [dbo].[XuatChieuModel] OFF
GO
/****** Object:  Index [IX_BinhLuanModel_NguoiDung_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_BinhLuanModel_NguoiDung_ID] ON [dbo].[BinhLuanModel]
(
	[NguoiDung_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BinhLuanModel_Phim_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_BinhLuanModel_Phim_ID] ON [dbo].[BinhLuanModel]
(
	[Phim_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GheModel_PhongChieu_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_GheModel_PhongChieu_ID] ON [dbo].[GheModel]
(
	[PhongChieu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDonModel_NguoiDung_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDonModel_NguoiDung_ID] ON [dbo].[HoaDonModel]
(
	[NguoiDung_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichChieuModel_RapPhim_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_LichChieuModel_RapPhim_ID] ON [dbo].[LichChieuModel]
(
	[RapPhim_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PhongChieuModel_RapPhim_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_PhongChieuModel_RapPhim_ID] ON [dbo].[PhongChieuModel]
(
	[RapPhim_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaiKhoanModel_NguoiDung_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_TaiKhoanModel_NguoiDung_ID] ON [dbo].[TaiKhoanModel]
(
	[NguoiDung_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VeXemPhimModel_Ghe_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_VeXemPhimModel_Ghe_ID] ON [dbo].[VeXemPhimModel]
(
	[Ghe_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VeXemPhimModel_HoaDon_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_VeXemPhimModel_HoaDon_ID] ON [dbo].[VeXemPhimModel]
(
	[HoaDon_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VeXemPhimModel_Phim_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_VeXemPhimModel_Phim_ID] ON [dbo].[VeXemPhimModel]
(
	[Phim_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VeXemPhimModel_PhongChieu_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_VeXemPhimModel_PhongChieu_ID] ON [dbo].[VeXemPhimModel]
(
	[PhongChieu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VeXemPhimModel_RapPhim_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_VeXemPhimModel_RapPhim_ID] ON [dbo].[VeXemPhimModel]
(
	[RapPhim_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VeXemPhimModel_XuatChieu_id]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_VeXemPhimModel_XuatChieu_id] ON [dbo].[VeXemPhimModel]
(
	[XuatChieu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_XuatChieuModel_LichChieu_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_XuatChieuModel_LichChieu_ID] ON [dbo].[XuatChieuModel]
(
	[LichChieu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_XuatChieuModel_Phim_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_XuatChieuModel_Phim_ID] ON [dbo].[XuatChieuModel]
(
	[Phim_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_XuatChieuModel_PhongChieu_ID]    Script Date: 16/01/2021 2:04:22 AM ******/
CREATE NONCLUSTERED INDEX [IX_XuatChieuModel_PhongChieu_ID] ON [dbo].[XuatChieuModel]
(
	[PhongChieu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BinhLuanModel]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanModel_NguoiDungModel_NguoiDung_ID] FOREIGN KEY([NguoiDung_ID])
REFERENCES [dbo].[NguoiDungModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuanModel] CHECK CONSTRAINT [FK_BinhLuanModel_NguoiDungModel_NguoiDung_ID]
GO
ALTER TABLE [dbo].[BinhLuanModel]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanModel_PhimModel_Phim_ID] FOREIGN KEY([Phim_ID])
REFERENCES [dbo].[PhimModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuanModel] CHECK CONSTRAINT [FK_BinhLuanModel_PhimModel_Phim_ID]
GO
ALTER TABLE [dbo].[GheModel]  WITH CHECK ADD  CONSTRAINT [FK_GheModel_PhongChieuModel_PhongChieu_ID] FOREIGN KEY([PhongChieu_ID])
REFERENCES [dbo].[PhongChieuModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GheModel] CHECK CONSTRAINT [FK_GheModel_PhongChieuModel_PhongChieu_ID]
GO
ALTER TABLE [dbo].[HoaDonModel]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonModel_NguoiDungModel_NguoiDung_ID] FOREIGN KEY([NguoiDung_ID])
REFERENCES [dbo].[NguoiDungModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonModel] CHECK CONSTRAINT [FK_HoaDonModel_NguoiDungModel_NguoiDung_ID]
GO
ALTER TABLE [dbo].[LichChieuModel]  WITH CHECK ADD  CONSTRAINT [FK_LichChieuModel_RapPhimModel_RapPhim_ID] FOREIGN KEY([RapPhim_ID])
REFERENCES [dbo].[RapPhimModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieuModel] CHECK CONSTRAINT [FK_LichChieuModel_RapPhimModel_RapPhim_ID]
GO
ALTER TABLE [dbo].[PhongChieuModel]  WITH CHECK ADD  CONSTRAINT [FK_PhongChieuModel_RapPhimModel_RapPhim_ID] FOREIGN KEY([RapPhim_ID])
REFERENCES [dbo].[RapPhimModel] ([ID])
GO
ALTER TABLE [dbo].[PhongChieuModel] CHECK CONSTRAINT [FK_PhongChieuModel_RapPhimModel_RapPhim_ID]
GO
ALTER TABLE [dbo].[TaiKhoanModel]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoanModel_NguoiDungModel_NguoiDung_ID] FOREIGN KEY([NguoiDung_ID])
REFERENCES [dbo].[NguoiDungModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoanModel] CHECK CONSTRAINT [FK_TaiKhoanModel_NguoiDungModel_NguoiDung_ID]
GO
ALTER TABLE [dbo].[VeXemPhimModel]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhimModel_GheModel_Ghe_ID] FOREIGN KEY([Ghe_ID])
REFERENCES [dbo].[GheModel] ([ID])
GO
ALTER TABLE [dbo].[VeXemPhimModel] CHECK CONSTRAINT [FK_VeXemPhimModel_GheModel_Ghe_ID]
GO
ALTER TABLE [dbo].[VeXemPhimModel]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhimModel_HoaDonModel_HoaDon_ID] FOREIGN KEY([HoaDon_ID])
REFERENCES [dbo].[HoaDonModel] ([ID])
GO
ALTER TABLE [dbo].[VeXemPhimModel] CHECK CONSTRAINT [FK_VeXemPhimModel_HoaDonModel_HoaDon_ID]
GO
ALTER TABLE [dbo].[VeXemPhimModel]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhimModel_PhimModel_Phim_ID] FOREIGN KEY([Phim_ID])
REFERENCES [dbo].[PhimModel] ([ID])
GO
ALTER TABLE [dbo].[VeXemPhimModel] CHECK CONSTRAINT [FK_VeXemPhimModel_PhimModel_Phim_ID]
GO
ALTER TABLE [dbo].[VeXemPhimModel]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhimModel_PhongChieuModel_PhongChieu_ID] FOREIGN KEY([PhongChieu_ID])
REFERENCES [dbo].[PhongChieuModel] ([ID])
GO
ALTER TABLE [dbo].[VeXemPhimModel] CHECK CONSTRAINT [FK_VeXemPhimModel_PhongChieuModel_PhongChieu_ID]
GO
ALTER TABLE [dbo].[VeXemPhimModel]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhimModel_RapPhimModel_RapPhim_ID] FOREIGN KEY([RapPhim_ID])
REFERENCES [dbo].[RapPhimModel] ([ID])
GO
ALTER TABLE [dbo].[VeXemPhimModel] CHECK CONSTRAINT [FK_VeXemPhimModel_RapPhimModel_RapPhim_ID]
GO
ALTER TABLE [dbo].[VeXemPhimModel]  WITH CHECK ADD  CONSTRAINT [FK_VeXemPhimModel_XuatChieuModel_XuatChieu_id] FOREIGN KEY([XuatChieu_id])
REFERENCES [dbo].[XuatChieuModel] ([ID])
GO
ALTER TABLE [dbo].[VeXemPhimModel] CHECK CONSTRAINT [FK_VeXemPhimModel_XuatChieuModel_XuatChieu_id]
GO
ALTER TABLE [dbo].[XuatChieuModel]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuModel_LichChieuModel_LichChieu_ID] FOREIGN KEY([LichChieu_ID])
REFERENCES [dbo].[LichChieuModel] ([ID])
GO
ALTER TABLE [dbo].[XuatChieuModel] CHECK CONSTRAINT [FK_XuatChieuModel_LichChieuModel_LichChieu_ID]
GO
ALTER TABLE [dbo].[XuatChieuModel]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuModel_PhimModel_Phim_ID] FOREIGN KEY([Phim_ID])
REFERENCES [dbo].[PhimModel] ([ID])
GO
ALTER TABLE [dbo].[XuatChieuModel] CHECK CONSTRAINT [FK_XuatChieuModel_PhimModel_Phim_ID]
GO
ALTER TABLE [dbo].[XuatChieuModel]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieuModel_PhongChieuModel_PhongChieu_ID] FOREIGN KEY([PhongChieu_ID])
REFERENCES [dbo].[PhongChieuModel] ([ID])
GO
ALTER TABLE [dbo].[XuatChieuModel] CHECK CONSTRAINT [FK_XuatChieuModel_PhongChieuModel_PhongChieu_ID]
GO
USE [master]
GO
ALTER DATABASE [rapphim] SET  READ_WRITE 
GO
