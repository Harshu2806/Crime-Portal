CREATE TABLE [dbo].[LostFound]
(
	[CompNo] DECIMAL NOT NULL PRIMARY KEY, 
    [PoliceStation] VARCHAR(50) NULL, 
    [FullName] VARCHAR(50) NULL, 
    [Email] NVARCHAR(50) NULL, 
    [Contact] DECIMAL(10) NULL, 
    [Address] NVARCHAR(MAX) NULL, 
    [Pincode] NUMERIC(6) NULL, 
    [ReportType] VARCHAR(50) NULL, 
    [ArticalType] VARCHAR(50) NULL, 
    [NameOnDoc] VARCHAR(50) NULL, 
    [DocNo] NVARCHAR(50) NULL, 
    [Date] DATE NULL, 
    [Found] NVARCHAR(MAX) NULL, 
    [Area] NVARCHAR(50) NULL, 
    [City] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [Pin] NUMERIC(6) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Status] NVARCHAR(50) NULL, 
    [Count] INT NULL
)