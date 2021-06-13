CREATE TABLE [dbo].[tblMenuType] (
    [MenuTypeId]   INT            IDENTITY (1, 1) NOT NULL,
    [MenuTypeName] NVARCHAR (100) NOT NULL,
    [CreatedDate]  DATETIME       DEFAULT (getdate()) NULL,
    [UpdatedDate]  DATETIME       NULL,
    [ImagePath]    NVARCHAR (500) NULL,
    CONSTRAINT [PK__tblMenuT__8E7B2D6AAD34CA44] PRIMARY KEY CLUSTERED ([MenuTypeId] ASC)
);

