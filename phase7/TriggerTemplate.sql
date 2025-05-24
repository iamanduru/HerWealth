DELIMITER //
CREATE TRIGGER trg_users_before_i
BEFORE INSERT ON Users
FOR EACH ROW
BEGIN
  DECLARE dow INT;
  SET dow = DAYOFWEEK(CURDATE());  
  IF (dow BETWEEN 2 AND 6)                          -- Monday=2 .. Friday=6
     OR EXISTS(SELECT 1 FROM Holidays h WHERE h.holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(NEW.UserID, 'Users', 'INSERT', 'DENIED');
    SIGNAL SQLSTATE '45000' 
      SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(NEW.UserID, 'Users', 'INSERT', 'ALLOWED');
  END IF;
END //
DELIMITER ;