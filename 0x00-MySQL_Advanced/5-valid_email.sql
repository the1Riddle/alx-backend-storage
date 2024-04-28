-- SQL script that creates a trigger that resets the attribute valid_email only when the email has been changed.

DROP TRIGGER IF EXISTS `reset_valid_email`;

DELIMITER |

CREATE TRIGGER `reset_valid_email` BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.email != OLD.email THEN
		SET NEW.valid_email = 0;
	END IF;
END;
|

DELIMITER ;
