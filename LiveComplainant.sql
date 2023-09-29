CREATE TABLE [dbo].[LiveComplaint]
(
	[CompNo] INT NOT NULL PRIMARY KEY, 
    [PoliceStation] VARCHAR(50) NULL, 
    [Name] VARCHAR(50) NULL, 
    [Mobile] NVARCHAR(50) NULL, 
    [Type] VARCHAR(50) NULL, 
    [Other] VARCHAR(50) NULL, 
    [Area] VARCHAR(50) NULL, 
    [City] VARCHAR(50) NULL, 
    [District] VARCHAR(50) NULL, 
    [Pincode] NCHAR(10) NULL, 
    [State] VARCHAR(50) NULL, 
    [Date] DATE NULL, 
    [Myself] VARCHAR(50) NULL, 
    [Description] VARCHAR(MAX) NULL, 
    [Doc1] VARCHAR(MAX) NULL, 
    [Doc2] VARCHAR(MAX) NULL
)