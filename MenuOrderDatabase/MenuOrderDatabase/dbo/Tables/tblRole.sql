CREATE TABLE [dbo].[tblRole] (
    [RoleId]   INT            IDENTITY (1, 1) NOT NULL,
    [Rolename] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED ([RoleId] ASC)
);

