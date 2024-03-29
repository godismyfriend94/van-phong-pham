GO
USE TMDT_Project_Database
GO
/*==================================== MstGroup Table Store Procedure ======================================*/
CREATE PROCEDURE GetAllGroup
AS SET NOCOUNT ON
SELECT 
	[GroupId],
	[GroupName]
FROM [MstGroup]
GO
CREATE PROCEDURE GetGroupById
@GroupId INT
AS SET NOCOUNT ON
SELECT 
	[GroupId],
	[GroupName]
FROM [MstGroup]
WHERE GroupId = @GroupId
GO
/*==================================== [MstBillStatus] Table Store Procedure ======================================*/
CREATE PROCEDURE GetAllBillStatus
AS SET NOCOUNT ON
SELECT 
	[StatusId],
	[StatusName]
FROM [MstBillStatus]
GO
CREATE PROCEDURE GetBillStatusById
@StatusId NVARCHAR(256)
AS SET NOCOUNT ON
SELECT 
	[StatusId],
	[StatusName]
FROM [MstBillStatus]
WHERE StatusId = @StatusId
GO
/*==================================== [MstStatus] Table Store Procedure ======================================*/
CREATE PROCEDURE GetAllStatus
AS SET NOCOUNT ON
SELECT
	[StatusId],
	[StatusName]
FROM [MstStatus]
GO
CREATE PROCEDURE GetStatusById
@StatusId NVARCHAR(256)
AS SET NOCOUNT ON
SELECT 
	[StatusId],
	[StatusName]
FROM [MstStatus]
WHERE StatusId = @StatusId
GO
/*==================================== TblUser Table Store Procedure ======================================*/
CREATE PROCEDURE GetAllUser
AS SET NOCOUNT ON
SELECT 
	[UserId],
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[JoinDate],
	[RegisterCode],
	[StatusId]
FROM [TblUser]
------------------------------------
GO
CREATE PROC GetUserByGroup
@GroupId NVARCHAR(256)
AS SET NOCOUNT ON
SELECT 
	[UserId],
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[JoinDate],
	[RegisterCode],
	[StatusId]
FROM [TblUser]
WHERE [GroupId] = @GroupId
------------------------------------
GO
CREATE PROC SearchUser
@UserName varchar(256)
AS SET NOCOUNT ON
SELECT 
	[UserId],
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[JoinDate],
	[RegisterCode],
	[StatusId]
FROM [TblUser] WHERE UserName Like '%'+ @UserName +'%'
GO
--------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE InsertUser
	@GroupId		NVARCHAR(256),
	@UserName		VARCHAR(256),
	@Password		VARCHAR(256),
	@FullName		NVARCHAR(256),
	@DateOfBirth	DATETIME,
	@Gender			BIT,
	@Email			NVARCHAR(256),
	@Address		NVARCHAR(256),
	@Phone			VARCHAR(50),
	@RegisterCode		VARCHAR(256),
	@StatusId		NVARCHAR(256)
AS 
INSERT INTO [TblUser] (
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[RegisterCode],
	[StatusId]	
)
VALUES (
	@GroupId,
	@UserName,
	@Password,
	@FullName,
	@DateOfBirth,
	@Gender,
	@Email,
	@Address,
	@Phone,
	@RegisterCode,
	@StatusId
)
GO
--------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE UpdateUserById
	@UserId			INT,
	@GroupId		NVARCHAR(256),
	@UserName		VARCHAR(256),
	@Password		VARCHAR(256),
	@FullName		NVARCHAR(256),
	@DateOfBirth	DATETIME,
	@Gender			BIT,
	@Email			NVARCHAR(256),
	@Address		NVARCHAR(256),
	@Phone			VARCHAR(50),
	@RegisterCode		VARCHAR(256),
	@StatusId		NVARCHAR(256)
AS 
UPDATE [TblUser]
SET
	GroupId=@GroupId,
	UserName=@UserName,
	Password=@Password,
	FullName=@FullName,
	DateOfBirth=@DateOfBirth,
	Gender=@Gender,
	Email=@Email,
	Address=@Address,
	Phone=@Phone,
	RegisterCode = @RegisterCode,
	StatusId=@StatusId
WHERE UserId = @UserId
--------------------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE ChangePassword
	@UserName		varchar(256),
	@Password		varchar(256)
AS 
UPDATE [TblUser]
SET	Password = @Password
WHERE UserName = @UserName
--------------------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE EditProfile
	@UserName		VARCHAR(256),
	@FullName		NVARCHAR(256),
	@DateOfBirth	DATETIME,
	@Gender			BIT,
	@Email			NVARCHAR(256),
	@Address		NVARCHAR(256),
	@Phone			VARCHAR(50)
AS
UPDATE [TblUser]
SET
	FullName = @FullName,
	DateOfBirth = @DateOfBirth,
	Gender = @Gender,
	Email = @Email,
	Address = @Address,
	Phone = @Phone
WHERE UserName = @UserName
--------------------------------------------------------------------------------------------------------------
Go
CREATE PROCEDURE DeleteUserById
	@UserId INT
AS 
DELETE FROM [TblUser] 
WHERE UserId = @UserId
--------------------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE GetUserByUserName
	@UserName		VARCHAR(256)
AS SET NOCOUNT ON
SELECT 
	[UserId],
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[JoinDate],
	RegisterCode,
	[StatusId]
FROM [TblUser]
WHERE UserName = @UserName
--------------------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE GetUserByUserNameAndPassword
	@UserName		VARCHAR(256),
	@Password		VARCHAR(256)
AS SET NOCOUNT ON
SELECT 
	[UserId],
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[JoinDate],
	RegisterCode,
	[StatusId]
FROM [TblUser]
WHERE UserName = @UserName AND Password = @Password
--------------------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE GetUserByEmail
	@Email	nvarchar(256)
AS SET NOCOUNT ON
SELECT 
	[UserId],
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[JoinDate],
	RegisterCode,
	[StatusId]
