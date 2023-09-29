﻿CREATE TABLE [dbo].[LostVehicle]
(
	[ComplaintNo] NUMERIC NOT NULL PRIMARY KEY, 
    [PoliceStation] NVARCHAR(50) NULL, 
    [Fullname] NVARCHAR(50) NULL, 
    [Contact] NUMERIC(10) NULL, 
    [Email] NVARCHAR(50) NULL, 
    [Address] NVARCHAR(MAX) NULL, 
    [City] NVARCHAR(50) NULL, 
    [District] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [Country] NVARCHAR(50) NULL, 
    [Type] NVARCHAR(50) NULL, 
    [Brand] NVARCHAR(50) NULL, 
    [Model] NVARCHAR(50) NULL, 
    [Colour] NVARCHAR(50) NULL, 
    [RegNo] NVARCHAR(MAX) NULL, 
    [ChasisNo] NVARCHAR(MAX) NULL, 
    [EngNo] NVARCHAR(50) NULL, 
    [Place] NVARCHAR(50) NULL, 
    [Date] DATE NULL, 
    [RcBook] VARCHAR(50) NULL, 
    [Other] NVARCHAR(MAX) NULL, 
    [Photo] NVARCHAR(MAX) NULL, 
    [Status] VARBINARY(50) NULL
)
