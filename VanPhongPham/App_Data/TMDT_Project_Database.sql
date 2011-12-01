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
	[GroupName]		NVARCHAR(256) NOT NULL,
	[GroupDesciption]	NVARCHAR(256) NOT NULL,
)
/*-------------------------------------------------*/
GO
/* Chứa các trạng thái của các row để hỗ trợ xử lý nghiệp vụ.
	Bảng này giá trị cố định, ko cần quản lý.
	deleted, readed, enable, disable, pending...
*/
CREATE TABLE [dbo].[MstAccountStatus] /*Table 2 - Master Status - dữ liệu bảng này được cố định.*/
(
	[StatusId]		INT IDENTITY(1,1) NOT NULL,
	[StatusName]	NVARCHAR(256) NOT NULL,
	[StatusDesciption]	NVARCHAR(256) NOT NULL,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[MstProductStatus] /*Table 2 - Master Status - dữ liệu bảng này được cố định.*/
(
	[StatusId]		INT IDENTITY(1,1) NOT NULL,
	[StatusName]	NVARCHAR(256) NOT NULL,
	[StatusDesciption]	NVARCHAR(256) NOT NULL,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[MstBillStatus] /*Table 2 - Master Status - dữ liệu bảng này được cố định.*/
(
	[StatusId]		INT IDENTITY(1,1) NOT NULL,
	[StatusName]	NVARCHAR(256) NOT NULL,
	[StatusDesciption]	NVARCHAR(256) NOT NULL,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[TblUser] /*Table 3*/
(
	[UserId]		INT IDENTITY(1,1) NOT NULL,
	[GroupId]		INT NOT NULL, -- tham chiếu tới bảng MstGroup
	[UserName]		VARCHAR(256) UNIQUE NOT NULL,
	[FullName]		NVARCHAR(256),
	[Password]		VARCHAR(256) NOT NULL,
	[DateOfBirth]	DATETIME DEFAULT(getdate()),
	[Gender]		BIT DEFAULT(1),
	[Email]			NVARCHAR(256)  UNIQUE NOT NULL,
	[Address]		NVARCHAR(256),
	[Phone]			VARCHAR(50),
	[JoinDate]		DATETIME DEFAULT(getdate()),
	[StatusId]		VARCHAR(50) NOT NULL DEFAULT('enable') -- trạng thái của tài khoản, tham chiếu tới MstStatus.
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[LogSystem]/*Table 4*/
(
	[LogId]	INT IDENTITY(1,1)NOT NULL, -- mã của log
	[LogName]	NVARCHAR(256) NOT NULL, --Ví dụ: login, insert, edit, delete.
	[LogForTable] NVARCHAR(256) NOT NULL,-- bảng bị ảnh hưởng sau thao tác.
	[LogDate] DATETIME DEFAULT(getdate()), -- thời gian của thao tác.
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Category]/*Table 5*/ -- danh mục chính.
(
	[CategoryId]	INT IDENTITY(1,1) NOT NULL, --id của danh mục
	[CategoryName]	NVARCHAR(256) NOT NULL, --danh mục chính: mực máy in, máy văn phòng, máy tính, laptop...
	[CategoryLink]	NVARCHAR(256) NOT NULL, -- đường dẫn của danh mục (do tính đa dạng của sản phẩm, nên có thể sẽ dẫn đến các trang khác nhau)
	[Description]	NVARCHAR(max),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[SubCategory]/*Table 6*/
(
	SubCategoryId	INT IDENTITY(1,1),-- id của danh mục con
	CategoryId		INT, -- mã tham chiếu tới danh mục chính
	SubCategoryName NVARCHAR(256), -- tên danh mục con: ví dụ danh mục chính là máy văn phòng: máy photocopy,máy fax, máy hủy tài liệu...
	[Description]	NVARCHAR(max),
)
/*-------------------------------------------------*/
GO
/*Thêm field đã duyệt, hoặc đã đọc (ViewStatus) cho bảng Bill, News, Comment, Question...*/
CREATE TABLE [dbo].[Product]/*Table 7*/
(
	ProductId	INT IDENTITY(1,1), -- id của sản phẩm
	ProductName	NVARCHAR(256), -- tên sản phẩm
	SubCategoryId NVARCHAR(256), -- thuộc danh mục con nào	
	ViewQuantity NVARCHAR(256), -- số lượt xem
	Price FLOAT, -- vnd - theo quy định nhà nước VN, chỉ niêm yết giá VND
	Quantity INT, -- 0->n, số lượng trong kho.
	Quality INT, -- new/old; nguyên tem/xách tay; 
	MadeBy NVARCHAR(256), -- xuất xứ
	VatTax FLOAT, -- 0->100% 
	Warranty FLOAT, -- number(month)
	TransportCost FLOAT, -- vnd/km
	ViewOption NVARCHAR(256), -- daily, feature, new, promotion
	SubDescription NVARCHAR(256), -- miêu tả ngắn gọn về sản phẩm (hiển thị trang products)
	Description NVARCHAR(max), -- miêu tả thêm (hiển thị trang details - có thể là cấu hình của sản phẩm)
	CreateDate	DATETIME DEFAULT(getdate()),-- ngày đăng sản phẩm
	StatusId INT,-- trạng thái của sản phẩm: delete, enable, disable.- tham chiếu tới bảng MstProductStatus
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[ProductImages]/*Table 8*/ -- chứa các ảnh thumbnais của sản phẩm (mỗi sản phẩm tối đa 8 ảnh thumbnail)
(	
	ProductId INT IDENTITY(1,1), -- mã sản phẩm cần thêm ảnh.
	ImageName NVARCHAR(256), -- tên ảnh
	ImageUrl NVARCHAR(256), -- đường dẫn tới thư mục ảnh
	ImageIndex INT, -- vị trí ảnh thumb của sản phẩm 1,2,3,4,5,6
	CreateDate	DATETIME DEFAULT(getdate()),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Bill] /*Table 15*/ -- Hóa đơn
(
	[BillId]		INT IDENTITY(1,1) not null,
	[UserId]		INT not null,
	[ReceiverName]	NVARCHAR(256),
	[DeliveryTime]	DATETIME not null,
	[DeliveryAddress] NVARCHAR(512),
	[ReceiverEmail]	NVARCHAR(256), --thông báo nếu cần
	[ReceiverTel]	NVARCHAR(50), --có thể liên lạc khi giao hàng.
	[ReceiverFax]	NVARCHAR(50),
	[Note]			NVARCHAR(512), --ghi chú thêm để giao hàng thuận tiện hơn
	[CreateDate]	DATETIME DEFAULT(getdate()),
	[StatusId]		INT DEFAULT(1),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[BillDetail] /*Table 16*/ -- chi tiết đơn hàng
(
	[BillId]		INT not null,
	[ProductId]		NVARCHAR(20) not null,	
	[Quantity]		INT,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Advertise]/*Table 9*/ -- Chứa các ảnh, đường dẫn, vị trí xuất hiện của quảng cáo.
(	
	AdvertiseId	INT IDENTITY(1,1), -- mã sản phẩm cần thêm ảnh.
	AdvertiseName NVARCHAR(256), -- tên ảnh
	AdvertiseLink NVARCHAR(256), -- đường dẫn liên kết quảng cáo
	ImageURL NVARCHAR(256), -- đường dẫn tới thư mục ảnh
	AdvertisePostion INT,-- left: 1,3,5,7 // righ: 2,4,6,8
	CreateDate	DATETIME DEFAULT(getdate()),
	StatusId INT, -- trạng thái của quảng cáo: delete, enable, disable.
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Policy]/*Table 10*/ -- các chính sách về bán hàng, dịch vụ...
(	
	PolicyId INT IDENTITY(1,1), -- mã chính sách tự tăng.
	PolicyType NVARCHAR(256), -- chính sách bảo hành, chính sách ưu đãi, chính sách vận chuyển...
	PolicyContent NVARCHAR(max), -- nội dung của chính sách
	StatusId INT, -- trạng thái của chính sách: delete, enable, disable.
	CreateDate	DATETIME DEFAULT(getdate()),
	
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Interface]/*Table 11*/ -- Chứa các thông tin về giao diện.
(
	InterfaceId	INT IDENTITY(1,1), -- mã giao diện.
	InterfaceType NVARCHAR(256), -- kiểu giao diện: header, footer, banner, logo, leftpic, rightpic 
	ImageURL NVARCHAR(256), -- ảnh của giao diện. /*nếu là footer, header thì ko cần image*/
	InterfaceContent NVARCHAR(256), -- nội dung text trên giao diện, ví dụ: footer.
	StatusId INT,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Partner] /*Table 12*/ -- Chứa danh sách các đối tác làm ăn.
(
	[PartnerId]		INT IDENTITY(1,1),
	[PartnerName]	NVARCHAR(256),
	[Address]		NVARCHAR(256),
	[City]			NVARCHAR(256),
	[Phone]			VARCHAR(50),
	[Link]			NVARCHAR(256),
	[Email]			NVARCHAR(256),
	[JoinDate]		DATETIME DEFAULT(getdate()),
	StatusId INT,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[QuoteProduct] /*Table 12*/ -- Chứa danh sách báo giá.
(
	[QuoteId]		INT IDENTITY(1, 1),
	[QuoteName]		NVARCHAR(256),
	[QuoteLink]		NVARCHAR(256),
	[Description]	NVARCHAR(512),
	[CreateDate]	DATETIME DEFAULT(getdate()),
	StatusId INT,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Service] /*Table 12*/ -- Chứa danh sách báo giá.
(
	[ServiceId]		INT IDENTITY(1, 1),
	[ServiceName]	NVARCHAR(256),
	[ServiceLink]	NVARCHAR(256),
	[Description]	NVARCHAR(512),
	[CreateDate]	DATETIME DEFAULT(getdate()),
	StatusId INT,
)
/*-------------------------------------------------*/
-- Create table FAQ
GO
CREATE TABLE [dbo].[FAQs] /*Table 19*/
(
	[FaqId]			INT IDENTITY(1,1) NOT NULL,
	[Question]		NVARCHAR(512) unique NOT NULL,
	[Answer]		NVARCHAR(512) NOT NULL,
	[Index]			INT
)
/*-------------------------------------------------*/
GO
-- Create table Comment
CREATE TABLE [dbo].[Comment] /*Table 20*/
(
	[CommentId]		INT IDENTITY(1,1) NOT NULL,
	[ProductId]		VARCHAR(20) NOT NULL,
	[Name]			VARCHAR(50) NOT NULL,
	[Email]			nvarchar(200),
	[Content]		NVARCHAR(200) NOT NULL,
	[Rate]			float,
	[CreateDate]	DATETIME default(getdate()) NOT NULL
)