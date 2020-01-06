USE [IFRS9_Staging_2]
GO

/****** Object:  View [dbo].[infoschema2]    Script Date: 18/9/2018 5:33:48 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[infoschema2]
AS
select * 
from [IFRS9_Staging_2].[INFORMATION_SCHEMA].[COLUMNS]
where DATA_TYPE<>'numeric' and  DATA_TYPE<>'datetime2' and DATA_TYPE<>'nchar'

GO


