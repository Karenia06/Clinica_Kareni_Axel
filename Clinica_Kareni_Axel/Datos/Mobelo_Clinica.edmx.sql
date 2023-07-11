
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/07/2023 21:48:06
-- Generated from EDMX file: C:\Users\Usuario\Desktop\Clinica_Kareni_Axel\Clinica_Kareni_Axel\Datos\Mobelo_Clinica.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Clinica];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [User] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Bitacoras'
CREATE TABLE [dbo].[Bitacoras] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha] datetime  NOT NULL,
    [Accion] nvarchar(max)  NOT NULL,
    [UsuarioId] int  NOT NULL
);
GO

-- Creating table 'Personas'
CREATE TABLE [dbo].[Personas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoPersona] nvarchar(max)  NOT NULL,
    [NombrePersaona] nvarchar(max)  NOT NULL,
    [CuentaBancaria] float  NOT NULL,
    [DirrecionPersona] nvarchar(max)  NOT NULL,
    [TelefonoPersona] nvarchar(max)  NOT NULL,
    [DNI] nvarchar(max)  NOT NULL,
    [Familia_Id] int  NOT NULL
);
GO

-- Creating table 'Familias'
CREATE TABLE [dbo].[Familias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoFamilia] nvarchar(max)  NOT NULL,
    [ApeCabezaDeFamilia] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Mascotas'
CREATE TABLE [dbo].[Mascotas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoMascota] nvarchar(max)  NOT NULL,
    [AliasMascota] nvarchar(max)  NOT NULL,
    [EspecieMascota] nvarchar(max)  NOT NULL,
    [RazaMascota] nvarchar(max)  NOT NULL,
    [ColorDePeloMascota] nvarchar(max)  NOT NULL,
    [FechaDeNacAprox] datetime  NOT NULL,
    [PesoMedio] float  NOT NULL,
    [PesoActual] float  NOT NULL,
    [FamiliaId] int  NOT NULL
);
GO

-- Creating table 'HistorialMedicos'
CREATE TABLE [dbo].[HistorialMedicos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Codigo] nvarchar(max)  NOT NULL,
    [FechaDeVacuna] datetime  NOT NULL,
    [MascotaId] int  NOT NULL,
    [VacunaId] int  NOT NULL
);
GO

-- Creating table 'Vacunas'
CREATE TABLE [dbo].[Vacunas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NombreVacuna] nvarchar(max)  NOT NULL,
    [Enfermeda] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Bitacoras'
ALTER TABLE [dbo].[Bitacoras]
ADD CONSTRAINT [PK_Bitacoras]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Personas'
ALTER TABLE [dbo].[Personas]
ADD CONSTRAINT [PK_Personas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Familias'
ALTER TABLE [dbo].[Familias]
ADD CONSTRAINT [PK_Familias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Mascotas'
ALTER TABLE [dbo].[Mascotas]
ADD CONSTRAINT [PK_Mascotas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HistorialMedicos'
ALTER TABLE [dbo].[HistorialMedicos]
ADD CONSTRAINT [PK_HistorialMedicos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Vacunas'
ALTER TABLE [dbo].[Vacunas]
ADD CONSTRAINT [PK_Vacunas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UsuarioId] in table 'Bitacoras'
ALTER TABLE [dbo].[Bitacoras]
ADD CONSTRAINT [FK_UsuarioBitacora]
    FOREIGN KEY ([UsuarioId])
    REFERENCES [dbo].[Usuarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioBitacora'
CREATE INDEX [IX_FK_UsuarioBitacora]
ON [dbo].[Bitacoras]
    ([UsuarioId]);
GO

-- Creating foreign key on [Familia_Id] in table 'Personas'
ALTER TABLE [dbo].[Personas]
ADD CONSTRAINT [FK_PersonaFamilia]
    FOREIGN KEY ([Familia_Id])
    REFERENCES [dbo].[Familias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonaFamilia'
CREATE INDEX [IX_FK_PersonaFamilia]
ON [dbo].[Personas]
    ([Familia_Id]);
GO

-- Creating foreign key on [FamiliaId] in table 'Mascotas'
ALTER TABLE [dbo].[Mascotas]
ADD CONSTRAINT [FK_FamiliaMascota]
    FOREIGN KEY ([FamiliaId])
    REFERENCES [dbo].[Familias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FamiliaMascota'
CREATE INDEX [IX_FK_FamiliaMascota]
ON [dbo].[Mascotas]
    ([FamiliaId]);
GO

-- Creating foreign key on [MascotaId] in table 'HistorialMedicos'
ALTER TABLE [dbo].[HistorialMedicos]
ADD CONSTRAINT [FK_MascotaHistorialMedico]
    FOREIGN KEY ([MascotaId])
    REFERENCES [dbo].[Mascotas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MascotaHistorialMedico'
CREATE INDEX [IX_FK_MascotaHistorialMedico]
ON [dbo].[HistorialMedicos]
    ([MascotaId]);
GO

-- Creating foreign key on [VacunaId] in table 'HistorialMedicos'
ALTER TABLE [dbo].[HistorialMedicos]
ADD CONSTRAINT [FK_VacunaHistorialMedico]
    FOREIGN KEY ([VacunaId])
    REFERENCES [dbo].[Vacunas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VacunaHistorialMedico'
CREATE INDEX [IX_FK_VacunaHistorialMedico]
ON [dbo].[HistorialMedicos]
    ([VacunaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------