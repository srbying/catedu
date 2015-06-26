USE [master]
GO
/****** Object:  Database [LearningManagementSystem]    Script Date: 6/26/2015 2:23:57 PM ******/
CREATE DATABASE [LearningManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LearningManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LearningManagementSystem.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LearningManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LearningManagementSystem_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LearningManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LearningManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LearningManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LearningManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LearningManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LearningManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [LearningManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [LearningManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LearningManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LearningManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LearningManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LearningManagementSystem]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](150) NULL,
	[Password] [varchar](150) NULL,
	[Active] [bit] NULL,
	[Person_ID] [bigint] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Assessment_Types]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Assessment_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Assessment_Type] [varchar](50) NULL,
 CONSTRAINT [PK_Assessment_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Core_Standards]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Core_Standards](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Core_Standard] [varchar](50) NULL,
 CONSTRAINT [PK_Core_Standards] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CoreStandard_Class_Lesson_Link]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoreStandard_Class_Lesson_Link](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CoreStandardID] [int] NULL,
	[ClassID] [int] NULL,
	[LessonID] [int] NULL,
 CONSTRAINT [PK_CoreStandard_Class_Lesson_Link] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lesson](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Short_Description] [varchar](250) NULL,
	[Full_Description] [varchar](max) NULL,
	[Enhancements] [varchar](max) NULL,
	[Extensions] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Materials] [varchar](max) NULL,
	[LeadLesson] [int] NULL,
	[AssessmentType] [int] NULL,
	[AssessmentLink] [varchar](100) NULL,
	[AssessmentInfo] [varchar](max) NULL,
	[Author] [bigint] NULL,
	[Advanced] [bit] NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LessonPlan]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LessonPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[SubjectID] [int] NULL,
	[ShortDescription] [varchar](250) NULL,
	[FullDescription] [varchar](max) NULL,
 CONSTRAINT [PK_LessonPlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LessonPlan_Lesson_Link]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonPlan_Lesson_Link](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LessonID] [int] NULL,
	[LessonPlanID] [int] NULL,
 CONSTRAINT [PK_LessonPlan_Lesson_Link] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](200) NULL,
	[Address] [varchar](254) NULL,
	[City] [varchar](254) NULL,
	[State] [varchar](254) NULL,
	[Zipcode] [varchar](100) NULL,
	[Phone1] [varchar](20) NULL,
	[Email] [varchar](254) NULL,
	[Role] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Place](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](254) NULL,
	[Address] [varchar](254) NULL,
	[Zipcode] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Place_Type] [int] NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place_Type]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Place_Type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](254) NULL,
	[Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](254) NULL,
	[Active] [bit] NULL DEFAULT ('True'),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_School_ID] [varchar](50) NULL,
	[Person_ID] [bigint] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student_Types]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_Student_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentTypesLink]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTypesLink](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [int] NULL,
	[Type_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherStudentLink]    Script Date: 6/26/2015 2:23:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherStudentLink](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Teacher] [bigint] NULL,
	[Student] [bigint] NULL,
 CONSTRAINT [PK_TeacherStudent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (1, N'test', N'test', 1, 58)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (2, N'steve', N'steve', 1, 60)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (3, N'thisisatest', N'thisisatest', 1, 61)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (9, N'sbyington', N'catalyst123', 1, 62)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (10, N'', N'', 1, 63)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (11, N'sasdasd', N'asdasd', 1, 64)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (12, N'Baba', N'Booey', 1, 65)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (13, N'Teacher', N'Teacher', NULL, 66)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (14, N'Principle', N'Principle', NULL, 67)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (15, N'Councelor', N'Councelor', NULL, 68)
INSERT [dbo].[Account] ([ID], [UserName], [Password], [Active], [Person_ID]) VALUES (16, N'Student', N'Student', NULL, 69)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Assessment_Types] ON 

