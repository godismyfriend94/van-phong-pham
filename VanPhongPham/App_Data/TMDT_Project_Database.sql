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
	[GroupId]		NVARCHAR(256)  NOT NULL,
	[GroupName]		NVARCHAR(256)  NOT NULL,
)
/*-------------------------------------------------*/
GO
/* Chứa các trạng thái của các row để hỗ trợ xử lý nghiệp vụ.
	Bảng này giá trị cố định, ko cần quản lý.
	deleted, readed, enable, disable, pending...*/
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[MstBillStatus] /*Table 2 - Master Status - dữ liệu bảng này được cố định.*/
(
	[StatusId]		NVARCHAR(256)  NOT NULL,
	[StatusName]	NVARCHAR(256)  NOT NULL,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[MstStatus] /*Table 2 - Master Status - dữ liệu bảng này được cố định. delete, enable, disable*/
(
	[StatusId]		NVARCHAR(256)  NOT NULL,
	[StatusName]	NVARCHAR(256)  NOT NULL,
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[TblUser] /*Table 3*/
(
	[UserId]		INT IDENTITY(1,1)  NOT NULL,
	[GroupId]		NVARCHAR(256) NOT NULL, -- tham chiếu tới bảng MstGroup
	[UserName]		VARCHAR(256) UNIQUE  NOT NULL,
	[Password]		VARCHAR(256)  NOT NULL,
	[FullName]		NVARCHAR(256),
	[DateOfBirth]	DATETIME DEFAULT(getdate()),
	[Gender]		BIT DEFAULT(1),
	[Email]			NVARCHAR(256)  UNIQUE,
	[Address]		NVARCHAR(256),
	[Phone]			VARCHAR(50),
	[JoinDate]		DATETIME DEFAULT(getdate()),
	[RegisterCode]		NVARCHAR(256),
	[StatusId]		NVARCHAR(256) DEFAULT('stt1')-- trạng thái của tài khoản, tham chiếu tới MstAccountStatus.
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[LogSystem]/*Table 4*/
(
	[LogId]	INT IDENTITY(1,1) NOT NULL, -- mã của log
	[LogName]	NVARCHAR(256), --Ví dụ: login, insert, edit, delete.
	[LogForTable] NVARCHAR(256),-- bảng bị ảnh hưởng sau thao tác.
	[LogContent] NVARCHAR(max),
	[LogDate] DATETIME DEFAULT(getdate()), -- thời gian của thao tác.
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Category]/*Table 5*/ -- danh mục chính.
(
	[CategoryId]	INT IDENTITY(1,1)  NOT NULL, --id của danh mục
	[CategoryName]	NVARCHAR(256), --danh mục chính: mực máy in, máy văn phòng, máy tính, laptop...
	CategoryImage	NVARCHAR(256),
	[Description]	NVARCHAR(max),
	StatusId NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[SubCategory]/*Table 6*/
(
	SubCategoryId	INT IDENTITY(1,1)  NOT NULL,-- id của danh mục con 
	CategoryId		INT, -- mã tham chiếu tới danh mục chính
	SubCategoryName NVARCHAR(256), -- tên danh mục con: ví dụ danh mục chính là máy văn phòng: máy photocopy,máy fax, máy hủy tài liệu...
	SubCategoryImage	NVARCHAR(256),
	Parent			INT,
	Description		NVARCHAR(max),
	StatusId NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
/*
	row 1: id 1 hp -------- id: 1 parent null
	row 2: id 2 hp pro seri -------- parent: 1
*/

GO
/*Thêm field đã duyệt, hoặc đã đọc (ViewStatus) cho bảng Bill, News, Comment, Question...*/
CREATE TABLE [dbo].[Product]/*Table 7*/
(
	ProductId	INT IDENTITY(1,1)  NOT NULL, -- id của sản phẩm
	ProductName	NVARCHAR(256), -- tên sản phẩm
	SubCategoryId INT NOT NULL, -- thuộc danh mục con nào	
	ViewQuantity INT, -- số lượt xem
	Thumbnails	NVARCHAR(256), -- ảnh chính của sản phẩm
	Price FLOAT, -- vnd - theo quy định nhà nước VN, chỉ niêm yết giá VND
	Promotion		FLOAT DEFAULT(0) CHECK ([Promotion] >= 0 and [Promotion] <= 100), -- là % khuyến mại, nếu = 0 là ko khuyến mại.
	Quantity INT, -- 0->n, số lượng trong kho.
	Quality NVARCHAR(256) DEFAULT('new'), -- new/old; nguyên tem/xách tay; 
	MadeBy NVARCHAR(256), -- xuất xứ
	VatTax FLOAT, -- 0->100% 
	Warranty FLOAT, -- number(month)
	TransportCost FLOAT DEFAULT(0), -- vnd/km
	ViewOption NVARCHAR(256), -- daily, feature, new, promotion, slide
	SubDescription NVARCHAR(256), -- miêu tả ngắn gọn về sản phẩm (hiển thị trang products)
	Description NVARCHAR(max), -- miêu tả thêm (hiển thị trang details - có thể là cấu hình của sản phẩm)
	CreateDate	DATETIME DEFAULT(getdate()),-- ngày đăng sản phẩm
	StatusId NVARCHAR(256) DEFAULT('stt1'),-- trạng thái của sản phẩm: delete, enable, disable.- tham chiếu tới bảng MstProductStatus
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[ProductImage]/*Table 8*/ -- chứa các ảnh thumbnais của sản phẩm (mỗi sản phẩm tối đa 8 ảnh thumbnail)
(	
	ImageId		INT IDENTITY(1,1)  NOT NULL,
	ProductId INT  NOT NULL, -- mã sản phẩm cần thêm ảnh.
	ImageName NVARCHAR(256), -- tên ảnh
	ImageUrl NVARCHAR(256), -- đường dẫn tới thư mục ảnh
	ImageIndex INT, -- vị trí ảnh thumb của sản phẩm 1,2,3,4,5,6
	CreateDate	DATETIME DEFAULT(getdate()),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Bill] /*Table 15*/ -- Hóa đơn
(
	[BillId]		INT IDENTITY(1,1)  NOT NULL,
	[UserId]		INT  NOT NULL,
	[ReceiverName]	NVARCHAR(256),
	[DeliveryTime]	DATETIME,
	[DeliveryAddress] NVARCHAR(512),
	[ReceiverEmail]	NVARCHAR(256), --thông báo nếu cần
	[ReceiverTel]	NVARCHAR(50), --có thể liên lạc khi giao hàng.
	[ReceiverFax]	NVARCHAR(50),
	[Note]			NVARCHAR(512), --ghi chú thêm để giao hàng thuận tiện hơn
	[CreateDate]	DATETIME DEFAULT(getdate()),
	[StatusId]		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[BillDetail] /*Table 16*/ -- chi tiết đơn hàng
(
	[BillId]		INT  NOT NULL,
	[ProductId]		INT  NOT NULL,	
	[Quantity]		INT,
	--Primary key([BillId],[ProductId]),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Advertise]/*Table 9*/ -- Chứa các ảnh, đường dẫn, vị trí xuất hiện của quảng cáo.
(
	AdvertiseId	INT IDENTITY(1,1)  NOT NULL, -- mã sản phẩm cần thêm ảnh.
	AdvertiseTyle NVARCHAR(256), -- loại quảng cáo - slide, static
	AdvertiseName NVARCHAR(256), -- tên ảnh
	AdvertiseLink NVARCHAR(256), -- đường dẫn liên kết quảng cáo
	ImageURL NVARCHAR(256), -- đường dẫn tới thư mục ảnh
	AdvertisePostion INT,-- left: 1,3,5,7 // righ: 2,4,6,8
	CreateDate	DATETIME DEFAULT(getdate()),
	StatusId NVARCHAR(256) DEFAULT('stt1'), -- trạng thái của quảng cáo: delete, enable, disable.
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Policy]/*Table 10*/ -- các chính sách về bán hàng, dịch vụ...
(	
	PolicyId INT IDENTITY(1,1)  NOT NULL, -- mã chính sách tự tăng.
	PolicyType NVARCHAR(256), -- chính sách bảo hành, chính sách ưu đãi, chính sách vận chuyển...
	PolicyContent NVARCHAR(max), -- nội dung của chính sách
	StatusId NVARCHAR(256) DEFAULT('stt1'), -- trạng thái của chính sách: delete, enable, disable.
	CreateDate	DATETIME DEFAULT(getdate()),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[InterfaceType]/*Table 11*/ -- Chứa các kiểu về giao diện.
(
	TypeId	NVARCHAR(256)  NOT NULL, -- mã kiểu giao diện: menu, header, footer, banner, logo, leftpic, rightpic, slide
	TypeName NVARCHAR(256), -- tên kiểu giao diện - miêu tả thêm về kiểu giao diện.
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[TblInterface]/*Table 11*/ -- Chứa các thông tin về giao diện.
(
	InterfaceId	INT IDENTITY(1,1)  NOT NULL, -- mã giao diện.
	TypeId NVARCHAR(256) NOT NULL, -- mã kiểu giao diện
	InterfaceLink	NVARCHAR(256), -- đường dẫn của giao diện (menu)
	ImageURL NVARCHAR(256), -- ảnh của giao diện. /*nếu là footer, header thì ko cần image*/
	InterfaceContent NVARCHAR(512), -- nội dung text trên giao diện, ví dụ: footer.
	StatusId NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[Partner] /*Table 12*/ -- Chứa danh sách các đối tác làm ăn.
(
	[PartnerId]		INT IDENTITY(1,1)  NOT NULL,
	[PartnerName]	NVARCHAR(256),
	[Address]		NVARCHAR(256),
	[City]			NVARCHAR(256),
	[Phone]			VARCHAR(50),
	[Link]			NVARCHAR(256),
	[Email]			NVARCHAR(256),
	[JoinDate]		DATETIME DEFAULT(getdate()),
	StatusId		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[QuoteProduct] /*Table 12*/ -- Chứa danh sách báo giá.
(
	[QuoteId]		INT IDENTITY(1, 1)  NOT NULL,
	QuoteProductName		NVARCHAR(256),
	[QuoteLink]		NVARCHAR(256),
	[Description]	NVARCHAR(512),
	[CreateDate]	DATETIME DEFAULT(getdate()),
	StatusId		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
CREATE TABLE [dbo].[TblService] /*Table 12*/ -- Chứa các dịch vụ của công ty.
(
	[ServiceId]		INT IDENTITY(1, 1)  NOT NULL,
	[ServiceName]	NVARCHAR(256),
	[ServiceLink]	NVARCHAR(256),
	[Description]	NVARCHAR(512),
	[CreateDate]	DATETIME DEFAULT(getdate()),
	StatusId		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
-- Create table FAQ
GO
CREATE TABLE [dbo].[FAQs] /*Table 19*/
(
	[FaqId]			INT IDENTITY(1,1)  NOT NULL,
	[Question]		NVARCHAR(512) unique,
	[Answer]		NVARCHAR(512),
	[FaqIndex]		INT DEFAULT(0),
	StatusId		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
-- Create table Comment
CREATE TABLE [dbo].[Comment] /*Table 20*/
(
	[CommentId]		INT IDENTITY(1,1)  NOT NULL,
	[ProductId]		INT,
	[CommentName]			VARCHAR(256),
	[Email]			NVARCHAR(256),
	[CommentContent]		NVARCHAR(512),
	[Rate]			FLOAT,
	[CreateDate]	DATETIME default(getdate()),
	StatusId		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
-- Create table [TblContact]
CREATE TABLE [dbo].[TblContact] /*Table 20*/
(
	[ContactId]		INT IDENTITY(1,1)  NOT NULL,
	[Creator]		VARCHAR(256),
	[Email]			NVARCHAR(256),
	[Phone]			NVARCHAR(256),
	[Company]		NVARCHAR(256),
	[ContactContent]	NVARCHAR(max),
	[CreateDate]	DATETIME default(getdate()),
	StatusId		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
-- Create table [Support]
CREATE TABLE [dbo].[Support] /*Table 20*/
(
	[SupportId]		INT IDENTITY(1,1),
	[SupportName]	NVARCHAR(256),
	[SupportLink]	NVARCHAR(256),
	[SupportImage]	NVARCHAR(256),
	StatusId		NVARCHAR(256) DEFAULT('stt1'),
)
/*-------------------------------------------------*/
GO
-- Create table [Support]
CREATE TABLE [dbo].[Supplier] /*Table 20*/
(
	[SupplierId]		INT IDENTITY(1,1),
	[SupplierName]		NVARCHAR(256),
	[SupplierLink]		NVARCHAR(256),
	[SupplierImage]		NVARCHAR(256),
	StatusId			NVARCHAR(256) DEFAULT('stt1'),
)

/*/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\ Add PRIMARY KEY /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
GO
Alter Table [dbo].[MstGroup] Add Constraint MstGroup_PK Primary key ([GroupId])
GO
Alter Table [dbo].[MstBillStatus] Add Constraint MstBillStatus_PK Primary key ([StatusId])
GO
Alter Table [dbo].[MstStatus] Add Constraint MstStatus_PK Primary key ([StatusId])
GO
Alter Table [dbo].[TblUser] Add Constraint	TblUser_PK Primary key ([UserId])
GO
Alter Table [dbo].[LogSystem] Add Constraint LogSystem_PK Primary key ([LogId])
GO
Alter Table [dbo].[Category] Add Constraint Category_PK Primary key ([CategoryId])
GO
Alter Table [dbo].[SubCategory] Add Constraint SubCategory_PK Primary key (SubCategoryId)
GO
Alter Table [dbo].[Product] Add Constraint Product_PK Primary key (ProductId)
GO
Alter Table [dbo].[ProductImage] Add Constraint ProductImages_PK Primary key (ImageId)
GO
Alter Table [dbo].[Bill] Add Constraint Bill_PK Primary key ([BillId])
GO
Alter Table [dbo].[BillDetail] Add Constraint BillDetail_PK Primary key ([BillId],[ProductId])
GO
Alter Table [dbo].[Advertise] Add Constraint Advertise_PK Primary key (AdvertiseId)
GO
Alter Table [dbo].[Policy] Add Constraint Policy_PK Primary key (PolicyId)
GO
Alter Table [dbo].[InterfaceType] Add Constraint InterfaceType_PK Primary key (TypeId)
GO
Alter Table [dbo].[TblInterface] Add Constraint TblInterface_PK Primary key (InterfaceId)
GO
Alter Table [dbo].[Partner] Add Constraint Partner_PK Primary key ([PartnerId])
GO
Alter Table [dbo].[QuoteProduct] Add Constraint QuoteProduct_PK Primary key ([QuoteId])
GO
Alter Table [dbo].[TblService] Add Constraint TblService_PK Primary key ([ServiceId])
GO
Alter Table [dbo].[FAQs] Add Constraint FAQs_PK Primary key ([FaqId])
GO
Alter Table [dbo].[Comment] Add Constraint Comment_PK Primary key ([CommentId])
GO
Alter Table [dbo].[Support] Add Constraint Support_PK Primary key ([SupportId])
GO
Alter Table [dbo].[TblContact] Add Constraint TblContact_PK Primary key ([ContactId])
GO
/*/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\ Add FOREIGN KEY /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
GO
Alter Table [dbo].[TblUser] Add Constraint TblUser_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
GO
Alter Table [dbo].[TblUser] Add Constraint TblUser_Group_FK Foreign key ([GroupId]) References [MstGroup]([GroupId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Category] Add Constraint Category_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[SubCategory] Add Constraint SubCategory_FK Foreign key (CategoryId) References [Category](CategoryId)
GO
Alter Table [dbo].[SubCategory] Add Constraint SubCategory_Status_FK Foreign key ([StatusId]) References [MstStatus](StatusId)
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Product] Add Constraint Product_SubCategory_FK Foreign key (SubCategoryId) References [SubCategory](SubCategoryId)
GO
Alter Table [dbo].[Product] Add Constraint Product_Status_FK Foreign key (StatusId) References [MstStatus](StatusId)
/*-------------------------------------------------*/
GO
Alter Table [dbo].[ProductImage] Add Constraint ProductImages_FK Foreign key (ProductId) References [Product](ProductId)
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Bill] Add Constraint Bill_Status_FK Foreign key ([StatusId]) References [MstBillStatus]([StatusId])
GO
Alter Table [dbo].[Bill] Add Constraint Bill_User_FK Foreign key ([UserId]) References [TblUser]([UserId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[BillDetail] Add Constraint BillDetail_FK Foreign key ([ProductId]) References [Product]([ProductId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Advertise] Add Constraint Advertise_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Policy] Add Constraint Policy_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[TblInterface] Add Constraint TblInterface_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
GO
Alter Table [dbo].[TblInterface] Add Constraint TblInterface_Type_FK Foreign key (TypeId) References [InterfaceType](TypeId)
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Partner] Add Constraint Partner_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[QuoteProduct] Add Constraint QuoteProduct_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[TblService] Add Constraint TblService_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[FAQs] Add Constraint FAQs_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Comment] Add Constraint Comment_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
GO
Alter Table [dbo].[Support] Add Constraint Support_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
GO
Alter Table [dbo].[TblContact] Add Constraint TblContact_Status_FK Foreign key ([StatusId]) References [MstStatus]([StatusId])
/*-------------------------------------------------*/
/*/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\ Insert dữ liệu cho các bảng Status - cố định. /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\*/
INSERT INTO [MstGroup]([GroupId],[GroupName]) VALUES('g1','User')
GO
INSERT INTO [MstGroup]([GroupId],[GroupName]) VALUES('g2','Moderator')
GO
INSERT INTO [MstGroup]([GroupId],[GroupName]) VALUES('g3','Super Moderator')
GO
INSERT INTO [MstGroup]([GroupId],[GroupName]) VALUES('g4','Administrator')
GO
INSERT INTO [MstGroup]([GroupId],[GroupName]) VALUES('g5','Super Administrator')
/*-------------------------------------------------*/
GO
INSERT INTO [MstStatus]([StatusId],[StatusName]) VALUES('stt1','enable')
GO
INSERT INTO [MstStatus]([StatusId],[StatusName]) VALUES('stt2','disable')
GO
INSERT INTO [MstStatus]([StatusId],[StatusName]) VALUES('stt3','delete')
/*-------------------------------------------------*/
GO
INSERT INTO [MstBillStatus]([StatusId],[StatusName]) VALUES('stt1','pending')
GO
INSERT INTO [MstBillStatus]([StatusId],[StatusName]) VALUES('stt2','paid')
GO
INSERT INTO [MstBillStatus]([StatusId],[StatusName]) VALUES('stt3','delete')
GO
INSERT INTO [MstBillStatus]([StatusId],[StatusName]) VALUES('stt4','bkpaid')
GO
INSERT INTO [TblUser]
(
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[Gender],
	[Email],
	[Address],
	[Phone],
	RegisterCode,
	[StatusId]
)
VALUES('g5','adminvpp','21a89653899dd66ba61ef7d5dbed128e', N'Trưởng ban quản trị website',1,'vinhtruongcong@gmail.com',N'Hà nội','0947809802','','stt1')
--update TblUser set Password = '21a89653899dd66ba61ef7d5dbed128e' where UserId= 1

--Select * from TblUser
INSERT INTO [TblUser]
(
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[Gender],
	[Email],
	[Address],
	[Phone],
	RegisterCode,
	[StatusId]
)
VALUES('g4','admin','88ccd19c90c2420bbd8661f471f2b29c', N'Quản trị website',1,'anztechpro2012@gmail.com',N'Hà nội','0947809802','','stt1')
