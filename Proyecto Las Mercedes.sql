USE [master]
GO
/****** Cristian D. Acosta 20-EIIN-1-045 seccion 0541 ******/
CREATE DATABASE [Escuela Las Mercedes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Escuela Las Mercedes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Escuela Las Mercedes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Escuela Las Mercedes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Escuela Las Mercedes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Escuela Las Mercedes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escuela Las Mercedes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Escuela Las Mercedes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela Las Mercedes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Escuela Las Mercedes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Escuela Las Mercedes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Escuela Las Mercedes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Escuela Las Mercedes] SET  MULTI_USER 
GO
ALTER DATABASE [Escuela Las Mercedes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Escuela Las Mercedes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Escuela Las Mercedes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Escuela Las Mercedes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Escuela Las Mercedes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Escuela Las Mercedes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Escuela Las Mercedes] SET QUERY_STORE = OFF
GO
USE [Escuela Las Mercedes]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 9/12/2021 8:18:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[Calificaciones] [int] NOT NULL,
	[MateriaId] [int] NULL,
	[EstudianteId] [int] NULL,
	[ProfesoresId] [int] NULL,
	[Calificacion1] [float] NULL,
	[Calificacion2] [float] NULL,
	[Calificacion3] [float] NULL,
	[Calificacion4] [float] NULL,
	[Promedio] [float] NULL,
	[Examenfinal] [float] NULL,
	[CalificacionFnal] [nchar](10) NULL,
 CONSTRAINT [PK_CalificacionId] PRIMARY KEY CLUSTERED 
