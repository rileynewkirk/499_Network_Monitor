CREATE TABLE [dbo].[Network_Traffic_Data] (
    [ID]                  INT          NOT NULL,
    [MacAddress]          VARCHAR (50) NULL,
    [Time]                VARCHAR (50) NULL,
    [IPAddress]           VARCHAR (50) NULL,
    [Switch]              VARCHAR (50) NULL,
    [Port]                VARCHAR (50) NULL,
    [ExternalIP]          VARCHAR (50) NULL,
    [DNS]                 VARCHAR (50) NULL,
    [Username]            VARCHAR (50) NULL,
    [WirelessController]  VARCHAR (50) NULL,
    [AccessPoint]         VARCHAR (50) NULL,
    [DescriptionForWired] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);