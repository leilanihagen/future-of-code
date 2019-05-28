/* Author: Leilani Hagen
	Date: 05/27/2019 */

USE [future_of_code]
GO
/****** Object:  Table [data].[club]    Script Date: 5/20/2019 10:14:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [data].[club](
	[id] [int] NOT NULL,
	[location_id] [int] NULL,
	[name] [nvarchar](500) NULL,
 CONSTRAINT [PK__Club__D35058C7F1BBCB5C] 
 PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/* Update the changelog: */
EXEC [development].[commit_change_to_changelog]
@contributor_username = 'leilanih'
,@description = 'create_table_club'