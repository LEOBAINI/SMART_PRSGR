USE [MonitorTestDB]
GO

/****** Object:  Table [dbo].[Smart_Tmp]    Script Date: 01/05/2017 12:42:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Smart_Tmp](
	[SEQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[DES_DYNDNS] [varchar](255) NULL,
	[NUM_PORT] [int] NULL,
	[DES_USER] [varchar](50) NULL,
	[DES_PASSWORD] [varchar](50) NULL,
	[DES_COUNTRY_ID] [varchar](2) NULL,
	[COD_CONNECTION_ID] [varchar](20) NULL,
	[DES_CONTRACT_NUMBER] [varchar](20) NULL,
	[DES_PROVIDER] [varchar](3) NULL,
	[ERROR] [nchar](400) NULL,
	[ERROR_FECHA] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


