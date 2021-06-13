CREATE TABLE [dbo].[tblMenu] (
    [MenuId]      BIGINT          IDENTITY (1, 1) NOT NULL,
    [MenuItem]    NVARCHAR (2000) NOT NULL,
    [Price]       INT             NOT NULL,
    [VendorId]    INT             NOT NULL,
    [MenuTypeId]  INT             NOT NULL,
    [ImagePath]   NVARCHAR (1000) NULL,
    [OfferPrice]  INT             NULL,
    [CreatedDate] DATETIME        DEFAULT (getdate()) NULL,
    [UpdatedDate] DATETIME        NULL,
    CONSTRAINT [PK__tblMenu__C99ED2307583CC6C] PRIMARY KEY CLUSTERED ([MenuId] ASC),
    CONSTRAINT [FK_tblMenu_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [dbo].[tblVendorList] ([VendorId]),
    CONSTRAINT [FK_tblMenuType_MenuTypeId] FOREIGN KEY ([MenuTypeId]) REFERENCES [dbo].[tblMenuType] ([MenuTypeId])
);


GO
CREATE NONCLUSTERED INDEX [IX_tblMenu_MenuTypeId]
    ON [dbo].[tblMenu]([MenuTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_tblMenu_VendorId]
    ON [dbo].[tblMenu]([VendorId] ASC);

