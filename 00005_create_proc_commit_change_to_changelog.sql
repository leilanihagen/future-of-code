/* Author: Leilani Hagen
	Date: 05/27/2019 */

USE [future_of_code]
GO

/****** Object:  StoredProcedure [development].[commit_change_to_changelog]    Script Date: 5/19/2019 10:30:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/* Run this proc:
EXEC [development].[commit_change_to_changelog]
@contributor_username = 'first_name+last_initial
,@description = 'my_description'
*/

CREATE PROC [development].[commit_change_to_changelog]
@contributor_username NVARCHAR(500)
,@description NVARCHAR(MAX)
AS

/* Find the last used change_number: */
DECLARE @last_change_number INT
SET @last_change_number =
	(SELECT TOP 1
		c.change_number
	FROM
		[development].[changelog] c
	ORDER BY c.change_number DESC)

/* Current change number: */
DECLARE @current_change_number INT
SET @current_change_number = @last_change_number + 1

INSERT INTO [development].[changelog]
VALUES
(
	(@current_change_number)
	,GETDATE()
	,@contributor_username
	,RIGHT( CONCAT('0000', CONVERT(NVARCHAR, @current_change_number)), 5) + '_' + @description
)
GO

/* Update the changelog using our script! */
EXEC [development].[commit_change_to_changelog]
@contributor_username = 'leilanih'
,@description = 'create_proc_commit_change_to_changelog'