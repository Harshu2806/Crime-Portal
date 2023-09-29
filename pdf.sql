﻿CREATE TABLE [dbo].[PDF](
	[applicationid] [bigint] IDENTITY(1000,1) NOT NULL,
	[Doc] [nvarchar](50) NULL,
 CONSTRAINT [PK_PDF] PRIMARY KEY CLUSTERED 
(
	[applicationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)