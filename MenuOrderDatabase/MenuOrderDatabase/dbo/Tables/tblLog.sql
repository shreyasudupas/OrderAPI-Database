CREATE TABLE [dbo].[tblLog] (
    [LogId]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [ControllerName] NVARCHAR (MAX) NOT NULL,
    [ActionMethod]   NVARCHAR (MAX) NULL,
    [ErrorMessage]   NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_tblLog] PRIMARY KEY CLUSTERED ([LogId] ASC)
);

