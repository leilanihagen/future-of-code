/* Author: Leilani Hagen
	Date: 05/27/2019 */

USE [future_of_code]
GO
INSERT [data].[location] ([id], [name], [address], [active]) VALUES (1, N'Library in SC', N'800 NE Tenney Rd, Vancouver, WA 98685', 0)
GO
INSERT [data].[location] ([id], [name], [address], [active]) VALUES (2, N'Ontario Systems', N'4400 NE 77th Ave #100, Vancouver, WA 98662', 1)
GO
INSERT [data].[location] ([id], [name], [address], [active]) VALUES (3, N'WorkSource', N'204 SE Stone Mill Dr #215, Vancouver, WA 98684', 0)
GO
INSERT [data].[location] ([id], [name], [address], [active]) VALUES (4, N'Orchards', N'I don''t know', 0)
GO
INSERT [data].[location] ([id], [name], [address], [active]) VALUES (5, N'Gause Elementary', N'1100 34th St, Washougal, WA 98671', 1)
GO

/* Update the changelog: */
EXEC [development].[commit_change_to_changelog]
@contributor_username = 'leilanih'
,@description = 'add_data_to_location_table'