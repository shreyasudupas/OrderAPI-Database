CREATE TABLE [dbo].[tblUser] (
    [UserId]          BIGINT          IDENTITY (1, 1) NOT NULL,
    [UserName]        NVARCHAR (500)  NOT NULL,
    [Nickname]        NVARCHAR (100)  NOT NULL,
    [PictureLocation] NVARCHAR (2000) NULL,
    [RoleId]          INT             NOT NULL,
    [CartAmount]      FLOAT (53)      DEFAULT ((0.0000000000000000e+000)) NOT NULL,
    [CreatedDate]     DATETIME        DEFAULT (getdate()) NOT NULL,
    [Points]          BIGINT          DEFAULT (CONVERT([bigint],(0))) NOT NULL,
    [UpdatedDate]     DATETIME        NULL,
    CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [FK_tblUser_tblRole_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[tblRole] ([RoleId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_tblUser_RoleId]
    ON [dbo].[tblUser]([RoleId] ASC);

