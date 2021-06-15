CREATE TABLE [dbo].[tblUser] (
    [UserId]          BIGINT          IDENTITY (1, 1) NOT NULL,
    [UserName]        NVARCHAR (500)  NOT NULL,
    [FullName]        NVARCHAR (100)  NOT NULL,
    [PictureLocation] NVARCHAR (2000) NULL,
    [RoleId]          INT             NOT NULL,
    [CartAmount]      FLOAT (53)      DEFAULT ((0.0000000000000000e+000)) NOT NULL,
    [CreatedDate]     DATETIME        DEFAULT (getdate()) NOT NULL,
    [Points]          BIGINT          DEFAULT (CONVERT([bigint],(0))) NOT NULL,
    [UpdatedDate]     DATETIME        NULL,
    [Address]         NVARCHAR (MAX)  NULL,
    [CityId]          INT             NULL,
    [StateId]         INT             NULL,
    CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [FK_tblUser_tblCity_CityId] FOREIGN KEY ([CityId]) REFERENCES [dbo].[tblCity] ([CityId]),
    CONSTRAINT [FK_tblUser_tblRole_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[tblRole] ([RoleId]) ON DELETE CASCADE,
    CONSTRAINT [FK_tblUser_tblState_StateId] FOREIGN KEY ([StateId]) REFERENCES [dbo].[tblState] ([StateId])
);




GO
CREATE NONCLUSTERED INDEX [IX_tblUser_RoleId]
    ON [dbo].[tblUser]([RoleId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_tblUser_StateId]
    ON [dbo].[tblUser]([StateId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_tblUser_CityId]
    ON [dbo].[tblUser]([CityId] ASC);

