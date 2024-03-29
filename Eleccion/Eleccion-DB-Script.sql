USE [master]
GO
/****** Object:  Database [Eleccion]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE DATABASE [Eleccion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Eleccion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Eleccion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Eleccion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Eleccion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Eleccion] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Eleccion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Eleccion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Eleccion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Eleccion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Eleccion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Eleccion] SET ARITHABORT OFF 
GO
ALTER DATABASE [Eleccion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Eleccion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Eleccion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Eleccion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Eleccion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Eleccion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Eleccion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Eleccion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Eleccion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Eleccion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Eleccion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Eleccion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Eleccion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Eleccion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Eleccion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Eleccion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Eleccion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Eleccion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Eleccion] SET  MULTI_USER 
GO
ALTER DATABASE [Eleccion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Eleccion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Eleccion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Eleccion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Eleccion] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Eleccion', N'ON'
GO
ALTER DATABASE [Eleccion] SET QUERY_STORE = OFF
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$SQLEXPRESS]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [IIS APPPOOL\DefaultAppPool]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [IIS APPPOOL\DefaultAppPool] FROM WINDOWS WITH DEFAULT_DATABASE=[Dentis], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [DESKTOP-D3S3F0U\Carlos]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [DESKTOP-D3S3F0U\Carlos] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Usuarios]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [BUILTIN\Usuarios] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'fpyEIj++u7iYIW6Z7Ou2HUf6fqlVXUkg7KB80eHKYFg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'J9iJiZ9ONmHg0CLRZgzJIY6IU4AGne6x0kXGG2l0i58=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-D3S3F0U\Carlos]
GO
USE [Eleccion]
GO
/****** Object:  User [DefaultAppPoo]    Script Date: 2/28/2022 6:11:01 PM ******/
CREATE USER [DefaultAppPoo] FOR LOGIN [IIS APPPOOL\DefaultAppPool] WITH DEFAULT_SCHEMA=[db_accessadmin]
GO
GRANT CONNECT TO [DefaultAppPoo] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[CandidatoID] [int] IDENTITY(1,1) NOT NULL,
	[CedulaCandidato] [int] NULL,
	[NombreCandidato] [varchar](50) NULL,
	[DescripcionCandidato] [varchar](1500) NOT NULL,
	[GerenciaID] [int] NULL,
	[FotoCandidato] [varchar](1500) NULL,
	[EstatusCandidato] [varchar](50) NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[CandidatoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gerencia]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gerencia](
	[GerenciaID] [int] IDENTITY(1,1) NOT NULL,
	[NombreGerencia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Gerencia] PRIMARY KEY CLUSTERED 
(
	[GerenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voto]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voto](
	[VotoID] [int] IDENTITY(1,1) NOT NULL,
	[CandidatoID] [int] NULL,
	[UsuarioVoto] [int] NULL,
	[FechaVoto] [smalldatetime] NULL,
 CONSTRAINT [PK_Voto] PRIMARY KEY CLUSTERED 
(
	[VotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[DetalleResultados]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DetalleResultados]
AS
SELECT        TOP (100) PERCENT dbo.Candidato.CandidatoID, dbo.Candidato.NombreCandidato, dbo.Gerencia.NombreGerencia, dbo.Candidato.FotoCandidato, COUNT(dbo.Voto.VotoID) AS TotalVotos
FROM            dbo.Voto INNER JOIN
                         dbo.Candidato ON dbo.Voto.CandidatoID = dbo.Candidato.CandidatoID INNER JOIN
                         dbo.Gerencia ON dbo.Candidato.GerenciaID = dbo.Gerencia.GerenciaID
GROUP BY dbo.Candidato.NombreCandidato, dbo.Gerencia.NombreGerencia, dbo.Candidato.FotoCandidato, dbo.Candidato.CandidatoID
ORDER BY TotalVotos DESC
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[EmpresaID] [int] IDENTITY(1,1) NOT NULL,
	[RIFEmpresa] [varchar](20) NOT NULL,
	[NombreEmpresa] [varchar](154) NOT NULL,
	[DireccionEmpresa] [varchar](254) NOT NULL,
	[TelefonoEmpresa] [varchar](150) NOT NULL,
	[EMailEmpresa] [varchar](50) NOT NULL,
	[WebEmpresa] [varchar](100) NULL,
	[TwitterEmpresa] [varchar](50) NULL,
	[InstagramEmpresa] [varchar](50) NULL,
	[FacebookEmpresa] [varchar](50) NULL,
	[LogoEmpresa] [varchar](50) NULL,
	[EstatusEmpresaID] [int] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[EmpresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaSucursal]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaSucursal](
	[EmpresaSucursalID] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaID] [int] NOT NULL,
	[NombreSucursal] [varchar](150) NOT NULL,
	[DireccionSucursal] [varchar](200) NOT NULL,
	[TelefonoSucursal] [varchar](150) NOT NULL,
 CONSTRAINT [PK_EmpresaSucursal] PRIMARY KEY CLUSTERED 
(
	[EmpresaSucursalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[DetalleSucursalEmpresa]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DetalleSucursalEmpresa]
AS
SELECT        TOP (100) PERCENT dbo.Empresa.EmpresaID, dbo.Empresa.RIFEmpresa, dbo.Empresa.NombreEmpresa + ' ( ' + dbo.EmpresaSucursal.NombreSucursal + ')' AS NombreEmpresaSucursal, dbo.Empresa.DireccionEmpresa, 
                         dbo.Empresa.TelefonoEmpresa, dbo.Empresa.EMailEmpresa, dbo.Empresa.WebEmpresa, dbo.Empresa.TwitterEmpresa, dbo.Empresa.InstagramEmpresa, dbo.Empresa.FacebookEmpresa, dbo.Empresa.LogoEmpresa, 
                         dbo.EmpresaSucursal.EmpresaSucursalID, dbo.EmpresaSucursal.NombreSucursal, dbo.EmpresaSucursal.DireccionSucursal, dbo.EmpresaSucursal.TelefonoSucursal
FROM            dbo.Empresa INNER JOIN
                         dbo.EmpresaSucursal ON dbo.Empresa.EmpresaID = dbo.EmpresaSucursal.EmpresaID
ORDER BY NombreEmpresaSucursal



GO
/****** Object:  Table [dbo].[SeguridadUsuarioDatos]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguridadUsuarioDatos](
	[SeguridadUsuarioDatosID] [int] IDENTITY(1,1) NOT NULL,
	[LoginUsuario] [varchar](100) NOT NULL,
	[ClaveUsuario] [varchar](100) NOT NULL,
	[NombreCompleto] [varchar](150) NOT NULL,
	[DescripcionUsuario] [varchar](150) NOT NULL,
	[SeguridadGrupoID] [int] NOT NULL,
	[UsuarioTecnico] [bit] NOT NULL,
	[EstatusUsuario] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SeguridadUsuarioDatos] PRIMARY KEY CLUSTERED 
(
	[SeguridadUsuarioDatosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguridadUsuarioSucursalEmpresa]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguridadUsuarioSucursalEmpresa](
	[SeguridadUsuarioSucursalEmpresaID] [int] IDENTITY(1,1) NOT NULL,
	[SeguridadUsuarioDatosID] [int] NOT NULL,
	[EmpresaSucursalID] [int] NULL,
 CONSTRAINT [PK_SeguridadUsuarioSucursalEmpresa] PRIMARY KEY CLUSTERED 
(
	[SeguridadUsuarioSucursalEmpresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[DetalleUsuarioEmpresa]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DetalleUsuarioEmpresa]
AS
SELECT        TOP (100) PERCENT dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID, dbo.SeguridadUsuarioDatos.LoginUsuario, dbo.SeguridadUsuarioDatos.ClaveUsuario, dbo.EmpresaSucursal.EmpresaSucursalID, 
                         dbo.Empresa.EmpresaID, dbo.Empresa.RIFEmpresa, dbo.Empresa.NombreEmpresa, dbo.Empresa.NombreEmpresa + ' ( ' + dbo.EmpresaSucursal.NombreSucursal + ')' AS NombreEmpresaSucursal, 
                         dbo.Empresa.DireccionEmpresa, dbo.Empresa.TelefonoEmpresa, dbo.Empresa.EMailEmpresa, dbo.Empresa.WebEmpresa, dbo.Empresa.TwitterEmpresa, dbo.Empresa.InstagramEmpresa, dbo.Empresa.FacebookEmpresa, 
                         dbo.Empresa.LogoEmpresa, dbo.SeguridadUsuarioDatos.NombreCompleto, dbo.SeguridadUsuarioDatos.DescripcionUsuario, dbo.SeguridadUsuarioDatos.SeguridadGrupoID, dbo.SeguridadUsuarioDatos.UsuarioTecnico, 
                         dbo.SeguridadUsuarioDatos.EstatusUsuario, dbo.EmpresaSucursal.NombreSucursal, dbo.EmpresaSucursal.DireccionSucursal, dbo.EmpresaSucursal.TelefonoSucursal
FROM            dbo.EmpresaSucursal INNER JOIN
                         dbo.Empresa ON dbo.EmpresaSucursal.EmpresaID = dbo.Empresa.EmpresaID INNER JOIN
                         dbo.SeguridadUsuarioSucursalEmpresa INNER JOIN
                         dbo.SeguridadUsuarioDatos ON dbo.SeguridadUsuarioSucursalEmpresa.SeguridadUsuarioDatosID = dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID ON 
                         dbo.EmpresaSucursal.EmpresaSucursalID = dbo.SeguridadUsuarioSucursalEmpresa.EmpresaSucursalID
ORDER BY NombreEmpresaSucursal



GO
/****** Object:  Table [dbo].[EstatusEmpresa]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstatusEmpresa](
	[EstatusEmpresaID] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstatusEmpresa] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstatusEmpresa] PRIMARY KEY CLUSTERED 
(
	[EstatusEmpresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generico]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generico](
	[GenericoID] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionGenerico] [varchar](50) NULL,
	[ValorGenerico] [varchar](50) NULL,
 CONSTRAINT [PK_Generico] PRIMARY KEY CLUSTERED 
(
	[GenericoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguridadAuditoria]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguridadAuditoria](
	[SeguridadAuditoriaID] [int] IDENTITY(1,1) NOT NULL,
	[SeguridadUsuarioDatosID] [int] NOT NULL,
	[NombreFormulario] [varchar](164) NOT NULL,
	[DescripcionProceso] [varchar](564) NOT NULL,
	[NombreEquipoCliente] [varchar](56) NOT NULL,
	[IPEquipoCliente] [varchar](56) NOT NULL,
	[FechaProceso] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_SeguridadAuditoria] PRIMARY KEY CLUSTERED 
(
	[SeguridadAuditoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguridadGrupo]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguridadGrupo](
	[SeguridadGrupoID] [int] NOT NULL,
	[NombreGrupo] [varchar](50) NOT NULL,
	[DescripcionGrupo] [varchar](400) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguridadObjeto]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguridadObjeto](
	[SeguridadObjetoID] [int] IDENTITY(1,1) NOT NULL,
	[NombreObjeto] [varchar](200) NOT NULL,
 CONSTRAINT [PK_SeguridadObjeto] PRIMARY KEY CLUSTERED 
(
	[SeguridadObjetoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguridadObjetoAcceso]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguridadObjetoAcceso](
	[SeguridadObjetoAccesoID] [int] IDENTITY(1,1) NOT NULL,
	[SeguridadGrupoID] [int] NOT NULL,
	[SeguridadObjetoID] [int] NOT NULL,
 CONSTRAINT [PK_SeguridadObjetoAcceso] PRIMARY KEY CLUSTERED 
(
	[SeguridadObjetoAccesoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 2/28/2022 6:11:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[CedulaUsuario] [int] NOT NULL,
	[NombreUsuario] [varchar](150) NOT NULL,
	[TipoUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Candidato] ON 

INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (1, 15314178, N'MARLYN LÓPEZ', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. . ', 1, N'../Candidatos/15314178.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (2, 14527479, N'ADRIANA VERGARA', N'Nullam euismod diam eu sapien faucibus venenatis. Vivamus viverra arcu aliquam nunc pretium interdum. Donec semper nibh ut condimentum molestie. Curabitur rhoncus fermentum nulla, ut molestie lectus pulvinar sit amet. Nam quis nulla fringilla, tristique eros eu, consequat ante. Donec eu est sed nisi accumsan rhoncus a vel purus. Nulla id est in ex condimentum sagittis. Fusce vitae egestas velit, lobortis finibus dui. Integer congue blandit luctus. Nam quis dictum neque. ', 2, N'../Candidatos/14527479.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (3, 20781623, N'STEFANY NARVAEZ', N'Quisque id libero tempor, vehicula justo sit amet, bibendum justo. Sed vel dapibus nulla. Aenean ut ultrices risus. Proin et tincidunt libero, ut consequat turpis. Nullam blandit urna sit amet neque aliquet tempor. Suspendisse aliquam nec eros eu imperdiet. Quisque feugiat neque ipsum, congue ultricies ante varius id. Duis aliquet lacinia libero, ac posuere purus. Nam sed orci est. Sed vel tortor id mauris maximus sollicitudin sit amet ut lorem. Vestibulum auctor at diam sed sodales. Pellentesque interdum lacus ut sapien convallis, sed feugiat urna commodo. Integer suscipit pretium metus, bibendum sodales augue porta quis. Maecenas id lacus sapien. Phasellus eleifend nisl vel mauris dapibus tincidunt id et orci. ', 3, N'../Candidatos/20781623.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (4, 20642686, N'ESMARY VASQUEZ', N'Vestibulum interdum nunc id magna mattis scelerisque. Fusce a enim a risus fermentum finibus. Nam at viverra quam. Mauris tempus ornare lacus, quis porta dui consequat in. Pellentesque pellentesque massa dolor, in porttitor ex dictum at. Donec bibendum sodales neque ut rutrum. Aliquam eget tincidunt turpis, in dictum diam. ', 4, N'../Candidatos/20642686.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (5, 23615672, N'ADONIS GONZALEZ', N'dds', 5, N'../Candidatos/23615672.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (6, 17652276, N'YORMIRA DIAZ', N'erer', 6, N'../Candidatos/17652276.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (7, 7958658, N'SONIA ZAMBRANO', N'dsd', 7, N'../Candidatos/7958658.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (8, 13161037, N'WUENDY AÑANGUREN', N'erere', 8, N'../Candidatos/13161037.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (9, 26685438, N'MARY TONITO', N'43434', 9, N'../Candidatos/26685438.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (10, 17641510, N'JEPSYS MORAO', N'trtrt', 10, N'../Candidatos/17641510.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (11, 27794854, N'NAZARETH ORIQUEN', N'erere', 11, N'../Candidatos/27794854.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (12, 17920866, N'BELGICA HERNANDEZ', N'sdsd', 12, N'../Candidatos/17920866.jpg', N'Activo')
INSERT [dbo].[Candidato] ([CandidatoID], [CedulaCandidato], [NombreCandidato], [DescripcionCandidato], [GerenciaID], [FotoCandidato], [EstatusCandidato]) VALUES (13, 24884822, N'YELISBETH SILVA', N'fdfd', 13, N'../Candidatos/24884822.jpg', N'Activo')
SET IDENTITY_INSERT [dbo].[Candidato] OFF
GO
SET IDENTITY_INSERT [dbo].[Empresa] ON 

INSERT [dbo].[Empresa] ([EmpresaID], [RIFEmpresa], [NombreEmpresa], [DireccionEmpresa], [TelefonoEmpresa], [EMailEmpresa], [WebEmpresa], [TwitterEmpresa], [InstagramEmpresa], [FacebookEmpresa], [LogoEmpresa], [EstatusEmpresaID]) VALUES (1, N'G-2000000', N'FONTUR', N'Avenida Los Jabillos', N'02127070403', N'fontur@fontur.gob.ve', N'www.fontur.gob.ve', NULL, NULL, NULL, N'../images/Logo-Fontur.png', NULL)
INSERT [dbo].[Empresa] ([EmpresaID], [RIFEmpresa], [NombreEmpresa], [DireccionEmpresa], [TelefonoEmpresa], [EMailEmpresa], [WebEmpresa], [TwitterEmpresa], [InstagramEmpresa], [FacebookEmpresa], [LogoEmpresa], [EstatusEmpresaID]) VALUES (2, N'3333', N'otra empresa', N'weer', N'ewrew', N'ewrwe', N'ewr', N'', N'', N'', N'../images/logo_javi.jpg', 1)
SET IDENTITY_INSERT [dbo].[Empresa] OFF
GO
SET IDENTITY_INSERT [dbo].[EmpresaSucursal] ON 

INSERT [dbo].[EmpresaSucursal] ([EmpresaSucursalID], [EmpresaID], [NombreSucursal], [DireccionSucursal], [TelefonoSucursal]) VALUES (1, 1, N'Sede Fontur', N'Mezzanina 1', N'N/D')
SET IDENTITY_INSERT [dbo].[EmpresaSucursal] OFF
GO
SET IDENTITY_INSERT [dbo].[EstatusEmpresa] ON 

INSERT [dbo].[EstatusEmpresa] ([EstatusEmpresaID], [NombreEstatusEmpresa]) VALUES (1, N'Activa')
INSERT [dbo].[EstatusEmpresa] ([EstatusEmpresaID], [NombreEstatusEmpresa]) VALUES (2, N'Suspendida')
INSERT [dbo].[EstatusEmpresa] ([EstatusEmpresaID], [NombreEstatusEmpresa]) VALUES (3, N'En Mora')
SET IDENTITY_INSERT [dbo].[EstatusEmpresa] OFF
GO
SET IDENTITY_INSERT [dbo].[Generico] ON 

INSERT [dbo].[Generico] ([GenericoID], [DescripcionGenerico], [ValorGenerico]) VALUES (1, N'EstatusVotacion', N'Abierta')
SET IDENTITY_INSERT [dbo].[Generico] OFF
GO
SET IDENTITY_INSERT [dbo].[Gerencia] ON 

INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (1, N'PLANIFICACIÓN Y PRESUPUESTO')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (2, N'AUDITORIA INTERNA')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (3, N'TECNOLOGÍA')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (4, N'GESTIÓN HUMANA')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (5, N'SEGURIDAD INTEGRAL')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (6, N'FINANCIAMIENTO')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (7, N'MOVILIDAD ESTUDIANTIL')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (8, N'VIAL III')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (9, N'ATENCIÓN AL CIUDADANO')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (10, N'GESTIÓN ADMINISTRATIVA')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (11, N'COMERCIALIZACIÓN')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (12, N'PRESIDENCIA')
INSERT [dbo].[Gerencia] ([GerenciaID], [NombreGerencia]) VALUES (13, N'GESTIÓN COMUNICACIONAL')
SET IDENTITY_INSERT [dbo].[Gerencia] OFF
GO
SET IDENTITY_INSERT [dbo].[SeguridadAuditoria] ON 

INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (1, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:32:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (2, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:34:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (3, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:35:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (4, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:36:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (5, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:36:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (6, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:37:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (7, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:38:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (8, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:39:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (9, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:44:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (10, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:54:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (11, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T19:55:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (12, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T21:19:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (13, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-20T21:35:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (14, 0, N'/Eleccion/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'ain-06.fontur.sede', N'172.16.7.240', CAST(N'2019-08-21T11:00:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (15, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::a8dc:8e5c:f98d:88f9%4', CAST(N'2019-08-21T11:32:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (16, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::a8dc:8e5c:f98d:88f9%4', CAST(N'2019-08-21T11:33:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (17, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::a8dc:8e5c:f98d:88f9%4', CAST(N'2019-08-21T11:52:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (18, 0, N'/Eleccion/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'ain-06.fontur.sede', N'172.16.7.240', CAST(N'2019-08-21T11:55:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (19, 0, N'/Eleccion/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'gti-ddm-25.fontur.sede', N'172.16.7.240', CAST(N'2019-08-21T12:10:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (20, 0, N'/Vista/PanelDeControl.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T20:46:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (21, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T20:50:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (22, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T20:57:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (23, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T20:58:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (24, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T20:58:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (25, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:18:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (26, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:19:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (27, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:25:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (28, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:26:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (29, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:41:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (30, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:42:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (31, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:45:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (32, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-22T21:46:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (33, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-23T09:15:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (34, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-23T09:38:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (35, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-23T09:43:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (36, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-6SALJFB', N'fe80::78cf:d0b5:e535:e26b%21', CAST(N'2019-08-23T09:44:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (37, 0, N'/Vista/Resultado.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T10:42:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (38, 0, N'/Vista/Resultado.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T10:42:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (39, 0, N'/Vista/Resultado.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T10:42:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (40, 0, N'/Vista/Resultado.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T10:42:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (41, 0, N'/Vista/Resultado.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T10:43:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (42, 0, N'/Vista/Resultado.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T10:43:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (43, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T10:52:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (44, 0, N'/Vista/Votar.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T11:01:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (45, 0, N'/Vista/PanelDeControl.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T11:43:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (46, 0, N'/Vista/PanelDeControl.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T11:44:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (47, 0, N'/Vista/Resultado.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'GTI-DDM-4.fontur.sede', N'fe80::dcd4:d7f9:cc8e:9f30%14', CAST(N'2019-08-26T11:50:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (48, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'kubernetes.docker.internal', N'fe80::5077:8475:6ec2:6173%27', CAST(N'2022-02-26T15:59:00' AS SmallDateTime))
INSERT [dbo].[SeguridadAuditoria] ([SeguridadAuditoriaID], [SeguridadUsuarioDatosID], [NombreFormulario], [DescripcionProceso], [NombreEquipoCliente], [IPEquipoCliente], [FechaProceso]) VALUES (49, 0, N'/Galeria.aspx', N'Intento de entrar en pantalla sin iniciar sesión', N'DESKTOP-D3S3F0U', N'fe80::5077:8475:6ec2:6173%27', CAST(N'2022-02-26T17:26:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[SeguridadAuditoria] OFF
GO
INSERT [dbo].[SeguridadGrupo] ([SeguridadGrupoID], [NombreGrupo], [DescripcionGrupo]) VALUES (1, N'Votacion', N'Puden Votar')
INSERT [dbo].[SeguridadGrupo] ([SeguridadGrupoID], [NombreGrupo], [DescripcionGrupo]) VALUES (10, N'ADMINISTRADOR', N'ADMINISTRADOR')
GO
SET IDENTITY_INSERT [dbo].[SeguridadObjeto] ON 

INSERT [dbo].[SeguridadObjeto] ([SeguridadObjetoID], [NombreObjeto]) VALUES (1, N'Galeria')
INSERT [dbo].[SeguridadObjeto] ([SeguridadObjetoID], [NombreObjeto]) VALUES (2, N'Votar')
SET IDENTITY_INSERT [dbo].[SeguridadObjeto] OFF
GO
SET IDENTITY_INSERT [dbo].[SeguridadObjetoAcceso] ON 

INSERT [dbo].[SeguridadObjetoAcceso] ([SeguridadObjetoAccesoID], [SeguridadGrupoID], [SeguridadObjetoID]) VALUES (1, 1, 1)
INSERT [dbo].[SeguridadObjetoAcceso] ([SeguridadObjetoAccesoID], [SeguridadGrupoID], [SeguridadObjetoID]) VALUES (2, 1, 2)
SET IDENTITY_INSERT [dbo].[SeguridadObjetoAcceso] OFF
GO
SET IDENTITY_INSERT [dbo].[SeguridadUsuarioDatos] ON 

INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2, N'Administrador', N'osmel', N'Administrador', N'ADMINISTRADOR', 10, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1667, N'JESUS RAMON MERCHAN HERRERA', N'648491', N'JESUS RAMON MERCHAN HERRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1668, N'EDMUNDO ALBERTO ALVARADO', N'1113221', N'EDMUNDO ALBERTO ALVARADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1669, N'ANGEL ANTONIO GOITIA CALDERA', N'1425448', N'ANGEL ANTONIO GOITIA CALDERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1670, N'RAMON JOSE GONZALEZ ACOSTA', N'1640228', N'RAMON JOSE GONZALEZ ACOSTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1671, N'MARCOS GERARDI OCHOA', N'2959819', N'MARCOS GERARDI OCHOA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1672, N'CARMEN CRISTINA GUTIERREZ DE RODRIGUEZ', N'3265944', N'CARMEN CRISTINA GUTIERREZ DE RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1673, N'JOSE LUIS VALBUENA LEAL', N'3378727', N'JOSE LUIS VALBUENA LEAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1674, N'WILFREDO PAZ RAMOS', N'3473586', N'WILFREDO PAZ RAMOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1675, N'JESUS ADALBERTO CAMPOS TORRES', N'3508592', N'JESUS ADALBERTO CAMPOS TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1676, N'RAFAEL ENRIQUE OLDENBURG FLORES', N'3561101', N'RAFAEL ENRIQUE OLDENBURG FLORES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1677, N'ARISTIDES SALAS LANDER', N'3659800', N'ARISTIDES SALAS LANDER', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1678, N'EDUARDO ANTONIO IBARRA LARA', N'3742201', N'EDUARDO ANTONIO IBARRA LARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1679, N'SAUL JONAS MANZANO GOMEZ', N'3869286', N'SAUL JONAS MANZANO GOMEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1680, N'IVAN JOSE PEÑA', N'3932036', N'IVAN JOSE PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1681, N'GILDA DEL VALLE GIL LEON', N'4051731', N'GILDA DEL VALLE GIL LEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1682, N'JORGE LUIS SERRANO MENDOZA', N'4080943', N'JORGE LUIS SERRANO MENDOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1683, N'CARMEN BEHORA ARAUJO MORALES', N'4225063', N'CARMEN BEHORA ARAUJO MORALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1684, N'NIDIA ANGELINA GARCIA REYES', N'4249572', N'NIDIA ANGELINA GARCIA REYES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1685, N'WILLIAM ENRIQUE URDANETA SOTO', N'4327556', N'WILLIAM ENRIQUE URDANETA SOTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1686, N'JOSE ALFREDO MARTINEZ', N'4356890', N'JOSE ALFREDO MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1687, N'ZOILA EMILIA CARRUIDO ORTEGA', N'4388625', N'ZOILA EMILIA CARRUIDO ORTEGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1688, N'EVELIA ESPERANZA LOZADA DE HERNANDEZ', N'4447078', N'EVELIA ESPERANZA LOZADA DE HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1689, N'RODOLFO ARQUIMEDES SANCHEZ ROMERO', N'4519114', N'RODOLFO ARQUIMEDES SANCHEZ ROMERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1690, N'PEDRO ANTONIO PRADO CARMONA', N'4530642', N'PEDRO ANTONIO PRADO CARMONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1691, N'CRUZ DE LA FLOR MOLEIRO VEGAS', N'4551126', N'CRUZ DE LA FLOR MOLEIRO VEGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1692, N'BLANCA ESTELA AGUILAR MALAGUERA', N'4559207', N'BLANCA ESTELA AGUILAR MALAGUERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1693, N'MARCO ARCENIO MEDINA ACEVEDO', N'4602427', N'MARCO ARCENIO MEDINA ACEVEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1694, N'JESUS ENRIQUE LOVERA GONZALEZ', N'4679077', N'JESUS ENRIQUE LOVERA GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1695, N'EDDY MERCEDES HERNANDEZ', N'4727195', N'EDDY MERCEDES HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1696, N'BEDDIER DE JESUS BRETT CUMARE', N'4793582', N'BEDDIER DE JESUS BRETT CUMARE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1697, N'ALIDES DEL CARMEN SANTOS GARCIA', N'4826797', N'ALIDES DEL CARMEN SANTOS GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1698, N'SADYS CARLOTA ORTEGA DE RODRIGUEZ', N'4862533', N'SADYS CARLOTA ORTEGA DE RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1699, N'JOSE DE JESUS MARTINEZ', N'4863671', N'JOSE DE JESUS MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1700, N'GREGORIO ASKIOGLI HOMESY', N'4884986', N'GREGORIO ASKIOGLI HOMESY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1701, N'FREDDY ARMANDO BAYONA PIÑERO', N'5137367', N'FREDDY ARMANDO BAYONA PIÑERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1702, N'MARIANA AIDA HERNANDEZ DE VIERMA', N'5143658', N'MARIANA AIDA HERNANDEZ DE VIERMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1703, N'SIMEON JOSE HERNANDEZ SERRANO', N'5150207', N'SIMEON JOSE HERNANDEZ SERRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1704, N'LUCIA DOLORES DELGADO SARMIENTO', N'5152602', N'LUCIA DOLORES DELGADO SARMIENTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1705, N'VICTOR HUGO GONZALEZ', N'5157846', N'VICTOR HUGO GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1706, N'YALITZA MORELA SOTO BARRIOS', N'5166608', N'YALITZA MORELA SOTO BARRIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1707, N'JORGE LUIS SANCHEZ MONTERO', N'5167479', N'JORGE LUIS SANCHEZ MONTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1708, N'PEDRO ENRIQUE RIVAS MEDINA', N'5177894', N'PEDRO ENRIQUE RIVAS MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1709, N'JOSE JULIAN SANCHEZ MENDEZ', N'5199372', N'JOSE JULIAN SANCHEZ MENDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1710, N'REYNA DEL CARMEN CASTAÑEDA', N'5251539', N'REYNA DEL CARMEN CASTAÑEDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1711, N'EDGAR JOSE ACOSTA', N'5275952', N'EDGAR JOSE ACOSTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1712, N'OSCAR ARMANDO RUBIDO GARCES', N'5298161', N'OSCAR ARMANDO RUBIDO GARCES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1713, N'ELSY LEONOR ENDILES SOTO', N'5307079', N'ELSY LEONOR ENDILES SOTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1714, N'OMAIRA COROMOTO CASTILLO RINCON', N'5315421', N'OMAIRA COROMOTO CASTILLO RINCON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1715, N'LUIS FERNANDO RAMIREZ', N'5326514', N'LUIS FERNANDO RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1716, N'FLOR OMAIRA ROBLES BUITRAGO', N'5405535', N'FLOR OMAIRA ROBLES BUITRAGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1717, N'DANNY JOSEFINA ALVAREZ LOPEZ', N'5411947', N'DANNY JOSEFINA ALVAREZ LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1718, N'NORARYS COROMOTO PADILLA ARMELLA', N'5418508', N'NORARYS COROMOTO PADILLA ARMELLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1719, N'JOSE LUIS AGUILERA', N'5521596', N'JOSE LUIS AGUILERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1720, N'GLADYS VALERO', N'5524771', N'GLADYS VALERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1721, N'JACOB ELIAZAR REYES', N'5578706', N'JACOB ELIAZAR REYES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1722, N'HUGO ARMANDO ORTIZ FIGUEROA', N'5580641', N'HUGO ARMANDO ORTIZ FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1723, N'CRUZ DAVID GUERRA', N'5580675', N'CRUZ DAVID GUERRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1724, N'RUBEN DARIO CELIS ROJAS', N'5591464', N'RUBEN DARIO CELIS ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1725, N'JOSE ENDER NAVAS HERNÁNDEZ', N'5610641', N'JOSE ENDER NAVAS HERNÁNDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1726, N'AURA MARINA GARCIA OVIEDO', N'5614329', N'AURA MARINA GARCIA OVIEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1727, N'LEONARDO AQUILES SANCHEZ SANDOVAL', N'5673551', N'LEONARDO AQUILES SANCHEZ SANDOVAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1728, N'BELKYS ADRIANA SANCHEZ DIAZ', N'5810877', N'BELKYS ADRIANA SANCHEZ DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1729, N'ROLANDO JOSE CASTILLO GODOY', N'5890041', N'ROLANDO JOSE CASTILLO GODOY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1730, N'JUAN DE DIOS PIÑA LOPEZ', N'5937062', N'JUAN DE DIOS PIÑA LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1731, N'RICARDO JOSÉ LAGONELL GIL', N'5974735', N'RICARDO JOSÉ LAGONELL GIL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1732, N'ROLANDO JOSÉ ESCALONA UGAS', N'6017058', N'ROLANDO JOSÉ ESCALONA UGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1733, N'SARA CONSTANZA MORALES DE PIETERS', N'6018030', N'SARA CONSTANZA MORALES DE PIETERS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1734, N'CESAR AUGUSTO RAMIREZ PADILLA', N'6018347', N'CESAR AUGUSTO RAMIREZ PADILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1735, N'RICARDO RAMON RIVERA MONTIEL', N'6044898', N'RICARDO RAMON RIVERA MONTIEL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1736, N'MARIA DEL VALLE ROA', N'6054041', N'MARIA DEL VALLE ROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1737, N'MANUEL REINALDO COURTOIS GONZALEZ', N'6067808', N'MANUEL REINALDO COURTOIS GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1738, N'WILLIAMS RENE ORTIZ ALFARO', N'6098294', N'WILLIAMS RENE ORTIZ ALFARO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1739, N'JOSEFINA LUCRECIA GUEDEZ HERRERA', N'6102379', N'JOSEFINA LUCRECIA GUEDEZ HERRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1740, N'FREDDY JOSE MOLINA BRITO', N'6115903', N'FREDDY JOSE MOLINA BRITO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1741, N'CARLOS EDUARDO INFANTE', N'6129470', N'CARLOS EDUARDO INFANTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1742, N'JUAN ANTONIO TORRES MONTERO', N'6134332', N'JUAN ANTONIO TORRES MONTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1743, N'JACQUELINE XIOMARA AVENDAÑO DE ANGARITA', N'6140254', N'JACQUELINE XIOMARA AVENDAÑO DE ANGARITA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1744, N'JUAN ALBERTO SMITH', N'6149239', N'JUAN ALBERTO SMITH', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1745, N'YSAIAS PEÑA GONZALEZ', N'6169103', N'YSAIAS PEÑA GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1746, N'JOSE AGUSTIN SAAVEDRA', N'6181777', N'JOSE AGUSTIN SAAVEDRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1747, N'CARLOS ALEXANDER SILVA GUTIERREZ', N'6190589', N'CARLOS ALEXANDER SILVA GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1748, N'SONIA JANETH ROMERO DUQUE', N'6199607', N'SONIA JANETH ROMERO DUQUE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1749, N'INES MARIA ILARRAZA BLANCO', N'6204974', N'INES MARIA ILARRAZA BLANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1750, N'JULIETA SERRANO TREJO', N'6246170', N'JULIETA SERRANO TREJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1751, N'JOSE LUIS PETIT BRACHO', N'6252572', N'JOSE LUIS PETIT BRACHO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1752, N'MIRELYS JOSEFINA ULLOA VERASTEGUI', N'6257720', N'MIRELYS JOSEFINA ULLOA VERASTEGUI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1753, N'HAYDEE JOSEFINA CLAVIJO RAYMOND', N'6261674', N'HAYDEE JOSEFINA CLAVIJO RAYMOND', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1754, N'XIOMARA GUISADO', N'6273645', N'XIOMARA GUISADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1755, N'CHACHON GOMEZ JOSE PASTOR', N'6285909', N'CHACHON GOMEZ JOSE PASTOR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1756, N'RICHARD OMAR RIOS LUQUE', N'6300916', N'RICHARD OMAR RIOS LUQUE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1757, N'CESAR HUMBERTO JIMENEZ PARADA', N'6302908', N'CESAR HUMBERTO JIMENEZ PARADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1758, N'MAYRA ALEJANDRINA MENDEZ RIVAS', N'6305477', N'MAYRA ALEJANDRINA MENDEZ RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1759, N'DILIA CLARET ACUÑA MENDOZA', N'6308158', N'DILIA CLARET ACUÑA MENDOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1760, N'WILMER ANTONIO CHACON AGÜERO', N'6320601', N'WILMER ANTONIO CHACON AGÜERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1761, N'ROSA MARGARITA HURTADO NUÑEZ', N'6327419', N'ROSA MARGARITA HURTADO NUÑEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1762, N'JUDITH MARGARITA SALAS CERRADA', N'6332182', N'JUDITH MARGARITA SALAS CERRADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1763, N'ALFREDO VALENTIN VALERA MORALES', N'6338961', N'ALFREDO VALENTIN VALERA MORALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1764, N'ZULAY ESPERANZA HERNANDEZ', N'6354353', N'ZULAY ESPERANZA HERNANDEZ', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1765, N'ABRAHAM LARA CHAVEZ', N'6361852', N'ABRAHAM LARA CHAVEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1766, N'JOSE RAFAEL MARRERO BETANCOURT', N'6364758', N'JOSE RAFAEL MARRERO BETANCOURT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1767, N'HENRY EDUARDO VILLEGAS PONCE', N'6396426', N'HENRY EDUARDO VILLEGAS PONCE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1768, N'ADRIAN JOSE ILARRAZA MONTERO', N'6399052', N'ADRIAN JOSE ILARRAZA MONTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1769, N'FORTUNATO DOMINGO COLAUTTI HERNANDEZ', N'6402781', N'FORTUNATO DOMINGO COLAUTTI HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1770, N'MARIO MARTINEZ', N'6412618', N'MARIO MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1771, N'EDGAR JESUS TORREALBA GUTIERREZ', N'6414853', N'EDGAR JESUS TORREALBA GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1772, N'DIOVA MARQUEZ SUAREZ', N'6425680', N'DIOVA MARQUEZ SUAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1773, N'ENEIDA MARVAL RUIZ', N'6438375', N'ENEIDA MARVAL RUIZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1774, N'ALMA ELIZABETH LEON  PANTALEON', N'6466031', N'ALMA ELIZABETH LEON  PANTALEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1775, N'JOSE RAFAEL MALAVE GONZALEZ', N'6484516', N'JOSE RAFAEL MALAVE GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1776, N'GLENDA LICET CRUZCO IRIARTE', N'6498683', N'GLENDA LICET CRUZCO IRIARTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1777, N'ANGEL EDECIO GONZALEZ HOPEDALES', N'6501139', N'ANGEL EDECIO GONZALEZ HOPEDALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1778, N'SONIA MARIBEL ARIAS', N'6527500', N'SONIA MARIBEL ARIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1779, N'DANNYS NOHEMIA MARTINEZ BLANCO', N'6553375', N'DANNYS NOHEMIA MARTINEZ BLANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1780, N'CARLOS JOSE UZCATEGUI QUINTERO', N'6553413', N'CARLOS JOSE UZCATEGUI QUINTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1781, N'CESAR JOSE BRITO LOZADA', N'6643384', N'CESAR JOSE BRITO LOZADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1782, N'GLADYS MERCEDES HURTADO', N'6698467', N'GLADYS MERCEDES HURTADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1783, N'DALITZA DEL VALLE PALACIOS', N'6727473', N'DALITZA DEL VALLE PALACIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1784, N'ODRILY VIANNEY PAREDES', N'6748355', N'ODRILY VIANNEY PAREDES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1785, N'NEIRO JESUS LEDEZMA CAMPOS', N'6801899', N'NEIRO JESUS LEDEZMA CAMPOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1786, N'CLAUDIO ENRIQUE CUBILLAN BRAVO', N'6830199', N'CLAUDIO ENRIQUE CUBILLAN BRAVO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1787, N'LUIS ZAGDIEL LEVENTIS ADAN', N'6835043', N'LUIS ZAGDIEL LEVENTIS ADAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1788, N'JOSE LUIS LIENDO', N'6841037', N'JOSE LUIS LIENDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1789, N'MANUEL EDMUNDO OROPEZA DIAZ', N'6841103', N'MANUEL EDMUNDO OROPEZA DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1790, N'LEIDYS COROMOTO MENDOZA SANCHEZ', N'6869745', N'LEIDYS COROMOTO MENDOZA SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1791, N'CARMEN MARIA UZCATEGUI DE CAMACHO', N'6876691', N'CARMEN MARIA UZCATEGUI DE CAMACHO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1792, N'EDUARDO ENRIQUE CAMACHO PEREZ', N'6890248', N'EDUARDO ENRIQUE CAMACHO PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1793, N'HERMELINDA MERCEDES HERNANDEZ BARRIOS', N'6895274', N'HERMELINDA MERCEDES HERNANDEZ BARRIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1794, N'REBECA DEL CARMEN MOLINA VILLEGAS', N'6898233', N'REBECA DEL CARMEN MOLINA VILLEGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1795, N'ALEX ANTONIO PARRA FIGUERA', N'6900502', N'ALEX ANTONIO PARRA FIGUERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1796, N'ADRIAN RAFAEL CALDERON BETANCOURT', N'6902245', N'ADRIAN RAFAEL CALDERON BETANCOURT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1797, N'JOSE LUIS MELO DIAZ', N'6905164', N'JOSE LUIS MELO DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1798, N'ANTONIA JOSEFINA CASTILLO DE ARTEAGA', N'6905726', N'ANTONIA JOSEFINA CASTILLO DE ARTEAGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1799, N'MANUELA VARGAS MARQUEZ', N'6905727', N'MANUELA VARGAS MARQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1800, N'ANGEL ALBERTO CABRERA SOTO', N'6908746', N'ANGEL ALBERTO CABRERA SOTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1801, N'JUAN CARLOS MURIA', N'6926535', N'JUAN CARLOS MURIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1802, N'BEATRIZ COROMOTO LOBO HERRERA', N'6963105', N'BEATRIZ COROMOTO LOBO HERRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1803, N'FRANK NATALIO RODRIGUEZ LÓPEZ', N'6968068', N'FRANK NATALIO RODRIGUEZ LÓPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1804, N'MARIA CONSUELO VALLEJOS LAMELA', N'6969248', N'MARIA CONSUELO VALLEJOS LAMELA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1805, N'HECTOR FRANCISCO LEMUS', N'6969464', N'HECTOR FRANCISCO LEMUS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1806, N'LUIS MANUEL SILVA', N'6992490', N'LUIS MANUEL SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1807, N'ERNESTA DEL CARMEN BORGES ORTIZ', N'7027906', N'ERNESTA DEL CARMEN BORGES ORTIZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1808, N'PABLO FABRICIO MATA RODRIGUEZ', N'7063700', N'PABLO FABRICIO MATA RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1809, N'MARIBEL CONCEPCION ROMAN RAMIREZ', N'7098425', N'MARIBEL CONCEPCION ROMAN RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1810, N'NUMAN JESUS HERNANDEZ PEÑA', N'7159543', N'NUMAN JESUS HERNANDEZ PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1811, N'ARESBI JOSE MORGADO LANDINEZ', N'7164719', N'ARESBI JOSE MORGADO LANDINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1812, N'CESAR RAMON ALVAREZ GRIMAN', N'7169806', N'CESAR RAMON ALVAREZ GRIMAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1813, N'ROBERTO ANTONIO LARA FAJARDO', N'7202035', N'ROBERTO ANTONIO LARA FAJARDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1814, N'MAXIMILIANO IRIZA ESCOBAR', N'7221665', N'MAXIMILIANO IRIZA ESCOBAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1815, N'CARLOS HUMBERTO ROA ESCALANTE', N'7224322', N'CARLOS HUMBERTO ROA ESCALANTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1816, N'JOSE GREGORIO SANCHEZ', N'7229899', N'JOSE GREGORIO SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1817, N'DAMELYS MERCEDES ROJAS DIAZ', N'7276523', N'DAMELYS MERCEDES ROJAS DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1818, N'NATIVIDAD DE LA CRUZ SEQUERA', N'7303394', N'NATIVIDAD DE LA CRUZ SEQUERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1819, N'MARIO GUILLERMO ZAPATA PALMA', N'7324788', N'MARIO GUILLERMO ZAPATA PALMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1820, N'ELIZABETH PEÑA DE ULACIO', N'7364223', N'ELIZABETH PEÑA DE ULACIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1821, N'ALBA  MARIA COLMENAREZ GRATEROL', N'7398089', N'ALBA  MARIA COLMENAREZ GRATEROL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1822, N'WILLIS ENRIQUE DIAZ COLMENARES', N'7402353', N'WILLIS ENRIQUE DIAZ COLMENARES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1823, N'JHONNY RAMON GARMENDIA', N'7488851', N'JHONNY RAMON GARMENDIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1824, N'WILLIANS RAFAEL LEÓN MALDONADO', N'7563473', N'WILLIANS RAFAEL LEÓN MALDONADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1825, N'CARMEN ARES MATA', N'7573047', N'CARMEN ARES MATA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1826, N'JOSE ANTONIO LUCENA', N'7589917', N'JOSE ANTONIO LUCENA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1827, N'MERVIN WILLIAM RODRIGUEZ FERRER', N'7611930', N'MERVIN WILLIAM RODRIGUEZ FERRER', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1828, N'CESAR AUGUSTO CASTILLO ROJAS', N'7684817', N'CESAR AUGUSTO CASTILLO ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1829, N'ENDER ELIAS MARTINEZ PEROZO', N'7726564', N'ENDER ELIAS MARTINEZ PEROZO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1830, N'JOSE JESUS MAS Y RUBI GUTIERREZ', N'7869718', N'JOSE JESUS MAS Y RUBI GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1831, N'LUCIA DEL ROSARIO BARRIOS FERRER', N'7884151', N'LUCIA DEL ROSARIO BARRIOS FERRER', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1832, N'MIRALLYS LIDIA FIGUERA SANTAELLA', N'7929371', N'MIRALLYS LIDIA FIGUERA SANTAELLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1833, N'OMAR ANTONIO GARCIA', N'7942205', N'OMAR ANTONIO GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1834, N'JHONNY JOSE RAMOS AMAYA', N'7943550', N'JHONNY JOSE RAMOS AMAYA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1835, N'MARIA CONCEPCION VICUÑA PEREZ', N'7943759', N'MARIA CONCEPCION VICUÑA PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1836, N'MILAGROS GUILLERMINA OROPEZA REQUE', N'7951656', N'MILAGROS GUILLERMINA OROPEZA REQUE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1837, N'GRACIELA GERALDINA GUSMAN GANDICA', N'7958193', N'GRACIELA GERALDINA GUSMAN GANDICA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1838, N'SONIA YANIREZ ZAMBRANO MARQUEZ', N'7958658', N'SONIA YANIREZ ZAMBRANO MARQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1839, N'ANGELA YSMENIA LEAL MONCADA', N'7959053', N'ANGELA YSMENIA LEAL MONCADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1840, N'FRANKLIN JAVIER LUJANO', N'7962764', N'FRANKLIN JAVIER LUJANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1841, N'NILSON JOSE CARIDAD CARDENAS', N'7965295', N'NILSON JOSE CARIDAD CARDENAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1842, N'MARIA ODALIS VERGARA', N'8013085', N'MARIA ODALIS VERGARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1843, N'CARMEN DIANA PEREZ  UZCATEGUI', N'8025004', N'CARMEN DIANA PEREZ  UZCATEGUI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1844, N'ROSA MARY CALDERON', N'8046478', N'ROSA MARY CALDERON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1845, N'TULIO RAFAEL RUIZ SANABRIA', N'8161791', N'TULIO RAFAEL RUIZ SANABRIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1846, N'ANA JULIA RUIZ PARACARE', N'8266868', N'ANA JULIA RUIZ PARACARE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1847, N'JUAN RAFAEL RODRIGUEZ PERDOMO', N'8307998', N'JUAN RAFAEL RODRIGUEZ PERDOMO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1848, N'RENNY JOSE MEDINA', N'8379535', N'RENNY JOSE MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1849, N'JOSE  GREGORIO RAMIREZ', N'8418250', N'JOSE  GREGORIO RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1850, N'CELSO JULIO FUENTES RONDON', N'8443939', N'CELSO JULIO FUENTES RONDON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1851, N'ANTONIO JOSE MENESES', N'8480858', N'ANTONIO JOSE MENESES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1852, N'RICHARD MANUEL FINOL FERRER', N'8508946', N'RICHARD MANUEL FINOL FERRER', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1853, N'CARLOS ANTONIO JURADO LOPEZ', N'8550411', N'CARLOS ANTONIO JURADO LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1854, N'ZAIDA DEL CARMEN AMAYA JIMENEZ', N'8575584', N'ZAIDA DEL CARMEN AMAYA JIMENEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1855, N'ANGEL RAFAEL ZAPATA PEREZ', N'8584590', N'ANGEL RAFAEL ZAPATA PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1856, N'CARMEN  ANGELINA FIGUEREDO', N'8609849', N'CARMEN  ANGELINA FIGUEREDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1857, N'LUIS ENRIQUE CASTILLO ESCALONA', N'8631866', N'LUIS ENRIQUE CASTILLO ESCALONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1858, N'MARIO RICARDO RUIZ VARGAS', N'8654796', N'MARIO RICARDO RUIZ VARGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1859, N'ZOILO JOSE SANCHEZ RIVERO', N'8661782', N'ZOILO JOSE SANCHEZ RIVERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1860, N'LUCIDIO ANTONIO FLORES LEAL', N'8703114', N'LUCIDIO ANTONIO FLORES LEAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1861, N'ORLANDO ELIAS PEREIRA SALAS', N'8706779', N'ORLANDO ELIAS PEREIRA SALAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1862, N'MORELIA JOSEFINA TORRES', N'8719398', N'MORELIA JOSEFINA TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1863, N'ALBA ROSA TROMPETERO MATERANO', N'8722999', N'ALBA ROSA TROMPETERO MATERANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1864, N'JOSE GREGORIO MORA MARQUEZ', N'8732274', N'JOSE GREGORIO MORA MARQUEZ', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1865, N'CARLOS ENRIQUE RAMIREZ FERNANDEZ', N'8744626', N'CARLOS ENRIQUE RAMIREZ FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1866, N'FIDIAS NICOLAS HURTADO HERNANDEZ', N'8762306', N'FIDIAS NICOLAS HURTADO HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1867, N'YANET DEL CARMEN BELLO VIANA', N'8776228', N'YANET DEL CARMEN BELLO VIANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1868, N'ISABEL CRISTINA 15497976', N'8789003', N'ISABEL CRISTINA 15497976', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1869, N'ADRIANA MARIA RUIZ ZERPA', N'8795569', N'ADRIANA MARIA RUIZ ZERPA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1870, N'EMILIA DEL VALLE MENDEZ HIGUERA', N'8795979', N'EMILIA DEL VALLE MENDEZ HIGUERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1871, N'SANDRA DE LOURDES RON GONZALEZ', N'8807695', N'SANDRA DE LOURDES RON GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1872, N'LEONEL RAMON MEZA MEDRANO', N'8929358', N'LEONEL RAMON MEZA MEDRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1873, N'JOSE DANIEL REINA', N'8929792', N'JOSE DANIEL REINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1874, N'MARIA TERESA VILLARROEL MARQUEZ', N'8940577', N'MARIA TERESA VILLARROEL MARQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1875, N'YOEL ERMILO YANEZ', N'8953745', N'YOEL ERMILO YANEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1876, N'ALBERTO JOSE FAJARDO RODRIGUEZ', N'8972273', N'ALBERTO JOSE FAJARDO RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1877, N'ALVARO ENRIQUE BARROSO FLORES', N'8998778', N'ALVARO ENRIQUE BARROSO FLORES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1878, N'ANTONIO ORANGEL VILLARREAL UZCATEGUI', N'9004988', N'ANTONIO ORANGEL VILLARREAL UZCATEGUI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1879, N'MILIDA ROSA CASTILLO FERNANDEZ', N'9045310', N'MILIDA ROSA CASTILLO FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1880, N'NIBARDO JOSÉ GUTIERREZ CUBILLAN', N'9052357', N'NIBARDO JOSÉ GUTIERREZ CUBILLAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1881, N'CARLOS LUIS HERNANDEZ MALAVE', N'9064067', N'CARLOS LUIS HERNANDEZ MALAVE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1882, N'WILFREDO JOSE FLORES CORDERO', N'9096429', N'WILFREDO JOSE FLORES CORDERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1883, N'JESUS MARINO CAMARGO', N'9145396', N'JESUS MARINO CAMARGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1884, N'VILMA JOSEFINA LOPEZ CAMARGO', N'9159527', N'VILMA JOSEFINA LOPEZ CAMARGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1885, N'LUIS ANGEL BOSCAN JAUREGUI', N'9222596', N'LUIS ANGEL BOSCAN JAUREGUI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1886, N'CARLOS MIGUEL RAMIREZ', N'9260296', N'CARLOS MIGUEL RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1887, N'EDUARDO JESUS CASTELLANOS ARAUJO', N'9329257', N'EDUARDO JESUS CASTELLANOS ARAUJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1888, N'ELISA COROMOTO COLMENARES GARCIA', N'9348891', N'ELISA COROMOTO COLMENARES GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1889, N'CARLOS FRANCISCO SOMANA CATALAN', N'9412523', N'CARLOS FRANCISCO SOMANA CATALAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1890, N'PINA SICA CARPIO', N'9415376', N'PINA SICA CARPIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1891, N'ESTHER YULIMAR RUEDA BALLESTEROS', N'9418336', N'ESTHER YULIMAR RUEDA BALLESTEROS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1892, N'AUDREY MARIELLA MONTES DE OCA LORETO', N'9431613', N'AUDREY MARIELLA MONTES DE OCA LORETO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1893, N'MARIBEL COROMOTO ROMERO TORRES', N'9435991', N'MARIBEL COROMOTO ROMERO TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1894, N'NESTOR ALFONSO CONTRERAS RANGEL', N'9462970', N'NESTOR ALFONSO CONTRERAS RANGEL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1895, N'CARMEN IRENE OSORIO BRICEÑO', N'9470273', N'CARMEN IRENE OSORIO BRICEÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1896, N'MAGDA ROSA LOPEZ HENRIQUEZ', N'9484058', N'MAGDA ROSA LOPEZ HENRIQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1897, N'VICTOR JOSE ACOSTA BARBOZA', N'9484248', N'VICTOR JOSE ACOSTA BARBOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1898, N'FRANK MERCEDES CUAURO', N'9504493', N'FRANK MERCEDES CUAURO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1899, N'FRANK REINALDO GARCIA MALDONADO', N'9520874', N'FRANK REINALDO GARCIA MALDONADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1900, N'ANTONIO JOSE RUIZ CASTILLO', N'9524036', N'ANTONIO JOSE RUIZ CASTILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1901, N'MARIA VICENTA MEJIAS SILVA', N'9546720', N'MARIA VICENTA MEJIAS SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1902, N'ALEXIS ALBERTO LINARES RODRIGUEZ', N'9561131', N'ALEXIS ALBERTO LINARES RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1903, N'YSMAEL ANTONIO MARTINEZ VALENZUELA', N'9563240', N'YSMAEL ANTONIO MARTINEZ VALENZUELA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1904, N'MORAIMA CRISTINA HERNANDEZ BOLIVAR', N'9657281', N'MORAIMA CRISTINA HERNANDEZ BOLIVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1905, N'EUCLIDES MIGUEL GONZALEZ HURTADO', N'9662454', N'EUCLIDES MIGUEL GONZALEZ HURTADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1906, N'JOSE GREGORIO SOTERAN MARTINEZ', N'9667269', N'JOSE GREGORIO SOTERAN MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1907, N'ALEXANDRA JOSEFINA MONTES DE OCA MERCAY', N'9675383', N'ALEXANDRA JOSEFINA MONTES DE OCA MERCAY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1908, N'YULIMAR GADEA MORILLO', N'9694866', N'YULIMAR GADEA MORILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1909, N'RAMON JOSE ARREAZA BAEZ', N'9817045', N'RAMON JOSE ARREAZA BAEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1910, N'YURBELIA BREXZAIDA LA ROSA', N'9817466', N'YURBELIA BREXZAIDA LA ROSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1911, N'MAGALYS MERCEDES HEREDIA GIMENEZ', N'9822543', N'MAGALYS MERCEDES HEREDIA GIMENEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1912, N'JOSE RAMON RODRIGUEZ CARMONA', N'9839928', N'JOSE RAMON RODRIGUEZ CARMONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1913, N'DALILA DEL VALLE GUTIERREZ MARCANO', N'9859176', N'DALILA DEL VALLE GUTIERREZ MARCANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1914, N'MIRLA LUCIA TORRES GOLIOT', N'9878110', N'MIRLA LUCIA TORRES GOLIOT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1915, N'MIGUEL ANGEL VASQUEZ TABARES', N'9890874', N'MIGUEL ANGEL VASQUEZ TABARES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1916, N'FELIX ANTONIO BETANCOURT BRITO', N'9897572', N'FELIX ANTONIO BETANCOURT BRITO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1917, N'JANETH DEL CARMEN MEDINA SANQUIZ', N'9928777', N'JANETH DEL CARMEN MEDINA SANQUIZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1918, N'VLADIMIR CONCEPCION SANDOVAL MEDINA', N'9930114', N'VLADIMIR CONCEPCION SANDOVAL MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1919, N'ALI HUMBERTO MALDONADO RIVAS', N'9955256', N'ALI HUMBERTO MALDONADO RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1920, N'IRAMA MENDOZA', N'9956028', N'IRAMA MENDOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1921, N'MARILU CEDEÑO MANZANO', N'9964740', N'MARILU CEDEÑO MANZANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1922, N'RODOLFO ANTONIO D`CESARE MORENO', N'9971278', N'RODOLFO ANTONIO D`CESARE MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1923, N'MARIA CAROLINA GARCIA CASTAÑEDA', N'9974793', N'MARIA CAROLINA GARCIA CASTAÑEDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1924, N'CELESTINO JOSE SALGADO MARTINEZ', N'9981485', N'CELESTINO JOSE SALGADO MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1925, N'AWILSON JOSE HERNANDEZ IRIARTE', N'9996912', N'AWILSON JOSE HERNANDEZ IRIARTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1926, N'VICTOR ATILIO BRICEÑO RONDON', N'10039627', N'VICTOR ATILIO BRICEÑO RONDON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1927, N'PABLO ALEXIS JUSTO BENITEZ', N'10057563', N'PABLO ALEXIS JUSTO BENITEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1928, N'PABLA GONZALEZ RAMIREZ', N'10074870', N'PABLA GONZALEZ RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1929, N'LUIS ANTONIO OCANDO BARRIOS', N'10084420', N'LUIS ANTONIO OCANDO BARRIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1930, N'JESUS GREGORIO VELAZQUEZ VALERO', N'10096922', N'JESUS GREGORIO VELAZQUEZ VALERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1931, N'JOSE GERARDO RONDON  RANGEL', N'10100287', N'JOSE GERARDO RONDON  RANGEL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1932, N'LEYMA TRINIDAD AVILA ROJAS', N'10104721', N'LEYMA TRINIDAD AVILA ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1933, N'OMAIRA COROMOTO BAPTISTA  DE FERNANDEZ', N'10106062', N'OMAIRA COROMOTO BAPTISTA  DE FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1934, N'JESUS MANUEL BRICEÑO BARRIOS', N'10108224', N'JESUS MANUEL BRICEÑO BARRIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1935, N'JOSE LORENZO GRANADO PORRAS', N'10113141', N'JOSE LORENZO GRANADO PORRAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1936, N'YAMILET JOSEFINA PEREZ FERNANDEZ', N'10125546', N'YAMILET JOSEFINA PEREZ FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1937, N'MIGUEL ANGEL ALVAREZ CAMARGO', N'10151574', N'MIGUEL ANGEL ALVAREZ CAMARGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1938, N'YVELYN MIRELLY ROSALES LOPEZ', N'10178071', N'YVELYN MIRELLY ROSALES LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1939, N'JHONNY JOSE RODRIGUEZ PACHECO', N'10181193', N'JHONNY JOSE RODRIGUEZ PACHECO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1940, N'CESAR AUGUSTO ARIAS BETANCOURT', N'10186912', N'CESAR AUGUSTO ARIAS BETANCOURT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1941, N'JUAN PEDRO MARTINEZ ROSAL', N'10218739', N'JUAN PEDRO MARTINEZ ROSAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1942, N'SERGIO DE JESUS PIRELA ANTUNEZ', N'10236670', N'SERGIO DE JESUS PIRELA ANTUNEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1943, N'MIREYA CONCEPCION TERAN DE MATHEUS', N'10257690', N'MIREYA CONCEPCION TERAN DE MATHEUS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1944, N'ALECIA BEATRIZ APONTE RODRIGUEZ', N'10265352', N'ALECIA BEATRIZ APONTE RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1945, N'DORIS MARCOLINA AVILAN GONZALEZ', N'10283051', N'DORIS MARCOLINA AVILAN GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1946, N'FRANCISCO JAVIER GOMEZ RODRIGUEZ', N'10287603', N'FRANCISCO JAVIER GOMEZ RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1947, N'LEIDYS BEATRIZ CARBALLO OVIEDO', N'10353646', N'LEIDYS BEATRIZ CARBALLO OVIEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1948, N'WILLIAMS ANTONIO ARANDA ACOSTA', N'10358864', N'WILLIAMS ANTONIO ARANDA ACOSTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1949, N'MAILYSABEL HERRERA GOMEZ', N'10369009', N'MAILYSABEL HERRERA GOMEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1950, N'GASTON AUGUSTO MORALES SANCHEZ', N'10383447', N'GASTON AUGUSTO MORALES SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1951, N'ALEXIS JOSE VILLAZAR', N'10415310', N'ALEXIS JOSE VILLAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1952, N'JOSE REINALDO CAICERO GOTERO', N'10423989', N'JOSE REINALDO CAICERO GOTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1953, N'MICHEL ALBERTO RIOS NAVARRO', N'10454908', N'MICHEL ALBERTO RIOS NAVARRO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1954, N'YSMAEL ENRIQUE BOLIVAR BUZNEGO', N'10456391', N'YSMAEL ENRIQUE BOLIVAR BUZNEGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1955, N'MIRIAN JOSEFINA FIGUEROA', N'10467506', N'MIRIAN JOSEFINA FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1956, N'KETTY CAROLINA NAVARRO DIAZ', N'10471612', N'KETTY CAROLINA NAVARRO DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1957, N'ZENAIDA BASTIDAS MEJIAS', N'10471926', N'ZENAIDA BASTIDAS MEJIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1958, N'JENNY ZULEMA HIDALGO ARAUJO', N'10473048', N'JENNY ZULEMA HIDALGO ARAUJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1959, N'CARMEN LILIBETH ACOSTA BLANCO', N'10473914', N'CARMEN LILIBETH ACOSTA BLANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1960, N'YENNYS MARIELA OLIVARES PEÑA', N'10480734', N'YENNYS MARIELA OLIVARES PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1961, N'REBECA MILAGROS SILVA CHAPELLIN', N'10484406', N'REBECA MILAGROS SILVA CHAPELLIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1962, N'JOSE ANTONIO QUINTERO CORREA', N'10485903', N'JOSE ANTONIO QUINTERO CORREA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1963, N'MELISA MINEL PALOMERAS APONTE', N'10489460', N'MELISA MINEL PALOMERAS APONTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1964, N'JENNY COROMOTO BRAVO HERRERA', N'10502576', N'JENNY COROMOTO BRAVO HERRERA', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1965, N'ROSA AMELIA RODRIGUEZ LA ROSA', N'10513123', N'ROSA AMELIA RODRIGUEZ LA ROSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1966, N'ROSA MARIA NAVA GONZALEZ', N'10517188', N'ROSA MARIA NAVA GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1967, N'YULAIMA ODALIS GUZMAN RAMOS', N'10517294', N'YULAIMA ODALIS GUZMAN RAMOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1968, N'CESAR ANTONIO TEJADA LAYA', N'10517386', N'CESAR ANTONIO TEJADA LAYA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1969, N'MARIA DEL CARMEN MISTRE MERINO', N'10519994', N'MARIA DEL CARMEN MISTRE MERINO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1970, N'CARLOS ALBERTO CEBALLOS', N'10530364', N'CARLOS ALBERTO CEBALLOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1971, N'JOSE ANTONIO PEREZ GONZALEZ', N'10542099', N'JOSE ANTONIO PEREZ GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1972, N'NILOA THAYS CASTRO FRANCO', N'10543022', N'NILOA THAYS CASTRO FRANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1973, N'MARLON CRESPO DIAZ', N'10559752', N'MARLON CRESPO DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1974, N'DAVID HECTOR SUN MORENO', N'10582014', N'DAVID HECTOR SUN MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1975, N'DUBAN JOSE BLANCO ALVARADO', N'10603835', N'DUBAN JOSE BLANCO ALVARADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1976, N'LUIS MANUEL VALECILLOS', N'10632562', N'LUIS MANUEL VALECILLOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1977, N'MILTON JOSE RAMOS PEREZ', N'10638700', N'MILTON JOSE RAMOS PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1978, N'MARITZA DEL CARMEN OCHOA GONZALEZ', N'10683875', N'MARITZA DEL CARMEN OCHOA GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1979, N'EDEBERTO JOSE RINCON BRACHO', N'10686563', N'EDEBERTO JOSE RINCON BRACHO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1980, N'ELVIS JOSE MEDINA GUANIPA', N'10701694', N'ELVIS JOSE MEDINA GUANIPA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1981, N'YENIS NAIR LOPEZ  MORENO', N'10728471', N'YENIS NAIR LOPEZ  MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1982, N'OMAR ALEXIS TORRES', N'10728740', N'OMAR ALEXIS TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1983, N'FREDDY RAMON SUAREZ PAEZ', N'10761221', N'FREDDY RAMON SUAREZ PAEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1984, N'HENRY JAVIER PAEZ RODRIGUEZ', N'10761892', N'HENRY JAVIER PAEZ RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1985, N'OMAR JOSE SUAREZ', N'10765350', N'OMAR JOSE SUAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1986, N'RAFAEL ANTONIO DE LA ROSA RODRIGUEZ', N'10775887', N'RAFAEL ANTONIO DE LA ROSA RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1987, N'GLENNYS MARCELINA CARBALLO OVIEDO', N'10784471', N'GLENNYS MARCELINA CARBALLO OVIEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1988, N'YAMIRA JOSEFINA ESPINOZA ESPINOZA', N'10789503', N'YAMIRA JOSEFINA ESPINOZA ESPINOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1989, N'ADRIAN AMADOR PADRON LABRADOR', N'10800107', N'ADRIAN AMADOR PADRON LABRADOR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1990, N'EGLIS MARIA NORELIS OLIVEROS TORRES', N'10804392', N'EGLIS MARIA NORELIS OLIVEROS TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1991, N'YUHIRY CATALINA GUTIERREZ GEORGERIN', N'10810038', N'YUHIRY CATALINA GUTIERREZ GEORGERIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1992, N'DOUGLAS GUILLERMO SUAREZ', N'10826123', N'DOUGLAS GUILLERMO SUAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1993, N'NUBIA DEL VALLE SANTOS SAPINA', N'10826429', N'NUBIA DEL VALLE SANTOS SAPINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1994, N'YENECIA DEL VALLE NORIEGA', N'10828751', N'YENECIA DEL VALLE NORIEGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1995, N'JOSE ANTONIO PALMA MORENO', N'10840460', N'JOSE ANTONIO PALMA MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1996, N'BENITO ALBERTO GARCIA OCHOA', N'10862333', N'BENITO ALBERTO GARCIA OCHOA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1997, N'YELITZA MARIA PADRINO HERRERA', N'10868409', N'YELITZA MARIA PADRINO HERRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1998, N'NANCY LARRIBA GARCIA', N'10877200', N'NANCY LARRIBA GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (1999, N'LAURA ELENA GARDIE FARIAS', N'10883913', N'LAURA ELENA GARDIE FARIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2000, N'MIRIAMS ZULAY RIVAS GUTIERREZ', N'10894783', N'MIRIAMS ZULAY RIVAS GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2001, N'YRMA ROSALIA COELLO', N'10973963', N'YRMA ROSALIA COELLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2002, N'RICHARD JOSE LARA', N'10982070', N'RICHARD JOSE LARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2003, N'JESUS ENRIQUE VEGAS RODRIGUEZ', N'10990277', N'JESUS ENRIQUE VEGAS RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2004, N'JESUS LEOPOLDO ORTIZ LEON', N'11030163', N'JESUS LEOPOLDO ORTIZ LEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2005, N'REINALDO RAMÓN RIVAS HERNANDEZ', N'11032681', N'REINALDO RAMÓN RIVAS HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2006, N'HERASMO ADELSO HERRERA', N'11046948', N'HERASMO ADELSO HERRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2007, N'NORKA LEONOR OLIVARES HERNANDEZ', N'11059275', N'NORKA LEONOR OLIVARES HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2008, N'ROMAN FIGUEROA SALAZAR', N'11063595', N'ROMAN FIGUEROA SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2009, N'MAIGUALIDA DINORA GUEVARA VALERA', N'11090225', N'MAIGUALIDA DINORA GUEVARA VALERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2010, N'JOEL ENRIQUE SILVA ALVIAREZ', N'11092181', N'JOEL ENRIQUE SILVA ALVIAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2011, N'RODOLFO JOSE LORMOS PARADA', N'11097313', N'RODOLFO JOSE LORMOS PARADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2012, N'LEONARDO ALFREDO MORILLO', N'11107695', N'LEONARDO ALFREDO MORILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2013, N'ANA DE JESUS RODRIGUEZ RODRIGUEZ', N'11117864', N'ANA DE JESUS RODRIGUEZ RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2014, N'SOLEDAD MARLENYS HERRERA PALENCIA', N'11130431', N'SOLEDAD MARLENYS HERRERA PALENCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2015, N'CARLOS ALBERTO QUINTERO MORILLO', N'11157397', N'CARLOS ALBERTO QUINTERO MORILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2016, N'FRANKLIN JOSE SANCHEZ', N'11159508', N'FRANKLIN JOSE SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2017, N'LEONARDO BITTAR CARRILLO', N'11164510', N'LEONARDO BITTAR CARRILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2018, N'FELIPE DE JESUS PINO PAREDES', N'11164853', N'FELIPE DE JESUS PINO PAREDES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2019, N'ARELYS JASMIN LOBO MOLINA', N'11165463', N'ARELYS JASMIN LOBO MOLINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2020, N'JAVIER NORBERTO SÁNCHEZ CARVALLO', N'11166745', N'JAVIER NORBERTO SÁNCHEZ CARVALLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2021, N'LEONARDO JOSE AFANADOR PEÑA', N'11196430', N'LEONARDO JOSE AFANADOR PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2022, N'JOSE GERMAN ECHEVERRIA REYES', N'11199056', N'JOSE GERMAN ECHEVERRIA REYES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2023, N'JEAN JOSE VILLAFRANCA MACUARAN', N'11202993', N'JEAN JOSE VILLAFRANCA MACUARAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2024, N'CARLOS FELIX TEJERA GONZALEZ', N'11204187', N'CARLOS FELIX TEJERA GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2025, N'GUSTAVO JOSE BLANCO VELASQUEZ', N'11231773', N'GUSTAVO JOSE BLANCO VELASQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2026, N'OCTAVIO DE JESUS MATERANO', N'11246526', N'OCTAVIO DE JESUS MATERANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2027, N'JOSE ANTONIO ALASTRE LEAL', N'11248850', N'JOSE ANTONIO ALASTRE LEAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2028, N'LUIS  ROBERTO STEELHEART PINA', N'11265649', N'LUIS  ROBERTO STEELHEART PINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2029, N'PATRIZIA PETRILLI PACIFICO', N'11280038', N'PATRIZIA PETRILLI PACIFICO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2030, N'JOAN MANUEL DURAN SANCHEZ', N'11316388', N'JOAN MANUEL DURAN SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2031, N'EUSEBIO LEONARDO DELGADO MEDINA', N'11361745', N'EUSEBIO LEONARDO DELGADO MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2032, N'YALYS DEL CARMEN SILVA HERNANDEZ', N'11362153', N'YALYS DEL CARMEN SILVA HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2033, N'ODYLAMAIKA AZUAJE ROMERO', N'11366860', N'ODYLAMAIKA AZUAJE ROMERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2034, N'ERIKA DEL VALLE LANDAETA GUEVARA', N'11408643', N'ERIKA DEL VALLE LANDAETA GUEVARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2035, N'ROSA ANA MARTINEZ HERRERA', N'11411373', N'ROSA ANA MARTINEZ HERRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2036, N'AURA ELENA GUTIERREZ FONSECA', N'11414909', N'AURA ELENA GUTIERREZ FONSECA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2037, N'LUIS FELIPE GARBAN HERRERA', N'11419557', N'LUIS FELIPE GARBAN HERRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2038, N'HAIDEE JOSEFINA ALCANTARA GONZALEZ', N'11438488', N'HAIDEE JOSEFINA ALCANTARA GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2039, N'YOHENY JOSEFINA CARIPE ZERPA', N'11446288', N'YOHENY JOSEFINA CARIPE ZERPA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2040, N'LUIS HENRY SOTO GOMEZ', N'11460468', N'LUIS HENRY SOTO GOMEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2041, N'AURA MAIDHE MATUTE DE SUAREZ', N'11466780', N'AURA MAIDHE MATUTE DE SUAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2042, N'VENANCIO POMPA MARTINEZ', N'11556192', N'VENANCIO POMPA MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2043, N'NELSON GIL SALAS', N'11561697', N'NELSON GIL SALAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2044, N'MARIA ELENA RODRIGUEZ', N'11568954', N'MARIA ELENA RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2045, N'YEAMPOOL LISINIO DUQUE MALPICA', N'11590710', N'YEAMPOOL LISINIO DUQUE MALPICA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2046, N'MANUEL SALVADOR SIFUENTES GARCIA', N'11599666', N'MANUEL SALVADOR SIFUENTES GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2047, N'KELVIS ALEXANDER MALDONADO', N'11604745', N'KELVIS ALEXANDER MALDONADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2048, N'GILBERTO ANTONIO ROJAS VASQUEZ', N'11612714', N'GILBERTO ANTONIO ROJAS VASQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2049, N'MARIO JOSE ARAUJO', N'11619670', N'MARIO JOSE ARAUJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2050, N'MARYURY NOEMI ZABALA', N'11640057', N'MARYURY NOEMI ZABALA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2051, N'MAYRA JOSEFINA LOPEZ MARIN', N'11640301', N'MAYRA JOSEFINA LOPEZ MARIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2052, N'LIZNEIDY BENITA GOMEZ GRATEROL', N'11641517', N'LIZNEIDY BENITA GOMEZ GRATEROL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2053, N'WILLIAMS JOSE ARRECHEDERA CEREZO', N'11675050', N'WILLIAMS JOSE ARRECHEDERA CEREZO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2054, N'ELIZABETH MARIA VILLEGAS  LOZANO', N'11681383', N'ELIZABETH MARIA VILLEGAS  LOZANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2055, N'YULMAY ELENA CORREA RAMIREZ', N'11683237', N'YULMAY ELENA CORREA RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2056, N'ALEXANDRA MERCEDES BORGES', N'11690179', N'ALEXANDRA MERCEDES BORGES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2057, N'JOAN MANUEL MORENO MOLINA', N'11690579', N'JOAN MANUEL MORENO MOLINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2058, N'EDUARD ENRIQUE HERRERA NORIA', N'11740118', N'EDUARD ENRIQUE HERRERA NORIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2059, N'ELIANA LISSETH QUINTERO NARVAEZ', N'11743831', N'ELIANA LISSETH QUINTERO NARVAEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2060, N'YSORMA LISBETH RIVAS', N'11771000', N'YSORMA LISBETH RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2061, N'SONIA MARGARITA RIVAS', N'11779948', N'SONIA MARGARITA RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2062, N'YLENIA NACARY SULBARAN', N'11818386', N'YLENIA NACARY SULBARAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2063, N'ROSALINDA DEL CASTILLO FIGUEROA', N'11828095', N'ROSALINDA DEL CASTILLO FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2064, N'JULIO C. HERNANDEZ L.', N'11846747', N'JULIO C. HERNANDEZ L.', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2065, N'SONIA JOSEFINA PICHARDO DE CUEVAS', N'11848897', N'SONIA JOSEFINA PICHARDO DE CUEVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2066, N'MARIBEL COROMOTO PIRELA MORILLO', N'11867188', N'MARIBEL COROMOTO PIRELA MORILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2067, N'FERNANDO JOSE PAZ ACOSTA', N'11884142', N'FERNANDO JOSE PAZ ACOSTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2068, N'HERBERTO JOSE ACOSTA  ACOSTA', N'11886791', N'HERBERTO JOSE ACOSTA  ACOSTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2069, N'DIONISIO RAMON GARCIA ROMERO', N'11891623', N'DIONISIO RAMON GARCIA ROMERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2070, N'COLINAS YACKELIN VARGAS', N'11924746', N'COLINAS YACKELIN VARGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2071, N'NEUBY KATIUSKA BERROTERAN MARTINEZ', N'11938472', N'NEUBY KATIUSKA BERROTERAN MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2072, N'PABLO JOSE GONZALEZ VASQUEZ', N'11945425', N'PABLO JOSE GONZALEZ VASQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2073, N'EDIXON RAMÓN COLMENARES GARCIA', N'11948227', N'EDIXON RAMÓN COLMENARES GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2074, N'ANA JASMIN MARQUEZ NAVAS', N'11954876', N'ANA JASMIN MARQUEZ NAVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2075, N'SANDRA CAROLINA MUJICA ROJAS', N'11966228', N'SANDRA CAROLINA MUJICA ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2076, N'PEDRO JOSE ORTEGA DIAZ', N'11968263', N'PEDRO JOSE ORTEGA DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2077, N'NEIDA MARÍA RIVERA', N'11969015', N'NEIDA MARÍA RIVERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2078, N'KAREN JOSEFINA CARRILLO  GONZALEZ', N'11988624', N'KAREN JOSEFINA CARRILLO  GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2079, N'ALI ALEJANDRO PRIMERA GONZALEZ', N'11992956', N'ALI ALEJANDRO PRIMERA GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2080, N'CONSUELO DE LAS MERCEDES MANRIQUE NAAR', N'11995682', N'CONSUELO DE LAS MERCEDES MANRIQUE NAAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2081, N'GLAYDÉ DEL CARMEN RIVERO MIQUILENA', N'12039977', N'GLAYDÉ DEL CARMEN RIVERO MIQUILENA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2082, N'CLAUDIA JOSEFINA CONTRERAS DE CASTELLANO', N'12045690', N'CLAUDIA JOSEFINA CONTRERAS DE CASTELLANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2083, N'ALBA MARINA LOPEZ RENDON', N'12045708', N'ALBA MARINA LOPEZ RENDON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2084, N'DENNIS BEATRIZ QUINTERO ZERPA', N'12056953', N'DENNIS BEATRIZ QUINTERO ZERPA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2085, N'ADRIANA ERMELINDA MONTES AGREDA', N'12066529', N'ADRIANA ERMELINDA MONTES AGREDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2086, N'NIXON ORTEGA', N'12076432', N'NIXON ORTEGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2087, N'EVERLYS COROMOTO GIMENEZ', N'12080505', N'EVERLYS COROMOTO GIMENEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2088, N'MARY LISBEY SILVA', N'12091242', N'MARY LISBEY SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2089, N'HARRY HUMBERTO GUERRERO MARCANO', N'12096328', N'HARRY HUMBERTO GUERRERO MARCANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2090, N'OSCAR JOSE REYES MONTES', N'12096922', N'OSCAR JOSE REYES MONTES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2091, N'NELSON DARIO CASTELLANOS MARQUEZ', N'12097773', N'NELSON DARIO CASTELLANOS MARQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2092, N'CARLOS ALBERTO JOSE RUIZ CANACHE', N'12116471', N'CARLOS ALBERTO JOSE RUIZ CANACHE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2093, N'MARIA TERESA CHACON PLASENCIO', N'12133886', N'MARIA TERESA CHACON PLASENCIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2094, N'CELIMARY OCHOA CHACIN', N'12136062', N'CELIMARY OCHOA CHACIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2095, N'KARIN YULEIDY SERRANO', N'12157621', N'KARIN YULEIDY SERRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2096, N'OMARILIS GLISET CARIEL YANEZ', N'12163551', N'OMARILIS GLISET CARIEL YANEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2097, N'ELI NUBIL HENRIQUEZ ROMERO', N'12164612', N'ELI NUBIL HENRIQUEZ ROMERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2098, N'MARY ANGEL TOVAR SANIER', N'12166110', N'MARY ANGEL TOVAR SANIER', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2099, N'HELEN ARMARLIS CHIRINO ALGARIN', N'12166160', N'HELEN ARMARLIS CHIRINO ALGARIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2100, N'ELVIS JESUS GONZALEZ MORALES', N'12175058', N'ELVIS JESUS GONZALEZ MORALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2101, N'EVER ALBERTO RIOS NAVARRO', N'12212675', N'EVER ALBERTO RIOS NAVARRO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2102, N'CRUZ MARGARITA INDRIAGO ROJAS', N'12215127', N'CRUZ MARGARITA INDRIAGO ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2103, N'ARAIBEL JOSE SALAZAR', N'12224278', N'ARAIBEL JOSE SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2104, N'YAJAIRA LISBETH JIMENEZ DE DIAZ', N'12245122', N'YAJAIRA LISBETH JIMENEZ DE DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2105, N'GILBERTO JOSE GIL RODRIGUEZ', N'12250936', N'GILBERTO JOSE GIL RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2106, N'MARIA EUGENIA PEÑA DE NAVARRO', N'12253778', N'MARIA EUGENIA PEÑA DE NAVARRO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2107, N'RICHARD JESUS BRIZUELA SANCHEZ', N'12259622', N'RICHARD JESUS BRIZUELA SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2108, N'CELIDA ROSA BALDALLO', N'12265539', N'CELIDA ROSA BALDALLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2109, N'RICEIDA JOSEFINA RAMIREZ YNOJOSA', N'12270847', N'RICEIDA JOSEFINA RAMIREZ YNOJOSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2110, N'NAIROBI DEL VALLE DURAN GOMEZ', N'12280185', N'NAIROBI DEL VALLE DURAN GOMEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2111, N'ANNELYS GARRIDO PARADAS', N'12280634', N'ANNELYS GARRIDO PARADAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2112, N'JUAN CARLOS VERA SAAVEDRA', N'12295122', N'JUAN CARLOS VERA SAAVEDRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2113, N'OBDALIS NAZARETH RODRIGUEZ GONZALEZ', N'12301416', N'OBDALIS NAZARETH RODRIGUEZ GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2114, N'TANIA DEL CARMEN OSORIO', N'12356458', N'TANIA DEL CARMEN OSORIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2115, N'GREGORIA RAMONA MADERA ALTUVE', N'12356570', N'GREGORIA RAMONA MADERA ALTUVE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2116, N'CELIA MARIA GONZALEZ CORREA', N'12362032', N'CELIA MARIA GONZALEZ CORREA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2117, N'GUILLERMO SULBARAN', N'12374819', N'GUILLERMO SULBARAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2118, N'JOBAIZA CAROLINA BETANCOURT LOPEZ', N'12390224', N'JOBAIZA CAROLINA BETANCOURT LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2119, N'BEATRIZ ELENA OTERO LOBO', N'12391073', N'BEATRIZ ELENA OTERO LOBO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2120, N'YEANINNE EVELI ESPAÑA PINTO', N'12393896', N'YEANINNE EVELI ESPAÑA PINTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2121, N'ENRIQUE ANTONIO RAGA DELGADO', N'12445848', N'ENRIQUE ANTONIO RAGA DELGADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2122, N'ORMIDA RAMONA ALVAREZ', N'12449186', N'ORMIDA RAMONA ALVAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2123, N'LETICIA EUGENIA OSORIO DELGADO', N'12461771', N'LETICIA EUGENIA OSORIO DELGADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2124, N'NERIO ARMANDO SANO BOLIVAR', N'12465978', N'NERIO ARMANDO SANO BOLIVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2125, N'RICHARD ALEXANDER NIETO ESCORCHE', N'12469743', N'RICHARD ALEXANDER NIETO ESCORCHE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2126, N'JOSE ANGEL MEDINA CASTILLO', N'12470246', N'JOSE ANGEL MEDINA CASTILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2127, N'GREGSILET RUMALDA ALEMAN CARRILLO', N'12480648', N'GREGSILET RUMALDA ALEMAN CARRILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2128, N'CARLOS RAFAEL GRANADO MONTEROLA', N'12501787', N'CARLOS RAFAEL GRANADO MONTEROLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2129, N'HECTOR RODRIGUEZ LORETO', N'12511856', N'HECTOR RODRIGUEZ LORETO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2130, N'FRANCISCO JOSE MORENO', N'12521589', N'FRANCISCO JOSE MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2131, N'ROCIO DE LOS ANGELES LEON ZAMBRANO', N'12562878', N'ROCIO DE LOS ANGELES LEON ZAMBRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2132, N'YESTER GODLMAN CASTILLO BERMUDEZ', N'12584932', N'YESTER GODLMAN CASTILLO BERMUDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2133, N'ANTONIO JOSE ESPINOZA', N'12586423', N'ANTONIO JOSE ESPINOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2134, N'MARY ANN MOSQUERA CARVALLO', N'12625003', N'MARY ANN MOSQUERA CARVALLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2135, N'YENNY AUXILIADORA DIAZ GARCIA', N'12628381', N'YENNY AUXILIADORA DIAZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2136, N'JEFFERSON HUMBERTO PAEZ BUSTAMANTE', N'12634005', N'JEFFERSON HUMBERTO PAEZ BUSTAMANTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2137, N'YUDITH YACKELIN CONTRERAS NAVA', N'12655052', N'YUDITH YACKELIN CONTRERAS NAVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2138, N'ENGELS ENRIQUE GOMEZ PEREDA', N'12664315', N'ENGELS ENRIQUE GOMEZ PEREDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2139, N'MARIA GISELA RAMIREZ VERGARA', N'12694775', N'MARIA GISELA RAMIREZ VERGARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2140, N'WILMER BARRRADA MONTILLA', N'12717243', N'WILMER BARRRADA MONTILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2141, N'MARISASAGLEHTT KARINA SANTOS', N'12719715', N'MARISASAGLEHTT KARINA SANTOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2142, N'ROCIO ESPINETTY SAAVEDRA', N'12722001', N'ROCIO ESPINETTY SAAVEDRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2143, N'ELIS NAL MOLLEDA', N'12744270', N'ELIS NAL MOLLEDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2144, N'TAMARA JENIFER IZQUIERDO JUAREZ', N'12747196', N'TAMARA JENIFER IZQUIERDO JUAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2145, N'KARLA  YUGEN MORA ACOSTA', N'12761438', N'KARLA  YUGEN MORA ACOSTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2146, N'JHONNY ALEXANDER RAMIREZ DELGADO', N'12761773', N'JHONNY ALEXANDER RAMIREZ DELGADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2147, N'RAQUEL DAYANA LUCERO SALAS', N'12761838', N'RAQUEL DAYANA LUCERO SALAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2148, N'MANUEL VICENTE GRINZONES AGUILAR', N'12768656', N'MANUEL VICENTE GRINZONES AGUILAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2149, N'CLARITZA MORELIS PACHECO PEÑA', N'12780777', N'CLARITZA MORELIS PACHECO PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2150, N'ZOIKLER MONSALVE RODRIGUEZ', N'12785680', N'ZOIKLER MONSALVE RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2151, N'YDEQUI YOMAR GONZALEZ MACHADO', N'12785884', N'YDEQUI YOMAR GONZALEZ MACHADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2152, N'MARIA GABRIELA GALINDO QUINTERO', N'12809486', N'MARIA GABRIELA GALINDO QUINTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2153, N'MILANGELLY COROMOTO BLANCA IRIMA', N'12820901', N'MILANGELLY COROMOTO BLANCA IRIMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2154, N'FRANK ESTEBAN MARQUINA RAMIREZ', N'12825349', N'FRANK ESTEBAN MARQUINA RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2155, N'ANA DOLORES GONZALEZ BERMUDEZ', N'12842722', N'ANA DOLORES GONZALEZ BERMUDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2156, N'HENDRIX JOSE GONZALEZ BAQUERO', N'12845311', N'HENDRIX JOSE GONZALEZ BAQUERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2157, N'CARLOS EDUARDO GONZALEZ LEZAMA', N'12874819', N'CARLOS EDUARDO GONZALEZ LEZAMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2158, N'MIGUEL ANTONIO TOTESAUT MARTINEZ', N'12881540', N'MIGUEL ANTONIO TOTESAUT MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2159, N'FLORANGEL YEPEZ TORREALBA', N'12935757', N'FLORANGEL YEPEZ TORREALBA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2160, N'MARIA ESPERANZA PIÑA RIERA', N'12944467', N'MARIA ESPERANZA PIÑA RIERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2161, N'CARMEN ELOINA ROJAS RODRIGUEZ', N'12944834', N'CARMEN ELOINA ROJAS RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2162, N'TIBISAY DEL CARMEN HERNANDEZ DE MARTINEZ', N'12950512', N'TIBISAY DEL CARMEN HERNANDEZ DE MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2163, N'DANNELLY JOSEFINA TORCAT ARMADO', N'12951446', N'DANNELLY JOSEFINA TORCAT ARMADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2164, N'VIRMARTE MARIBEL DA SILVA CORREA', N'12953867', N'VIRMARTE MARIBEL DA SILVA CORREA', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2165, N'MERLY CAROLINA FERRER BRITO', N'12959922', N'MERLY CAROLINA FERRER BRITO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2166, N'BELKIS OMAIRA NAVAS', N'12973058', N'BELKIS OMAIRA NAVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2167, N'RAMON EDUARDO SANCHEZ ROMERO', N'12995741', N'RAMON EDUARDO SANCHEZ ROMERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2168, N'JUAN GABRIEL RAMOS PRIETO', N'13025610', N'JUAN GABRIEL RAMOS PRIETO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2169, N'JOSE  FRANCISCO ROJAS SANCHEZ', N'13039244', N'JOSE  FRANCISCO ROJAS SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2170, N'ROGER MOISES YEPEZ SALAS', N'13041565', N'ROGER MOISES YEPEZ SALAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2171, N'KARINA DEL CARMEN ROMERO FIGUEROA', N'13042621', N'KARINA DEL CARMEN ROMERO FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2172, N'MIGUEL ANGEL DAVILA GIMON', N'13043432', N'MIGUEL ANGEL DAVILA GIMON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2173, N'YULEIMA PEREZ BUSTAMANTE', N'13067865', N'YULEIMA PEREZ BUSTAMANTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2174, N'ADOLFO RENE VALERO MEJIAS', N'13087733', N'ADOLFO RENE VALERO MEJIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2175, N'ESNEYDER KATIUSKA APONTE GONZALEZ', N'13105582', N'ESNEYDER KATIUSKA APONTE GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2176, N'BENITO ANTONIO CESPEDES LUGO', N'13105671', N'BENITO ANTONIO CESPEDES LUGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2177, N'NUREIBYS LISBET ACOSTA SANCHEZ', N'13107958', N'NUREIBYS LISBET ACOSTA SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2178, N'JONATHAN MOLINA BERRIOS', N'13114543', N'JONATHAN MOLINA BERRIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2179, N'SAHILY MAKGLEARELIS SANCHEZ AGÜERO', N'13125183', N'SAHILY MAKGLEARELIS SANCHEZ AGÜERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2180, N'LUIS ALBERTO HEVIA MARIN', N'13126487', N'LUIS ALBERTO HEVIA MARIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2181, N'JOSE DE JESUS LOPEZ RODRIGUEZ', N'13127792', N'JOSE DE JESUS LOPEZ RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2182, N'MIGUEL ANGEL RODRIGUEZ MARTINEZ', N'13127837', N'MIGUEL ANGEL RODRIGUEZ MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2183, N'WILLI ENRIQUE GONZALEZ BALLESTERIO', N'13134517', N'WILLI ENRIQUE GONZALEZ BALLESTERIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2184, N'FANELLYS CORTEZ VARGAS', N'13135479', N'FANELLYS CORTEZ VARGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2185, N'VICTOR MANUEL URIEPERO CARRANZA', N'13143408', N'VICTOR MANUEL URIEPERO CARRANZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2186, N'JEFFERSON BROADHURTS CAMPEROS BUENO', N'13145561', N'JEFFERSON BROADHURTS CAMPEROS BUENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2187, N'JOHAN ALEXANDER GUERRA GUZMAN', N'13146336', N'JOHAN ALEXANDER GUERRA GUZMAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2188, N'WUENDY ORIANA AÑANGUREN BELISARIO', N'13161037', N'WUENDY ORIANA AÑANGUREN BELISARIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2189, N'YEAN CARLOS HERNANDEZ', N'13162768', N'YEAN CARLOS HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2190, N'JOSE ARGIMIRO RONDON FIGUEROA', N'13177373', N'JOSE ARGIMIRO RONDON FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2191, N'EDWING ELIECER VILLAMIZAR CORREA', N'13186150', N'EDWING ELIECER VILLAMIZAR CORREA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2192, N'NEPTALI RAFAEL ROBERTIS', N'13208745', N'NEPTALI RAFAEL ROBERTIS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2193, N'HECTOR JOSE CONTRERAS TORRES', N'13246376', N'HECTOR JOSE CONTRERAS TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2194, N'JESUS ERNESTO DIAZ DAUBETERREZ', N'13248617', N'JESUS ERNESTO DIAZ DAUBETERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2195, N'MARBELIS DEL VALLE BETANCOURT MEDINA', N'13270567', N'MARBELIS DEL VALLE BETANCOURT MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2196, N'JERSON OMAR ASCANIO ECHENAGUCIA', N'13287679', N'JERSON OMAR ASCANIO ECHENAGUCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2197, N'ADRIANA DE LOS ANGELES COVA DE DIAZ', N'13295735', N'ADRIANA DE LOS ANGELES COVA DE DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2198, N'VICTOR JOSE MELENDEZ CARDENAS', N'13296445', N'VICTOR JOSE MELENDEZ CARDENAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2199, N'YUSMARY SANZ', N'13311559', N'YUSMARY SANZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2200, N'IBELIS CAROLINA ALVARADO MARTINEZ', N'13324656', N'IBELIS CAROLINA ALVARADO MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2201, N'MAYRA ALEJANDRA ANDRADE VENEGAS', N'13378616', N'MAYRA ALEJANDRA ANDRADE VENEGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2202, N'JULIO CESAR LEON MEDINA', N'13417609', N'JULIO CESAR LEON MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2203, N'ALFREDO JOSE MENDOZA GRIMAN', N'13444685', N'ALFREDO JOSE MENDOZA GRIMAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2204, N'DAYSIS YAZMIN VEGAS ORTA', N'13448066', N'DAYSIS YAZMIN VEGAS ORTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2205, N'LINDY  COROMOTO MARTINEZ  LUNA', N'13459650', N'LINDY  COROMOTO MARTINEZ  LUNA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2206, N'NINOSKA DE GUADALUPE AZUAJE ALDANA', N'13465909', N'NINOSKA DE GUADALUPE AZUAJE ALDANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2207, N'CARMEN DEVORATH DURAN CONTRERAS', N'13467329', N'CARMEN DEVORATH DURAN CONTRERAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2208, N'JAKSON RAFAEL FLORES CARTAYA', N'13483513', N'JAKSON RAFAEL FLORES CARTAYA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2209, N'ARLEN KARELIS ROJAS NEGRON', N'13494219', N'ARLEN KARELIS ROJAS NEGRON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2210, N'YHEIZZI DAYANA CARMONA SIFUENTES', N'13522566', N'YHEIZZI DAYANA CARMONA SIFUENTES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2211, N'YRAIMA DEL VALLE RAMIREZ RAMIREZ', N'13522928', N'YRAIMA DEL VALLE RAMIREZ RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2212, N'YENITZA COROMOTO MARIN SILVA', N'13528723', N'YENITZA COROMOTO MARIN SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2213, N'HELEN DAYANA OSAL PEREZ', N'13536744', N'HELEN DAYANA OSAL PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2214, N'LISI DE VALLE PEREZ SALCEDO', N'13538777', N'LISI DE VALLE PEREZ SALCEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2215, N'ROSA ESTHER LISCANO PROVENCE', N'13602517', N'ROSA ESTHER LISCANO PROVENCE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2216, N'JESUS FERNANDO QUINTANA BUSTAMANTE', N'13614503', N'JESUS FERNANDO QUINTANA BUSTAMANTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2217, N'MARÍA YUGLIS REQUENA SILVA', N'13621791', N'MARÍA YUGLIS REQUENA SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2218, N'NILSON ENRIQUE RINCON BRACHO', N'13628220', N'NILSON ENRIQUE RINCON BRACHO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2219, N'KRISTELTHEYKEL CHIQUINQUIRA SANDOVAL', N'13629247', N'KRISTELTHEYKEL CHIQUINQUIRA SANDOVAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2220, N'YENNY DEL CARMEN GONZALEZ GARCIA', N'13632618', N'YENNY DEL CARMEN GONZALEZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2221, N'DEIGSI MIGDALIA ABANO', N'13639698', N'DEIGSI MIGDALIA ABANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2222, N'EDUARDO JOSE PARRA HERNANDEZ', N'13644999', N'EDUARDO JOSE PARRA HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2223, N'JENNY DESSIREX OLMEDO TOVAR', N'13646040', N'JENNY DESSIREX OLMEDO TOVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2224, N'HEBERTO ENRIQUE SANDREA BARBOZA', N'13659921', N'HEBERTO ENRIQUE SANDREA BARBOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2225, N'ROMULO JOSE CUENCAS PIRONA', N'13660038', N'ROMULO JOSE CUENCAS PIRONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2226, N'EDWIN OSCAR GUERRERO SANDREA', N'13661646', N'EDWIN OSCAR GUERRERO SANDREA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2227, N'JANE YAMILET ESTRELLA MENDOZA', N'13686411', N'JANE YAMILET ESTRELLA MENDOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2228, N'KATIUSKA YSABEL RODRIGUEZ MOSQUEDA', N'13691728', N'KATIUSKA YSABEL RODRIGUEZ MOSQUEDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2229, N'VICTOR RONALD SANCHEZ MERCHAN', N'13709303', N'VICTOR RONALD SANCHEZ MERCHAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2230, N'JACKSON EMILIO LOPEZ RUIZ', N'13721091', N'JACKSON EMILIO LOPEZ RUIZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2231, N'YULIMAR PEÑA LOZADA', N'13726389', N'YULIMAR PEÑA LOZADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2232, N'ANDRES JAVIER PEREZ BACA', N'13734893', N'ANDRES JAVIER PEREZ BACA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2233, N'ORLANDO ISMAEL MELENDEZ GONZALEZ', N'13735014', N'ORLANDO ISMAEL MELENDEZ GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2234, N'RAFAEL NAZARET BASTIDAS RIERA', N'13796743', N'RAFAEL NAZARET BASTIDAS RIERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2235, N'JECENIA DEL VALLE TREJO PARRA', N'13803851', N'JECENIA DEL VALLE TREJO PARRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2236, N'JOSE  GREGORIO HERNANDEZ SOSA', N'13804340', N'JOSE  GREGORIO HERNANDEZ SOSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2237, N'SERGIO DENIS ORTEGA', N'13834042', N'SERGIO DENIS ORTEGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2238, N'WILMER ALEXANDER ORELLANA', N'13843921', N'WILMER ALEXANDER ORELLANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2239, N'JORGE AUGUSTO VASQUEZ SALAZAR', N'13848051', N'JORGE AUGUSTO VASQUEZ SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2240, N'YOLISET CAROLINA MARIN  MOYANO', N'13852138', N'YOLISET CAROLINA MARIN  MOYANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2241, N'EDGAR JONATHAN ROJAS BLANCO', N'13865290', N'EDGAR JONATHAN ROJAS BLANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2242, N'RONNY GREY MARCANO VARGAS', N'13884518', N'RONNY GREY MARCANO VARGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2243, N'JOSÉ MANUEL RONDON', N'13884722', N'JOSÉ MANUEL RONDON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2244, N'JESUS FRANCISCO RODRIGUEZ REYES', N'13898415', N'JESUS FRANCISCO RODRIGUEZ REYES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2245, N'JOHN GERARDO MARIN QUERO', N'13903896', N'JOHN GERARDO MARIN QUERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2246, N'MIGUEL ANGEL NUÑEZ MONTECINO', N'13930994', N'MIGUEL ANGEL NUÑEZ MONTECINO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2247, N'JOSE FERMIN RIOS', N'13934229', N'JOSE FERMIN RIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2248, N'YURELVIS DEL CARMEN OLIVEROS GONZALEZ', N'13955811', N'YURELVIS DEL CARMEN OLIVEROS GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2249, N'YESENIA DEL CARMEN ROMERO MORENO', N'13968918', N'YESENIA DEL CARMEN ROMERO MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2250, N'ELVIS JESUS PAEZ APONTE', N'13971108', N'ELVIS JESUS PAEZ APONTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2251, N'CARLOS AUGUSTO RIOS VILLAMIZAR', N'13979692', N'CARLOS AUGUSTO RIOS VILLAMIZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2252, N'ANY MARIA LOPEZ CENTENO', N'14012051', N'ANY MARIA LOPEZ CENTENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2253, N'JOHANA GARCIA  GUEVARA', N'14014772', N'JOHANA GARCIA  GUEVARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2254, N'YOSMAR LILIBETH GUERRERO PEREZ', N'14015030', N'YOSMAR LILIBETH GUERRERO PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2255, N'MARIA EUGENIA OBANDO PATIÑO', N'14055222', N'MARIA EUGENIA OBANDO PATIÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2256, N'BEDA JOSEFINA ORTEGA DIAZ', N'14056354', N'BEDA JOSEFINA ORTEGA DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2257, N'MAYRA ALEJANDRA VELASCO CAICEDO', N'14100596', N'MAYRA ALEJANDRA VELASCO CAICEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2258, N'JULIO CESAR MORFFE GARCIA', N'14102323', N'JULIO CESAR MORFFE GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2259, N'KERVIN RAFAEL ESCALONA CONTRERAS', N'14104340', N'KERVIN RAFAEL ESCALONA CONTRERAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2260, N'JOSE BENIGNO CONTRERAS', N'14140175', N'JOSE BENIGNO CONTRERAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2261, N'ANGEL JOSE AZUAJE CANCHICA', N'14142442', N'ANGEL JOSE AZUAJE CANCHICA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2262, N'IRALY MARIA PIRELA TERAN', N'14148516', N'IRALY MARIA PIRELA TERAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2263, N'MILDRED PASTORA ZAMBRANO FIGUEROA', N'14160928', N'MILDRED PASTORA ZAMBRANO FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2264, N'NORBIS  MARIA TORRES MARTINEZ', N'14161484', N'NORBIS  MARIA TORRES MARTINEZ', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2265, N'HEDERHT JOSE CORDOVA CALZADILLA', N'14190988', N'HEDERHT JOSE CORDOVA CALZADILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2266, N'BONIFACIO ANTONIO RIVERO SOSA', N'14195383', N'BONIFACIO ANTONIO RIVERO SOSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2267, N'WILMER ALFREDO RONDON TORRES', N'14197304', N'WILMER ALFREDO RONDON TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2268, N'YORMAR ORLANDO ROA ARIAS', N'14208909', N'YORMAR ORLANDO ROA ARIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2269, N'JIMMY ALQUIMIDES OLIVARES', N'14216096', N'JIMMY ALQUIMIDES OLIVARES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2270, N'MANUEL JOSÉ DÍAZ SILVERA', N'14225602', N'MANUEL JOSÉ DÍAZ SILVERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2271, N'DENISS YUBIZAY HERRERA  GODOY', N'14238186', N'DENISS YUBIZAY HERRERA  GODOY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2272, N'RAMON EDUARDO HENRIQUEZ VIVAS', N'14252103', N'RAMON EDUARDO HENRIQUEZ VIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2273, N'YSBEIDY YUSMARI GOMEZ BORGES', N'14262012', N'YSBEIDY YUSMARI GOMEZ BORGES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2274, N'YULIS  ANTONIETA GODOY  PEREZ', N'14269001', N'YULIS  ANTONIETA GODOY  PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2275, N'KENYA CONSUELO PEREZ DEVENICHS', N'14274751', N'KENYA CONSUELO PEREZ DEVENICHS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2276, N'JONATHAN ALEXANDER RODRIGUEZ GONZALEZ', N'14274899', N'JONATHAN ALEXANDER RODRIGUEZ GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2277, N'ENDER JOSE BARROSO REYES', N'14280668', N'ENDER JOSE BARROSO REYES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2278, N'ANDREW WALDEMAR RUIZ PINTO', N'14295803', N'ANDREW WALDEMAR RUIZ PINTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2279, N'LINOMAR RAMON MENDOZA RIVAS', N'14296782', N'LINOMAR RAMON MENDOZA RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2280, N'YENIFER MARIELA TERAN SANCHEZ', N'14323853', N'YENIFER MARIELA TERAN SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2281, N'HABIUT ELIZABETH ALVAREZ', N'14355465', N'HABIUT ELIZABETH ALVAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2282, N'JOSE ALFREDO PEREZ CHIRINOS', N'14372188', N'JOSE ALFREDO PEREZ CHIRINOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2283, N'OSLEIDY MARKIELYS LUGO MENDOZA', N'14379651', N'OSLEIDY MARKIELYS LUGO MENDOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2284, N'NORALBA MERCEDES SALAS VASQUEZ', N'14447615', N'NORALBA MERCEDES SALAS VASQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2285, N'INGRID MAYERLIN HERNANDEZ RUIZ', N'14452929', N'INGRID MAYERLIN HERNANDEZ RUIZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2286, N'JERLINA DEL VALLE BRICENO SULBARAN', N'14460413', N'JERLINA DEL VALLE BRICENO SULBARAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2287, N'ARIAJAY YASIBIT CORDOVA CASTILLO', N'14471464', N'ARIAJAY YASIBIT CORDOVA CASTILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2288, N'JESUS ORLANDO LUGO', N'14478682', N'JESUS ORLANDO LUGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2289, N'NELSON JESUS MARTINEZ NARANJO', N'14492096', N'NELSON JESUS MARTINEZ NARANJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2290, N'RODOLFO JOSE MARTINEZ NARANJO', N'14492097', N'RODOLFO JOSE MARTINEZ NARANJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2291, N'NELSON RAFAEL SANCHEZ HERNANDEZ', N'14494750', N'NELSON RAFAEL SANCHEZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2292, N'ROSMALY DEL VALLE RIVAS HERNANDEZ', N'14499221', N'ROSMALY DEL VALLE RIVAS HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2293, N'ADRIANA COROMOTO VERGARA VILLEGAS', N'14527479', N'ADRIANA COROMOTO VERGARA VILLEGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2294, N'WILDER RAFAEL OLIVEROS ROSENDO', N'14540276', N'WILDER RAFAEL OLIVEROS ROSENDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2295, N'YASMILY MARIA GIL GONZALEZ', N'14541945', N'YASMILY MARIA GIL GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2296, N'NELSON AMADO MARQUEZ ERAZO', N'14548157', N'NELSON AMADO MARQUEZ ERAZO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2297, N'ANA JULIA SILVEIRA COA', N'14553777', N'ANA JULIA SILVEIRA COA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2298, N'MARIELENA TERAN NAVA', N'14556348', N'MARIELENA TERAN NAVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2299, N'NOELIA DEL CARMEN RIVAS OLIVAR', N'14569758', N'NOELIA DEL CARMEN RIVAS OLIVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2300, N'HAROLD JOSE MONTILLA', N'14573512', N'HAROLD JOSE MONTILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2301, N'LUIS VINICIO FUENMAYOR FARIA', N'14581610', N'LUIS VINICIO FUENMAYOR FARIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2302, N'JORGE EDUARDO PARICA  SIFONTES', N'14583212', N'JORGE EDUARDO PARICA  SIFONTES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2303, N'ELKA JOSEFINA MILLAN MARIN', N'14661046', N'ELKA JOSEFINA MILLAN MARIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2304, N'ISRAEL MEJIAS ROSAS', N'14666840', N'ISRAEL MEJIAS ROSAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2305, N'MARIA ROSARIO SALAZAR DIAZ', N'14686290', N'MARIA ROSARIO SALAZAR DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2306, N'CARMEN LORENA ROJAS ROJAS', N'14700430', N'CARMEN LORENA ROJAS ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2307, N'ROSMELYS ALEJANDRA SALAZAR', N'14717172', N'ROSMELYS ALEJANDRA SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2308, N'EDUARDO JESUS SUAREZ TORREZ', N'14755339', N'EDUARDO JESUS SUAREZ TORREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2309, N'JULIO CESAR LUGO BELLO', N'14757755', N'JULIO CESAR LUGO BELLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2310, N'YENNSY BETZAIDA CASTILLO FIGUEREDO', N'14758098', N'YENNSY BETZAIDA CASTILLO FIGUEREDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2311, N'DANIEL  ALIRIO CHAVES ESCALONA', N'14772924', N'DANIEL  ALIRIO CHAVES ESCALONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2312, N'LESBIA YASMERIS JIMENEZ IBARRA', N'14788255', N'LESBIA YASMERIS JIMENEZ IBARRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2313, N'YUSMAR DEL VALLE TRONCOSO ROBALLO', N'14789871', N'YUSMAR DEL VALLE TRONCOSO ROBALLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2314, N'ALBERTO JOSE ALCALA PETIT', N'14792951', N'ALBERTO JOSE ALCALA PETIT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2315, N'LISSETT BEATRIZ ACOSTA CABAÑA', N'14819729', N'LISSETT BEATRIZ ACOSTA CABAÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2316, N'CARLOS RAMON CAMACARO ESCALONA', N'14825711', N'CARLOS RAMON CAMACARO ESCALONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2317, N'ELENA RONDON DE MONASTERIOS', N'14830534', N'ELENA RONDON DE MONASTERIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2318, N'INGRY DEL VALLE GONZALEZ MONTILLA', N'14838301', N'INGRY DEL VALLE GONZALEZ MONTILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2319, N'ALVARO JOSE URRIBARRI DIAZ', N'14846136', N'ALVARO JOSE URRIBARRI DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2320, N'MARCOS ANTONIO NAVAS CARDENAS', N'14850201', N'MARCOS ANTONIO NAVAS CARDENAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2321, N'ANY YORMARY CORDOVA MUÑOZ', N'14868243', N'ANY YORMARY CORDOVA MUÑOZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2322, N'JAVIER ENRIQUE TOVAR MEDINA', N'14889617', N'JAVIER ENRIQUE TOVAR MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2323, N'LISBETH MARGARITA TERAN TORRES', N'14890619', N'LISBETH MARGARITA TERAN TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2324, N'YURAIMA CAROLINA LA CRUZ GONZALEZ', N'14897480', N'YURAIMA CAROLINA LA CRUZ GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2325, N'RAMON JOSE SANCHEZ LARA', N'14901460', N'RAMON JOSE SANCHEZ LARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2326, N'CAROL ZULAY ROMERO  LOBO', N'14910685', N'CAROL ZULAY ROMERO  LOBO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2327, N'NAHOVIS SABRINA VILLASMIL CENTENO', N'14940193', N'NAHOVIS SABRINA VILLASMIL CENTENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2328, N'LISBETH THAIDI RODRIGUEZ CHACON', N'14953218', N'LISBETH THAIDI RODRIGUEZ CHACON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2329, N'BEATRIZ ADRIANA AMAYA VEGA', N'14953503', N'BEATRIZ ADRIANA AMAYA VEGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2330, N'JENNY ANDREINA TORRES', N'14953777', N'JENNY ANDREINA TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2331, N'YULNARA LESLIE DUGARTE VILLARREAL', N'14963421', N'YULNARA LESLIE DUGARTE VILLARREAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2332, N'EDITH YORYELI CENTENO MORALES', N'14966985', N'EDITH YORYELI CENTENO MORALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2333, N'JEAN CARLOS BLANCO RAMIREZ', N'14967711', N'JEAN CARLOS BLANCO RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2334, N'JEAN CARLOS MORA', N'14972427', N'JEAN CARLOS MORA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2335, N'RAFAEL RAMON RODRIGUEZ MORENO', N'14978264', N'RAFAEL RAMON RODRIGUEZ MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2336, N'ANA JOSEFINA SANCHEZ GUTIERREZ', N'14991303', N'ANA JOSEFINA SANCHEZ GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2337, N'WENDY LORENA DULCEY OLMEDO', N'15027590', N'WENDY LORENA DULCEY OLMEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2338, N'RICHARD JOSE MEJIA GIL', N'15043477', N'RICHARD JOSE MEJIA GIL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2339, N'NICOLAS JOSE ROJAS RODRIGUEZ', N'15056738', N'NICOLAS JOSE ROJAS RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2340, N'ERIKA MARIELI GOMEZ AYALA', N'15079918', N'ERIKA MARIELI GOMEZ AYALA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2341, N'ANAYLI LEONARDA CUAREZ BELISARIO', N'15083498', N'ANAYLI LEONARDA CUAREZ BELISARIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2342, N'JUAN CARLOS HERNANDEZ', N'15091161', N'JUAN CARLOS HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2343, N'YALICSA JOSEFINA GUEVARA APARICIO', N'15091547', N'YALICSA JOSEFINA GUEVARA APARICIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2344, N'JEAN CARLOS RODRIGUEZ FIGUERA', N'15098203', N'JEAN CARLOS RODRIGUEZ FIGUERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2345, N'ASDRUBAL COLINA SOTO', N'15103371', N'ASDRUBAL COLINA SOTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2346, N'FRANKLIN JOSE PERALTA LUGO', N'15107126', N'FRANKLIN JOSE PERALTA LUGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2347, N'GUSTAVO ENRIQUE PEREZ CARUCI', N'15108954', N'GUSTAVO ENRIQUE PEREZ CARUCI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2348, N'ANGELTERESA DEL VALLE MERCIET', N'15111541', N'ANGELTERESA DEL VALLE MERCIET', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2349, N'NORBELYS ALICIA VILLANUEVA', N'15139647', N'NORBELYS ALICIA VILLANUEVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2350, N'CARLOS EDUARDO MALDONADO  GARCIA', N'15148932', N'CARLOS EDUARDO MALDONADO  GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2351, N'EDGAR JOSE DELGADO QUINTERO', N'15150998', N'EDGAR JOSE DELGADO QUINTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2352, N'HERMELINDA CAROLINA BRACHO PERAZA', N'15152613', N'HERMELINDA CAROLINA BRACHO PERAZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2353, N'RICHARD ARMANDO MORALES CASTELLANOS', N'15156199', N'RICHARD ARMANDO MORALES CASTELLANOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2354, N'BELKIS ELENA VERDÚ GONZÁLEZ', N'15169158', N'BELKIS ELENA VERDÚ GONZÁLEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2355, N'ROXELIS DESIREE SEQUERA AULAR', N'15169483', N'ROXELIS DESIREE SEQUERA AULAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2356, N'LEIBY MAYBETH FUENTES VETENCOURT', N'15172872', N'LEIBY MAYBETH FUENTES VETENCOURT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2357, N'YENNY LISBETH HERNANDEZ MENDEZ', N'15173390', N'YENNY LISBETH HERNANDEZ MENDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2358, N'OSCAR DE JESÚS VIVAS OSORIO', N'15184412', N'OSCAR DE JESÚS VIVAS OSORIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2359, N'JORGE LUIS QUINTERO CARABALLO', N'15213391', N'JORGE LUIS QUINTERO CARABALLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2360, N'WILLIAN  ISMAEL RODRIGUEZ MONTERO', N'15225343', N'WILLIAN  ISMAEL RODRIGUEZ MONTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2361, N'UDON JESUS BITTER MAITA', N'15240804', N'UDON JESUS BITTER MAITA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2362, N'MARELBYS DEL CARMEN GRANADO BELLORIN', N'15244782', N'MARELBYS DEL CARMEN GRANADO BELLORIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2363, N'MARLYN ANGIELINE LOPEZ SEQUERA', N'15314178', N'MARLYN ANGIELINE LOPEZ SEQUERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2364, N'DENMYS JOSE PEREZ FLORES', N'15325313', N'DENMYS JOSE PEREZ FLORES', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2365, N'SHEILA HAYDEE COLINA ORTUÑO', N'15337394', N'SHEILA HAYDEE COLINA ORTUÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2366, N'MARIANELA DEL CARMEN BETANCOURT GUTIERREZ', N'15347702', N'MARIANELA DEL CARMEN BETANCOURT GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2367, N'GREEIILLYS MARGARITA VILLEGAS HURTADO', N'15363332', N'GREEIILLYS MARGARITA VILLEGAS HURTADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2368, N'CLAUDIA  ELIZABETH GONZALEZ HERNANDEZ', N'15374093', N'CLAUDIA  ELIZABETH GONZALEZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2369, N'ALLEM RAFAEL CARDENAS', N'15377359', N'ALLEM RAFAEL CARDENAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2370, N'YAIRE YRENE MONROY HERMOSO', N'15379595', N'YAIRE YRENE MONROY HERMOSO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2371, N'LUISMAR AIMARA GUANIPA GOMEZ', N'15385202', N'LUISMAR AIMARA GUANIPA GOMEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2372, N'JOSE MANUEL MORALES', N'15388923', N'JOSE MANUEL MORALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2373, N'YARLEY COROMOTO ROJAS', N'15438960', N'YARLEY COROMOTO ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2374, N'EDGAR DANIEL CARRIZO  NAVAS', N'15462060', N'EDGAR DANIEL CARRIZO  NAVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2375, N'FABIOLA  CAROLINA RODRIGUEZ FLORES', N'15467889', N'FABIOLA  CAROLINA RODRIGUEZ FLORES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2376, N'LEIBYS CAROLINA MORENO SEVILLA', N'15481530', N'LEIBYS CAROLINA MORENO SEVILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2377, N'YISSET MARGARITA YLARRAZA', N'15497976', N'YISSET MARGARITA YLARRAZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2378, N'MARIO ENRIQUE CASTILLO VIDANT', N'15507926', N'MARIO ENRIQUE CASTILLO VIDANT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2379, N'ROBERT JOSE GUAINA CONA', N'15514957', N'ROBERT JOSE GUAINA CONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2380, N'YOHELEN JOSEFINA RENGIFO MEDINA', N'15527223', N'YOHELEN JOSEFINA RENGIFO MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2381, N'SURAMIL  DEL VALLE RODRIGUEZ GARCIA', N'15536150', N'SURAMIL  DEL VALLE RODRIGUEZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2382, N'MARIAN ORLETTIS GARCIA APONTE', N'15540580', N'MARIAN ORLETTIS GARCIA APONTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2383, N'LEIDY NORA SANDOVAL SANGRONIS', N'15558140', N'LEIDY NORA SANDOVAL SANGRONIS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2384, N'YODENNYS DEL VALLE BLANCO LUGO', N'15571895', N'YODENNYS DEL VALLE BLANCO LUGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2385, N'RICARDO ANTONIO HERNANDEZ BLANCO', N'15577506', N'RICARDO ANTONIO HERNANDEZ BLANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2386, N'MARIA ALEJANDRA PEREZ COLMENARES', N'15579413', N'MARIA ALEJANDRA PEREZ COLMENARES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2387, N'WLADIMIR JOSE DUARTE GRATEROL', N'15587204', N'WLADIMIR JOSE DUARTE GRATEROL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2388, N'LISBETH DEL CARMEN BASTIDAS BASTIDAS', N'15589339', N'LISBETH DEL CARMEN BASTIDAS BASTIDAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2389, N'NESTOR JOSE MARÍN ACEVEDO', N'15622913', N'NESTOR JOSE MARÍN ACEVEDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2390, N'YENNIFER SOFIA ORTIZ FERNANDEZ', N'15630105', N'YENNIFER SOFIA ORTIZ FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2391, N'PEDRO PABLO MEDINA DÍAZ', N'15635239', N'PEDRO PABLO MEDINA DÍAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2392, N'FELIX YOHAN MENDEZ CEDEÑO', N'15636874', N'FELIX YOHAN MENDEZ CEDEÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2393, N'YHON  CARLOS ROSALES  CHACON', N'15640826', N'YHON  CARLOS ROSALES  CHACON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2394, N'LISETH DEL CARMEN HERNANDEZ ZAVALA', N'15644100', N'LISETH DEL CARMEN HERNANDEZ ZAVALA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2395, N'ELIZABETH JOSEFINA GALLARDO  DELGADO', N'15669567', N'ELIZABETH JOSEFINA GALLARDO  DELGADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2396, N'LUCY IRENE QUINTERO  LANDAETA', N'15696340', N'LUCY IRENE QUINTERO  LANDAETA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2397, N'VICTOR FRANCISCO FALCON MEDINA', N'15703726', N'VICTOR FRANCISCO FALCON MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2398, N'ROSELYN ALEXANDRA GARCIA OTERO', N'15706946', N'ROSELYN ALEXANDRA GARCIA OTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2399, N'FRANCISCO RAUL PRIETO PINEDA', N'15728860', N'FRANCISCO RAUL PRIETO PINEDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2400, N'NEYVA JOSEFINA GARCIA BERMUDEZ', N'15741438', N'NEYVA JOSEFINA GARCIA BERMUDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2401, N'DAYANA JOSEFINA LARA RANGEL', N'15748164', N'DAYANA JOSEFINA LARA RANGEL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2402, N'ANA YUSMARY GOMEZ CALDERON', N'15758590', N'ANA YUSMARY GOMEZ CALDERON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2403, N'SENY ANELE MONSANTO RIVAS', N'15779204', N'SENY ANELE MONSANTO RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2404, N'WILMELY CHIQUITO COLINA', N'15806608', N'WILMELY CHIQUITO COLINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2405, N'WILLIAMS ANDRES VASQUEZ CRESPO', N'15812234', N'WILLIAMS ANDRES VASQUEZ CRESPO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2406, N'FRANCISCO JAVIER GARCIA PEÑA', N'15816184', N'FRANCISCO JAVIER GARCIA PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2407, N'EDWUIN RAFAEL LIZARDI MARTINEZ', N'15821251', N'EDWUIN RAFAEL LIZARDI MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2408, N'JOSE MIGUEL RODRIGUEZ QUILIMACO', N'15830969', N'JOSE MIGUEL RODRIGUEZ QUILIMACO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2409, N'YURIMAR  MERCEDES NAVARRO VASQUEZ', N'15837604', N'YURIMAR  MERCEDES NAVARRO VASQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2410, N'LINDY MARELSY AVENDAÑO LOBO', N'15842566', N'LINDY MARELSY AVENDAÑO LOBO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2411, N'RHONY JAVIER ROJAS ZAMBRANO', N'15858079', N'RHONY JAVIER ROJAS ZAMBRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2412, N'ROMY DEL VALLE DIAZ', N'15866756', N'ROMY DEL VALLE DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2413, N'YUSBIRY DEL CARMEN VILERA LEON', N'15872155', N'YUSBIRY DEL CARMEN VILERA LEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2414, N'JOHANNA M. MEZA LOPEZ', N'15892171', N'JOHANNA M. MEZA LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2415, N'EDWIN RAFAEL SANCHEZ FLORES', N'15912526', N'EDWIN RAFAEL SANCHEZ FLORES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2416, N'MARIA MERCEDES PACHECO MUNOZ', N'15920668', N'MARIA MERCEDES PACHECO MUNOZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2417, N'YAIQUIVEL DEL MILAGRO RAMIREZ CONTRERAS', N'15923153', N'YAIQUIVEL DEL MILAGRO RAMIREZ CONTRERAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2418, N'ISRAEL ZENON BOLIVAR BOLIVAR', N'15936778', N'ISRAEL ZENON BOLIVAR BOLIVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2419, N'JOHAN RAUL MENDEZ BOLIVAR', N'15948451', N'JOHAN RAUL MENDEZ BOLIVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2420, N'JOSE ANTONIO VIVAS GALVIZ', N'15962463', N'JOSE ANTONIO VIVAS GALVIZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2421, N'YOVANNY GERONIMO GARCIA HERNANDEZ', N'15965035', N'YOVANNY GERONIMO GARCIA HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2422, N'KELLY MARGARITA DIAZ RAMIREZ', N'15967053', N'KELLY MARGARITA DIAZ RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2423, N'MARINO ALIRIO CASTILLO SEQUERA', N'15976928', N'MARINO ALIRIO CASTILLO SEQUERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2424, N'YOHANDRY WILFRIDO GARCIA LEAL', N'16018488', N'YOHANDRY WILFRIDO GARCIA LEAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2425, N'KEYNNER ALEXANDER RODRIGUEZ MARTINEZ', N'16021190', N'KEYNNER ALEXANDER RODRIGUEZ MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2426, N'ANGEL JOSE REMY MEJIAS', N'16027302', N'ANGEL JOSE REMY MEJIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2427, N'MARIA TERESA RODRIGUEZ', N'16031157', N'MARIA TERESA RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2428, N'DAMELIS CAROLINA BETANCOURT', N'16031409', N'DAMELIS CAROLINA BETANCOURT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2429, N'LIXSARI MAIGUALIDA ARRAIZ CAMACARO', N'16042117', N'LIXSARI MAIGUALIDA ARRAIZ CAMACARO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2430, N'LEONARDO JOSE BUCAN TIRADO', N'16067807', N'LEONARDO JOSE BUCAN TIRADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2431, N'EVELIN ALEXANDRA RONDON QUIÑONES', N'16083036', N'EVELIN ALEXANDRA RONDON QUIÑONES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2432, N'RONALD GRABRIEL LOPEZ  ARAMACUTO', N'16096483', N'RONALD GRABRIEL LOPEZ  ARAMACUTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2433, N'NEREYDA MAYGUALIDA VIVAS ZAPATA', N'16100301', N'NEREYDA MAYGUALIDA VIVAS ZAPATA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2434, N'LUIS MIGUEL ACOSTA CUEVAS', N'16110300', N'LUIS MIGUEL ACOSTA CUEVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2435, N'ELCY EVELYN PEÑA DE TORRES', N'16114936', N'ELCY EVELYN PEÑA DE TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2436, N'ADELA  ESTER GOMEZ CARMONA', N'16115644', N'ADELA  ESTER GOMEZ CARMONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2437, N'RUBEN XAVIER ARIAS CABALLERO', N'16134389', N'RUBEN XAVIER ARIAS CABALLERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2438, N'EDIMAR DEL CARMEN RODRIGUEZ PALMA', N'16147587', N'EDIMAR DEL CARMEN RODRIGUEZ PALMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2439, N'MARIA DE LOS ANGELES GALAVIS ZAPATA', N'16228619', N'MARIA DE LOS ANGELES GALAVIS ZAPATA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2440, N'YULEIDY JEANNE SANTANA MELENDEZ', N'16234204', N'YULEIDY JEANNE SANTANA MELENDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2441, N'JOSE FERMIN CHACON FIGUEREDO', N'16258557', N'JOSE FERMIN CHACON FIGUEREDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2442, N'CARLOS RAMON TERAN CUEVAS', N'16265892', N'CARLOS RAMON TERAN CUEVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2443, N'JOSE LUIS TERAN CUEVAS', N'16265895', N'JOSE LUIS TERAN CUEVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2444, N'YULY YANIRI MARIN FERNANDEZ', N'16286469', N'YULY YANIRI MARIN FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2445, N'DAXELIS MILAGRO MERCADO', N'16294019', N'DAXELIS MILAGRO MERCADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2446, N'NANCY YUREIMA CONTRERAS FERNADEZ', N'16317518', N'NANCY YUREIMA CONTRERAS FERNADEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2447, N'RALPHY ALDANA', N'16331269', N'RALPHY ALDANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2448, N'OLIVER JOSE MORA ALCALA', N'16334581', N'OLIVER JOSE MORA ALCALA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2449, N'MARY CARMEN LOMBARDI ALVARADO', N'16341708', N'MARY CARMEN LOMBARDI ALVARADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2450, N'LEIDY ALEXANDRA NAVAS FLORES', N'16344314', N'LEIDY ALEXANDRA NAVAS FLORES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2451, N'JOSE REINALDO MARTINEZ ROSATO', N'16359669', N'JOSE REINALDO MARTINEZ ROSATO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2452, N'JAIRELIS MARINA CARVAJAL', N'16371923', N'JAIRELIS MARINA CARVAJAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2453, N'YESSIKA LOPEZ  QUINTERO', N'16372353', N'YESSIKA LOPEZ  QUINTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2454, N'ALIX OVEIDA SALCEDO VARGAS', N'16377689', N'ALIX OVEIDA SALCEDO VARGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2455, N'GRIBER ANTONIO NIÑO', N'16378041', N'GRIBER ANTONIO NIÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2456, N'NAIBE YOHANA RODRIGUEZ MEDINA', N'16401017', N'NAIBE YOHANA RODRIGUEZ MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2457, N'LEIDA COROMOTO FLORES CHACÓN', N'16412448', N'LEIDA COROMOTO FLORES CHACÓN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2458, N'YESENIA ARGUINZONES', N'16412681', N'YESENIA ARGUINZONES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2459, N'YAMILET DEL CARMEN ACOSTA CABRERA', N'16414622', N'YAMILET DEL CARMEN ACOSTA CABRERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2460, N'CRISTINA CAROLINA RUIZ NUÑEZ', N'16429101', N'CRISTINA CAROLINA RUIZ NUÑEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2461, N'WILLIAN DEIVIS CORREA VERDU', N'16451629', N'WILLIAN DEIVIS CORREA VERDU', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2462, N'LUCIA MICCHELINA PACE GUDIÑO', N'16465529', N'LUCIA MICCHELINA PACE GUDIÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2463, N'MAIKEL JESUS ISTURIZ NOVOA', N'16508660', N'MAIKEL JESUS ISTURIZ NOVOA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2464, N'YULENNY YOSELIN BORGES RODRIGUEZ', N'16509500', N'YULENNY YOSELIN BORGES RODRIGUEZ', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2465, N'JOSE ANTONIO MARQUEZ JIMENEZ', N'16525820', N'JOSE ANTONIO MARQUEZ JIMENEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2466, N'NAIRELIS ANYELIN GUARENA AGUIAR', N'16536090', N'NAIRELIS ANYELIN GUARENA AGUIAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2467, N'YERLY ANDREINA BALLEN BUITRIAGO', N'16540710', N'YERLY ANDREINA BALLEN BUITRIAGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2468, N'LEIDYS DEL VALLE LEON HENRRIQUEZ', N'16546172', N'LEIDYS DEL VALLE LEON HENRRIQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2469, N'YUSBELID ADRIANA MIJARES FLORES', N'16562067', N'YUSBELID ADRIANA MIJARES FLORES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2470, N'RONALD JOSE PIMENTEL GRISMALDO', N'16568831', N'RONALD JOSE PIMENTEL GRISMALDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2471, N'ALFONSO DAVID AGUDO RAMOS', N'16582380', N'ALFONSO DAVID AGUDO RAMOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2472, N'VITDELYS MARIA RAMOS NUÑEZ', N'16625600', N'VITDELYS MARIA RAMOS NUÑEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2473, N'MARILI DEL VALLE BASTARDO GONZALEZ', N'16630956', N'MARILI DEL VALLE BASTARDO GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2474, N'ANABEL YESIkA COLINA COLINA', N'16632863', N'ANABEL YESIkA COLINA COLINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2475, N'OMAIRY RAMONA SANDOVAL', N'16641927', N'OMAIRY RAMONA SANDOVAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2476, N'ANA SAYONARA PEREZ PAREDES', N'16651994', N'ANA SAYONARA PEREZ PAREDES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2477, N'KATIUSCA DEL CARMEN NIEVES DE GARCIA', N'16653307', N'KATIUSCA DEL CARMEN NIEVES DE GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2478, N'JUNIOR AQUILES CONTRERAS EDEMBURGO', N'16658070', N'JUNIOR AQUILES CONTRERAS EDEMBURGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2479, N'WANYER RAMON RODRIGUEZ GARCIA', N'16659336', N'WANYER RAMON RODRIGUEZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2480, N'JOSE  ALEXANDER ROJAS CEBALLO', N'16660585', N'JOSE  ALEXANDER ROJAS CEBALLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2481, N'GERARDO DAVID PEÑA', N'16660849', N'GERARDO DAVID PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2482, N'ANA MARIA MARTINEZ ACOSTA', N'16661139', N'ANA MARIA MARTINEZ ACOSTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2483, N'HEIDER JOSE RAMIREZ', N'16666048', N'HEIDER JOSE RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2484, N'BETZABE WALKIRIA QUINTERO PEREZ', N'16671446', N'BETZABE WALKIRIA QUINTERO PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2485, N'ALIRIO JOSE GIL SILVA', N'16682883', N'ALIRIO JOSE GIL SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2486, N'JORGE LUIS MALDONADO QUINTERO', N'16707039', N'JORGE LUIS MALDONADO QUINTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2487, N'LUIS HUMBERTO ECHEVERRIA ROA', N'16716986', N'LUIS HUMBERTO ECHEVERRIA ROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2488, N'JEXSON JOSE SALAZAR BARRETO', N'16718444', N'JEXSON JOSE SALAZAR BARRETO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2489, N'COROMOTO DEL CARMEN GOMEZ PEREZ', N'16745504', N'COROMOTO DEL CARMEN GOMEZ PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2490, N'XIOMARA NAILETH ESCALONA DE GUAIDO', N'16751729', N'XIOMARA NAILETH ESCALONA DE GUAIDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2491, N'YONDRY JOSE MALAVE SALAZAR', N'16809677', N'YONDRY JOSE MALAVE SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2492, N'AMAGDALIS DEL VALLE MARIN SERRANO', N'16826907', N'AMAGDALIS DEL VALLE MARIN SERRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2493, N'ANNY KATIUSKA ALDAZORO SOSA', N'16849956', N'ANNY KATIUSKA ALDAZORO SOSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2494, N'YULIANY JOSE PEPPER CAGUANA', N'16853141', N'YULIANY JOSE PEPPER CAGUANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2495, N'YOSIE YASMIN MORENO', N'16855634', N'YOSIE YASMIN MORENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2496, N'FERNANDO OSWALDO RAMOS PUERTA', N'16866608', N'FERNANDO OSWALDO RAMOS PUERTA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2497, N'VICMER ALEJANDRO BLANCO USECHE', N'16875012', N'VICMER ALEJANDRO BLANCO USECHE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2498, N'JUAN JOSE FELIZ URBINA', N'16878620', N'JUAN JOSE FELIZ URBINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2499, N'LILIBETH COROMOTO MOLERO OCANTO', N'16881863', N'LILIBETH COROMOTO MOLERO OCANTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2500, N'JENNIFER SALAZAR PEREZ', N'16897204', N'JENNIFER SALAZAR PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2501, N'ADRIAN OSWALDO ESCOBAR FERNANDEZ', N'16901202', N'ADRIAN OSWALDO ESCOBAR FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2502, N'RODOLFO ALEXANDER LOZADA MEDINA', N'16901315', N'RODOLFO ALEXANDER LOZADA MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2503, N'SAUL MIGUEL HERNANDEZ LEAL', N'16913864', N'SAUL MIGUEL HERNANDEZ LEAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2504, N'VERONICA MARIA SAAVEDRA ROJAS', N'16933708', N'VERONICA MARIA SAAVEDRA ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2505, N'CARLOS ALFREDO VALERO', N'16936848', N'CARLOS ALFREDO VALERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2506, N'YERKIS CAROLINA HENRIQUEZ TERAN', N'16938111', N'YERKIS CAROLINA HENRIQUEZ TERAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2507, N'JOSE AGUSTIN MENDOZA CARDONA', N'16951953', N'JOSE AGUSTIN MENDOZA CARDONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2508, N'YUDERKYS PAOLA LUGO MORALES', N'16960302', N'YUDERKYS PAOLA LUGO MORALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2509, N'LEIDY  CAROLINA MORALES MORILLO', N'16966762', N'LEIDY  CAROLINA MORALES MORILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2510, N'EDIXON GERMAN MENDOZA COLMENAREZ', N'16973065', N'EDIXON GERMAN MENDOZA COLMENAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2511, N'JOSEANGEL MEDINA OSTO', N'16973290', N'JOSEANGEL MEDINA OSTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2512, N'LEIDY KATERINE RAMIREZ  MANTILLA', N'16981997', N'LEIDY KATERINE RAMIREZ  MANTILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2513, N'YVIS MAYERLIN POSADA CARRASCO', N'16990639', N'YVIS MAYERLIN POSADA CARRASCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2514, N'YUNNIOR  RAFAEL DURAN  HERNANDEZ', N'17002883', N'YUNNIOR  RAFAEL DURAN  HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2515, N'JOSE DANIEL YAJURE OLARTE', N'17017951', N'JOSE DANIEL YAJURE OLARTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2516, N'ELIZABETH FERNANDEZ', N'17022767', N'ELIZABETH FERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2517, N'ROSA ANA ARAQUE PEREZ', N'17028987', N'ROSA ANA ARAQUE PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2518, N'NATHALY NAIROBIT MESTAS QUIJADA', N'17059029', N'NATHALY NAIROBIT MESTAS QUIJADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2519, N'EVELIN MARIA GRANADOS REINA', N'17059924', N'EVELIN MARIA GRANADOS REINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2520, N'ADIANOY ODALI DEL C. DASILVA', N'17068490', N'ADIANOY ODALI DEL C. DASILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2521, N'YOHAN JOSÉ MARQUEZ MOGOLLON', N'17073996', N'YOHAN JOSÉ MARQUEZ MOGOLLON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2522, N'JHOBANA MAYERLIN ESPINOZA BOLAÑOS', N'17077628', N'JHOBANA MAYERLIN ESPINOZA BOLAÑOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2523, N'LUIS ALBERTO MORR PARRA', N'17080234', N'LUIS ALBERTO MORR PARRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2524, N'OLGA CECILIA ROMERO MONGUA', N'17090897', N'OLGA CECILIA ROMERO MONGUA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2525, N'BRENDA MAYELI PORRAS CORREDOR', N'17109586', N'BRENDA MAYELI PORRAS CORREDOR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2526, N'SANDRA CRITINA RUIZ TOVAR', N'17118253', N'SANDRA CRITINA RUIZ TOVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2527, N'EGDUIN RAFAEL PALACIOS HENRRIQUEZ', N'17120264', N'EGDUIN RAFAEL PALACIOS HENRRIQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2528, N'JOHAN DE JESUS ZERPA LEON', N'17130419', N'JOHAN DE JESUS ZERPA LEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2529, N'OLIVER ABAD USECHE MONSALVE', N'17207766', N'OLIVER ABAD USECHE MONSALVE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2530, N'HILDALY DEL VALLE MARCANO SOTILLET', N'17213564', N'HILDALY DEL VALLE MARCANO SOTILLET', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2531, N'ALEJANDRO JOSE MEJIAS SILVA', N'17215596', N'ALEJANDRO JOSE MEJIAS SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2532, N'YARIANGEL ZAPATA GUTIERREZ', N'17252888', N'YARIANGEL ZAPATA GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2533, N'CINTHIA CAROLINA MARTINEZ CABEZA', N'17272459', N'CINTHIA CAROLINA MARTINEZ CABEZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2534, N'ANGELA MARGARET PEREZ SALAZAR', N'17289049', N'ANGELA MARGARET PEREZ SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2535, N'DIANA CAROLINA ABREU MARISTANY', N'17300997', N'DIANA CAROLINA ABREU MARISTANY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2536, N'YORBIS YURAYMA ALMEIDA RIBAS', N'17311821', N'YORBIS YURAYMA ALMEIDA RIBAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2537, N'YENNY ROSELIANA MOGOLLON BLANCO', N'17313151', N'YENNY ROSELIANA MOGOLLON BLANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2538, N'YERILUZ   ELIZABETH SEQUERA HENRIQUEZ', N'17316563', N'YERILUZ   ELIZABETH SEQUERA HENRIQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2539, N'ANY LORENA PIMENTEL PEREZ', N'17322791', N'ANY LORENA PIMENTEL PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2540, N'MARIA FERNANDA BRICEÑO GONZALEZ', N'17345781', N'MARIA FERNANDA BRICEÑO GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2541, N'MILAGROS YESENIA AZUAJE MONTILLA', N'17347608', N'MILAGROS YESENIA AZUAJE MONTILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2542, N'NILSA BERENICE RODRIGUEZ AVILA', N'17359703', N'NILSA BERENICE RODRIGUEZ AVILA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2543, N'LORENA PEREZ MONASTERIOS', N'17362729', N'LORENA PEREZ MONASTERIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2544, N'JENNY CAROLINA LEON COLEGIAL', N'17369117', N'JENNY CAROLINA LEON COLEGIAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2545, N'DAYANA KARINA MUÑOZ AREVALO', N'17377370', N'DAYANA KARINA MUÑOZ AREVALO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2546, N'KARINA MAILEN MORENO PAREDES', N'17377846', N'KARINA MAILEN MORENO PAREDES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2547, N'YESSICA  JOHANA GUERRERO GALINDEZ', N'17377934', N'YESSICA  JOHANA GUERRERO GALINDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2548, N'JOSE MANUEL SAN GIL PINO', N'17400782', N'JOSE MANUEL SAN GIL PINO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2549, N'ROSANGELA SALAVARRIA RAMOS', N'17402589', N'ROSANGELA SALAVARRIA RAMOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2550, N'JERARDY NAIRUBIS MARQUEZ HERNANDEZ', N'17411093', N'JERARDY NAIRUBIS MARQUEZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2551, N'LAY CHIQUINQUIRA VILLASMIL POSADA', N'17414805', N'LAY CHIQUINQUIRA VILLASMIL POSADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2552, N'NATHALY DEL VALLE PENOTH MARIN', N'17419899', N'NATHALY DEL VALLE PENOTH MARIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2553, N'NELSON ALEXANDER RODRIGUEZ ROJAS', N'17454534', N'NELSON ALEXANDER RODRIGUEZ ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2554, N'DAYANY MILAGRO MOGOLLON GONZALEZ', N'17469484', N'DAYANY MILAGRO MOGOLLON GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2555, N'FABIOLA CAROLINA FLAMES GABAZUT', N'17471066', N'FABIOLA CAROLINA FLAMES GABAZUT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2556, N'YAZMINA ANTONIA ARAUJO MEDINA', N'17471288', N'YAZMINA ANTONIA ARAUJO MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2557, N'ANGELA ROSA PAZ HIDALGO', N'17471511', N'ANGELA ROSA PAZ HIDALGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2558, N'DORA CAROLINA GOLDCHEIDT VARGAS', N'17471668', N'DORA CAROLINA GOLDCHEIDT VARGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2559, N'EDUARDO JOSE RODRIGUEZ MEDRANO', N'17472615', N'EDUARDO JOSE RODRIGUEZ MEDRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2560, N'YARIMAI PAEZ', N'17477746', N'YARIMAI PAEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2561, N'LUZ MARINA BASTIDAS HIDALGO', N'17478953', N'LUZ MARINA BASTIDAS HIDALGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2562, N'JESUS JOSE GOLCALVES LUGO', N'17482391', N'JESUS JOSE GOLCALVES LUGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2563, N'EDITH REBECA MARTINEZ ARIAS', N'17489447', N'EDITH REBECA MARTINEZ ARIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2564, N'MIRIAM DE LOS ANGELES SUBERO RAMOS', N'17508664', N'MIRIAM DE LOS ANGELES SUBERO RAMOS', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2565, N'PAOLA NERUZKA VIZCAYA LUQUE', N'17515062', N'PAOLA NERUZKA VIZCAYA LUQUE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2566, N'JUNIOR RAMON MEDINA SIRA', N'17518583', N'JUNIOR RAMON MEDINA SIRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2567, N'YURIS DEL CARMEN SANCHEZ PARRA', N'17521313', N'YURIS DEL CARMEN SANCHEZ PARRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2568, N'HEYSI KARELIS MANRIQUE', N'17531372', N'HEYSI KARELIS MANRIQUE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2569, N'JUAN CARLOS RIVERO GONZALEZ', N'17532484', N'JUAN CARLOS RIVERO GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2570, N'EDUARDO RAMON QUIARO ARELLAN', N'17537879', N'EDUARDO RAMON QUIARO ARELLAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2571, N'ELEXANDER JOSE GARCIA FINOL', N'17545496', N'ELEXANDER JOSE GARCIA FINOL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2572, N'ANDRY JOYCETT RIVERO MAZA', N'17563542', N'ANDRY JOYCETT RIVERO MAZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2573, N'WUILLIAMS JOSE RODRIGUEZ CORONADO', N'17575825', N'WUILLIAMS JOSE RODRIGUEZ CORONADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2574, N'AYAHARYS CAROLINA MENDOZA FAJARDO', N'17576474', N'AYAHARYS CAROLINA MENDOZA FAJARDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2575, N'VANESSA DAYANA MORENO SOLORZANO', N'17583135', N'VANESSA DAYANA MORENO SOLORZANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2576, N'DISMAR BENICIA UMBRIA MAMBEL', N'17596203', N'DISMAR BENICIA UMBRIA MAMBEL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2577, N'GABRIELA DEL VALLE SALAZAR TORCAT', N'17622251', N'GABRIELA DEL VALLE SALAZAR TORCAT', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2578, N'MORAO RIVERA JEPSYS DEL VALLE', N'17641510', N'MORAO RIVERA JEPSYS DEL VALLE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2579, N'JORGE ENRIQUE GOMEZ ROJAS', N'17650674', N'JORGE ENRIQUE GOMEZ ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2580, N'YORMIRA VANESSA DIAZ GARCIA', N'17652276', N'YORMIRA VANESSA DIAZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2581, N'JHOANA KAROLAY MENDEZ ARAQUE', N'17659566', N'JHOANA KAROLAY MENDEZ ARAQUE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2582, N'LISBETH RAMONA HERNANDEZ HERNANDEZ', N'17662771', N'LISBETH RAMONA HERNANDEZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2583, N'KIMBERLYS LISBETH ARROYO TOVAR', N'17675481', N'KIMBERLYS LISBETH ARROYO TOVAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2584, N'RAFAEL ALFREDO CORO CITA', N'17675536', N'RAFAEL ALFREDO CORO CITA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2585, N'EDDY SMITH GARCIA FUENMAYOR', N'17684849', N'EDDY SMITH GARCIA FUENMAYOR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2586, N'YURIS DEL ROSARIO CALLES HERNANDEZ', N'17688876', N'YURIS DEL ROSARIO CALLES HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2587, N'MANUEL ANTONIO RIVAS CAMPOS', N'17706778', N'MANUEL ANTONIO RIVAS CAMPOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2588, N'DORIS BAUTISTA DUNO', N'17752961', N'DORIS BAUTISTA DUNO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2589, N'ALEXANDER JOSE SARMIENTO DE LA ROSA', N'17763099', N'ALEXANDER JOSE SARMIENTO DE LA ROSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2590, N'RUTH BEATRIZ SILVA CARVAJAL', N'17770477', N'RUTH BEATRIZ SILVA CARVAJAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2591, N'JACKELINE MARISOL PARRA SOSA', N'17812915', N'JACKELINE MARISOL PARRA SOSA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2592, N'JENSEL RUBEN RAMIREZ PEREZ', N'17856671', N'JENSEL RUBEN RAMIREZ PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2593, N'EDINSON ALEJANDRO SANCHEZ  VALERO', N'17896512', N'EDINSON ALEJANDRO SANCHEZ  VALERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2594, N'DUBRASKA ADRIANA HERNANDEZ RIOS', N'17914896', N'DUBRASKA ADRIANA HERNANDEZ RIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2595, N'BELGICA DEL CARMEN HERNANDEZ', N'17920866', N'BELGICA DEL CARMEN HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2596, N'YHOANDESON JOSE GONZALEZ JAIME', N'17932628', N'YHOANDESON JOSE GONZALEZ JAIME', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2597, N'LEYLA BEATRIZ LOZADA CHIRINOS', N'17942841', N'LEYLA BEATRIZ LOZADA CHIRINOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2598, N'MIRELLA ALEXANDRA RAMIREZ', N'17945442', N'MIRELLA ALEXANDRA RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2599, N'CARLOS LUIS REYES MEDINA', N'17956795', N'CARLOS LUIS REYES MEDINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2600, N'WILLIAM JOSÉ LOVERA CEBALLOS', N'17962048', N'WILLIAM JOSÉ LOVERA CEBALLOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2601, N'ALFREDO JOSE CRESPO COROBA', N'17992172', N'ALFREDO JOSE CRESPO COROBA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2602, N'YECY CAROLINA GONZALEZ GARCIA', N'18040135', N'YECY CAROLINA GONZALEZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2603, N'MIDANYELA KARELYS TORTOLANI MIJARES', N'18052357', N'MIDANYELA KARELYS TORTOLANI MIJARES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2604, N'JOSE MIGUEL NARANJO BLANCO', N'18093960', N'JOSE MIGUEL NARANJO BLANCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2605, N'RONALD ALBERTO HERNANDEZ ALTUVE', N'18124926', N'RONALD ALBERTO HERNANDEZ ALTUVE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2606, N'OSCAR ANDRES MORALES PEÑA', N'18125227', N'OSCAR ANDRES MORALES PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2607, N'SANDRA CONSUELO LOBO CALDERON', N'18125559', N'SANDRA CONSUELO LOBO CALDERON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2608, N'MARIA KARLA CISNEROS CAÑONGO', N'18129560', N'MARIA KARLA CISNEROS CAÑONGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2609, N'CARMEN JULIA CHIRE JIMENEZ', N'18159425', N'CARMEN JULIA CHIRE JIMENEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2610, N'GLAZNERLIN AIRAN PEREZ LEÓN', N'18182655', N'GLAZNERLIN AIRAN PEREZ LEÓN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2611, N'JOSE JAVIER QUINTANA BOTTINI', N'18187867', N'JOSE JAVIER QUINTANA BOTTINI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2612, N'JORYELI YIYBETH HERRERA PEÑA', N'18187871', N'JORYELI YIYBETH HERRERA PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2613, N'MARIA DE LOS ANGELES VIÑA VALENCIA', N'18214587', N'MARIA DE LOS ANGELES VIÑA VALENCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2614, N'INGRID NAYROBY PEREIRA CASTELLANO', N'18234947', N'INGRID NAYROBY PEREIRA CASTELLANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2615, N'ANNAKARINA PRIMERA PINEDA', N'18261141', N'ANNAKARINA PRIMERA PINEDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2616, N'YAISY YARVELY LOPEZ TORREALBA', N'18269921', N'YAISY YARVELY LOPEZ TORREALBA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2617, N'YASNEL ALEXANDRA RAMOS  PALMA', N'18270360', N'YASNEL ALEXANDRA RAMOS  PALMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2618, N'RAUL RENE CAMBERO CASTILLO', N'18286928', N'RAUL RENE CAMBERO CASTILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2619, N'CARLOS EDUARDO RODRIGUEZ FONSECA', N'18287784', N'CARLOS EDUARDO RODRIGUEZ FONSECA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2620, N'FREILUY JESUS LOPEZ ESCALONA', N'18293723', N'FREILUY JESUS LOPEZ ESCALONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2621, N'CARLOS RAFAEL GARCIA GARCIA', N'18295183', N'CARLOS RAFAEL GARCIA GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2622, N'MARIA DANIELA PINEDA SANCHEZ', N'18312697', N'MARIA DANIELA PINEDA SANCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2623, N'VANESSA DEL VALLE HERNÁNDEZ PALACIOS', N'18325400', N'VANESSA DEL VALLE HERNÁNDEZ PALACIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2624, N'MARGORY ELIZABETH BRICEÑO VELASQUEZ', N'18330619', N'MARGORY ELIZABETH BRICEÑO VELASQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2625, N'OMAR DE JESUS MARQUEZ', N'18335235', N'OMAR DE JESUS MARQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2626, N'BIBIANA CARLINA FERNANDEZ GARCIA', N'18349030', N'BIBIANA CARLINA FERNANDEZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2627, N'MARIA JOSE BRITO', N'18366400', N'MARIA JOSE BRITO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2628, N'ANGELA MARIA MATERANO GIL', N'18377352', N'ANGELA MARIA MATERANO GIL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2629, N'JULIAN ALFONSO CALDERIN SANTAELLA', N'18388668', N'JULIAN ALFONSO CALDERIN SANTAELLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2630, N'KARLA KARINA TORREALBA OROPEZA', N'18388930', N'KARLA KARINA TORREALBA OROPEZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2631, N'DEISY LORENA MEDINA RAMIREZ', N'18392110', N'DEISY LORENA MEDINA RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2632, N'CARLYN KARYNA GUERREROS MOROS', N'18393527', N'CARLYN KARYNA GUERREROS MOROS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2633, N'JUSTO EMILIO ROJAS CASTILLO', N'18418660', N'JUSTO EMILIO ROJAS CASTILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2634, N'NATHALY DEL CARMEN GUILARTE  DE MOLINA', N'18442515', N'NATHALY DEL CARMEN GUILARTE  DE MOLINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2635, N'NERVIC FRANGELLINES BANDRES DE SILVA', N'18443195', N'NERVIC FRANGELLINES BANDRES DE SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2636, N'ONIBLIS AUGUSTO TOVAR RIOS', N'18445792', N'ONIBLIS AUGUSTO TOVAR RIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2637, N'MIRELIS COROMOTO BARRETO LEON', N'18457399', N'MIRELIS COROMOTO BARRETO LEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2638, N'DARELIS NOHELY GUILARTE SILVA', N'18466609', N'DARELIS NOHELY GUILARTE SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2639, N'ANDREA CAROLINA GONZALEZ SUMOZA', N'18489454', N'ANDREA CAROLINA GONZALEZ SUMOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2640, N'FLOREGLIS MAYERLIS FALCON LEON', N'18503404', N'FLOREGLIS MAYERLIS FALCON LEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2641, N'IRANIA CELESTE DE JOSE QUIJADA CABELLO', N'18510053', N'IRANIA CELESTE DE JOSE QUIJADA CABELLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2642, N'YOLIBER DEL VALLE CORDOVA SIFONTES', N'18515180', N'YOLIBER DEL VALLE CORDOVA SIFONTES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2643, N'ANYINEL MINGDALY ASCANIO OCHOA', N'18529935', N'ANYINEL MINGDALY ASCANIO OCHOA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2644, N'MARIEVYS CAROLINA TORRES GUEVARA', N'18531560', N'MARIEVYS CAROLINA TORRES GUEVARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2645, N'ANA CRISTINA CAMEJO VILLEGAS', N'18542165', N'ANA CRISTINA CAMEJO VILLEGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2646, N'YENEVIT DANIELA MENDOZA RAMIREZ', N'18553814', N'YENEVIT DANIELA MENDOZA RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2647, N'RAFAEL ANTONIO ESPINOZA DORANTE', N'18563550', N'RAFAEL ANTONIO ESPINOZA DORANTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2648, N'DAVID GUILLERMO MELENDEZ CARDENAS', N'18572018', N'DAVID GUILLERMO MELENDEZ CARDENAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2649, N'LEIDY GUILLEN GUILLEN', N'18579248', N'LEIDY GUILLEN GUILLEN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2650, N'ENDER RAFAEL RIERA', N'18638429', N'ENDER RAFAEL RIERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2651, N'LEONARDO COROMOTO OVIEDO MONTENEGRO', N'18640350', N'LEONARDO COROMOTO OVIEDO MONTENEGRO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2652, N'FREDDY ELIAS BRICEÑO MEDRANO', N'18658308', N'FREDDY ELIAS BRICEÑO MEDRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2653, N'EDIMAR ALBERTO OCHOA MARIN', N'18668124', N'EDIMAR ALBERTO OCHOA MARIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2654, N'JUSTO EMILIO PEROZO HERNANDEZ', N'18681820', N'JUSTO EMILIO PEROZO HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2655, N'YORJELIS DEL VALLE HURTADO ZOLANO', N'18714881', N'YORJELIS DEL VALLE HURTADO ZOLANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2656, N'ROSELY MARIA ZAMORA AZCANIO', N'18728691', N'ROSELY MARIA ZAMORA AZCANIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2657, N'LISETTE RODRIGUEZ', N'18749828', N'LISETTE RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2658, N'GUSMAR AMELIA CEPEDA MATOS', N'18779901', N'GUSMAR AMELIA CEPEDA MATOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2659, N'LILIAN DEL VALLE DUGARTE MARQUEZ', N'18797659', N'LILIAN DEL VALLE DUGARTE MARQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2660, N'ROXANA RODRIGUEZ', N'18813401', N'ROXANA RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2661, N'EDGAR JOEL AULAR GALINDO', N'18817253', N'EDGAR JOEL AULAR GALINDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2662, N'LUIS ALEJANDRO HERNANDEZ MORALES', N'18836854', N'LUIS ALEJANDRO HERNANDEZ MORALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2663, N'INGRID MARISOL RUIZ URIBE', N'18879812', N'INGRID MARISOL RUIZ URIBE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2664, N'KARINA DEL VALLE AGUILAR BASTARDO', N'18887490', N'KARINA DEL VALLE AGUILAR BASTARDO', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2665, N'LEOBARDO COLMENARES MARQUEZ', N'18965063', N'LEOBARDO COLMENARES MARQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2666, N'MILEIDY DEL CARMEN VIELMA  SAAVEDRA', N'18966334', N'MILEIDY DEL CARMEN VIELMA  SAAVEDRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2667, N'JOSE HERNAN RODRIGUEZ DAVILA', N'18966531', N'JOSE HERNAN RODRIGUEZ DAVILA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2668, N'ELIANA KARINA GADEA MARTINEZ', N'18973763', N'ELIANA KARINA GADEA MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2669, N'CARLIANA ANDREINA SANCHEZ VITRIAGO', N'18977966', N'CARLIANA ANDREINA SANCHEZ VITRIAGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2670, N'YOHAN ALEXANDER CAHUAO ARAUJO', N'18984758', N'YOHAN ALEXANDER CAHUAO ARAUJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2671, N'JOSE LEONARDO ROJAS ALTUVE', N'18989892', N'JOSE LEONARDO ROJAS ALTUVE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2672, N'MICHELLE ANDREINA RAMOS GRATEROL', N'18996455', N'MICHELLE ANDREINA RAMOS GRATEROL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2673, N'JOAN ALBERTO DIAZ PACHECO', N'19023922', N'JOAN ALBERTO DIAZ PACHECO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2674, N'YONNY ALFREDO SILVA MARTINEZ', N'19027202', N'YONNY ALFREDO SILVA MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2675, N'ANA MARITZA GARCIA PIÑATE', N'19027244', N'ANA MARITZA GARCIA PIÑATE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2676, N'MERLYN DEL CARMEN TOVAR CARRILLO', N'19028127', N'MERLYN DEL CARMEN TOVAR CARRILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2677, N'YESSICA ANDREINA RUIZ MENDOZA', N'19043933', N'YESSICA ANDREINA RUIZ MENDOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2678, N'MARIA GABRIELA CARRERO MARTINEZ', N'19046514', N'MARIA GABRIELA CARRERO MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2679, N'MARIELBA RAQUEL PEÑA SARDON', N'19053962', N'MARIELBA RAQUEL PEÑA SARDON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2680, N'LEISA CAROLINA GALVIS RIVAS', N'19070799', N'LEISA CAROLINA GALVIS RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2681, N'KARIZMA CRISTI ESPINOZA MAESTRE', N'19138994', N'KARIZMA CRISTI ESPINOZA MAESTRE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2682, N'MARIA VIRGINIA PEREZ  PENA', N'19144034', N'MARIA VIRGINIA PEREZ  PENA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2683, N'EDUARDO JOSE FERNANDEZ PERDOMO', N'19187223', N'EDUARDO JOSE FERNANDEZ PERDOMO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2684, N'DANIELA VALENTINA MARTINEZ HIGUEREY', N'19190823', N'DANIELA VALENTINA MARTINEZ HIGUEREY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2685, N'DEBERIN  JOSE TEJADA  HERNANDEZ', N'19200616', N'DEBERIN  JOSE TEJADA  HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2686, N'JULIO CESAR ASCANIO DELGADO', N'19211499', N'JULIO CESAR ASCANIO DELGADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2687, N'DIEGO ALEJANDRO MENDEZ ZAMBRANO', N'19236779', N'DIEGO ALEJANDRO MENDEZ ZAMBRANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2688, N'DARWIN RAFAEL JIMENEZ ALVARADO', N'19240125', N'DARWIN RAFAEL JIMENEZ ALVARADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2689, N'NEIDA PAOLA RAMIREZ HERNANDEZ', N'19243999', N'NEIDA PAOLA RAMIREZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2690, N'ESCLEVER ANTONY LAYA CANDIA', N'19272228', N'ESCLEVER ANTONY LAYA CANDIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2691, N'DEIBY HORACIO CARDONA  SALAS', N'19288492', N'DEIBY HORACIO CARDONA  SALAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2692, N'YODALYS DEL VALLE MACUARAN PORTUGUEZ', N'19315023', N'YODALYS DEL VALLE MACUARAN PORTUGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2693, N'EVER JOSE MARQUEZ ROJAS', N'19319735', N'EVER JOSE MARQUEZ ROJAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2694, N'ANGEL ALEXANDER RODRIGUEZ ARAY', N'19329534', N'ANGEL ALEXANDER RODRIGUEZ ARAY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2695, N'DORIANNY JOSE VILLARROEL SALAZAR', N'19330980', N'DORIANNY JOSE VILLARROEL SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2696, N'BEXIS JACQUELIN JIMENEZ LEON', N'19334138', N'BEXIS JACQUELIN JIMENEZ LEON', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2697, N'MARIA JOSE MANRIQUE SUAREZ', N'19347322', N'MARIA JOSE MANRIQUE SUAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2698, N'JIMMY WLADIMIR ALMENAR LEDEZMA', N'19366930', N'JIMMY WLADIMIR ALMENAR LEDEZMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2699, N'YAMILA SUMAYA CEDEÑO VILLANUEVA', N'19375212', N'YAMILA SUMAYA CEDEÑO VILLANUEVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2700, N'DUBRASKA GISELA MARRERO TORO', N'19386689', N'DUBRASKA GISELA MARRERO TORO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2701, N'NAEN CRISEL CASTELLANOS VILLEGAS', N'19452351', N'NAEN CRISEL CASTELLANOS VILLEGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2702, N'DIANA DEL CARMEN GONZALEZ BERMUDEZ', N'19464130', N'DIANA DEL CARMEN GONZALEZ BERMUDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2703, N'ALBERTH EDUARDO CONTRERAS VIVAS', N'19464704', N'ALBERTH EDUARDO CONTRERAS VIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2704, N'LEONARDO ALEXANDER ORTIZ ALVAREZ', N'19483377', N'LEONARDO ALEXANDER ORTIZ ALVAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2705, N'PEDRO RAFAEL INFANTE BARRIOS', N'19494521', N'PEDRO RAFAEL INFANTE BARRIOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2706, N'LUIS ALBERTO TERAN VILORIA', N'19510629', N'LUIS ALBERTO TERAN VILORIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2707, N'YENIRE DEL CARMEN ARIAS CABALLERO', N'19555132', N'YENIRE DEL CARMEN ARIAS CABALLERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2708, N'NAKARY YURMARY ALEMAN GONZALEZ', N'19586069', N'NAKARY YURMARY ALEMAN GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2709, N'SUSANA DA COVA ROCHA', N'19628572', N'SUSANA DA COVA ROCHA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2710, N'ARGENIS MANUEL RODRIGUEZ TENIA', N'19635165', N'ARGENIS MANUEL RODRIGUEZ TENIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2711, N'ALMARLIS NORIEN JAIMES MATERANO', N'19664528', N'ALMARLIS NORIEN JAIMES MATERANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2712, N'MILAGROS YUREIMA INFANTE CHAVEZ', N'19684502', N'MILAGROS YUREIMA INFANTE CHAVEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2713, N'YOLIMAR MADRID DE RIVAS', N'19714352', N'YOLIMAR MADRID DE RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2714, N'LIZETH RINCON QUINTERO', N'19741076', N'LIZETH RINCON QUINTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2715, N'JHOAN MELENDEZ', N'19763086', N'JHOAN MELENDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2716, N'MARYI  ESTEFANI RICO  GRAJALES', N'19768185', N'MARYI  ESTEFANI RICO  GRAJALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2717, N'EFRAIMAR CAROLINA PEREZ YEPEZ', N'19799472', N'EFRAIMAR CAROLINA PEREZ YEPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2718, N'ROBERT ALEXANDER NEGRIN', N'19830865', N'ROBERT ALEXANDER NEGRIN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2719, N'MILIXY DE JESUS MOSQUEDA GUERRA', N'19851056', N'MILIXY DE JESUS MOSQUEDA GUERRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2720, N'DAMARYS DEL CARMEN GAVIDIA QUINTERO', N'19894902', N'DAMARYS DEL CARMEN GAVIDIA QUINTERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2721, N'YHONATHAN ARGENIS MANZO VELASCO', N'19931553', N'YHONATHAN ARGENIS MANZO VELASCO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2722, N'ALEXANDRA RAQUEL LOPEZ AMAYA', N'19946340', N'ALEXANDRA RAQUEL LOPEZ AMAYA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2723, N'THAIS CAROLINA MONTILLA RIVAS', N'19956345', N'THAIS CAROLINA MONTILLA RIVAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2724, N'BARBARA CAROLINA SENCIAL', N'19987850', N'BARBARA CAROLINA SENCIAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2725, N'YENIREE KARINA LEON GUTIERREZ', N'20067000', N'YENIREE KARINA LEON GUTIERREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2726, N'NAIROBY  ZARAY ESCALANTE LANDAETA', N'20087855', N'NAIROBY  ZARAY ESCALANTE LANDAETA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2727, N'FRANCISCO JOSE  GREGORIO CHEREMO MARCANO', N'20104214', N'FRANCISCO JOSE  GREGORIO CHEREMO MARCANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2728, N'KEVERLYN YOSKIRLET LOBATON GARCIA', N'20109169', N'KEVERLYN YOSKIRLET LOBATON GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2729, N'LESLIE GRACIEL VIÑA MACHILLANDA', N'20129171', N'LESLIE GRACIEL VIÑA MACHILLANDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2730, N'JUBILEIDY STEPHANY NAVAS GUARAPANA', N'20132581', N'JUBILEIDY STEPHANY NAVAS GUARAPANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2731, N'JESUS JAVIER HERNANDEZ HERNANDEZ', N'20146963', N'JESUS JAVIER HERNANDEZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2732, N'JESUS ANTONIO PEÑA DURAN', N'20197497', N'JESUS ANTONIO PEÑA DURAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2733, N'JULIO CESAR ACOSTA VARGAS', N'20265038', N'JULIO CESAR ACOSTA VARGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2734, N'ANDREA DEL VALLE BRITO BRICEÑO', N'20289630', N'ANDREA DEL VALLE BRITO BRICEÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2735, N'LUIS ALEJANDRO BLANCO CONTRERAS', N'20291574', N'LUIS ALEJANDRO BLANCO CONTRERAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2736, N'ISBEL DAYANA CACERES CARPIO', N'20291630', N'ISBEL DAYANA CACERES CARPIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2737, N'ALORQUI ALFREDO BUITRIAGO', N'20303778', N'ALORQUI ALFREDO BUITRIAGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2738, N'YORMEGLYS LIBRE BARTONIEL', N'20308050', N'YORMEGLYS LIBRE BARTONIEL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2739, N'CLARET DEL CARMEN VILLARROEL RODRIGUEZ', N'20324849', N'CLARET DEL CARMEN VILLARROEL RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2740, N'YERUZA HAITU GOVEA SENCIAL', N'20379076', N'YERUZA HAITU GOVEA SENCIAL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2741, N'YULAY YAMALI MOSQUEDA AZUAJE', N'20412850', N'YULAY YAMALI MOSQUEDA AZUAJE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2742, N'DAYERLYN XIORIBETH MOSQUEDA', N'20412878', N'DAYERLYN XIORIBETH MOSQUEDA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2743, N'LUISANA  YOCELIN RONDON MOLINA', N'20423801', N'LUISANA  YOCELIN RONDON MOLINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2744, N'YASCID GEANNINE COLMENARES DELGADO', N'20426124', N'YASCID GEANNINE COLMENARES DELGADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2745, N'NICOLE IVANNA QUICENO ESPINOZA', N'20504598', N'NICOLE IVANNA QUICENO ESPINOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2746, N'THAMIR MILAGROS CAMPBELL COLINA', N'20568014', N'THAMIR MILAGROS CAMPBELL COLINA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2747, N'EDICSO ENRIQUE MACHADO GUEDES', N'20583283', N'EDICSO ENRIQUE MACHADO GUEDES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2748, N'CHISLLUBEILY JHOANA PEÑARANDA ANDRADE', N'20585976', N'CHISLLUBEILY JHOANA PEÑARANDA ANDRADE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2749, N'IASNAIA ANDREA VILLAR COLOMA', N'20614384', N'IASNAIA ANDREA VILLAR COLOMA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2750, N'JONAIKER ISMAEL ORTEGA ALDANA', N'20638986', N'JONAIKER ISMAEL ORTEGA ALDANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2751, N'ESMARY NOHELY VASQUEZ RODRIGUEZ', N'20642686', N'ESMARY NOHELY VASQUEZ RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2752, N'LUISMAR CAROLINA GARCIA JIMENEZ', N'20643115', N'LUISMAR CAROLINA GARCIA JIMENEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2753, N'JESUS ALBERTO NAVA CASTELLANOS', N'20678932', N'JESUS ALBERTO NAVA CASTELLANOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2754, N'ALBERTO ALEJANDRO FAJARDO  PINTO', N'20739865', N'ALBERTO ALEJANDRO FAJARDO  PINTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2755, N'CHRISTIAN DE JESUS ARMAS FAJARDO', N'20762052', N'CHRISTIAN DE JESUS ARMAS FAJARDO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2756, N'STEFANY ANDREINA NARVAEZ GOMEZ', N'20781623', N'STEFANY ANDREINA NARVAEZ GOMEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2757, N'MARIANA NAIBELY MADRIZ MARRERO', N'20784167', N'MARIANA NAIBELY MADRIZ MARRERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2758, N'JOSELYN KARELYS ARMAS SIONCHEZ', N'20793163', N'JOSELYN KARELYS ARMAS SIONCHEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2759, N'PIERINA JOSEFINA SANGRONIS FIGUEROA', N'20799805', N'PIERINA JOSEFINA SANGRONIS FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2760, N'JUSSER DANIEL VALERO PEREZ', N'20849914', N'JUSSER DANIEL VALERO PEREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2761, N'YENNIFER VALENZUELA', N'20870332', N'YENNIFER VALENZUELA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2762, N'WOLFGANG CONCEPCION REBOLLEDO TABLANTE', N'20893543', N'WOLFGANG CONCEPCION REBOLLEDO TABLANTE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2763, N'KATHERIN SARAY MARTINEZ AVILA', N'20997051', N'KATHERIN SARAY MARTINEZ AVILA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2764, N'YOSCARLI MARIANA LOPEZ USECHE', N'20999737', N'YOSCARLI MARIANA LOPEZ USECHE', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2765, N'DANIEL ALFREDO GARCIA RIVERO', N'21024338', N'DANIEL ALFREDO GARCIA RIVERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2766, N'LUIS JOSE PEÑA BRAVO', N'21089087', N'LUIS JOSE PEÑA BRAVO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2767, N'JOSSELYN ISABEL MARCOFF NICOLI', N'21093661', N'JOSSELYN ISABEL MARCOFF NICOLI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2768, N'SIULMAR ANAIS BORGES RODRIGUEZ', N'21097429', N'SIULMAR ANAIS BORGES RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2769, N'JOSE M. HERRERA ESPEJO', N'21130413', N'JOSE M. HERRERA ESPEJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2770, N'GIANNA JOSBELYS MEZA VERGARA', N'21184480', N'GIANNA JOSBELYS MEZA VERGARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2771, N'NELSON JOSE BRICEÑO ARAUJO', N'21207640', N'NELSON JOSE BRICEÑO ARAUJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2772, N'ANTHONY ANDRES ROMAN RAMIREZ', N'21242883', N'ANTHONY ANDRES ROMAN RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2773, N'VICENTE JOSE FERNANDEZ MONTILLA', N'21255638', N'VICENTE JOSE FERNANDEZ MONTILLA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2774, N'LUIS ALBERTO GUTIERREZ CAMACHO', N'21298131', N'LUIS ALBERTO GUTIERREZ CAMACHO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2775, N'JOSCAR ANDRES QUINTANA BOTTINI', N'21310369', N'JOSCAR ANDRES QUINTANA BOTTINI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2776, N'ADRIANA YSABEL FIGUEROA VASQUEZ', N'21326957', N'ADRIANA YSABEL FIGUEROA VASQUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2777, N'HORELYS  VANESSA TORRES', N'21378252', N'HORELYS  VANESSA TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2778, N'JOSE JESUS HERNANDEZ URDANETA', N'21383454', N'JOSE JESUS HERNANDEZ URDANETA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2779, N'PEDRO RAMON MONGUA MEJIAS', N'21391130', N'PEDRO RAMON MONGUA MEJIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2780, N'YEIDERMAN CASTILLO MORA', N'21415622', N'YEIDERMAN CASTILLO MORA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2781, N'JESSICA IMALAY CESPEDES SICA', N'21438336', N'JESSICA IMALAY CESPEDES SICA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2782, N'JEFFERSON JOHAN SIMANCAS MATHEUS', N'21442981', N'JEFFERSON JOHAN SIMANCAS MATHEUS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2783, N'ELVIN ESAIS ARREAZA CORDOVA', N'21578049', N'ELVIN ESAIS ARREAZA CORDOVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2784, N'CLEIDERLYN DALMAR BALDAN MENDOZA', N'21623002', N'CLEIDERLYN DALMAR BALDAN MENDOZA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2785, N'ABRAHAM JESÚS SANTIAGO', N'22024355', N'ABRAHAM JESÚS SANTIAGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2786, N'RONAL ANTONIO GOMEZ CORNEJO', N'22038275', N'RONAL ANTONIO GOMEZ CORNEJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2787, N'PAOLA VALERIA OVALLES RODRIGUEZ', N'22042995', N'PAOLA VALERIA OVALLES RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2788, N'MICHELLY ANTONIETA PEREZ GONZALEZ', N'22192728', N'MICHELLY ANTONIETA PEREZ GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2789, N'CARLOS ANDRES LOPEZ MARTINEZ', N'22229427', N'CARLOS ANDRES LOPEZ MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2790, N'GIOANNY DANIELA PEÑA MORA', N'22270441', N'GIOANNY DANIELA PEÑA MORA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2791, N'DAVIELIS GONZALEZ', N'22351126', N'DAVIELIS GONZALEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2792, N'ELOY ANDRES MATA RODRIGUEZ', N'22447967', N'ELOY ANDRES MATA RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2793, N'ALEX EDUARDO FERNANDEZ HERNANDEZ', N'22452302', N'ALEX EDUARDO FERNANDEZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2794, N'ARMANDO ANTONIO FERNANDEZ MONAGAS', N'22494613', N'ARMANDO ANTONIO FERNANDEZ MONAGAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2795, N'RICARDO JOSE MORALES TARASONA', N'22500327', N'RICARDO JOSE MORALES TARASONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2796, N'LADARYS ALEXANDRA OCHOA SALAZAR', N'22523260', N'LADARYS ALEXANDRA OCHOA SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2797, N'MARTIN ANTONIO BLANCO PIÑERO', N'22564057', N'MARTIN ANTONIO BLANCO PIÑERO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2798, N'BASSAM SALIM OULABI', N'22576363', N'BASSAM SALIM OULABI', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2799, N'JEYNNER EDUARDO PARRA LOPEZ', N'22588682', N'JEYNNER EDUARDO PARRA LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2800, N'ROBERT RAFAEL MARTINEZ URBANEJA', N'22628902', N'ROBERT RAFAEL MARTINEZ URBANEJA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2801, N'ELIAS DAVID CAMPO', N'22647111', N'ELIAS DAVID CAMPO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2802, N'ALFREDO ARAQUE FIGUEROA', N'22678518', N'ALFREDO ARAQUE FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2803, N'YANIRETH ALEXANDRA FUENTES RODRÍGUEZ', N'22692422', N'YANIRETH ALEXANDRA FUENTES RODRÍGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2804, N'ROSMARI SARAID RODRIGUEZ', N'22692514', N'ROSMARI SARAID RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2805, N'SUJEY MARIA FIGUEROA  QUINTANA', N'22758083', N'SUJEY MARIA FIGUEROA  QUINTANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2806, N'GREGORY JOSUE COLMENARES CONTRERAS', N'22798640', N'GREGORY JOSUE COLMENARES CONTRERAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2807, N'ALI ENNRIQUE GARCIA VALLEJO', N'22903461', N'ALI ENNRIQUE GARCIA VALLEJO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2808, N'DIANA CAROLINA OSTOS DEPABLOS', N'23098244', N'DIANA CAROLINA OSTOS DEPABLOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2809, N'VIELIS DARIANY PACHECO DE HENRRIQUE', N'23298646', N'VIELIS DARIANY PACHECO DE HENRRIQUE', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2810, N'ROSA VIRGINIA HERNANDEZ FIGUEROA', N'23413751', N'ROSA VIRGINIA HERNANDEZ FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2811, N'ADONIS JOSEFINA GONZALEZ GARCIA', N'23615672', N'ADONIS JOSEFINA GONZALEZ GARCIA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2812, N'MARIA FERNANDA DIAZ MONROY', N'23688513', N'MARIA FERNANDA DIAZ MONROY', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2813, N'KARLA NAKARI LUBATON FIGUEROA', N'24180469', N'KARLA NAKARI LUBATON FIGUEROA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2814, N'DANIEL ENRIQUE LEGUIA NAVARRO', N'24208184', N'DANIEL ENRIQUE LEGUIA NAVARRO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2815, N'MARSOL LUCIANA PICHARDO MARTINEZ', N'24210740', N'MARSOL LUCIANA PICHARDO MARTINEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2816, N'CARLOS VISHNU URDANETA HERNANDEZ', N'24254850', N'CARLOS VISHNU URDANETA HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2817, N'YUDEISY DESIREE GUTIERREZ SUAREZ', N'24394494', N'YUDEISY DESIREE GUTIERREZ SUAREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2818, N'FREDUI ANDRES BERMUDEZ LARA', N'24439368', N'FREDUI ANDRES BERMUDEZ LARA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2819, N'KEVIN JESUS BERNAL CASTRO', N'24477890', N'KEVIN JESUS BERNAL CASTRO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2820, N'KENDREY ODANY FORNIER CURVELO', N'24523289', N'KENDREY ODANY FORNIER CURVELO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2821, N'MARIA MUÑOZ', N'24590819', N'MARIA MUÑOZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2822, N'ALIRIO JOSE LOPEZ SILVA', N'24624259', N'ALIRIO JOSE LOPEZ SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2823, N'GENESIS GABRIELA ALVAREZ PARRA', N'24672288', N'GENESIS GABRIELA ALVAREZ PARRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2824, N'HARRISON DIOSNEL RONDON BEJA', N'24678317', N'HARRISON DIOSNEL RONDON BEJA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2825, N'YERUSKA EVELIN HERNÁNDEZ', N'24774526', N'YERUSKA EVELIN HERNÁNDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2826, N'RODRIGO ALEJANDRO LUTTGES HERNANDEZ', N'24799059', N'RODRIGO ALEJANDRO LUTTGES HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2827, N'YELISBETH KEILIN SILVA RANGEL', N'24884822', N'YELISBETH KEILIN SILVA RANGEL', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2828, N'KEIBER ALEXANDER OTAMENTDI QUIROGA', N'24896527', N'KEIBER ALEXANDER OTAMENTDI QUIROGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2829, N'CESAR RICARDO HERNANDEZ LOPEZ', N'24942889', N'CESAR RICARDO HERNANDEZ LOPEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2830, N'HENDERSON  ALI MARTINEZ HERNANDEZ', N'25019572', N'HENDERSON  ALI MARTINEZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2831, N'ROSA NAILETH LAGUNA PEÑA', N'25172720', N'ROSA NAILETH LAGUNA PEÑA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2832, N'KEVIN ELIEZER PAREJO RIERA', N'25233859', N'KEVIN ELIEZER PAREJO RIERA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2833, N'CLAUDIA YANETH ROJAS NARIÑO', N'25284666', N'CLAUDIA YANETH ROJAS NARIÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2834, N'LILIBETH CAROLINA LACRUZ ORELLANA', N'25285232', N'LILIBETH CAROLINA LACRUZ ORELLANA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2835, N'MARIO SANTIAGO CAMPOS', N'25395838', N'MARIO SANTIAGO CAMPOS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2836, N'HILLARY BRIANDA RENDON BORREGO', N'25565130', N'HILLARY BRIANDA RENDON BORREGO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2837, N'DANIEL ALEJANDRO PEREZ HERNANDEZ', N'25565139', N'DANIEL ALEJANDRO PEREZ HERNANDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2838, N'JULIGREG ROSMIR COLMENAREZ TORREALBA', N'25638066', N'JULIGREG ROSMIR COLMENAREZ TORREALBA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2839, N'GENESIS LEXAY CHACOA SILVA', N'25683067', N'GENESIS LEXAY CHACOA SILVA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2840, N'ARIANY MICHELL PINTO HERNÁNDEZ', N'25773220', N'ARIANY MICHELL PINTO HERNÁNDEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2841, N'MARIANLYS ANELISSE MEJIAS MERCADO', N'26148418', N'MARIANLYS ANELISSE MEJIAS MERCADO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2842, N'EYERLIN STEFANY DELGADO TORRES', N'26194709', N'EYERLIN STEFANY DELGADO TORRES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2843, N'ANGEL ALBERTO FAJARDO PINTO', N'26204705', N'ANGEL ALBERTO FAJARDO PINTO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2844, N'SILVIA ANDREINA MARQUEZ DIAZ', N'26213045', N'SILVIA ANDREINA MARQUEZ DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2845, N'MAURO EDUARDO PEREZ BUENO', N'26272325', N'MAURO EDUARDO PEREZ BUENO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2846, N'RAIZA OLIMAR GARCIA BRICEÑO', N'26300746', N'RAIZA OLIMAR GARCIA BRICEÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2847, N'CARLISMARY DEL VALLE HERRERA RODRIGUEZ', N'26326238', N'CARLISMARY DEL VALLE HERRERA RODRIGUEZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2848, N'JHONALIZ MORELLA ARIENTA ARMAS', N'26331272', N'JHONALIZ MORELLA ARIENTA ARMAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2849, N'RICARDO JOSÉ SAN JUAN', N'26411039', N'RICARDO JOSÉ SAN JUAN', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2850, N'YOANNY DANIELA CORO DIAZ', N'26542616', N'YOANNY DANIELA CORO DIAZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2851, N'MARY YUSBALIS TONITO MARCANO', N'26685438', N'MARY YUSBALIS TONITO MARCANO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2852, N'PEDRO LUIS MONGUA MEJIAS', N'26789106', N'PEDRO LUIS MONGUA MEJIAS', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2853, N'JESUS EDUARDO AVILA RAMIREZ', N'26822341', N'JESUS EDUARDO AVILA RAMIREZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2854, N'JESUS MANUEL VALDERRAMA RUIZ', N'26953667', N'JESUS MANUEL VALDERRAMA RUIZ', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2855, N'HENYORIXT ROSALES LIENDO ROSALES', N'26968988', N'HENYORIXT ROSALES LIENDO ROSALES', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2856, N'VICTOR MANUEL VELASQUEZ SALAZAR', N'27100657', N'VICTOR MANUEL VELASQUEZ SALAZAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2857, N'YANPIER JOSE SOTO ESCALONA', N'27123356', N'YANPIER JOSE SOTO ESCALONA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2858, N'STEFANY GABRIELA TRONCOSO ZERPA', N'27376391', N'STEFANY GABRIELA TRONCOSO ZERPA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2859, N'JOSEP ANDERSON BORGES PARRA', N'27422633', N'JOSEP ANDERSON BORGES PARRA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2860, N'FERDINANDO EMANUEL ESCORCIO BITTAR', N'27451875', N'FERDINANDO EMANUEL ESCORCIO BITTAR', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2861, N'LILISBETH DE LA COROMOTO VILLAMIZAR OSORIO', N'27474957', N'LILISBETH DE LA COROMOTO VILLAMIZAR OSORIO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2862, N'JUAN CARLOS GARCIA LOZADA', N'27859498', N'JUAN CARLOS GARCIA LOZADA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2863, N'JOHNIELSY CAROLINA AZUAJE GUDIÑO', N'28108634', N'JOHNIELSY CAROLINA AZUAJE GUDIÑO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2864, N'JEAN BRAHYAN MARVAL GOUVEIA', N'28183048', N'JEAN BRAHYAN MARVAL GOUVEIA', N'Analista', 1, 0, N'Activo')
GO
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2865, N'FRANGERARD ALEXANDER MENESES VEGA', N'29557446', N'FRANGERARD ALEXANDER MENESES VEGA', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2866, N'MARILOLY COLONDRES DE CASTILLO', N'81994023', N'MARILOLY COLONDRES DE CASTILLO', N'Analista', 1, 0, N'Activo')
INSERT [dbo].[SeguridadUsuarioDatos] ([SeguridadUsuarioDatosID], [LoginUsuario], [ClaveUsuario], [NombreCompleto], [DescripcionUsuario], [SeguridadGrupoID], [UsuarioTecnico], [EstatusUsuario]) VALUES (2867, N'MAMOUND TAJEDDIN', N'83058126', N'MAMOUND TAJEDDIN', N'Analista', 1, 0, N'Activo')
SET IDENTITY_INSERT [dbo].[SeguridadUsuarioDatos] OFF
GO
SET IDENTITY_INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ON 

INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (1, 2, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (2, 3, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (3, 4, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (4, 5, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (5, 6, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (6, 7, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (7, 8, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (8, 9, 1)
INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] ([SeguridadUsuarioSucursalEmpresaID], [SeguridadUsuarioDatosID], [EmpresaSucursalID]) VALUES (10, 10, 1)
SET IDENTITY_INSERT [dbo].[SeguridadUsuarioSucursalEmpresa] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UsuarioID], [CedulaUsuario], [NombreUsuario], [TipoUsuario]) VALUES (1, 10530364, N'Carlos Ceballos', N'Admin')
INSERT [dbo].[Usuario] ([UsuarioID], [CedulaUsuario], [NombreUsuario], [TipoUsuario]) VALUES (2, 14015030, N'Yosmar Guerrero', N'Admin')
INSERT [dbo].[Usuario] ([UsuarioID], [CedulaUsuario], [NombreUsuario], [TipoUsuario]) VALUES (3, 15, N'Ye', N'Usuario')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[SeguridadAuditoria] ADD  CONSTRAINT [DF_SeguridadAuditoria_FechaProceso]  DEFAULT (getdate()) FOR [FechaProceso]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_TipoUsuario]  DEFAULT ('Usuario') FOR [TipoUsuario]
GO
ALTER TABLE [dbo].[Voto] ADD  CONSTRAINT [DF_Voto_FechaVoto]  DEFAULT (getdate()) FOR [FechaVoto]
GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_ObtenerEmpresas]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Autocomplete_ObtenerEmpresas]

	@Query varchar(100)
AS	
BEGIN
	SELECT  *
	FROM        Empresa
	WHERE     NombreEmpresa   LIKE '%'+@Query+'%'
	ORDER BY NombreEmpresa
END


GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_ObtenerEmpresaSucursal]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Autocomplete_ObtenerEmpresaSucursal]

	@Query varchar(100)
AS	
BEGIN
	SELECT  *
	FROM        EmpresaSucursal
	WHERE     NombreSucursal   LIKE '%'+@Query+'%'
	ORDER BY NombreSucursal
END


GO
/****** Object:  StoredProcedure [dbo].[usp_Autocomplete_ObtenerUsuarios]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Autocomplete_ObtenerUsuarios]

	@Query varchar(100),
	@EmpresaSucursalID int

AS	
BEGIN
SELECT        TOP (100) PERCENT dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID, dbo.SeguridadUsuarioDatos.NombreCompleto, dbo.SeguridadUsuarioDatos.LoginUsuario, dbo.SeguridadUsuarioDatos.DescripcionUsuario, 
                         dbo.SeguridadUsuarioDatos.SeguridadGrupoID, dbo.SeguridadUsuarioDatos.ClaveUsuario, dbo.SeguridadUsuarioDatos.UsuarioTecnico, dbo.SeguridadUsuarioDatos.EstatusUsuario, 
                         dbo.SeguridadUsuarioSucursalEmpresa.EmpresaSucursalID
FROM            dbo.SeguridadUsuarioDatos INNER JOIN
                         dbo.SeguridadUsuarioSucursalEmpresa ON dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID = dbo.SeguridadUsuarioSucursalEmpresa.SeguridadUsuarioDatosID
WHERE        (dbo.SeguridadUsuarioDatos.NombreCompleto LIKE '%'+@Query+'%') AND (dbo.SeguridadUsuarioSucursalEmpresa.EmpresaSucursalID = @EmpresaSucursalID)

END



GO
/****** Object:  StoredProcedure [dbo].[usp_Candidato_ObtenerCandidatos]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Candidato_ObtenerCandidatos]
@CedulaCandidato int
AS	
BEGIN
SELECT        dbo.Candidato.CandidatoID, dbo.Gerencia.NombreGerencia, dbo.Candidato.CedulaCandidato, dbo.Candidato.NombreCandidato, dbo.Candidato.DescripcionCandidato, dbo.Candidato.GerenciaID, 
                         dbo.Candidato.FotoCandidato, dbo.Candidato.EstatusCandidato
FROM            dbo.Candidato INNER JOIN
                         dbo.Gerencia ON dbo.Candidato.GerenciaID = dbo.Gerencia.GerenciaID
						 WHERE CedulaCandidato = @CedulaCandidato
ORDER BY dbo.Candidato.NombreCandidato
END


GO
/****** Object:  StoredProcedure [dbo].[usp_Genericos_ObtenerValorGenerico]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Genericos_ObtenerValorGenerico]
@DescripcionGenerico varchar(150)
AS	
BEGIN
	SELECT  *
	FROM        Generico
	WHERE  DescripcionGenerico = @DescripcionGenerico
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Login_ValidarLogin]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Login_ValidarLogin]
	-- Add the parameters for the stored procedure here
	@ClaveUsuario varchar(150)
	
AS

Select * from SeguridadUsuarioDatos WHERE ClaveUsuario= @ClaveUsuario AND EstatusUsuario ='Activo'
GO
/****** Object:  StoredProcedure [dbo].[usp_Seguridad_ObtenerAccesoObjeto]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Seguridad_ObtenerAccesoObjeto]
(
	@SeguridadUsuarioDatosID int,
	@SeguridadObjetoID int
)

AS	
BEGIN
SELECT     dbo.SeguridadGrupo.NombreGrupo, dbo.SeguridadObjeto.NombreObjeto, dbo.SeguridadGrupo.SeguridadGrupoID, dbo.SeguridadObjeto.SeguridadObjetoID, 
                      dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID, dbo.SeguridadUsuarioDatos.NombreCompleto
FROM         dbo.SeguridadGrupo INNER JOIN
                      dbo.SeguridadObjetoAcceso ON dbo.SeguridadGrupo.SeguridadGrupoID = dbo.SeguridadObjetoAcceso.SeguridadGrupoID INNER JOIN
                      dbo.SeguridadObjeto ON dbo.SeguridadObjetoAcceso.SeguridadObjetoID = dbo.SeguridadObjeto.SeguridadObjetoID INNER JOIN
                      dbo.SeguridadUsuarioDatos ON dbo.SeguridadGrupo.SeguridadGrupoID = dbo.SeguridadUsuarioDatos.SeguridadGrupoID
WHERE     (dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID = @SeguridadUsuarioDatosID) AND (dbo.SeguridadObjeto.SeguridadObjetoID = @SeguridadObjetoID)
END




GO
/****** Object:  StoredProcedure [dbo].[usp_Seguridad_ObtenerAdministrador]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Seguridad_ObtenerAdministrador]
(
	@SeguridadUsuarioDatosID int
)

AS	
BEGIN
SELECT     dbo.SeguridadGrupo.NombreGrupo, dbo.SeguridadGrupo.SeguridadGrupoID, dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID, dbo.SeguridadUsuarioDatos.NombreCompleto
FROM         dbo.SeguridadGrupo INNER JOIN
                      dbo.SeguridadUsuarioDatos ON dbo.SeguridadGrupo.SeguridadGrupoID = dbo.SeguridadUsuarioDatos.SeguridadGrupoID
WHERE     (dbo.SeguridadGrupo.SeguridadGrupoID = 10) AND (dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID = @SeguridadUsuarioDatosID)
END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadAuditoria_AuditarMovimiento]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadAuditoria_AuditarMovimiento]
	(
		@SeguridadUsuarioDatosID int,
		@NombreFormulario varchar(200),
		@DescripcionProceso varchar(500),
		@NombreEquipoCliente varchar(100),
		@IPEquipoCliente varchar(100)
	)
AS
BEGIN
	insert into SeguridadAuditoria 
	(
		SeguridadUsuarioDatosID, NombreFormulario,DescripcionProceso,NombreEquipoCliente,IPEquipoCliente 
	) 
	values
	(
		@SeguridadUsuarioDatosID,
		@NombreFormulario,
		@DescripcionProceso,
		@NombreEquipoCliente,
		@IPEquipoCliente
	)
	select @@IDENTITY
	END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadAuditoria_ObtenerMovimientosAuditoria]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadAuditoria_ObtenerMovimientosAuditoria]

	AS
BEGIN

	SELECT   * FROM DetalleAuditoria ORDER BY SeguridadAuditoriaID DESC

END
GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadGrupo_Actualizar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadGrupo_Actualizar]
(
	@SeguridadGrupoID int,
	@NombreGrupo varchar(200),
	@DescripcionGrupo varchar(200)
)
AS
BEGIN
	UPDATE SeguridadGrupo set 
	NombreGrupo=@NombreGrupo,
	DescripcionGrupo=@DescripcionGrupo
	
	where SeguridadGrupoID= @SeguridadGrupoID
	
	select @@ROWCOUNT as CantidadAfectada
end




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadGrupo_Insertar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadGrupo_Insertar]
	(
		@SeguridadGrupoID int,
		@NombreGrupo varchar(200),
		@DescripcionGrupo varchar(200)
	)
AS
BEGIN
	insert into SeguridadGrupo (NombreGrupo, DescripcionGrupo) 
	values(@NombreGrupo,@DescripcionGrupo)
	select @@IDENTITY
	END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadObjeto_Actualizar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadObjeto_Actualizar]
(
	@SeguridadObjetoID int,
	@NombreObjeto varchar(200)
)
AS
BEGIN
	UPDATE SeguridadObjeto set 
	NombreObjeto=@NombreObjeto
	
	where SeguridadObjetoID= @SeguridadObjetoID
	
	select @@ROWCOUNT as CantidadAfectada
end




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadObjeto_Insertar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadObjeto_Insertar]
	(
		@SeguridadObjetoID int,
		@NombreObjeto varchar(200)
	)
AS
BEGIN
	insert into SeguridadObjeto (NombreObjeto) 
	values(@NombreObjeto)
	select @@IDENTITY
	END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadObjetoGrupo_EliminarObjetoGrupo]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadObjetoGrupo_EliminarObjetoGrupo]
	 @SeguridadObjetoAccesoID int
AS
BEGIN
	DELETE FROM SeguridadObjetoAcceso WHERE SeguridadObjetoAccesoID = @SeguridadObjetoAccesoID
	select @@ROWCOUNT
END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadObjetoGrupo_Insertar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadObjetoGrupo_Insertar]
	(
		@SeguridadGrupoID int,
		@SeguridadObjetoID int
	)
AS
BEGIN
	insert into SeguridadObjetoAcceso 
	(
		SeguridadGrupoID, SeguridadObjetoID
	) 
	values
	(
		@SeguridadGrupoID,
		@SeguridadObjetoID
	)
	select @@IDENTITY
	END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadObjetoGrupo_ObtenerObjetoGrupo]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadObjetoGrupo_ObtenerObjetoGrupo]
(
	@SeguridadGrupoID int,
	@SeguridadObjetoID int
)
AS	
BEGIN
SELECT    *
FROM         SeguridadObjetoAcceso
WHERE     (SeguridadGrupoID = @SeguridadGrupoID) AND (SeguridadObjetoID = @SeguridadObjetoID)
END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadObjetoGrupo_ObtenerObjetosGrupo]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadObjetoGrupo_ObtenerObjetosGrupo]
(
	@SeguridadGrupoID int
)
AS	
BEGIN
SELECT     TOP (100) PERCENT dbo.SeguridadGrupo.NombreGrupo, dbo.SeguridadObjeto.NombreObjeto, dbo.SeguridadObjetoAcceso.SeguridadGrupoID, 
                      dbo.SeguridadObjetoAcceso.SeguridadObjetoID, dbo.SeguridadGrupo.DescripcionGrupo, dbo.SeguridadObjetoAcceso.SeguridadObjetoAccesoID
FROM         dbo.SeguridadObjetoAcceso INNER JOIN
                      dbo.SeguridadObjeto ON dbo.SeguridadObjetoAcceso.SeguridadObjetoID = dbo.SeguridadObjeto.SeguridadObjetoID INNER JOIN
                      dbo.SeguridadGrupo ON dbo.SeguridadObjetoAcceso.SeguridadGrupoID = dbo.SeguridadGrupo.SeguridadGrupoID
WHERE     (dbo.SeguridadObjetoAcceso.SeguridadGrupoID = @SeguridadGrupoID)
ORDER BY dbo.SeguridadGrupo.NombreGrupo, dbo.SeguridadObjeto.NombreObjeto

END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_Actualizar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_Actualizar]
(
	@SeguridadUsuarioDatosID int,
	@LoginUsuario varchar(200),
	@ClaveUsuario varchar(200),
	@NombreCompleto varchar(300),
	@DescripcionUsuario varchar(300),
	@SeguridadGrupoID int,
	@UsuarioTecnico int,
	@EstatusUsuario varchar(200),
	@EmpresaSucursalID int
)
AS

BEGIN
	DECLARE @EmpresaSucursalRegistradaID int
	SET @EmpresaSucursalRegistradaID =0;
	
	SELECT @EmpresaSucursalRegistradaID = EmpresaSucursalID FROM SeguridadUsuarioSucursalEmpresa WHERE EmpresaSucursalID = @EmpresaSucursalID
	
	IF (@EmpresaSucursalRegistradaID=0)
		INSERT INTO SeguridadUsuarioSucursalEmpresa
		(
			SeguridadUsuarioDatosID,
			EmpresaSucursalID
		)
		VALUES
		(
			@SeguridadUsuarioDatosID,
			@EmpresaSucursalID
		)
	ELSE
		UPDATE SeguridadUsuarioSucursalEmpresa SET
		EmpresaSucursalID = @EmpresaSucursalID
		WHERE SeguridadUsuarioDatosID= @SeguridadUsuarioDatosID
		
		SET @EmpresaSucursalRegistradaID= @@IDENTITY
END

BEGIN
	UPDATE SeguridadUsuarioDatos set 
	LoginUsuario=@LoginUsuario,
	ClaveUsuario=@ClaveUsuario,
	NombreCompleto=@NombreCompleto,
	DescripcionUsuario=@DescripcionUsuario,
	SeguridadGrupoID =@SeguridadGrupoID,
	UsuarioTecnico = @UsuarioTecnico,
	EstatusUsuario = @EstatusUsuario
	
	where SeguridadUsuarioDatosID= @SeguridadUsuarioDatosID
	
	select @@ROWCOUNT as CantidadAfectada
end




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_ActualizarClave]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_ActualizarClave]
(
	@SeguridadUsuarioDatosID int,
	@ClaveUsuario varchar(200)
)
AS
BEGIN
	UPDATE SeguridadUsuarioDatos set 
	ClaveUsuario=@ClaveUsuario

	where SeguridadUsuarioDatosID= @SeguridadUsuarioDatosID
	
	select @@ROWCOUNT as CantidadAfectada
end




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_EliminarSucursalUsuario]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_EliminarSucursalUsuario]
	 @SeguridadUsuarioSucursalEmpresaID int
AS
BEGIN
	DELETE FROM SeguridadUsuarioSucursalEmpresa WHERE SeguridadUsuarioSucursalEmpresaID = @SeguridadUsuarioSucursalEmpresaID
	select @@ROWCOUNT
END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_Insertar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_Insertar]
	(
		@SeguridadUsuarioDatosID int,
		@LoginUsuario varchar(200),
		@ClaveUsuario varchar(200),
		@NombreCompleto varchar(300),
		@DescripcionUsuario varchar(300),
		@SeguridadGrupoID int,
		@UsuarioTecnico int,
		@EstatusUsuario varchar(200),
		@EmpresaSucursalID int

	)
AS

BEGIN
	INSERT INTO SeguridadUsuarioDatos
	(
		LoginUsuario,
		ClaveUsuario,
		NombreCompleto,
		DescripcionUsuario,
		SeguridadGrupoID,
		UsuarioTecnico,
		EstatusUsuario
	)
	VALUES
	(
		@LoginUsuario,
		@ClaveUsuario,
		@NombreCompleto,
		@DescripcionUsuario,
		@SeguridadGrupoID,
		@UsuarioTecnico,
		@EstatusUsuario
		
	)
		SET @SeguridadUsuarioDatosID= @@IDENTITY
		select @@IDENTITY

END

BEGIN
	INSERT INTO [dbo].[SeguridadUsuarioSucursalEmpresa]
	(
		EmpresaSucursalID,
		SeguridadUsuarioDatosID
	)
	VALUES
	(
		@EmpresaSucursalID,
		@SeguridadUsuarioDatosID
	)
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_ObtenerLogin]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_ObtenerLogin]

	@LoginUsuario varchar(100)

AS	
BEGIN
	SELECT  *
	FROM   dbo.SeguridadUsuarioDatos
	WHERE     (LoginUsuario = @LoginUsuario)
END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_ObtenerNombreGrupoPorIDUsuario]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_ObtenerNombreGrupoPorIDUsuario]

	@SeguridadUsuarioDatosID int

AS	
BEGIN
	SELECT   dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID, dbo.SeguridadGrupo.NombreGrupo, dbo.SeguridadGrupo.SeguridadGrupoID
	FROM  dbo.SeguridadUsuarioDatos INNER JOIN
	      dbo.SeguridadGrupo ON dbo.SeguridadUsuarioDatos.SeguridadGrupoID = dbo.SeguridadGrupo.SeguridadGrupoID
	WHERE        (dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID = @SeguridadUsuarioDatosID)
END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_ObtenerNombreObjetoPorIDUsuario]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_ObtenerNombreObjetoPorIDUsuario]

	@SeguridadUsuarioDatosID int

AS	
BEGIN
SELECT        dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID, dbo.SeguridadObjeto.SeguridadObjetoID, dbo.SeguridadUsuarioDatos.NombreCompleto, dbo.SeguridadObjeto.NombreObjeto
FROM            dbo.SeguridadObjeto INNER JOIN
                         dbo.SeguridadObjetoAcceso ON dbo.SeguridadObjeto.SeguridadObjetoID = dbo.SeguridadObjetoAcceso.SeguridadObjetoID INNER JOIN
                         dbo.SeguridadGrupo ON dbo.SeguridadObjetoAcceso.SeguridadGrupoID = dbo.SeguridadGrupo.SeguridadGrupoID INNER JOIN
                         dbo.SeguridadUsuarioDatos ON dbo.SeguridadGrupo.SeguridadGrupoID = dbo.SeguridadUsuarioDatos.SeguridadGrupoID
WHERE        (dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID = @SeguridadUsuarioDatosID) AND (dbo.SeguridadObjeto.SeguridadObjetoID = 1033)
END




GO
/****** Object:  StoredProcedure [dbo].[usp_SeguridadUsuario_ObtenerSucursalesUsuario]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SeguridadUsuario_ObtenerSucursalesUsuario]
(
	@SeguridadUsuarioDatosID int,
	@EmpresaID int
)
AS	
BEGIN
SELECT        TOP (100) PERCENT dbo.Empresa.NombreEmpresa, dbo.EmpresaSucursal.NombreSucursal, dbo.Empresa.EmpresaID, dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID, dbo.EmpresaSucursal.EmpresaSucursalID, 
                         dbo.SeguridadUsuarioSucursalEmpresa.SeguridadUsuarioSucursalEmpresaID
FROM            dbo.SeguridadUsuarioSucursalEmpresa INNER JOIN
                         dbo.SeguridadUsuarioDatos ON dbo.SeguridadUsuarioSucursalEmpresa.SeguridadUsuarioDatosID = dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID INNER JOIN
                         dbo.EmpresaSucursal ON dbo.SeguridadUsuarioSucursalEmpresa.EmpresaSucursalID = dbo.EmpresaSucursal.EmpresaSucursalID INNER JOIN
                         dbo.Empresa ON dbo.EmpresaSucursal.EmpresaID = dbo.Empresa.EmpresaID
WHERE        (dbo.SeguridadUsuarioDatos.SeguridadUsuarioDatosID = @SeguridadUsuarioDatosID) AND (dbo.Empresa.EmpresaID = @EmpresaID)
ORDER BY dbo.Empresa.EmpresaID, dbo.EmpresaSucursal.EmpresaSucursalID
END




GO
/****** Object:  StoredProcedure [dbo].[usp_Voto_EstablecerEstatusEleccion]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Voto_EstablecerEstatusEleccion]
	(
		@DescripcionGenerico varchar(150),
		@ValorGenerico varchar(150)
	)

AS

BEGIN

		UPDATE Generico 
		SET ValorGenerico  = @ValorGenerico
		WHERE DescripcionGenerico = @DescripcionGenerico
	    select @@ROWCOUNT as CantidadAfectada

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Voto_Insertar]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Voto_Insertar]
	(
		@CandidatoID int,
		@UsuarioID int

	)

AS

BEGIN

				INSERT INTO Voto
				(
					CandidatoID,
					UsuarioVoto
				)
				VALUES
				(
					
					@CandidatoID,
					@UsuarioID
				)
				select @@IDENTITY

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Voto_ObtenerGanador]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Voto_ObtenerGanador]

AS

BEGIN
	SELECT        TOP (1) dbo.Candidato.CandidatoID, dbo.Candidato.NombreCandidato, dbo.Gerencia.NombreGerencia, dbo.Candidato.FotoCandidato, COUNT(dbo.Voto.VotoID) AS TotalVotos
	FROM            dbo.Voto INNER JOIN
							 dbo.Candidato ON dbo.Voto.CandidatoID = dbo.Candidato.CandidatoID INNER JOIN
							 dbo.Gerencia ON dbo.Candidato.GerenciaID = dbo.Gerencia.GerenciaID
	GROUP BY dbo.Candidato.NombreCandidato, dbo.Gerencia.NombreGerencia, dbo.Candidato.FotoCandidato, dbo.Candidato.CandidatoID
	ORDER BY TotalVotos DESC

END


GO
/****** Object:  StoredProcedure [dbo].[usp_Voto_ObtenerResultados]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Voto_ObtenerResultados]

AS	
BEGIN
	SELECT        TOP (100) PERCENT dbo.Candidato.NombreCandidato, dbo.Gerencia.NombreGerencia, dbo.Candidato.FotoCandidato, COUNT(dbo.Voto.VotoID) AS TotalVotos
	FROM            dbo.Voto INNER JOIN
							 dbo.Candidato ON dbo.Voto.CandidatoID = dbo.Candidato.CandidatoID INNER JOIN
							 dbo.Gerencia ON dbo.Candidato.GerenciaID = dbo.Gerencia.GerenciaID
	GROUP BY dbo.Candidato.NombreCandidato, dbo.Gerencia.NombreGerencia, dbo.Candidato.FotoCandidato
	ORDER BY TotalVotos DESC
END


GO
/****** Object:  StoredProcedure [dbo].[usp_Voto_ObtenerVotante]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Voto_ObtenerVotante]
@CedulaVotante varchar(150)
AS	
BEGIN
	SELECT  *
	FROM        SeguridadUsuarioDatos
	WHERE ClaveUsuario = @CedulaVotante
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Voto_ObtenerVotoRegistrado]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Voto_ObtenerVotoRegistrado]
@UsuarioVoto int
AS	
BEGIN
	SELECT  *
	FROM        Voto
	WHERE UsuarioVoto = @UsuarioVoto
END

GO
/****** Object:  StoredProcedure [dbo].[usp_Voto_Restablecer]    Script Date: 2/28/2022 6:11:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Voto_Restablecer]
	(
		@UsuarioVoto int

	)

AS

BEGIN

		DELETE FROM Voto WHERE UsuarioVoto = @UsuarioVoto
		select @@ROWCOUNT

END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[33] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Voto"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Candidato"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 136
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Gerencia"
            Begin Extent = 
               Top = 6
               Left = 522
               Bottom = 102
               Right = 717
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2415
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2670
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DetalleResultados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DetalleResultados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Empresa"
            Begin Extent = 
               Top = 31
               Left = 10
               Bottom = 319
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EmpresaSucursal"
            Begin Extent = 
               Top = 46
               Left = 299
               Bottom = 289
               Right = 580
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 4425
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6090
         Alias = 2580
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DetalleSucursalEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DetalleSucursalEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[30] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EmpresaSucursal"
            Begin Extent = 
               Top = 44
               Left = 297
               Bottom = 215
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Empresa"
            Begin Extent = 
               Top = 0
               Left = 63
               Bottom = 299
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SeguridadUsuarioSucursalEmpresa"
            Begin Extent = 
               Top = 14
               Left = 568
               Bottom = 184
               Right = 849
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SeguridadUsuarioDatos"
            Begin Extent = 
               Top = 4
               Left = 914
               Bottom = 271
               Right = 1190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1140
         Width = 3600
         Width = 4200
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DetalleUsuarioEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6105
         Alias = 3210
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DetalleUsuarioEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DetalleUsuarioEmpresa'
GO
USE [master]
GO
ALTER DATABASE [Eleccion] SET  READ_WRITE 
GO
