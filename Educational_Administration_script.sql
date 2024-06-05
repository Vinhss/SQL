USE [Educational_Administration]
GO
/****** Object:  Table [dbo].[register]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[Student_Id] [nchar](10) NOT NULL,
	[Subject_Id] [nchar](10) NOT NULL,
	[Semester] [nchar](10) NOT NULL,
	[Year] [nchar](10) NOT NULL,
 CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED 
(
	[Student_Id] ASC,
	[Subject_Id] ASC,
	[Semester] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Teaching]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teaching](
	[Year] [nchar](10) NOT NULL,
	[Semester] [int] NOT NULL,
	[Subject_Id] [nchar](10) NOT NULL,
	[Responsibility] [nchar](10) NOT NULL,
	[Teacher_Id] [nchar](10) NULL,
 CONSTRAINT [PK_Teaching] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Semester] ASC,
	[Subject_Id] ASC,
	[Responsibility] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Lecturer]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[Teacher_Id] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Student] [nvarchar](50) NULL,
	[Background] [nvarchar](50) NULL,
	[Fields_Id] [nchar](10) NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[Teacher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Result]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[Year] [nchar](10) NOT NULL,
	[Semester] [int] NOT NULL,
	[Student_Id] [nchar](10) NOT NULL,
	[Subject_Id] [nchar](10) NOT NULL,
	[times_Exam] [nchar](10) NOT NULL,
	[Theory_score] [real] NULL,
	[Practice_score] [real] NULL,
 CONSTRAINT [PK_result] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Semester] ASC,
	[Student_Id] ASC,
	[Subject_Id] ASC,
	[times_Exam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Fields]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[Fields_Id] [nchar](10) NOT NULL,
	[Fields_Name] [nvarchar](50) NOT NULL,
	[Total_staff] [int] NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[Fields_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Subject]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Subject_Id] [nchar](10) NOT NULL,
	[Subject_Name] [nvarchar](50) NULL,
	[Number_of_credits] [int] NULL,
	[Number_of_Theory_Lesson] [int] NULL,
	[Number_of_Practice_Lesson] [int] NULL,
	[Fields_Id] [nchar](10) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Subject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Fields_Manager]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields_Manager](
	[Fields_Id] [nchar](10) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[From_date] [date] NOT NULL,
	[Teacher_Id] [nchar](10) NULL,
	[To_date] [date] NULL,
 CONSTRAINT [PK_Fields_Manager] PRIMARY KEY CLUSTERED 
(
	[Fields_Id] ASC,
	[Position] ASC,
	[From_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Student]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_Id] [nchar](10) NOT NULL,
	[Last_name] [nvarchar](50) NULL,
	[Name] [nvarchar](10) NULL,
	[Gender] [bit] NULL,
	[Date_of_Birth] [date] NULL,
	[City_Id] [nchar](10) NULL,
	[Education] [nchar](10) NULL,
	[Fields_Id] [nchar](10) NULL,
	[Year_Admission] [nchar](10) NULL,
	[Schoolarchip] [real] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Relatives]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relatives](
	[Teacher_Id] [nchar](10) NOT NULL,
	[Relatives_name] [nvarchar](50) NOT NULL,
	[Date_of_Birthtn] [date] NULL,
	[Relationship] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Relatives] PRIMARY KEY CLUSTERED 
(
	[Teacher_Id] ASC,
	[Relatives_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
/****** Object:  Table [dbo].[Exam]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exam](
	[Year] [nchar](10) NOT NULL,
	[Semester] [int] NOT NULL,
	[Subject_Id] [nchar](10) NOT NULL,
	[Examiner] [nchar](10) NOT NULL,
	[Exam_date] [char](10) NULL,
	[Exam_time] [char](10) NULL,
	[Exam_Room] [varchar](10) NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Semester] ASC,
	[Subject_Id] ASC,
	[Examiner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[register] ([Student_Id], [Subject_Id], [Semester], [Year]) VALUES (N'91002', N'CSDL ', N'2', N'2014-2015 ')
INSERT [dbo].[register] ([Student_Id], [Subject_Id], [Semester], [Year]) VALUES (N'91007', N'CSDL ', N'2', N'2014-2015 ')
INSERT [dbo].[register] ([Student_Id], [Subject_Id], [Semester], [Year]) VALUES (N'91023', N'TKMC ', N'2', N'2014-2015 ')
INSERT [dbo].[register] ([Student_Id], [Subject_Id], [Semester], [Year]) VALUES (N'91024', N'VLDC ', N'1', N'2014-2015 ')
INSERT [dbo].[register] ([Student_Id], [Subject_Id], [Semester], [Year]) VALUES (N'92001', N'SHDC ', N'1', N'2014-2015 ')
INSERT [dbo].[register] ([Student_Id], [Subject_Id], [Semester], [Year]) VALUES (N'92013', N'SHDC ', N'1', N'2014-2015 ')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 1, N'CTDL', N'LT', N'G001')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 1, N'CTDL', N'TH', N'G002')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 1, N'SHDC', N'LT', N'G007')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 1, N'VLDC', N'LT', N'G004')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 2, N'CNGE', N'LT', N'G007')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 2, N'CNGE', N'TH', N'G008')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 2, N'CSDL', N'LT', N'G002')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 2, N'TKMC', N'LT', N'G005')
INSERT [dbo].[Teaching] ([Year], [Semester], [Subject_Id], [Responsibility], [Teacher_Id]) VALUES (N'2014-2015 ', 2, N'TKMC', N'TH', N'G006')
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G001', N'Nguyễn Văn Sự', N'TS', NULL, N'CNTT')
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G002', N'Nguyễn Ngọc Thúy', N'Ths', NULL, N'CNTT')
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G003', N'Trần Văn Năm', N'Ths', NULL, N'CNTT')
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G004', N'Trần Đồng Nai', N'TS', N'PGS', N'VL')
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G005', N'Nguyễn Kim Oanh', N'Ths', NULL, N'VL')
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G006', N'Bùi Mạnh Tứ', N'Ths', NULL, N'VL'
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G007', N'Nguyễn Văn Chín', N'TS', N'PGS', N'CNSH')
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G008', N'Lê Thị Mai', N'Ths', NULL, NULL)
INSERT [dbo].[Lecturer] ([Teacher_Id], [Name], [Student], [Background], [Fields_Id]) VALUES (N'G009', N'Nguyễn Anh', N'Ths', NULL, NULL)
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 1, N'91024', N'VLDC', N'1', 4, 0)
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 1, N'91024', N'VLDC', N'2', 6, 0
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 1, N'92001', N'SHDC', N'1', 3, 3
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 1, N'92013', N'SHDC', N'1', 4, 4)
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 2, N'91002', N'CSDL', N'1', 9, 7.5
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 2, N'91007', N'CSDL', N'1', 9, 9)
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 2, N'91023', N'TKMC', N'1', 4, 5)
INSERT [dbo].[Result] ([Year], [Semester], [Student_Id], [Subject_Id], [times_Exam], [Theory_score], [Practice_score]) VALUES (N'2014-2015 ', 2, N'91023', N'TKMC', N'2', 6, 7
INSERT [dbo].[Fields] ([Fields_Id], [Fields_Name], [Total_staff]) VALUES (N'CNSH', N'Công nghệ sinh học', 14)
INSERT [dbo].[Fields] ([Fields_Id], [Fields_Name], [Total_staff]) VALUES (N'CNTT', N'Công nghệ thông tin', 26)
INSERT [dbo].[Fields] ([Fields_Id], [Fields_Name], [Total_staff]) VALUES (N'QTKD', N'Quản trị kinh doanh', 12)
INSERT [dbo].[Fields] ([Fields_Id], [Fields_Name], [Total_staff]) VALUES (N'VL', N'Vật lý', 17)
INSERT [dbo].[Fields] ([Fields_Id], [Fields_Name], [Total_staff]) VALUES (N'XD', N'Xây dựng', 25)
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'CNGE', N'Công nghệ gen', 4, 45, 15, N'CNSH')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'CSDL', N'Cơ sở dữ liệu', 3, 30, 15, N'CNTT')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'CTDL', N'Cấu trúc dữ liệu', 4, 45, 15, N'CNTT')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'LTWB', N'Lập trình Web', 3, 30, 15, N'CNTT')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'NMLT', N'Nhập môn lập trình', 4, 45, 15, N'CNTT')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'SHDC', N'Sinh học đại cương', 3, 30, 15, N'CNSH')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'SHPT', N'Sinh học phân tử', 3, 45, NULL, N'CNSH')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'SHPT1', N'Sinh học phân tử', 3, 45, NULL, N'CNSH')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'TKMC', N'Examết kết mạch', 4, 45, 15, N'VL')
INSERT [dbo].[Subject] ([Subject_Id], [Subject_Name], [Number_of_credits], [Number_of_Theory_Lesson], [Number_of_Practice_Lesson], [Fields_Id]) VALUES (N'VLDC', N'Vật lý đại cương', 3, 45, NULL, N'VL')
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91002     ', N'Nguyễn Ngọc', N'An', 1, CAST(0x261D0B00 AS Date), N'02', N'ĐT', N'CNTT', N'2013-2014 ', 1650000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91003     ', N'Đinh Thị', N'Tâm', NULL, NULL, NULL, NULL, N'CNTT', NULL, 1650000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91004     ', N'Lê Kim', N'Chi', NULL, NULL, NULL, NULL, N'CNTT', NULL, 990000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91005     ', N'Nguyễn', N'Lam', NULL, NULL, NULL, NULL, N'CNTT', NULL, 1000000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91006     ', N'Lý', N'Thông', NULL, NULL, NULL, NULL, N'CNTT', NULL, 880000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91007     ', N'Nguyễn Đồng', N'Nai', 1, CAST(0x681D0B00 AS Date), N'41', N'ĐT', N'CNTT', N'2013-2014 ', 880000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91023     ', N'Nguyễn Hùng', N'Sư', 0, CAST(0xAA1F0B00 AS Date), N'56', N'ĐT', N'VL', N'2013-2014 ', NULL)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'91024     ', N'Phạm Sĩ', N'Tử', 0, CAST(0xA91D0B00 AS Date), N'02', N'ĐT', N'VL', N'2013-2014 ', 1200000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'92001     ', N'Bùi Mạnh', N'An', 0, CAST(0xAA1F0B00 AS Date), N'41', N'ĐT', N'CNSH', N'2013-2014 ', 1000000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'92009     ', N'Ngô', N'Công', NULL, NULL, NULL, NULL, N'VL', NULL, NULL)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'92013     ', N'Lê Hữu', N'Chí', 0, CAST(0x8D1F0B00 AS Date), N'02', N'ĐT', N'CNSH', N'2013-2014 ', NULL)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'92024     ', N'Võ Thành', N'Công', 0, CAST(0x191F0B00 AS Date), N'56', N'ĐT', N'CNSH', N'2013-2014 ', 900000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'93000     ', NULL, NULL, NULL, NULL, NULL, NULL, N'QTKD', NULL, 800000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'93001     ', NULL, NULL, NULL, NULL, NULL, NULL, N'QTKD', NULL, 900000)
INSERT [dbo].[Student] ([Student_Id], [Last_name], [Name], [Gender], [Date_of_Birth], [City_Id], [Education], [Fields_Id], [Year_Admission], [Schoolarchip]) VALUES (N'93002     ', N'Hoàng', N'Long', NULL, NULL, NULL, NULL, N'QTKD', NULL, 1500000)
INSERT [dbo].[Relatives] ([Teacher_Id], [Relatives_name], [Date_of_Birthtn], [Relationship]) VALUES (N'G001', N'Nguyễn thị chín', CAST(0x4F140B00 AS Date), N'vợ')
INSERT [dbo].[Relatives] ([Teacher_Id], [Relatives_name], [Date_of_Birthtn], [Relationship]) VALUES (N'G005', N'Trần Hữu Bình', CAST(0xCD230B00 AS Date), N'con trai')
INSERT [dbo].[Relatives] ([Teacher_Id], [Relatives_name], [Date_of_Birthtn], [Relationship]) VALUES (N'G005', N'Trần Hữu Thắng', CAST(0x44FA0A00 AS Date), N'Chồng')
INSERT [dbo].[Relatives] ([Teacher_Id], [Relatives_name], [Date_of_Birthtn], [Relationship]) VALUES (N'G005', N'Trần Kiều Oanh', CAST(0xE8260B00 AS Date), N'Con gái')
INSERT [dbo].[Relatives] ([Teacher_Id], [Relatives_name], [Date_of_Birthtn], [Relationship]) VALUES (N'G006', N'Bùi Mạnh Ngọc', CAST(0xB4F20A00 AS Date), N'Bố')
INSERT [dbo].[Relatives] ([Teacher_Id], [Relatives_name], [Date_of_Birthtn], [Relationship]) VALUES (N'G007', N'Nguyn Thị An', CAST(0xEF210B00 AS Date), N'Con gái')
INSERT [dbo].[Exam] ([Year], [Semester], [Subject_Id], [Examiner], [Exam_date], [Exam_time], [Exam_Room]) VALUES (N'2014-2015 ', 1, N'CTDL', N'G001', N'31/12/2014', N'08:00', N'103')
INSERT [dbo].[Exam] ([Year], [Semester], [Subject_Id], [Examiner], [Exam_date], [Exam_time], [Exam_Room]) VALUES (N'2014-2015 ', 1, N'SHDC', N'G007', N'31/12/2014', N'08:00', N'307')
INSERT [dbo].[Exam] ([Year], [Semester], [Subject_Id], [Examiner], [Exam_date], [Exam_time], [Exam_Room]) VALUES (N'2014-2015 ', 1, N'VLDC', N'G004', N'31/12/2014', N'07:00', N'205')
ALTER TABLE [dbo].[register]  WITH CHECK ADD  CONSTRAINT [FK_register_Subject] FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subject] ([Subject_Id])
GO
ALTER TABLE [dbo].[register] CHECK CONSTRAINT [FK_register_Subject]
GO
ALTER TABLE [dbo].[register]  WITH CHECK ADD  CONSTRAINT [FK_register_Student] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Student] ([Student_Id])
GO
ALTER TABLE [dbo].[register] CHECK CONSTRAINT [FK_register_Student]
GO
ALTER TABLE [dbo].[Teaching]  WITH CHECK ADD  CONSTRAINT [FK_Teaching_Lecturer] FOREIGN KEY([Teacher_Id])
REFERENCES [dbo].[Lecturer] ([Teacher_Id])
GO
ALTER TABLE [dbo].[Teaching] CHECK CONSTRAINT [FK_Teaching_Lecturer]
GO
ALTER TABLE [dbo].[Teaching]  WITH CHECK ADD  CONSTRAINT [FK_Teaching_Subject] FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subject] ([Subject_Id])
GO
ALTER TABLE [dbo].[Teaching] CHECK CONSTRAINT [FK_Teaching_Subject]
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Fields] FOREIGN KEY([Fields_Id])
REFERENCES [dbo].[Fields] ([Fields_Id])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Fields]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Subject1] FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subject] ([Subject_Id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Subject1]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Student1] FOREIGN KEY([Student_Id])
REFERENCES [dbo].[Student] ([Student_Id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Student1]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Fields] FOREIGN KEY([Fields_Id])
REFERENCES [dbo].[Fields] ([Fields_Id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Fields]
GO
ALTER TABLE [dbo].[Fields_Manager]  WITH CHECK ADD  CONSTRAINT [FK_Fields_Manager_Lecturer] FOREIGN KEY([Teacher_Id])
REFERENCES [dbo].[Lecturer] ([Teacher_Id])
GO
ALTER TABLE [dbo].[Fields_Manager] CHECK CONSTRAINT [FK_Fields_Manager_Lecturer]
GO
ALTER TABLE [dbo].[Fields_Manager]  WITH CHECK ADD  CONSTRAINT [FK_Fields_Manager_Fields] FOREIGN KEY([Fields_Id])
REFERENCES [dbo].[Fields] ([Fields_Id])
GO
ALTER TABLE [dbo].[Fields_Manager] CHECK CONSTRAINT [FK_Fields_Manager_Fields]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Fields] FOREIGN KEY([Fields_Id])
REFERENCES [dbo].[Fields] ([Fields_Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Fields]
GO
ALTER TABLE [dbo].[Relatives]  WITH CHECK ADD  CONSTRAINT [FK_Relatives_Lecturer] FOREIGN KEY([Teacher_Id])
REFERENCES [dbo].[Lecturer] ([Teacher_Id])
GO
ALTER TABLE [dbo].[Relatives] CHECK CONSTRAINT [FK_Relatives_Lecturer]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Subject] FOREIGN KEY([Subject_Id])
REFERENCES [dbo].[Subject] ([Subject_Id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Subject]
GO
