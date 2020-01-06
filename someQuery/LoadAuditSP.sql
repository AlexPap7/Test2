USE [Mongoose_App]
GO

/****** Object:  StoredProcedure [dbo].[LoadAuditSP_PBB]    Script Date: 12/10/2018 11:33:55 рм ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[LoadAuditSP_PBB] ( @SNAPSHOT_DATE AS datetime2 OUTPUT , @FILE AS nvarchar(30) OUTPUT  , @RUNOPTION AS nvarchar(1) OUTPUT , @RECHID AS nvarchar(30) OUTPUT , @PACKETNO AS int OUTPUT )

AS



DECLARE @RUNKEY AS int


BEGIN


SELECT @RUNKEY = MAX(RunKey) +1
FROM [IFRS9_Vault].[dbo].[LoadAudit]  
WHERE [Group] = '100' AND Company = '010' AND [File] = @FILE AND SnapshotDate = @SNAPSHOT_DATE AND RunOption = @RUNOPTION AND PacketNo = @PACKETNO 



IF (@RUNKEY IS NULL)
Begin
SET @RUNKEY =1 

End






INSERT INTO [IFRS9_Vault].[dbo].[LoadAudit] 
([Group], Company, [File], SnapshotDate, RunOption, RunKey, JobStatus, RECHID, CRDATE,PacketNo,StartedDate,UserName,LMDATE)
	VALUES('100',
	'010',
	@FILE,
	@SNAPSHOT_DATE,
	@RUNOPTION,
	@RUNKEY,
	'1',
	@RECHID,
	CURRENT_TIMESTAMP,
	@PACKETNO,
	CURRENT_TIMESTAMP,
	@RECHID,
	CURRENT_TIMESTAMP
	)



END

EXEC LoadAuditLogCheck_PBB @SNAPSHOT_DATE, @FILE, @RUNOPTION, @RUNKEY, @RECHID, @PACKETNO
 



GO