FROM [TblUser]
WHERE Email like @Email
--------------------------------------------------------------------------------------------------------------
GO
CREATE PROC GetUserById
	@UserId		VARCHAR(256)
AS SET NOCOUNT ON
SELECT 
	[UserId],
	[GroupId],
	[UserName],
	[Password],
	[FullName],
	[DateOfBirth],
	[Gender],
	[Email],
	[Address],
	[Phone]	,
	[JoinDate],
	RegisterCode,
	[StatusId]
FROM [TblUser]
WHERE UserId = @UserId
/*==============================================CREATE PROCEDURE FOR Log TABLE===============================================*/
GO
CREATE PROCEDURE GetAllLog
AS SET NOCOUNT ON
SELECT 
	LogId,
	LogName,
	LogForTable,
	LogContent,
	LogDate
FROM LogSystem
-------------------------------------------
GO
CREATE PROCEDURE GetLogById
@LogId INT
AS SET NOCOUNT ON
SELECT 
	LogId,
	LogName,
	LogForTable,
	LogContent,
	LogDate
FROM LogSystem
WHERE LogId = @LogId
-------------------------------------------
GO
CREATE PROCEDURE UpdateLog
	@LogId		INT,
	@LogName	NVARCHAR(256),
	@LogForTable NVARCHAR(256),
	@LogContent NVARCHAR(max)
AS
UPDATE [LogSystem] 
SET
	LogName=@LogName,
	LogForTable=@LogForTable,
	LogContent=@LogContent
WHERE LogId = @LogId
-------------------------------------------
GO
CREATE PROCEDURE InsertLog
	@LogName	NVARCHAR(256),
	@LogForTable NVARCHAR(256),
	@LogContent NVARCHAR(max)
AS
INSERT INTO [LogSystem]
(
	[LogName],
	[LogForTable],
	[LogContent]
)
VALUES
(
	@LogName,
	@LogForTable,
	@LogContent
)
--------------------------------------
Go
CREATE PROCEDURE DeleteLog
	@LogId INT
AS 
DELETE FROM [LogSystem] 
WHERE LogId = @LogId
/*==============================================CREATE PROCEDURE FOR [Category] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllCategory
AS SET NOCOUNT ON
SELECT 
	CategoryId,
	CategoryName,
	CategoryImage,
	Description,
	StatusId
FROM [Category]
-------------------------------------------
GO
CREATE PROCEDURE GetCategoryById
@CategoryId INT
AS SET NOCOUNT ON
SELECT
	CategoryId,
	CategoryName,
	CategoryImage,
	Description,
	StatusId
FROM [Category]
WHERE CategoryId = @CategoryId
-------------------------------------------
GO
CREATE PROCEDURE UpdateCategory
	@CategoryId	INT,
	@CategoryName	NVARCHAR(256),
	@CategoryImage	NVARCHAR(256),
	@Description	NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
UPDATE [Category] 
SET
	CategoryName=@CategoryName,
	CategoryImage = @CategoryImage,
	Description=@Description,
	StatusId=@StatusId
WHERE CategoryId = @CategoryId
-------------------------------------------
GO
CREATE PROCEDURE InsertCategory
	@CategoryName	NVARCHAR(256),
	@CategoryImage	NVARCHAR(256),
	@Description	NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
INSERT INTO Category
(
	CategoryName,
	CategoryImage,
	Description,
	StatusId
)
VALUES
(
	@CategoryName,
	@CategoryImage,
	@Description,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteCategory
	@CategoryId INT
AS 
DELETE FROM Category 
WHERE CategoryId = @CategoryId
/*==============================================CREATE PROCEDURE FOR [SubCategory] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllSubCategory
AS SET NOCOUNT ON
SELECT 
	SubCategoryId,
	CategoryId,
	SubCategoryName,
	SubCategoryImage,
	Parent,
	Description,
	StatusId
FROM [SubCategory]
-------------------------------------------
GO
CREATE PROCEDURE GetSubCategoryById
@SubCategoryId INT
AS SET NOCOUNT ON
SELECT
	SubCategoryId,
	CategoryId,
	SubCategoryName,
	SubCategoryImage,
	Parent,
	Description,
	StatusId
FROM [SubCategory]
WHERE SubCategoryId = @SubCategoryId
-------------------------------------------
GO
CREATE PROCEDURE GetSubCategoryByCategoryId
@CategoryId INT
AS SET NOCOUNT ON
SELECT
	SubCategoryId,
	CategoryId,
	SubCategoryName,
	SubCategoryImage,
	Parent,
	Description,
	StatusId
FROM [SubCategory]
WHERE CategoryId = @CategoryId
-------------------------------------------
GO
CREATE PROCEDURE UpdateSubCategory
	@SubCategoryId	INT,
	@CategoryId		INT,
	@SubCategoryName NVARCHAR(256),
	@SubCategoryImage NVARCHAR(256),
	@Parent			INT,
	@Description		NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
UPDATE [SubCategory] 
SET
	CategoryId=@CategoryId,
	SubCategoryName=@SubCategoryName,
	SubCategoryImage = @SubCategoryImage,
	Parent=@Parent,
	Description=@Description,
	StatusId=@StatusId
WHERE SubCategoryId = @SubCategoryId
-------------------------------------------
GO
CREATE PROCEDURE InsertSubCategory
	@CategoryId		INT,
	@SubCategoryName NVARCHAR(256),
	@SubCategoryImage NVARCHAR(256),
	@Parent			INT,
	@Description		NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
INSERT INTO SubCategory
(
	CategoryId,
	SubCategoryName,
	SubCategoryImage,
	Parent,
	Description,
	StatusId
)
VALUES
(
	@CategoryId,
	@SubCategoryName,
	@SubCategoryImage,
	@Parent,
	@Description,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteSubCategory
	@SubCategoryId INT
AS 
DELETE FROM SubCategory 
WHERE SubCategoryId = @SubCategoryId
/*==============================================CREATE PROCEDURE FOR Product TABLE===============================================*/
GO
CREATE PROCEDURE GetAllProduct
AS SET NOCOUNT ON
SELECT 
	ProductId,
	ProductName,
	SubCategoryId,
	ViewQuantity,
	Thumbnails,
	Price,
	Price - ((Price * Promotion)/100) AS PromotionPrice	,
	Promotion,
	Quantity,
	Quality,
	MadeBy,
	VatTax,
	Warranty,
	TransportCost,
	ViewOption,
	SubDescription,
	Description,
	CONVERT(VARCHAR(10),CreateDate, 103) As CreateDate,
	StatusId
