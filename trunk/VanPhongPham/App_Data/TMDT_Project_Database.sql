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
CREATE TABLE [dbo].[MstGroup] /*Table 1 - Master Group - dữ liệu bảng này được cố định.*/
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
CREATE TABLE [dbo].[MstStatus] /*Table 2 - Master Status - dữ liệu bảng này được cố định.*/
(
	[StatusId]		INT IDENTITY(1,1) NOT NULL,
	[StatusName]	NVARCHAR(50) NOT NULL,
	[StatusDesciption]	NVARCHAR(256) NOT NULL,
)
GO
CREATE TABLE [dbo].[TblUser] /*Table 3*/
(
	[UserId]		INT IDENTITY(1,1) NOT NULL,
	[GroupId]		INT NOT NULL, -- tham chiếu tới bảng MstGroup
	[UserName]		VARCHAR(256) UNIQUE NOT NULL,
	[FullName]		NVARCHAR(256),
	[Password]		VARCHAR(20) NOT NULL,
	[DateOfBirth]	DATETIME DEFAULT(getdate()),
	[Gender]		BIT DEFAULT(1),
	[Email]			NVARCHAR(256)  UNIQUE NOT NULL,
	[Address]		NVARCHAR(256),
	[Phone]			VARCHAR(50),
	[JoinDate]		DATETIME DEFAULT(getdate()),
	[StatusId]		VARCHAR(50) NOT NULL DEFAULT('enable') -- trạng thái của tài khoản, tham chiếu tới MstStatus.
)
GO
CREATE TABLE [dbo].[LogSystem]/*Table 4*/
(
	[LogId]	INT IDENTITY(1,1)NOT NULL, -- mã của log
	[LogName]	NVARCHAR(50) NOT NULL, --Ví dụ: login, insert, edit, delete.
	[LogForTable] -- bảng bị ảnh hưởng sau thao tác.
	[LogDate] DATETIME DEFAULT(getdate()), -- thời gian của thao tác.
)
GO
CREATE TABLE [dbo].[Category]/*Table 5*/
(
	[CategoryId]	INT IDENTITY(1,1)NOT NULL, --id của danh mục
	[CategoryName]	NVARCHAR(50) NOT NULL, --danh mục chính: mực máy in, máy văn phòng, máy tính, laptop...
	[CategoryLink]	NVARCHAR(100) NOT NULL -- đường dẫn của danh mục (do tính đa dạng của sản phẩm, nên có thể sẽ dẫn đến các trang khác nhau)
)
GO
CREATE TABLE [dbo].[SubCategory]/*Table 6*/
(
	SubCategoryId	INT IDENTITY(1,1),-- id của danh mục con
	CategoryId		INT, -- mã tham chiếu tới danh mục chính
	SubCategoryName NVARCHAR(245) -- tên danh mục con: ví dụ danh mục chính là máy văn phòng: máy photocopy,máy fax, máy hủy tài liệu...
)
GO
/*Thêm field đã duyệt, hoặc đã đọc (ViewStatus) cho bảng Bill, News, Comment, Question...*/
CREATE TABLE [dbo].[Product]/*Table 7*/
(
	ProductId	INT IDENTITY(1,1), -- id của sản phẩm
	ProductName		INT, -- tên sản phẩm
	SubCategoryId NVARCHAR(245), -- thuộc danh mục con nào	
	ViewQuantity, -- số lượt xem
	Price, -- vnd - theo quy định nhà nước VN, chỉ niêm yết giá VND
	Quantity, -- 0->n, số lượng trong kho.
	Quality -- new/old; nguyên tem/xách tay; 
	MadeBy, -- xuất xứ
	VatTax, -- 0->100% 
	Warranty -- number(month)
	TransportCost -- vnd/km
	ViewOption -- daily, feature, new, promotion
	SubDescription -- miêu tả ngắn gọn về sản phẩm (hiển thị trang products)
	Description -- miêu tả thêm (hiển thị trang details - có thể là cấu hình của sản phẩm)
	CreateDate	datetime default(getdate()),-- ngày đăng sản phẩm
	Status -- trạng thái của sản phẩm: delete, enable, disable.
)
GO
CREATE TABLE [dbo].[ProductImages]/*Table 8*/
(	
	ProductId	INT, -- mã sản phẩm cần thêm ảnh.
	ImageName, -- tên ảnh
	ImageUrl, -- đường dẫn tới thư mục ảnh
	ImageIndex, -- vị trí ảnh thumb của sản phẩm 1,2,3,4,5,6
	CreateDate	datetime default(getdate()),
)
GO
CREATE TABLE [dbo].[Advertise]/*Table 9*/
(	
	AdvertiseId	INT, -- mã sản phẩm cần thêm ảnh.
	AdvertiseName, -- tên ảnh
	AdvertiseLink, -- đường dẫn liên kết quảng cáo
	ImageURL, -- đường dẫn tới thư mục ảnh
	AdvertisePostion -- left: 1,3,5,7 // righ: 2,4,6,8
	CreateDate	datetime default(getdate()),
	Status -- trạng thái của quảng cáo: delete, enable, disable.
)
GO
CREATE TABLE [dbo].[Policy]/*Table 10*/
(	
	PolicyId	INT, -- mã chính sách tự tăng.
	PolicyType, -- chính sách bảo hành, chính sách ưu đãi, chính sách vận chuyển...
	PolicyContent, -- nội dung của chính sách
	Status -- trạng thái của chính sách: delete, enable, disable.
	CreateDate	datetime default(getdate()),
)
GO
CREATE TABLE [dbo].[Interface]/*Table 11*/
(
	InterfaceId	INT, -- mã giao diện.
	InterfaceType, -- kiểu giao diện: header, footer, banner, logo, leftpic, rightpic 
	ImageURL, -- ảnh của giao diện.
	InterfaceContent -- nội dung text trên giao diện, ví dụ: footer.
)
