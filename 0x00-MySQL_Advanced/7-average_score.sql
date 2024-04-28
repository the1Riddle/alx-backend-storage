-- SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student.

DROP PROCEDURE IF EXISTS `ComputeAverageScoreForUser`;

DELIMITER |

CREATE PROCEDURE ComputeAverageScoreForUser (IN userid INT)
BEGIN
	UPDATE users
	SET average_score = (SELECT AVG(score) FROM corrections WHERE user_id = userid)
	WHERE id = userid;
END;
|

DELIMITER ;
