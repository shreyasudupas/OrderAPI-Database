CREATE TABLE [dbo].[tblVendorList] (
    [VendorId]          INT             IDENTITY (1, 1) NOT NULL,
    [VendorName]        VARCHAR (1000)  NOT NULL,
    [VendorDescription] NVARCHAR (500)  NULL,
    [VendorRating]      INT             NULL,
    [VendorImgLink]     NVARCHAR (1000) NULL,
    CONSTRAINT [PK__tblVendo__FC8618F3EE5C5634] PRIMARY KEY CLUSTERED ([VendorId] ASC)
);