(
	[Calificaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 9/12/2021 8:18:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[CursosId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Horario] [varchar](30) NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[CursosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 9/12/2021 8:18:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[Estudiante] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Matricula] [varchar](25) NULL,
	[CursoId] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
	[Sexo] [char](10) NULL,
	[Direccion] [varchar](300) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 9/12/2021 8:18:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[Materiaid] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[CursoId] [int] NULL,
	[ProfesoresId] [int] NULL,
 CONSTRAINT [PK_MateriasId] PRIMARY KEY CLUSTERED 
(
	[Materiaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 9/12/2021 8:18:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[ProfesoresId] [int] NOT NULL,
	[nombre] [varchar](30) NULL,
	[Sueldo] [varchar](10) NULL,
	[Direccion] [varchar](65) NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_ProfesoresId] PRIMARY KEY CLUSTERED 
(
	[ProfesoresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (1, 1, 1, 1, 9, 15, 14, 16, 54, 40, N'94        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (2, 2, 2, 2, 10, 14, 15, 15, 54, 43, N'97        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (3, 3, 3, 3, 8, 15, 14, 16, 53, 42, N'95        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (4, 4, 4, 4, 9, 15, 16, 15, 55, 39, N'94        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (5, 5, 5, 5, 10, 15, 14, 15, 55, 38, N'93        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (6, 6, 6, 6, 10, 15, 10, 15, 50, 41, N'91        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (7, 7, 7, 7, 9, 17, 13, 13, 52, 43, N'95        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (8, 8, 8, 8, 8, 12, 15, 15, 50, 45, N'95        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (9, 9, 9, 9, 9, 15, 15, 15, 54, 36, N'90        ')
INSERT [dbo].[Calificaciones] ([Calificaciones], [MateriaId], [EstudianteId], [ProfesoresId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [CalificacionFnal]) VALUES (10, 10, 10, 10, 9, 16, 14, 16, 55, 37, N'92        ')
GO
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (1, N'Aula45', N' 2 a 4 martes ')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (2, N'Aula35', N'4 a 6 martes')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (3, N'Aula22', N'6 a 8 martes ')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (4, N'Aula44', N'2 a 4 miercoles')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (5, N'Aula14', N'4 a 6 miercoles')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (6, N'Aula54', N'6 a 8 miercoles')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (7, N'Aula34', N'2 a 4 jueves')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (8, N'Aula48', N'4 a 6 jueves ')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (9, N'Aula25', N'6 a 8 jueves')
INSERT [dbo].[Cursos] ([CursosId], [Nombre], [Horario]) VALUES (10, N'Aula26', N'2 a 4 viernes')
GO
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (1, N'Carlos decler', N'0002696', 1, NULL, N'M         ', NULL)
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (2, N'Jhonatan suares', N'0002262', 2, NULL, N'M         ', N'el olimpo calle 2da # 56')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (3, N'Jose calcaño', N'0004258', 3, NULL, N'M         ', N'calle  primera #46 enrriquillo')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (4, N'Ana julia', N'0001468', 4, NULL, N'F         ', N'residencial pradera hermosa #78')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (5, N'Alexa ramirez', N'0009045', 5, NULL, N'F         ', N'residencial manuela baez #35')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (6, N'Alfredo quezada', N'0001578', 6, NULL, N'M         ', N'calle san anton #7')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (7, N'Jesus ambua', N'0007845', 7, NULL, N'M         ', N'residencial libertador #45
calle macao #9 villa mella')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (8, N'Marcelo ciprian', N'0004569', 8, NULL, N'M         ', N'residencial libertador #45')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (9, N'Felipa jones', N'0001313', 9, NULL, N'F         ', N'calle la fuente #22/los alcarrisos')
INSERT [dbo].[Estudiantes] ([Estudiante], [Nombre], [Matricula], [CursoId], [FechaNacimiento], [Sexo], [Direccion]) VALUES (10, N'Esteban chevalier', N'0004574', 10, NULL, N'M         ', N'calle libano#11/herrera de santo domingo')
GO
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (1, N'fundamentos electronicos', 1, 1)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (2, N'fisica2', 2, 2)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (3, N'base de datos', 3, 3)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (4, N'logistica de investigaciones', 4, 4)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (5, N'precalculo', 5, 5)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (6, N'calculo diferencial', 6, 6)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (7, N'dibujo tecnico', 7, 7)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (8, N'laboratorio fisica 2', 8, 8)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (9, N'calculo integral', 9, 9)
INSERT [dbo].[Materias] ([Materiaid], [Nombre], [CursoId], [ProfesoresId]) VALUES (10, N'quimica 2', 10, 10)
GO
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (1, N'Jose manuel de lo santo', N'65,000', N'calle libano#11/herrera de santo domingo', N'M', N'8290465132', N'Jmanuel@gmail.com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (2, N'Antonio Fernandez', N'55,000', N'calle la fuente #22/los alcarrisos', N'M', N'8094586445', N'antoniof@gmail.com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (3, N'Anastasia steel', N'75,000', N'residencial libertador #45', N'F', N'8095778466', N'anast@gmail.cm')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (4, N'Pedro almanzar', N'55,000', N'calle macao #9 villa mella', N'M', N'8294561278', N'palmanzar@gmail.com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (5, N'Amarilis jimenez', N'40,000', N'calle san anton #7', N'F', N'8297518844', N'amarilisjimenes@gmail.com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (6, N'Fernanda santana', N'68,000', N'residencial manuela baez #35', N'F', N'8496514478', N'luzyfer@gmail.com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (7, N'Odalisa perez', N'78,000', N'residencial pradera hermosa #78', N'F', N'8095547881', N'odalisa7881@gmail.com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (8, N'Arturo gomez', N'80,000', N'calle  primera #46 enrriquillo', N'M', N'8496578244', N'gomez8244@gmail.com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (9, N'Jose antonio', N'52,000', N'el olimpo calle 2da # 56', N'M', N'8294577447', N'joseantonio@gmail,com')
INSERT [dbo].[Profesores] ([ProfesoresId], [nombre], [Sueldo], [Direccion], [Sexo], [Telefono], [Email]) VALUES (10, N'Carolina bido', N'63,000', N'las caoba calle 1ra # 20', N'F', N'8094511667', N'bidocarolina@gmail.com')
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Estudiantes] FOREIGN KEY([EstudianteId])
REFERENCES [dbo].[Estudiantes] ([Estudiante])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Estudiantes]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Materias] FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materias] ([Materiaid])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Materias]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Profesores] FOREIGN KEY([ProfesoresId])
REFERENCES [dbo].[Profesores] ([ProfesoresId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Profesores]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Cursos] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Cursos] ([CursosId])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Cursos]
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD  CONSTRAINT [FK_Materias_Cursos] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Cursos] ([CursosId])
GO
ALTER TABLE [dbo].[Materias] CHECK CONSTRAINT [FK_Materias_Cursos]
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD  CONSTRAINT [FK_Materias_Profesores] FOREIGN KEY([ProfesoresId])
REFERENCES [dbo].[Profesores] ([ProfesoresId])
GO
ALTER TABLE [dbo].[Materias] CHECK CONSTRAINT [FK_Materias_Profesores]
GO
USE [master]
GO
ALTER DATABASE [Escuela Las Mercedes] SET  READ_WRITE 
GO