INSERT [dbo].[Assessment_Types] ([ID], [Assessment_Type]) VALUES (1, N'Diagnostic')
INSERT [dbo].[Assessment_Types] ([ID], [Assessment_Type]) VALUES (2, N'Formative')
INSERT [dbo].[Assessment_Types] ([ID], [Assessment_Type]) VALUES (3, N'Summative')
SET IDENTITY_INSERT [dbo].[Assessment_Types] OFF
SET IDENTITY_INSERT [dbo].[Classes] ON 

INSERT [dbo].[Classes] ([ID], [Name]) VALUES (1, N'Science')
INSERT [dbo].[Classes] ([ID], [Name]) VALUES (2, N'Math')
INSERT [dbo].[Classes] ([ID], [Name]) VALUES (3, N'History')
SET IDENTITY_INSERT [dbo].[Classes] OFF
SET IDENTITY_INSERT [dbo].[Core_Standards] ON 

INSERT [dbo].[Core_Standards] ([ID], [Core_Standard]) VALUES (1, N'Core 1')
INSERT [dbo].[Core_Standards] ([ID], [Core_Standard]) VALUES (2, N'Core 2')
INSERT [dbo].[Core_Standards] ([ID], [Core_Standard]) VALUES (3, N'Core 3')
INSERT [dbo].[Core_Standards] ([ID], [Core_Standard]) VALUES (4, N'Core 4')
INSERT [dbo].[Core_Standards] ([ID], [Core_Standard]) VALUES (5, N'Core 5')
INSERT [dbo].[Core_Standards] ([ID], [Core_Standard]) VALUES (6, N'Core 6')
SET IDENTITY_INSERT [dbo].[Core_Standards] OFF
SET IDENTITY_INSERT [dbo].[CoreStandard_Class_Lesson_Link] ON 

INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (1, 1, 1, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (2, 2, 1, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (3, 3, 1, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (4, 3, 2, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (5, 4, 2, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (6, 3, 3, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (7, 4, 3, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (8, 5, 3, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (9, 6, 3, 1)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (10, 1, 1, 5)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (11, 2, 1, 5)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (12, 3, 1, 5)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (13, 4, 1, 5)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (14, 5, 2, 5)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (15, 5, 3, 5)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (16, 1, 1, 6)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (17, 2, 1, 6)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (18, 3, 1, 6)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (19, 5, 2, 6)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (20, 6, 2, 6)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (21, 2, 3, 6)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (22, 3, 3, 6)
INSERT [dbo].[CoreStandard_Class_Lesson_Link] ([ID], [CoreStandardID], [ClassID], [LessonID]) VALUES (23, 4, 3, 6)
SET IDENTITY_INSERT [dbo].[CoreStandard_Class_Lesson_Link] OFF
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([ID], [Name], [Short_Description], [Full_Description], [Enhancements], [Extensions], [Details], [Materials], [LeadLesson], [AssessmentType], [AssessmentLink], [AssessmentInfo], [Author], [Advanced]) VALUES (1, N'Ancient Greece', N'Students will gain knowledge and understanding of the legacy of ancient Greece.', N'Mythological stories can be traced across continents and back to the beginning of time. People from different cultures have created myths to celebrate the diverse, the heroic, the unbelievable, and the unknown. At first glance, students may wonder what ties their lives may have to Greek mythology, if any. However, upon further examination, they will realize that myths have provided us with explanations, have influenced our vocabulary, have entertained people for many generations, and continue to teach us many lessons.

Students will gain knowledge and understanding of the legacy of ancient Greece; selected myths, gods, and goddesses and their impact on literature today; and the relationship between Greek mythology and modern society.', NULL, NULL, NULL, N'Paper, Pens, Book', NULL, 2, N'Learning Management System .pdf', N'Newspaper article related to the Trojan War.
Word maps and vocabulary quizzes.
Character chart of god or goddess.
Journal entries.
Oral presentation of god or goddess.
Mythology scrapbook.', 66, 1)
INSERT [dbo].[Lesson] ([ID], [Name], [Short_Description], [Full_Description], [Enhancements], [Extensions], [Details], [Materials], [LeadLesson], [AssessmentType], [AssessmentLink], [AssessmentInfo], [Author], [Advanced]) VALUES (2, N'Memoir Techniques', N'In this lesson, you will review some of the techniques of memoir writing.', N'In this lesson, you will review some of the techniques of memoir writing. A few practice activities will strengthen your skills at using first-person point of view, showing language, and dialogue. You will also have the Brainstorming graded assignment that you completed yesterday returned today. If you have any questions about your planning assignment or about any of the feedback you received, contact your teacher to talk about it via phone or in an Eliminate session.', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, 66, 0)
INSERT [dbo].[Lesson] ([ID], [Name], [Short_Description], [Full_Description], [Enhancements], [Extensions], [Details], [Materials], [LeadLesson], [AssessmentType], [AssessmentLink], [AssessmentInfo], [Author], [Advanced]) VALUES (3, N'Everyday Math', N'Math lesson for Grade(s) K-5', N'Math lesson for Grade(s) K-5', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL, 66, 0)
INSERT [dbo].[Lesson] ([ID], [Name], [Short_Description], [Full_Description], [Enhancements], [Extensions], [Details], [Materials], [LeadLesson], [AssessmentType], [AssessmentLink], [AssessmentInfo], [Author], [Advanced]) VALUES (5, N'Phases of the Moon', N'Students will be able to show their understanding of the phases of the moon.', N'Students will be able to show their understanding of the phases of the moon.', N'Each student will be given 8 split Oreo cookies and one plate with the phases of the moon on the bottom of the plate. The student will use their spoon to move the cream off the cookie to model the correct phase of the moon. After completing eight correct moon phases with their cookies, the student will label each phase of the moon with the correct name strip (new moon, full moon, waxing crescent, waning crescent, first quarter, waxing gibbous, waning gibbous). Once the student has correctly labeled the â??moonsâ??, they may eat the cookies and take the plate home, where it can be used to track the moon from their own neighborhood.', N'The teacher will review the correct phases of the moon in the correct order before allowing the students to eat their moon phases. The teacher will also show each student that their moon phase plate can be hung in a window so students may follow the phases of the moon from their own window.', N'Each student is responsible for modeling the phases of the moon using cookie cream. The phases should closely resemble the phases of the moon, as noted on the bottom of the moon phaseâ??s plate.', N'One pre-made paper plate with moon phases attached.
8 Oreo cookies, split per student.
One plastic spoon per student.', 3, 3, N'Lesson_Plan_EDU_914.pdf', N'The teacher will continually walk around and assist students with the activity. The teacher will be checking for understanding and making sure that each student is on track with their moon phases during the activity. The teacher will informally assess each student as she walks around and a formative assessment will be noted upon the completion of the activity. Students will be given a check plus for completing the activity to the best of their ability, a check for work that is complete, but not to the best of their ability, and a check minus for work that is below their working ability.', 66, 1)
INSERT [dbo].[Lesson] ([ID], [Name], [Short_Description], [Full_Description], [Enhancements], [Extensions], [Details], [Materials], [LeadLesson], [AssessmentType], [AssessmentLink], [AssessmentInfo], [Author], [Advanced]) VALUES (6, N'test lesson', N'short', N'full', N'enhance', N'extend', N'detail', N'material', 3, 1, N'Learning Management System .pdf', N'the end', 66, 1)
INSERT [dbo].[Lesson] ([ID], [Name], [Short_Description], [Full_Description], [Enhancements], [Extensions], [Details], [Materials], [LeadLesson], [AssessmentType], [AssessmentLink], [AssessmentInfo], [Author], [Advanced]) VALUES (7, N'Another lesson', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, 66, 0)
INSERT [dbo].[Lesson] ([ID], [Name], [Short_Description], [Full_Description], [Enhancements], [Extensions], [Details], [Materials], [LeadLesson], [AssessmentType], [AssessmentLink], [AssessmentInfo], [Author], [Advanced]) VALUES (8, N'another lesson', N'', N'', N'', N'', N'', N'', NULL, NULL, NULL, NULL, 66, 0)
SET IDENTITY_INSERT [dbo].[Lesson] OFF
SET IDENTITY_INSERT [dbo].[LessonPlan] ON 

INSERT [dbo].[LessonPlan] ([ID], [Name], [SubjectID], [ShortDescription], [FullDescription]) VALUES (1, N'lesson plan 1', 1, N'short', N'full description')
INSERT [dbo].[LessonPlan] ([ID], [Name], [SubjectID], [ShortDescription], [FullDescription]) VALUES (2, N'testing', 2, N'', N'')
INSERT [dbo].[LessonPlan] ([ID], [Name], [SubjectID], [ShortDescription], [FullDescription]) VALUES (3, N'Lesson Plan 1', 1, N'This is a short description', N'And this description is fuller')
INSERT [dbo].[LessonPlan] ([ID], [Name], [SubjectID], [ShortDescription], [FullDescription]) VALUES (5, N'Lesson Plan 2', 3, N'short', N'fuill')
INSERT [dbo].[LessonPlan] ([ID], [Name], [SubjectID], [ShortDescription], [FullDescription]) VALUES (6, N'Lesson Plan 3', 2, N'This is a short description for the third lesson plan', N'This descriptions is full yet shorter somehow')
SET IDENTITY_INSERT [dbo].[LessonPlan] OFF
SET IDENTITY_INSERT [dbo].[LessonPlan_Lesson_Link] ON 

INSERT [dbo].[LessonPlan_Lesson_Link] ([ID], [LessonID], [LessonPlanID]) VALUES (1, 3, 5)
INSERT [dbo].[LessonPlan_Lesson_Link] ([ID], [LessonID], [LessonPlanID]) VALUES (2, 5, 5)
INSERT [dbo].[LessonPlan_Lesson_Link] ([ID], [LessonID], [LessonPlanID]) VALUES (3, 2, 6)
INSERT [dbo].[LessonPlan_Lesson_Link] ([ID], [LessonID], [LessonPlanID]) VALUES (4, 3, 6)
INSERT [dbo].[LessonPlan_Lesson_Link] ([ID], [LessonID], [LessonPlanID]) VALUES (5, 5, 6)
SET IDENTITY_INSERT [dbo].[LessonPlan_Lesson_Link] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (1, N'Steven', N'Byington', N'13325 sw 72nd ave', N'Tigard', NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (2, N'Jen', N'Hen', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (3, N'Susan', N'Smith', N'555 a Ave', N'Tigard', NULL, N'97223', N'4195555565', N'susmith@bing.bong', 3, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (4, N'Cruz', N'Spence', N'710-1903 Donec Street', N'Dutse', N'Jigawa', N'8568BI', N'1-120-193-4957', N'nibh@et.com', 3, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (5, N'Camilla', N'Wood', N'P.O. Box 172, 4291 Neque. Road', N'Istanbul', N'Istanbul', N'53443', N'1-386-850-4584', N'Nunc.mauris@estvitaesodales.org', 3, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (6, N'Orli', N'Charles', N'887-2918 Penatibus Road', N'Lódz', N'LD', N'4905', N'1-893-928-2450', N'leo@torquentper.edu', 3, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (7, N'Jerry', N'Phillips', N'7625 Sem, Rd.', N'Armadale', N'Western Australia', N'E2N 2N6', N'1-738-116-0913', N'ullamcorper.eu.euismod@hendreritDonec.net', 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (8, N'Walker', N'Woodward', N'4103 Ultricies Road', N'Zellik', N'Vlaams-Brabant', N'11-519', N'1-821-964-6166', N'tincidunt.nunc.ac@metus.edu', 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (9, N'Gannon', N'Bradley', N'Ap #195-4587 In, Avenue', N'Siena', N'Toscana', N'5422', N'1-974-372-0653', N'quis.accumsan@augueporttitor.ca', 3, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (10, N'Aristotle', N'Mccullough', N'Ap #428-8145 Id Rd.', N'New Plymouth', N'NI', N'60999', N'1-144-725-0237', N'adipiscing@adipiscingelit.co.uk', 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (11, N'Kristen', N'House', N'Ap #942-755 Sodales St.', N'Alajuela', N'A', N'24895', N'1-559-501-1636', N'mi.enim.condimentum@pede.ca', 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (13, N'Uriah', N'Mason', N'6010 Nec, Rd.', N'Te Awamutu', N'North Island', N'9784', N'1-139-864-9325', N'ipsum.dolor.sit@massaQuisque.org', 3, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (14, N'Bill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (15, N'Kenny', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (16, N'Stan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (17, N'Bill', N'Smith', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (18, N'Gillian', N'Blanchard', N'9723 Suspendisse Avenue', N'Lerwick', N'Shetland', N'47508', N'(462) 281-9749', N'Phasellus@Crassed.com', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (19, N'Serena', N'Poole', N'702-8265 Risus, Avenue', N'Sasaram', N'BR', N'48964', N'(164) 761-3606', N'enim.Etiam@eleifendnec.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (20, N'Joy', N'Yates', N'809 At, Avenue', N'Jefferson City', N'MO', N'L4E 4VK', N'(104) 735-3142', N'tellus@nisisem.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (21, N'Quinn', N'Clemons', N'Ap #769-9840 Sed Road', N'Motta Camastra', N'SIC', N'763125', N'(896) 446-4687', N'risus.quis.diam@mollisneccursus.co.uk', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (22, N'Risa', N'Wilder', N'Ap #985-2942 Malesuada. Rd.', N'Tarnów', N'Malopolskie', N'E7C 2H8', N'(394) 645-2033', N'Curabitur.egestas@velconvallis.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (23, N'Ria', N'Vang', N'Ap #398-9935 Sed Rd.', N'Hoyerswerda', N'Saxony', N'2503', N'(868) 222-3183', N'ac.mattis.ornare@sitamet.com', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (24, N'Hasad', N'Allison', N'605-9552 Sagittis. Avenue', N'San Nicolás', N'Cartago', N'43970', N'(330) 240-2731', N'at.velit.Cras@magnamalesuada.co.uk', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (25, N'Tatiana', N'Guerrero', N'Ap #474-8451 Id Road', N'Vadodara', N'GJ', N'6237', N'(572) 689-4652', N'risus.odio.auctor@utmiDuis.org', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (26, N'Stella', N'Padilla', N'897-5714 Elit, Street', N'Cádiz', N'Andalucía', N'961283', N'(868) 461-8451', N'leo.elementum.sem@Aliquamrutrumlorem.ca', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (27, N'Mercedes', N'Lowery', N'P.O. Box 292, 3306 Consectetuer Av.', N'Osasco', N'SP', N'18668-710', N'(728) 448-4814', N'Sed.et@placeratorcilacus.co.uk', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (28, N'Davis', N'Welch', N'9711 Tempor Rd.', N'Morpeth', N'NB', N'25230', N'(122) 545-0406', N'quis.pede.Suspendisse@elementum.com', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (29, N'Grady', N'Ferguson', N'6851 Rhoncus. Road', N'Hulst', N'Zl', N'84086', N'(284) 702-7130', N'sem.ut.dolor@imperdietnonvestibulum.org', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (30, N'Mia', N'Levy', N'821 Sed Road', N'South Dum Dum', N'West Bengal', N'7551', N'(465) 730-5847', N'faucibus.orci@Aliquamtincidunt.org', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (31, N'Piper', N'Reilly', N'Ap #692-5168 A, Av.', N'Reyhanli', N'Hat', N'04704', N'(847) 466-7949', N'lacus.Quisque.purus@nascetur.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (32, N'Elton', N'Short', N'Ap #328-7781 Mauris St.', N'McCallum', N'NL', N'4338', N'(104) 247-6195', N'erat.eget@Mauris.ca', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (33, N'Ryan', N'Hendrix', N'Ap #356-7700 At Road', N'Noisy-le-Grand', N'Île-de-France', N'6167', N'(981) 873-5866', N'non.vestibulum.nec@amet.org', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (34, N'Cleo', N'Henderson', N'128-1456 Malesuada Rd.', N'New Haven', N'CT', N'09917', N'(538) 991-8067', N'justo.sit.amet@malesuada.net', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (35, N'Austin', N'Barton', N'143-1422 Dictum. Avenue', N'Vienna', N'Wie', N'107422', N'(982) 183-4969', N'dignissim@id.com', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (36, N'Giselle', N'Macias', N'813-3931 Fermentum St.', N'Sagamu', N'Ogun', N'7030FY', N'(784) 947-3553', N'ipsum.nunc.id@gravidasitamet.net', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (37, N'Hadley', N'Howard', N'9785 Non, Rd.', N'Leganés', N'Madrid', N'95-887', N'(278) 320-2623', N'Proin.vel.nisl@nullaatsem.co.uk', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (38, N'Vladimir', N'Tyson', N'P.O. Box 276, 6552 At Street', N'Bremerhaven', N'HB', N'4079PP', N'(129) 318-9786', N'augue.Sed@lacusvarius.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (39, N'Evan', N'Mooney', N'Ap #358-4843 Posuere, Road', N'Berlin', N'BE', N'74571', N'(637) 433-8285', N'pede.nonummy@elitsed.co.uk', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (40, N'Nathaniel', N'Sloan', N'P.O. Box 502, 263 Dolor. Ave', N'Newmarket', N'Ontario', N'4315', N'(635) 523-1757', N'sodales.at.velit@nequeIn.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (41, N'Flynn', N'Howell', N'9650 Amet, Rd.', N'Zaria', N'Kaduna', N'8246', N'(266) 417-0368', N'pharetra.Quisque.ac@necluctus.ca', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (42, N'Calista', N'West', N'756-6147 Hendrerit Road', N'Anchorage', N'AK', N'M6W 0W8', N'(143) 771-1651', N'enim.diam.vel@ac.co.uk', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (43, N'Ivor', N'Rich', N'7000 Magna St.', N'San Isidro de El General', N'SJ', N'996926', N'(703) 727-7137', N'nisi@pretiumaliquetmetus.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (44, N'Sage', N'Estes', N'9202 Consectetuer Road', N'Orhangazi', N'Bursa', N'5569', N'(338) 920-5410', N'Aliquam.adipiscing.lobortis@maurissapiencursus.net', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (45, N'Selma', N'Curry', N'Ap #944-440 Eleifend Avenue', N'Whitchurch', N'SA', N'39-888', N'(818) 532-8151', N'facilisis.eget.ipsum@et.ca', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (46, N'Deanna', N'Rhodes', N'6870 Orci Road', N'Kenosha', N'WI', N'09871', N'(293) 593-8979', N'eget@acturpis.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (47, N'Celeste', N'Perez', N'Ap #166-751 Dui Ave', N'Galway', N'Connacht', N'4291', N'(589) 262-2010', N'vel.nisl.Quisque@ullamcorpermagna.edu', 4, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (58, N'a', N'a', N'a', N'a', N'a', N'a', N'a', N'a', NULL, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (59, N'b', N'b', N'b', N'b', N'b', N'b', N'b', N'b', NULL, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (60, N'steve', N'steve', N'steve', N'steve', N'steve', N'steve', N'steve', N'steve', 1, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (61, N'thisisatest', N'thisisatest', N'thisisatest', N'thisisatest', N'thisisatest', N'thisisatest', N'thisisatest', N'thisisatest', NULL, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (62, N'Steven', N'Byington', N'1025 Hunters Way', N'Sandusky', N'OH', N'44870', N'4195031520', N'srbyington@gmail.com', NULL, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (63, N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (64, N'', N'', N'', N'', N'', N'', N'', N'', NULL, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (65, N'Baba', N'Booey', N'555 SW d st', N'beavertown', N'fl', N'88457', N'136768768', N'bababooey@bababooey.bababooey', NULL, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (66, N'Bob', N'Smith', N'Ap #166-751 Dui Ave', N'Kenosha', N'WI', N'09871', N'(293) 593-8979', N'eget@acturpis.edu', 2, 1)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (67, N'Principle', N'Principle', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (68, N'Councelor', N'Councelor', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[Person] ([ID], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Phone1], [Email], [Role], [Active]) VALUES (69, N'Student', N'Student', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL)
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Place] ON 

INSERT [dbo].[Place] ([ID], [Name], [Address], [Zipcode], [Phone], [Place_Type], [Active]) VALUES (33, N'Erie County', NULL, N'43403', NULL, 1, 1)
INSERT [dbo].[Place] ([ID], [Name], [Address], [Zipcode], [Phone], [Place_Type], [Active]) VALUES (35, N'Sandusky ', NULL, NULL, NULL, 2, 1)
SET IDENTITY_INSERT [dbo].[Place] OFF
SET IDENTITY_INSERT [dbo].[Place_Type] ON 

INSERT [dbo].[Place_Type] ([ID], [Type], [Active]) VALUES (1, N'District', 1)
INSERT [dbo].[Place_Type] ([ID], [Type], [Active]) VALUES (2, N'School', 1)
SET IDENTITY_INSERT [dbo].[Place_Type] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [Role], [Active]) VALUES (1, N'Principle', 1)
INSERT [dbo].[Roles] ([ID], [Role], [Active]) VALUES (2, N'Teacher', 1)
INSERT [dbo].[Roles] ([ID], [Role], [Active]) VALUES (3, N'Councelor', 1)
INSERT [dbo].[Roles] ([ID], [Role], [Active]) VALUES (4, N'Student', 1)
INSERT [dbo].[Roles] ([ID], [Role], [Active]) VALUES (5, N'SysAdmin', 1)
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Student_Types] ON 

INSERT [dbo].[Student_Types] ([ID], [Type]) VALUES (1, N'ELL')
INSERT [dbo].[Student_Types] ([ID], [Type]) VALUES (2, N'IDP')
INSERT [dbo].[Student_Types] ([ID], [Type]) VALUES (3, N'TAG')
SET IDENTITY_INSERT [dbo].[Student_Types] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Account__C9F28456BC3D1D26]    Script Date: 6/26/2015 2:23:58 PM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Student__7EABD08AD402D646]    Script Date: 6/26/2015 2:23:58 PM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [UQ__Student__7EABD08AD402D646] UNIQUE NONCLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Student__7EABD08ADEBE5AF8]    Script Date: 6/26/2015 2:23:58 PM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [UQ__Student__7EABD08ADEBE5AF8] UNIQUE NONCLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Person_ID] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Person_ID]
GO
ALTER TABLE [dbo].[CoreStandard_Class_Lesson_Link]  WITH CHECK ADD  CONSTRAINT [FK__CoreStand__Class__01142BA1] FOREIGN KEY([LessonID])
REFERENCES [dbo].[Lesson] ([ID])
GO
ALTER TABLE [dbo].[CoreStandard_Class_Lesson_Link] CHECK CONSTRAINT [FK__CoreStand__Class__01142BA1]
GO
ALTER TABLE [dbo].[CoreStandard_Class_Lesson_Link]  WITH CHECK ADD FOREIGN KEY([CoreStandardID])
REFERENCES [dbo].[Core_Standards] ([ID])
GO
ALTER TABLE [dbo].[CoreStandard_Class_Lesson_Link]  WITH CHECK ADD  CONSTRAINT [FK__CoreStand__Lesso__02084FDA] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[CoreStandard_Class_Lesson_Link] CHECK CONSTRAINT [FK__CoreStand__Lesso__02084FDA]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK__Lesson__Author__160F4887] FOREIGN KEY([Author])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK__Lesson__Author__160F4887]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentType_Lesson] FOREIGN KEY([AssessmentType])
REFERENCES [dbo].[Assessment_Types] ([ID])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_AssessmentType_Lesson]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_LeadLesson_Lesson] FOREIGN KEY([LeadLesson])
REFERENCES [dbo].[Lesson] ([ID])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_LeadLesson_Lesson]
GO
ALTER TABLE [dbo].[LessonPlan]  WITH CHECK ADD  CONSTRAINT [FK_LessonPlan_LessonPlan] FOREIGN KEY([ID])
REFERENCES [dbo].[LessonPlan] ([ID])
GO
ALTER TABLE [dbo].[LessonPlan] CHECK CONSTRAINT [FK_LessonPlan_LessonPlan]
GO
ALTER TABLE [dbo].[LessonPlan]  WITH CHECK ADD  CONSTRAINT [LessonPlan_SubjectID_LessonID] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[LessonPlan] CHECK CONSTRAINT [LessonPlan_SubjectID_LessonID]
GO
ALTER TABLE [dbo].[LessonPlan_Lesson_Link]  WITH CHECK ADD  CONSTRAINT [FK_LessonPlan_Lesson_Link_LessonID] FOREIGN KEY([LessonID])
REFERENCES [dbo].[Lesson] ([ID])
GO
ALTER TABLE [dbo].[LessonPlan_Lesson_Link] CHECK CONSTRAINT [FK_LessonPlan_Lesson_Link_LessonID]
GO
ALTER TABLE [dbo].[LessonPlan_Lesson_Link]  WITH CHECK ADD  CONSTRAINT [FK_LessonPlan_Lesson_Link_LessonPlanID] FOREIGN KEY([LessonPlanID])
REFERENCES [dbo].[LessonPlan] ([ID])
GO
ALTER TABLE [dbo].[LessonPlan_Lesson_Link] CHECK CONSTRAINT [FK_LessonPlan_Lesson_Link_LessonPlanID]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([Role])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD FOREIGN KEY([Place_Type])
REFERENCES [dbo].[Place_Type] ([ID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Person_ID] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Person_ID]
GO
ALTER TABLE [dbo].[StudentTypesLink]  WITH CHECK ADD  CONSTRAINT [FK_StudentTypeLink_Student_ID] FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[StudentTypesLink] CHECK CONSTRAINT [FK_StudentTypeLink_Student_ID]
GO
ALTER TABLE [dbo].[StudentTypesLink]  WITH CHECK ADD  CONSTRAINT [FK_StudentTypeLink_Type_ID] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[Student_Types] ([ID])
GO
ALTER TABLE [dbo].[StudentTypesLink] CHECK CONSTRAINT [FK_StudentTypeLink_Type_ID]
GO
ALTER TABLE [dbo].[TeacherStudentLink]  WITH CHECK ADD  CONSTRAINT [FK_TeacherStudent_Student] FOREIGN KEY([Student])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[TeacherStudentLink] CHECK CONSTRAINT [FK_TeacherStudent_Student]
GO
ALTER TABLE [dbo].[TeacherStudentLink]  WITH CHECK ADD  CONSTRAINT [FK_TeacherStudent_Teacher] FOREIGN KEY([Teacher])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[TeacherStudentLink] CHECK CONSTRAINT [FK_TeacherStudent_Teacher]
GO
USE [master]
GO
ALTER DATABASE [LearningManagementSystem] SET  READ_WRITE 
GO
