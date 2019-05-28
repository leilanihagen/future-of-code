/* Author: Leilani Hagen
	Date: 05/27/2019 */

USE [future_of_code]
GO
/****** Object:  Table [data].[class]    Script Date: 5/20/2019 9:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [data].[class](
	[id] [int] NOT NULL,
	[location_id] [int] NULL,
	[teacher_id] [int] NULL,
	[name] [nvarchar](200) NULL,
 CONSTRAINT [PK__Class__CB1927A0BDF96B54] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/* Update the changelog: */
EXEC [development].[commit_change_to_changelog]
@contributor_username = 'leilanih'
,@description = 'create_table_class'