FROM [Product]
-------------------------------------------
GO
CREATE PROCEDURE GetProductById
@ProductId INT
AS SET NOCOUNT ON
SELECT
	ProductId,
	ProductName,
	SubCategoryId,
	ViewQuantity,
	Thumbnails,
	Price,
	Price - ((Price * Promotion)/100) AS PromotionPrice	,
	Promotion,
	Quantity,
	Quality,
	MadeBy,
	VatTax,
	Warranty,
	TransportCost,
	ViewOption,
	SubDescription,
	Description,
	CONVERT(VARCHAR(10),CreateDate, 103) As CreateDate,
	StatusId
FROM [Product]
WHERE ProductId = @ProductId
-------------------------------------------
GO
CREATE PROCEDURE GetProductForSlide
	@ViewOption NVARCHAR(256)
AS SET NOCOUNT ON
SELECT TOP 5
	ProductId,
	ProductName,
	SubCategoryId,
	ViewQuantity,
	Thumbnails,
	Price,
	Price - ((Price * Promotion)/100) AS PromotionPrice	,
	Promotion,
	Quantity,
	Quality,
	MadeBy,
	VatTax,
	Warranty,
	TransportCost,
	ViewOption,
	SubDescription,
	Description,
	CONVERT(VARCHAR(10),CreateDate, 103) As CreateDate,
	StatusId
FROM [Product]
WHERE ViewOption = @ViewOption
-------------------------------------------
GO
CREATE PROCEDURE GetTop18NewProductByViewOption
	@ViewOption NVARCHAR(256)
AS SET NOCOUNT ON
SELECT TOP 18
	ProductId,
	ProductName,
	SubCategoryId,
	ViewQuantity,
	Thumbnails,
	Price, --	Price - ((Price * Promotion)/100) AS PromotionPrice	
	Price - ((Price * Promotion)/100) AS PromotionPrice	,
	Promotion,
	Quantity,
	Quality,
	MadeBy,
	VatTax,
	Warranty,
	TransportCost,
	ViewOption,
	SubDescription,
	Description,
	CONVERT(VARCHAR(10),CreateDate, 103) As CreateDate,
	StatusId
FROM Product
WHERE [StatusId] = 'stt1' AND ViewOption = @ViewOption
ORDER BY ProductId DESC
-------------------------------------------
GO
CREATE PROCEDURE GetTopView12Product
AS SET NOCOUNT ON
SELECT TOP 12
	ProductId,
	ProductName,
	SubCategoryId,
	ViewQuantity,
	Thumbnails,
	Price, --	Price - ((Price * Promotion)/100) AS PromotionPrice	
	Price - ((Price * Promotion)/100) AS PromotionPrice	,
	Promotion,
	Quantity,
	Quality,
	MadeBy,
	VatTax,
	Warranty,
	TransportCost,
	ViewOption,
	SubDescription,
	Description,
	CONVERT(VARCHAR(10),CreateDate, 103) As CreateDate,
	StatusId
FROM Product
WHERE [StatusId] = 'stt1'
ORDER BY ViewQuantity DESC
-------------------------------------------
GO
CREATE PROCEDURE GetProductOfCategory
	@SubCategoryId INT
AS SET NOCOUNT ON
SELECT
	ProductId,
	ProductName,
	SubCategoryId,
	ViewQuantity,
	Thumbnails,
	Price,
	Price - ((Price * Promotion)/100) AS PromotionPrice	,
	Promotion,
	Quantity,
	Quality,
	MadeBy,
	VatTax,
	Warranty,
	TransportCost,
	ViewOption,
	SubDescription,
	Description,
	CONVERT(VARCHAR(10),CreateDate, 103) As CreateDate,
	StatusId
FROM Product
WHERE [StatusId] = 'stt1' AND SubCategoryId=@SubCategoryId
ORDER BY ViewQuantity DESC
-------------------------------------------
GO
CREATE PROCEDURE UpdateProduct
	@ProductId	INT,
	@ProductName	NVARCHAR(256),
	@SubCategoryId INT,
	@ViewQuantity INT,
	@Thumbnails	NVARCHAR(256),
	@Price FLOAT,
	@Promotion		FLOAT,
	@Quantity INT,
	@Quality NVARCHAR(256),
	@MadeBy NVARCHAR(256),
	@VatTax FLOAT,
	@Warranty FLOAT,
	@TransportCost FLOAT,
	@ViewOption NVARCHAR(256),
	@SubDescription NVARCHAR(256),
	@Description NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
UPDATE [Product] 
SET

	ProductName=@ProductName,
	SubCategoryId=@SubCategoryId,
	ViewQuantity=@ViewQuantity,
	Thumbnails	= @Thumbnails,
	Price=@Price,
	Promotion = @Promotion,
	Quantity=@Quantity,
	Quality=@Quality,
	MadeBy=@MadeBy,
	VatTax=@VatTax,
	Warranty=@Warranty,
	TransportCost=@TransportCost,
	ViewOption=@ViewOption,
	SubDescription=@SubDescription,
	Description=@Description,
	StatusId=@StatusId
WHERE 	ProductId=@ProductId
-------------------------------------------
GO
CREATE PROCEDURE UpdatePriceAndPromotion
	@ProductId	INT,
	@Price FLOAT,
	@Promotion		FLOAT
AS
UPDATE [Product] 
SET
	Price=@Price,
	Promotion = @Promotion
