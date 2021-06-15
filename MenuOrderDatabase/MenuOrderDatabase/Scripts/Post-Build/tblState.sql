


SET IDENTITY_INSERT [DBO].[TBLSTATE] ON 
GO

IF NOT EXISTS (SELECT [STATEID] FROM [DBO].[TBLSTATE] WHERE [STATEID] = 1)
	INSERT INTO [dbo].[tblState] ([StateId],[StateNames],[CreatedDate],[UpdatedDate]) values (1,'Karnataka',GETDATE(),NULL)
	GO

SET IDENTITY_INSERT [dbo].[tblState] OFF
GO