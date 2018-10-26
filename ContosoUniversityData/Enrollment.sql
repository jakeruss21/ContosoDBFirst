CREATE TABLE [dbo].[Enrollment]
(
	[EnrollementID] INT IDENTITY (1,1) NOT NULL,
	[Grade]			Decimal (3, 2) NULL,
	[CourseID]		INT NOT NULL,
	[StudentID]		INT NOT NULL
	PRIMARY KEY CLUSTERED ([EnrollementID] ASC),
	CONSTRAINT [FK_dbo.Enrollment_dbo.Course_CourseID] FOREIGN KEY ([CourseID])
		REFERENCES [dbo].[Course] ([CourseID]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.Enrollment_dbo.Student_StudentID] FOREIGN KEY ([StudentID])
		REFERENCES [dbo].[Student] ([StudentID]) ON DELETE CASCADE
)