WHERE 	ProductId=@ProductId
-------------------------------------------
GO
CREATE PROCEDURE InsertProduct
	@ProductName	NVARCHAR(256),
	@SubCategoryId INT,
	@ViewQuantity INT,
	@Thumbnails	NVARCHAR(256),
	@Price FLOAT,
	@Promotion		FLOAT,
	@Quantity INT,
	@Quality NVARCHAR(256),
	@MadeBy NVARCHAR(256),
	@VatTax FLOAT,
	@Warranty FLOAT,
	@TransportCost FLOAT,
	@ViewOption NVARCHAR(256),
	@SubDescription NVARCHAR(256),
	@Description NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
INSERT INTO Product
(
	ProductName,
	SubCategoryId,
	ViewQuantity,
	Thumbnails,
	Price,
	Promotion,
	Quantity,
	Quality,
	MadeBy,
	VatTax,
	Warranty,
	TransportCost,
	ViewOption,
	SubDescription,
	Description,
	StatusId
)
VALUES
(
	@ProductName,
	@SubCategoryId,
	@ViewQuantity,
	@Thumbnails,
	@Price,
	@Promotion,
	@Quantity,
	@Quality,
	@MadeBy,
	@VatTax,
	@Warranty,
	@TransportCost,
	@ViewOption,
	@SubDescription,
	@Description,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteProduct
	@ProductId INT
AS 
DELETE FROM Product 
WHERE ProductId = @ProductId
/*==============================================CREATE PROCEDURE FOR [ProductImage] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllProductImage
AS SET NOCOUNT ON
SELECT 
	ImageId,
	ProductId,
	ImageName,
	ImageUrl,
	ImageIndex,
	CreateDate
FROM [ProductImage]
-------------------------------------------
GO
CREATE PROCEDURE GetProductImageById
	@ImageId INT
AS SET NOCOUNT ON
SELECT
	ImageId,
	ProductId,
	ImageName,
	ImageUrl,
	ImageIndex,
	CreateDate
FROM [ProductImage]
WHERE ImageId = @ImageId

-------------------------------------------
GO
CREATE PROCEDURE GetProductImageByProductId
	@ProductId INT
AS SET NOCOUNT ON
SELECT
	ImageId,
	ProductId,
	ImageName,
	ImageUrl,
	ImageIndex,
	CreateDate
FROM [ProductImage]
WHERE ProductId = @ProductId
-------------------------------------------
GO
CREATE PROCEDURE UpdateProductImages
	@ImageId		INT,
	@ProductId INT,
	@ImageName NVARCHAR(256),
	@ImageUrl NVARCHAR(256),
	@ImageIndex INT
AS
UPDATE [ProductImage] 
SET
	ProductId=@ProductId,
	ImageName=@ImageName,
	ImageUrl=@ImageUrl,
	ImageIndex=@ImageIndex
WHERE 	ImageId=@ImageId
-------------------------------------------
GO
CREATE PROCEDURE InsertProductImages
	@ProductId INT,
	@ImageName NVARCHAR(256),
	@ImageUrl NVARCHAR(256),
	@ImageIndex INT
AS
INSERT INTO [ProductImage]
(
	ProductId,
	ImageName,
	ImageUrl,
	ImageIndex
)
VALUES
(
	@ProductId,
	@ImageName,
	@ImageUrl,
	@ImageIndex
)
--------------------------------------
Go
CREATE PROCEDURE DeleteProductImages
	@ImageId INT
AS 
DELETE FROM [ProductImage] 
WHERE ImageId = @ImageId
/*==============================================CREATE PROCEDURE FOR [Bill] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllBill
AS SET NOCOUNT ON
SELECT 
	BillId,
	UserId,
	ReceiverName,
	DeliveryTime,
	DeliveryAddress,
	ReceiverEmail,
	ReceiverTel,
	ReceiverFax,
	Note,
	CreateDate,
	StatusId
FROM [Bill]
-------------------------------------------
GO
CREATE PROCEDURE GetBillById
@BillId INT
AS SET NOCOUNT ON
SELECT
	BillId,
	UserId,
	ReceiverName,
	DeliveryTime,
	DeliveryAddress,
	ReceiverEmail,
	ReceiverTel,
	ReceiverFax,
	Note,
	CreateDate,
	StatusId
FROM [Bill]
WHERE BillId = @BillId
-------------------------------------------
GO
CREATE PROCEDURE GetBillByUserId
@UserId INT
AS SET NOCOUNT ON
SELECT
	BillId,
	UserId,
	ReceiverName,
	DeliveryTime,
	DeliveryAddress,
	ReceiverEmail,
	ReceiverTel,
	ReceiverFax,
	Note,
	CreateDate,
	StatusId
FROM [Bill]
WHERE UserId = @UserId
-------------------------------------------
GO
CREATE PROCEDURE UpdateBill
	@BillId		INT,
	@UserId		INT,
	@ReceiverName	NVARCHAR(256),
	@DeliveryTime	DATETIME,
	@DeliveryAddress NVARCHAR(512),
	@ReceiverEmail	NVARCHAR(256),
	@ReceiverTel	NVARCHAR(50),
	@ReceiverFax	NVARCHAR(50),
	@Note			NVARCHAR(512),
	@StatusId		NVARCHAR(256)
AS
UPDATE [Bill] 
SET
	UserId=@UserId,
	ReceiverName=@ReceiverName,
	DeliveryTime=@DeliveryTime,
	DeliveryAddress=@DeliveryAddress,
	ReceiverEmail=@ReceiverEmail,
	ReceiverTel=@ReceiverTel,
	ReceiverFax=@ReceiverFax,
	Note=@Note,
	StatusId=@StatusId
WHERE BillId = @BillId
-------------------------------------------
GO
CREATE PROCEDURE InsertBill
	@UserId		INT,
	@ReceiverName	NVARCHAR(256),
	@DeliveryTime	DATETIME,
	@DeliveryAddress NVARCHAR(512),
	@ReceiverEmail	NVARCHAR(256),
	@ReceiverTel	NVARCHAR(50),
	@ReceiverFax	NVARCHAR(50),
	@Note			NVARCHAR(512),
	@StatusId		NVARCHAR(256)
AS
INSERT INTO [Bill]
(
	UserId,
	ReceiverName,
	DeliveryTime,
	DeliveryAddress,
	ReceiverEmail,
	ReceiverTel,
	ReceiverFax,
	Note,
	StatusId
)
VALUES
(
	@UserId,
	@ReceiverName,
	@DeliveryTime,
	@DeliveryAddress,
	@ReceiverEmail,
	@ReceiverTel,
	@ReceiverFax,
	@Note,
	@StatusId
)
-------------------------------------------
GO
CREATE PROCEDURE ChangeStatusBill
	@BillId		INT,
	@StatusId		NVARCHAR(256)
AS
UPDATE [Bill] 
SET
	StatusId=@StatusId
WHERE BillId = @BillId
--------------------------------------
Go
CREATE PROCEDURE DeleteBill
	@BillId INT
AS 
DELETE FROM Bill 
WHERE BillId = @BillId
/*==============================================CREATE PROCEDURE FOR [BillDetail] TABLE===============================================*/
GO
CREATE PROCEDURE GetBillDetail
@BillId INT
AS SET NOCOUNT ON
SELECT 
	BillId,
	ProductId,
	Quantity
FROM [BillDetail]
WHERE BillId = @BillId
-------------------------------------------
GO
CREATE PROCEDURE GetBillDetailByBillAndProduct
@BillId INT,
@ProductId INT
AS SET NOCOUNT ON
SELECT 
	BillId,
	ProductId,
	Quantity
FROM [BillDetail]
WHERE BillId = @BillId AND ProductId = @ProductId
-------------------------------------------
GO
CREATE PROCEDURE UpdateBillDetail
	@BillId INT,
	@ProductId INT,
	@Quantity INT
AS
UPDATE [BillDetail] 
SET
	Quantity=@Quantity
WHERE BillId = @BillId AND ProductId = @ProductId
-------------------------------------------
GO
CREATE PROCEDURE InsertBillDetail
	@BillId INT,
	@ProductId INT,
	@Quantity INT
AS
INSERT INTO [BillDetail]
(
	BillId,
	ProductId,
	Quantity
)
VALUES
(
	@BillId,
	@ProductId,
	@Quantity
)
--------------------------------------
Go
CREATE PROCEDURE DeleteBillDetail
	@BillId INT,
	@ProductId INT
AS 
DELETE FROM BillDetail 
WHERE BillId = @BillId AND ProductId = @ProductId
/*==============================================CREATE PROCEDURE FOR [Advertise] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllAdvertise
AS SET NOCOUNT ON
SELECT
	AdvertiseId,
	AdvertiseName,
	AdvertiseLink,
	ImageURL,
	AdvertisePostion,
	CreateDate,
	StatusId
FROM [Advertise]
-------------------------------------------
GO
CREATE PROCEDURE GetAdvertiseById
	@AdvertiseId INT
AS SET NOCOUNT ON
SELECT 
	AdvertiseId,
	AdvertiseName,
	AdvertiseLink,
	ImageURL,
	AdvertisePostion,
	CreateDate,
	StatusId
FROM [Advertise]
WHERE AdvertiseId = @AdvertiseId
-------------------------------------------
GO
CREATE PROCEDURE GetLeftAdvertise
AS SET NOCOUNT ON
SELECT 
	AdvertiseId,
	AdvertiseName,
	AdvertiseLink,
	ImageURL,
	AdvertisePostion,
	CreateDate,
	StatusId
FROM [Advertise]
WHERE AdvertisePostion % 2 = 1 AND StatusId = 'stt1'
-------------------------------------------
GO
CREATE PROCEDURE GetRighAdvertise
AS SET NOCOUNT ON
SELECT 
	AdvertiseId,
	AdvertiseName,
	AdvertiseLink,
	ImageURL,
	AdvertisePostion,
	CreateDate,
	StatusId
FROM [Advertise]
WHERE AdvertisePostion % 2 = 0 AND StatusId = 'stt1'
-------------------------------------------
GO
CREATE PROCEDURE UpdateAdvertise
	@AdvertiseId	INT,
	@AdvertiseName NVARCHAR(256),
	@AdvertiseLink NVARCHAR(256),
	@ImageURL NVARCHAR(256),
	@AdvertisePostion INT,
	@StatusId NVARCHAR(256)
AS
UPDATE [Advertise] 
SET
	AdvertiseName=@AdvertiseName,
	AdvertiseLink=@AdvertiseLink,
	ImageURL=@ImageURL,
	AdvertisePostion=@AdvertisePostion,
	StatusId=@StatusId
WHERE AdvertiseId = @AdvertiseId
-------------------------------------------
GO
CREATE PROCEDURE InsertAdvertise
	@AdvertiseName NVARCHAR(256),
	@AdvertiseLink NVARCHAR(256),
	@ImageURL NVARCHAR(256),
	@AdvertisePostion INT,
	@StatusId NVARCHAR(256)
AS
INSERT INTO [Advertise]
(
	AdvertiseName,
	AdvertiseLink,
	ImageURL,
	AdvertisePostion,
	StatusId
)
VALUES
(
	@AdvertiseName,
	@AdvertiseLink,
	@ImageURL,
	@AdvertisePostion,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteAdvertise
	@AdvertiseId INT
AS 
DELETE FROM [Advertise] 
WHERE AdvertiseId = @AdvertiseId
/*==============================================CREATE PROCEDURE FOR [Policy] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllPolicy
AS SET NOCOUNT ON
SELECT 
	PolicyId,
	PolicyType,
	PolicyContent,
	StatusId,
	CreateDate
FROM [Policy]
-------------------------------------------
GO
CREATE PROCEDURE GetPolicyById
	@PolicyId INT
AS SET NOCOUNT ON
SELECT 
	PolicyId,
	PolicyType,
	PolicyContent,
	StatusId,
	CreateDate
FROM [Policy]
WHERE PolicyId = @PolicyId
-------------------------------------------
GO
CREATE PROCEDURE UpdatePolicy
	@PolicyId INT,
	@PolicyType NVARCHAR(256),
	@PolicyContent NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
UPDATE [Policy] 
SET
	PolicyType=@PolicyType,
	PolicyContent=@PolicyContent,
	StatusId=@StatusId
WHERE PolicyId = @PolicyId
-------------------------------------------
GO
CREATE PROCEDURE InsertPolicy
	@PolicyType NVARCHAR(256),
	@PolicyContent NVARCHAR(max),
	@StatusId NVARCHAR(256)
AS
INSERT INTO [Policy]
(
	PolicyType,
	PolicyContent,
	StatusId
)
VALUES
(
	@PolicyType,
	@PolicyContent,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeletePolicy
	@PolicyId INT
AS 
DELETE FROM [Policy] 
WHERE PolicyId = @PolicyId
/*==============================================CREATE PROCEDURE FOR [InterfaceType] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllInterfaceType
AS SET NOCOUNT ON
SELECT 
	TypeId,
	TypeName
FROM [InterfaceType]
-------------------------------------------
GO
CREATE PROCEDURE GetInterfaceTypeById
	@TypeId INT
AS SET NOCOUNT ON
SELECT 
	TypeId,
	TypeName
FROM [InterfaceType]
WHERE TypeId = @TypeId
-------------------------------------------
GO
CREATE PROCEDURE UpdateInterfaceType
	@TypeId	NVARCHAR(256),
	@TypeName NVARCHAR(256)
AS
UPDATE [InterfaceType] 
SET
	TypeName=@TypeName
WHERE TypeId = @TypeId
-------------------------------------------
GO
CREATE PROCEDURE InsertInterfaceType
	@TypeId	NVARCHAR(256),
	@TypeName NVARCHAR(256)
AS
INSERT INTO [InterfaceType]
(
	TypeId,
	TypeName
)
VALUES
(
	@TypeId,
	@TypeName
)
--------------------------------------
Go
CREATE PROCEDURE DeleteInterfaceType
	@TypeId INT
AS 
DELETE FROM [InterfaceType] 
WHERE TypeId = @TypeId
/*==============================================CREATE PROCEDURE FOR TblInterface TABLE===============================================*/
GO
CREATE PROCEDURE GetAllTblInterface
AS SET NOCOUNT ON
SELECT 
	InterfaceId,
	TypeId,
	InterfaceLink,
	ImageURL,
	InterfaceContent,
	StatusId
FROM TblInterface
-------------------------------------------
GO
CREATE PROCEDURE GetTblInterfaceById
	@InterfaceId INT
AS SET NOCOUNT ON
SELECT 
	InterfaceId,
	TypeId,
	InterfaceLink,
	ImageURL,
	InterfaceContent,
	StatusId
FROM TblInterface
WHERE InterfaceId = @InterfaceId
-------------------------------------------
GO
CREATE PROCEDURE UpdateTblInterface
	@InterfaceId	INT,
	@TypeId NVARCHAR(256),
	@InterfaceLink	NVARCHAR(256),
	@ImageURL NVARCHAR(256),
	@InterfaceContent NVARCHAR(512),
	@StatusId NVARCHAR(256)
AS
UPDATE TblInterface 
SET
	TypeId=@TypeId,
	InterfaceLink=@InterfaceLink,
	ImageURL=@ImageURL,
	InterfaceContent=@InterfaceContent,
	StatusId=@StatusId
WHERE InterfaceId = @InterfaceId
-------------------------------------------
GO
CREATE PROCEDURE InsertTblInterface

	@TypeId NVARCHAR(256),
	@InterfaceLink	NVARCHAR(256),
	@ImageURL NVARCHAR(256),
	@InterfaceContent NVARCHAR(512),
	@StatusId NVARCHAR(256)
AS
INSERT INTO TblInterface
(
	TypeId,
	InterfaceLink,
	ImageURL,
	InterfaceContent,
	StatusId
)
VALUES
(
	@TypeId,
	@InterfaceLink,
	@ImageURL,
	@InterfaceContent,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteTblInterface
	@InterfaceId	INT
AS 
DELETE FROM TblInterface
WHERE InterfaceId = @InterfaceId
/*==============================================CREATE PROCEDURE FOR [Partner] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllPartner
AS SET NOCOUNT ON
SELECT 
	PartnerId,
	PartnerName,
	Address,
	City,
	Phone,
	Link,
	Email,
	JoinDate,
	StatusId
FROM Partner
-------------------------------------------
GO
CREATE PROCEDURE GetPartnerById
	@PartnerId INT
AS SET NOCOUNT ON
SELECT 
	PartnerId,
	PartnerName,
	Address,
	City,
	Phone,
	Link,
	Email,
	JoinDate,
	StatusId
FROM Partner
WHERE PartnerId = @PartnerId
-------------------------------------------
GO
CREATE PROCEDURE UpdatePartner
	@PartnerId		INT,
	@PartnerName	NVARCHAR(256),
	@Address		NVARCHAR(256),
	@City			NVARCHAR(256),
	@Phone		VARCHAR(50),
	@Link		NVARCHAR(256),
	@Email		NVARCHAR(256),
	@StatusId		NVARCHAR(256)
AS
UPDATE Partner 
SET
	PartnerName=@PartnerName,
	Address=@Address,
	City=@City,
	Phone=@Phone,
	Link=@Link,
	Email=@Email,
	StatusId=@StatusId
WHERE PartnerId = @PartnerId
-------------------------------------------
GO
CREATE PROCEDURE InsertPartner

	@PartnerName	NVARCHAR(256),
	@Address		NVARCHAR(256),
	@City			NVARCHAR(256),
	@Phone		VARCHAR(50),
	@Link		NVARCHAR(256),
	@Email		NVARCHAR(256),
	@StatusId		NVARCHAR(256)
AS
INSERT INTO Partner
(
	PartnerName,
	Address,
	City,
	Phone,
	Link,
	Email,
	StatusId
)
VALUES
(
	@PartnerName,
	@Address,
	@City,
	@Phone,
	@Link,
	@Email,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeletePartner
	@PartnerId		INT
AS 
DELETE FROM Partner 
WHERE PartnerId = @PartnerId
/*==============================================CREATE PROCEDURE FOR [QuoteProduct] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllQuoteProduct
AS SET NOCOUNT ON
SELECT 
	QuoteId,
	QuoteProductName,
	QuoteLink,
	Description	,
	CreateDate,
	StatusId
FROM QuoteProduct
-------------------------------------------
GO
CREATE PROCEDURE GetQuoteProductById
	@QuoteId INT
AS SET NOCOUNT ON
SELECT 
	QuoteId,
	QuoteProductName,
	QuoteLink,
	Description	,
	CreateDate,
	StatusId
FROM QuoteProduct
WHERE QuoteId = @QuoteId
-------------------------------------------
GO
CREATE PROCEDURE UpdateQuoteProduct
	@QuoteId		INT,
	@QuoteProductName		NVARCHAR(256),
	@QuoteLink		NVARCHAR(256),
	@Description	NVARCHAR(512),
	@StatusId		NVARCHAR(256)
AS
UPDATE QuoteProduct 
SET
	QuoteProductName=@QuoteProductName,
	QuoteLink=@QuoteLink,
	Description	=@Description,
	StatusId=@StatusId
WHERE QuoteId = @QuoteId
-------------------------------------------
GO
CREATE PROCEDURE InsertQuoteProduct
	@QuoteProductName		NVARCHAR(256),
	@QuoteLink		NVARCHAR(256),
	@Description	NVARCHAR(512),
	@StatusId		NVARCHAR(256)
AS
INSERT INTO QuoteProduct
(
	QuoteProductName,
	QuoteLink,
	Description	,
	StatusId
)
VALUES
(
	@QuoteProductName,
	@QuoteLink,
	@Description,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteQuoteProduct
	@QuoteId		INT
AS 
DELETE FROM QuoteProduct 
WHERE QuoteId = @QuoteId
/*==============================================CREATE PROCEDURE FOR [TblService] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllTblService
AS SET NOCOUNT ON
SELECT 
	ServiceId,
	ServiceName,
	ServiceLink,
	Description,
	CreateDate,
	StatusId
FROM TblService
-------------------------------------------
GO
CREATE PROCEDURE GetServiceById
	@ServiceId INT
AS SET NOCOUNT ON
SELECT 
	ServiceId,
	ServiceName,
	ServiceLink,
	Description,
	CreateDate,
	StatusId
FROM TblService
WHERE ServiceId = @ServiceId
-------------------------------------------
GO
CREATE PROCEDURE UpdateTblService
	@ServiceId		INT,
	@ServiceName		NVARCHAR(256),
	@ServiceLink		NVARCHAR(256),
	@Description		NVARCHAR(512),
	@StatusId		NVARCHAR(256)
AS
UPDATE TblService 
SET
	ServiceName=@ServiceName,
	ServiceLink=@ServiceLink,
	Description=@Description,
	StatusId=@StatusId
WHERE ServiceId = @ServiceId
-------------------------------------------
GO
CREATE PROCEDURE InsertTblService
	@ServiceName		NVARCHAR(256),
	@ServiceLink		NVARCHAR(256),
	@Description		NVARCHAR(512),
	@StatusId		NVARCHAR(256)
AS
INSERT INTO TblService
(
	ServiceName,
	ServiceLink,
	Description,
	StatusId
)
VALUES
(
	@ServiceName,
	@ServiceLink,
	@Description,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteTblService
	@ServiceId		INT
AS 
DELETE FROM TblService 
WHERE ServiceId = @ServiceId
/*==============================================CREATE PROCEDURE FOR [FAQs] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllFAQs
AS SET NOCOUNT ON
SELECT 
	FaqId,
	Question,
	Answer,
	FaqIndex,
	StatusId
FROM FAQs ORDER BY FaqIndex
-------------------------------------------
GO
CREATE PROCEDURE GetFAQsById
	@FaqId INT
AS SET NOCOUNT ON
SELECT 
	FaqId,
	Question,
	Answer,
	FaqIndex,
	StatusId
FROM FAQs
WHERE FaqId = @FaqId
-------------------------------------------
GO
CREATE PROCEDURE UpdateFAQs
	@FaqId			INT,
	@Question		NVARCHAR(512),
	@Answer			NVARCHAR(512),
	@FaqIndex		INT,
	@StatusId		NVARCHAR(256)
AS
UPDATE FAQs 
SET
	Question=@Question,
	Answer=@Answer,
	FaqIndex=@FaqIndex,
	StatusId=@StatusId
WHERE FaqId = @FaqId
-------------------------------------------
GO
CREATE PROCEDURE InsertFAQs
	@Question		NVARCHAR(512),
	@Answer			NVARCHAR(512),
	@FaqIndex		INT,
	@StatusId		NVARCHAR(256)
AS
INSERT INTO FAQs
(
	Question,
	Answer,
	FaqIndex,
	StatusId
)
VALUES
(
	@Question,
	@Answer,
	@FaqIndex,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteFAQs
	@FaqId		INT
AS 
DELETE FROM FAQs 
WHERE FaqId = @FaqId
/*==============================================CREATE PROCEDURE FOR [Comment] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllComment
AS SET NOCOUNT ON
SELECT 
	CommentId,
	ProductId,
	CommentName,
	Email,
	CommentContent,
	Rate,
	CreateDate,
	StatusId
FROM Comment
-------------------------------------------
GO
CREATE PROCEDURE GetCommentById
	@CommentId INT
AS SET NOCOUNT ON
SELECT 
	CommentId,
	ProductId,
	CommentName,
	Email,
	CommentContent,
	Rate,
	CreateDate,
	StatusId
FROM Comment
WHERE CommentId = @CommentId
-------------------------------------------
GO
CREATE PROCEDURE UpdateComment
	@CommentId		INT,
	@ProductId		INT,
	@CommentName			VARCHAR(256),
	@Email			NVARCHAR(256),
	@CommentContent		NVARCHAR(512),
	@Rate			FLOAT,
	@StatusId		NVARCHAR(256)
AS
UPDATE Comment 
SET
	ProductId=@ProductId,
	CommentName=@CommentName,
	Email=@Email,
	CommentContent=@CommentContent,
	Rate=@Rate,
	StatusId=@StatusId
WHERE @CommentId = @CommentId
-------------------------------------------
GO
CREATE PROCEDURE InsertComment
	@ProductId		INT,
	@CommentName			VARCHAR(256),
	@Email			NVARCHAR(256),
	@CommentContent		NVARCHAR(512),
	@Rate			FLOAT,
	@StatusId		NVARCHAR(256)
AS
INSERT INTO Comment
(
	ProductId,
	CommentName,
	Email,
	CommentContent,
	Rate,
	StatusId
)
VALUES
(
	@ProductId,
	@CommentName,
	@Email,
	@CommentContent,
	@Rate,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteComment
	@CommentId		INT
AS 
DELETE FROM Comment 
WHERE CommentId = @CommentId
/*==============================================CREATE PROCEDURE FOR [TblContact] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllTblContact
AS SET NOCOUNT ON
SELECT 
	ContactId,
	Creator,
	Email,
	Phone,
	Company	,
	ContactContent,
	CreateDate,
	StatusId
FROM TblContact
-------------------------------------------
GO
CREATE PROCEDURE GetTblContactById
	@ContactId INT
AS SET NOCOUNT ON
SELECT 
	ContactId,
	Creator,
	Email,
	Phone,
	Company	,
	ContactContent,
	CreateDate,
	StatusId
FROM TblContact
WHERE ContactId = @ContactId
-------------------------------------------
GO
CREATE PROCEDURE InsertTblContact
	@Creator			VARCHAR(256),
	@Email			NVARCHAR(256),
	@Phone			NVARCHAR(256),
	@Company			NVARCHAR(256),
	@ContactContent	NVARCHAR(max),
	@StatusId		NVARCHAR(256)
AS
INSERT INTO TblContact
(
	Creator,
	Email,
	Phone,
	Company	,
	ContactContent,
	StatusId
)
VALUES
(
	@Creator,
	@Email,
	@Phone,
	@Company,
	@ContactContent,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteTblContact
	@ContactId	INT
AS 
DELETE FROM TblContact 
WHERE ContactId = @ContactId
/*==============================================CREATE PROCEDURE FOR [Support] TABLE===============================================*/
GO
CREATE PROCEDURE GetAllSupport
AS SET NOCOUNT ON
SELECT 
	SupportId,
	SupportName,
	SupportLink,
	SupportImage,
	StatusId
FROM Support
-------------------------------------------
GO
CREATE PROCEDURE GetSupportById
	@SupportId INT
AS SET NOCOUNT ON
SELECT 
	SupportId,
	SupportName,
	SupportLink,
	SupportImage,
	StatusId
FROM Support
WHERE SupportId = @SupportId
-------------------------------------------
GO
CREATE PROCEDURE UpdateSupport
	@SupportId		INT,
	@SupportName		NVARCHAR(256),
	@SupportLink		NVARCHAR(256),
	@SupportImage	NVARCHAR(256),
	@StatusId		NVARCHAR(256)
AS
UPDATE Support
SET
	SupportName=@SupportName,
	SupportLink=@SupportLink,
	SupportImage=@SupportImage,
	StatusId=@StatusId
WHERE SupportId = @SupportId
-------------------------------------------
GO
CREATE PROCEDURE InsertSupport
	@SupportName		NVARCHAR(256),
	@SupportLink		NVARCHAR(256),
	@SupportImage	NVARCHAR(256),
	@StatusId		NVARCHAR(256)
AS
INSERT INTO Support
(
	SupportName,
	SupportLink,
	SupportImage,
	StatusId
)
VALUES
(
	@SupportName,
	@SupportLink,
	@SupportImage,
	@StatusId
)
/*==============================================CREATE PROCEDURE FOR Supplier TABLE===============================================*/
GO
CREATE PROCEDURE GetAllSupplier
AS SET NOCOUNT ON
SELECT 
	SupplierId,
	SupplierName,
	SupplierLink,
	SupplierImage,
	StatusId
FROM Supplier
-------------------------------------------
GO
CREATE PROCEDURE GetSupplierById
	@SupplierId INT
AS SET NOCOUNT ON
SELECT 
	SupplierId,
	SupplierName,
	SupplierLink,
	SupplierImage,
	StatusId
FROM Supplier
WHERE SupplierId = @SupplierId
-------------------------------------------
GO
CREATE PROCEDURE UpdateSupplier
	@SupplierId		INT,
	@SupplierName		NVARCHAR(256),
	@SupplierLink		NVARCHAR(256),
	@SupplierImage	NVARCHAR(256),
	@StatusId		NVARCHAR(256)
AS
UPDATE Supplier
SET
	SupplierName=@SupplierName,
	SupplierLink=@SupplierLink,
	SupplierImage=@SupplierImage,
	StatusId=@StatusId
WHERE SupplierId = @SupplierId
-------------------------------------------
GO
CREATE PROCEDURE InsertSupplier
	@SupplierName		NVARCHAR(256),
	@SupplierLink		NVARCHAR(256),
	@SupplierImage	NVARCHAR(256),
	@StatusId		NVARCHAR(256)
AS
INSERT INTO Supplier
(
	SupplierName,
	SupplierLink,
	SupplierImage,
	StatusId
)
VALUES
(
	@SupplierName,
	@SupplierLink,
	@SupplierImage,
	@StatusId
)
--------------------------------------
Go
CREATE PROCEDURE DeleteSupport
	@SupportId		INT
AS 
DELETE FROM Support 
WHERE SupportId = @SupportId



Select * from tbluser