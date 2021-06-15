CREATE TABLE [dbo].[tblPaymentMode] (
    [PaymentModeId] INT            IDENTITY (1, 1) NOT NULL,
    [PaymenentType] NVARCHAR (200) NULL,
    [isActive]      BIT            NOT NULL,
    CONSTRAINT [PK_tblPaymentMode] PRIMARY KEY CLUSTERED ([PaymentModeId] ASC)
);

