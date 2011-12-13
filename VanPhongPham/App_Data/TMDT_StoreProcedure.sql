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
	[StatusId]
FROM [TblUser]
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
	[StatusId]
FROM [TblUser]
WHERE [GroupId] = @GroupId
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
	[StatusId]
FROM [TblUser] WHERE UserName Like '%'+ @UserName +'%'
GO
--------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE InsertEmployee
	@GroupId		NVARCHAR(256),
	@UserName		VARCHAR(256),
	@Password		VARCHAR(256),
	@FullName		NVARCHAR(256),
	@DateOfBirth	DATETIME,
	@Gender			BIT,
	@Email			NVARCHAR(256),
	@Address		NVARCHAR(256),
	@Phone			VARCHAR(50),
	@JoinDate		DATETIME,
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
	[JoinDate],
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
	@JoinDate,
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
	@JoinDate		DATETIME,
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
	JoinDate=@JoinDate,
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
	[StatusId]
FROM [TblUser]
WHERE UserName = @UserName
--------------------------------------------------------------------------------------------------------------
GO
CREATE PROCEDURE GetUserByEmail
	@Email	nvarchar(200)
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
	[StatusId]
FROM [TblUser]
WHERE UserId = @UserId
/*==============================================CREATE PROCEDURE FOR  TABLE===============================================*/
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
	@LogContent NVARCHAR(max),
	@LogDate DATETIME
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
	@LogId		INT,
	@LogName	NVARCHAR(256),
	@LogForTable NVARCHAR(256),
	@LogContent NVARCHAR(max),
	@LogDate DATETIME
AS
INSERT INTO [LogSystem]
(
	[LogId],
	[LogName],
	[LogForTable],
	[LogContent],
	[LogDate]
)
VALUES
(
	@LogId,
	@LogName,
	@LogForTable,
	@LogContent,
	@LogDate
)
