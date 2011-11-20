/*=========================== Web thuong mai dien tu database ============================*/
/* Cơ sở dữ liệu sau được thiết kế dùng chung cho một vài trang web thương mại điện tử
như: bán máy tính, bán thiết bị văn phòng, bán điện thoại... Có nhiều bảng gồm nhiều 
trường chưa sử dụng đến, vì tính đa dạng của yêu cầu thực tiễn, người lập trình tùy 
vào trường hợp để sử dụng cho hợp lý.*/
/*========================================================================================*/
USE master
GO
IF EXISTS(SELECT * FROM SYS.DATABASES WHERE NAME='TMDT_Project_Database')
DROP DATABASE TMDT_Project_Database
GO
CREATE DATABASE TMDT_Project_Database
GO
USE TMDT_Project_Database
GO
/*=================================== Create Tables ======================================*/
/*Bảng này chứa các nhóm người tham gia vào hệ thống, chia ra 5 nhóm. Bảng cố định, ko cần quản lý*/
/*	cấp 1: user - khách hàng vào mua hàng, đăng ký tài khoản.
	cấp 2: mod - tài khoản cấp cho người quản trị các bài viết về sản phẩm...
	cấp 3: supermod - tài khoản cấp cho người quản trị module - quản lý category - quản lý giao diện
	cấp 4: admin - tài khoản cấp cho người quản lý các nhân viên kia - quản lý giá cả...
	cấp 5: superadmin - tài khoản bí mật dành riêng cho người phát triển để khắc phục
			sự cố khi cần - tài khoản không thể xóa.*/
CREATE TABLE [dbo].[MstGroup] /*Table 1 - dữ liệu bảng này được cố định.*/
(
	[GroupId]		INT IDENTITY(1,1) NOT NULL,
	[GroupName]		NVARCHAR(50) NOT NULL,
	[GroupDesciption]	NVARCHAR(256) NOT NULL,
)
GO
/* Chứa các trạng thái của các row để hỗ trợ xử lý nghiệp vụ.
	Bảng này giá trị cố định, ko cần quản lý.
	deleted, readed, enable, disable, pending...
*/
CREATE TABLE [dbo].[MstStatus] /*Table 2 - dữ liệu bảng này được cố định.*/
(
	[StatusId]		INT IDENTITY(1,1) NOT NULL,
	[StatusName]	NVARCHAR(50) NOT NULL,
	[StatusDesciption]	NVARCHAR(256) NOT NULL,
)
GO
CREATE TABLE [dbo].[TblUser] /*Table 3*/
(
	[UserId]		INT IDENTITY(1,1) NOT NULL,
	[GroupId]		INT NOT NULL,
	[UserName]		VARCHAR(256) UNIQUE NOT NULL,
	[FullName]		NVARCHAR(256),
	[Password]		VARCHAR(20) NOT NULL,
	[DateOfBirth]	DATETIME DEFAULT(getdate()),
	[Gender]		BIT DEFAULT(1),
	[Email]			NVARCHAR(256)  UNIQUE NOT NULL,
	[Address]		NVARCHAR(256),
	[Phone]			VARCHAR(50),
	[JoinDate]		DATETIME DEFAULT(getdate()),
	[StatusId]		VARCHAR(50) NOT NULL DEFAULT('enable')
)
GO
CREATE TABLE [dbo].[Category]
(
	[CategoryId]	INT IDENTITY(1,1)NOT NULL,
	[CategoryName]	NVARCHAR(50) NOT NULL,
	[CategoryLink]	NVARCHAR(100) NOT NULL
)
GO
CREATE TABLE [dbo].[SubCategory]
(
	SubCategoryId	INT IDENTITY(1,1),
	CategoryId		INT,
	SubCategoryName NVARCHAR(245)
)
GO
/*Thêm field đã duyệt, hoặc đã đọc (ViewStatus) cho bảng Bill, News, Comment, Question...*/
