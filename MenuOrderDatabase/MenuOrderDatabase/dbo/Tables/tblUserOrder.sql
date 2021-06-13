CREATE TABLE [dbo].[tblUserOrder] (
    [UserOrderId] BIGINT   IDENTITY (1, 1) NOT NULL,
    [UserId]      BIGINT   NOT NULL,
    [VendorId]    INT      NOT NULL,
    [MenuId]      BIGINT   NOT NULL,
    [CreatedDate] DATETIME DEFAULT (getdate()) NOT NULL,
    [UpdatedDate] DATETIME NOT NULL,
    CONSTRAINT [PK_tblUserOrder] PRIMARY KEY CLUSTERED ([UserOrderId] ASC),
    CONSTRAINT [FK_tblUserOrder_tblMenu_MenuId] FOREIGN KEY ([MenuId]) REFERENCES [dbo].[tblMenu] ([MenuId]),
    CONSTRAINT [FK_tblUserOrder_tblUser_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[tblUser] ([UserId]),
    CONSTRAINT [FK_tblUserOrder_tblVendorList_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [dbo].[tblVendorList] ([VendorId])
);


GO
CREATE NONCLUSTERED INDEX [IX_tblUserOrder_MenuId]
    ON [dbo].[tblUserOrder]([MenuId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_tblUserOrder_UserId]
    ON [dbo].[tblUserOrder]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_tblUserOrder_VendorId]
    ON [dbo].[tblUserOrder]([VendorId] ASC);

