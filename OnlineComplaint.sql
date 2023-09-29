CREATE TABLE [dbo].[OnlineComplaint]
(
	[OnComNo] INT NOT NULL PRIMARY KEY, 
    [Prefix] VARCHAR(50) NULL, 
    [First] VARCHAR(50) NULL, 
    [Middle] VARCHAR(50) NULL, 
    [Last] VARCHAR(50) NULL, 
    [Code] INT NULL, 
    [Mobile] NVARCHAR(50) NULL, 
    [Email] VARCHAR(50) NULL, 
    [Street] VARCHAR(50) NULL, 
    [Address] NVARCHAR(50) NULL, 
    [City] VARCHAR(50) NULL, 
    [State] VARCHAR(50) NULL, 
    [Country] VARCHAR(50) NULL, 
    [Pincode] NVARCHAR(50) NULL, 
    [PoliceStation] VARCHAR(50) NULL, 
    [Complaint] NVARCHAR(MAX) NULL, 
    [Doc] NVARCHAR(MAX) NULL, 
    [Status] VARCHAR(50) NULL 
     
)
