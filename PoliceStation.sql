CREATE TABLE [dbo].[PoliceStation]
(
	[RegNo] INT NOT NULL PRIMARY KEY, 
    [PoliceStation] NVARCHAR(50) NULL, 
    [StationCode] NVARCHAR(50) NULL, 
    [Incharge] NVARCHAR(50) NULL, 
    [Photo] NVARCHAR(MAX) NULL, 
    [Code] NVARCHAR(50) NULL, 
    [TelephoneNo] NUMERIC(12) NULL, 
    [AltTeleNp] NUMERIC(12) NULL, 
    [Address] NVARCHAR(MAX) NULL, 
    [City] NVARCHAR(50) NULL, 
    [District] NVARCHAR(50) NULL, 
    [Pincode] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [Country] NVARCHAR(50) NULL
)
