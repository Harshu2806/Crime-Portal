CREATE TABLE [dbo].[SpotComplaint](
	[CompNo] [int] IDENTITY(10000,1) NOT NULL,
	[PoliceStation] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Other] [varchar](50) NULL,
	[Area] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Pincode] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Date] [date] NULL,
	[Myself] [varchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Doc1] [nvarchar](max) NULL,
	[Doc2] [nvarchar](max) NULL
)