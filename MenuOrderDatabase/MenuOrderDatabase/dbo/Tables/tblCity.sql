CREATE TABLE [dbo].[tblCity] (
    [CityId]      INT            IDENTITY (1, 1) NOT NULL,
    [CityNames]   NVARCHAR (200) NULL,
    [StateId]     INT            NOT NULL,
    [CreatedDate] DATETIME       DEFAULT (getdate()) NOT NULL,
    [UpdateDate]  DATETIME       NULL,
    CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED ([CityId] ASC),
    CONSTRAINT [FK_tblCity_tblState_StateId] FOREIGN KEY ([StateId]) REFERENCES [dbo].[tblState] ([StateId])
);


GO
CREATE NONCLUSTERED INDEX [IX_tblCity_StateId]
    ON [dbo].[tblCity]([StateId] ASC);

