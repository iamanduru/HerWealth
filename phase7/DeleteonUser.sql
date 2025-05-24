DELIMITER //
CREATE TRIGGER trg_users_before_d
BEFORE DELETE ON Users
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'Users', 'DELETE', 'DENIED');
    SIGNAL SQLSTATE '45000' 
      SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'Users', 'DELETE', 'ALLOWED');
  END IF;
END //
DELIMITER ;