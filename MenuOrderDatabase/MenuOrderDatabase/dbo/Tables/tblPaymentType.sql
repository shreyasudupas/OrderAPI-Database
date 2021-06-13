CREATE TABLE [dbo].[tblPaymentType] (
    [PaymentTypeId]      INT            IDENTITY (1, 1) NOT NULL,
    [PaymentType]        NVARCHAR (100) NULL,
    [PaymentDescription] NVARCHAR (200) NULL,
    CONSTRAINT [PK_tblPaymentType] PRIMARY KEY CLUSTERED ([PaymentTypeId] ASC)
);

