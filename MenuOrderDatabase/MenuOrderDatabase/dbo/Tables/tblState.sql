CREATE TABLE [dbo].[tblState] (
    [StateId]     INT            IDENTITY (1, 1) NOT NULL,
    [StateNames]  NVARCHAR (200) NULL,
    [CreatedDate] DATETIME       DEFAULT (getdate()) NOT NULL,
    [UpdatedDate] DATETIME       NULL,
    CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED ([StateId] ASC)
);

