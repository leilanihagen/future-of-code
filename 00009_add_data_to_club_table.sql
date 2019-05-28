/* Author: Leilani Hagen
	Date: 05/27/2019 */

USE [future_of_code]
GO
INSERT [data].[club] ([id], [location_id], [name]) VALUES (1, 1, N'Salmon Creek')
GO
INSERT [data].[club] ([id], [location_id], [name]) VALUES (2, 4, N'Orchards Club')
GO

/* Update the changelog: */
EXEC [development].[commit_change_to_changelog]
@contributor_username = 'leilanih'
,@description = 'add_data_to_club_table'