
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/18/2019 17:04:19
-- Generated from EDMX file: D:\Users\ennurgaye\documents\visual studio 2015\Projects\PersonelMVCUI\PersonelMVCUI\Models\EntityFreamework\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [master];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Personel_Departman]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Personel] DROP CONSTRAINT [FK_Personel_Departman];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Departman]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departman];
GO
IF OBJECT_ID(N'[dbo].[Personel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Personel];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Departman'
CREATE TABLE [dbo].[Departman] (
    [Id] int  NOT NULL,
    [Ad] nchar(50)  NULL
);
GO

-- Creating table 'Personel'
CREATE TABLE [dbo].[Personel] (
    [Id] int  NOT NULL,
    [DepartmanId] int  NULL,
    [Ad] nchar(50)  NULL,
    [Soyad] nchar(50)  NULL,
    [Maas] smallint  NULL,
    [DogumTarihi] datetime  NULL,
    [Cinsiyet] bit  NOT NULL,
    [EvliMi] bit  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Departman'
ALTER TABLE [dbo].[Departman]
ADD CONSTRAINT [PK_Departman]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Personel'
ALTER TABLE [dbo].[Personel]
ADD CONSTRAINT [PK_Personel]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DepartmanId] in table 'Personel'
ALTER TABLE [dbo].[Personel]
ADD CONSTRAINT [FK_Personel_Departman]
    FOREIGN KEY ([DepartmanId])
    REFERENCES [dbo].[Departman]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Personel_Departman'
CREATE INDEX [IX_FK_Personel_Departman]
ON [dbo].[Personel]
    ([DepartmanId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------