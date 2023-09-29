CREATE TABLE Feedback
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Category] VARCHAR(50) NULL, 
    [PoliceStation] VARCHAR(50) NULL, 
    [Pre] VARCHAR(50) NULL, 
    [First] VARCHAR(50) NULL, 
    [Middle] VARCHAR(50) NULL, 
    [Last] VARCHAR(50) NULL, 
    [Code] INT NULL, 
    [Contact] BIGINT NULL, 
    [Email] VARCHAR(50) NULL, 
    [Subject] VARCHAR(50) NULL, 
    [Address] VARCHAR(MAX) NULL, 
    [Description] VARCHAR(MAX) NULL
)
insert into Feedback values('asc','tasgaon','ab','abc','xyz','pqr','2020','1234567890','asc@gmail.com','complainent','tasgaon','asdfghj');

select * from Feedback