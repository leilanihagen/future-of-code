/* Author: Leilani Hagen
	Date: 05/27/2019 */

USE [future_of_code]
GO
/****** Object:  Table [data].[person]    Script Date: 5/20/2019 10:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [data].[person](
	[id] [nchar](10) NOT NULL,
	[first_name] [nchar](10) NOT NULL,
	[last_name] [nchar](10) NULL,
	[email] [nchar](10) NULL,
	[phone] [nchar](10) NULL
) ON [PRIMARY]
GO

/* Update the changelog: */
EXEC [development].[commit_change_to_changelog]
@contributor_username = 'leilanih'
,@description = 'create_table_person'