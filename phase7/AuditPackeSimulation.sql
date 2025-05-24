DELIMITER //
CREATE PROCEDURE sp_insert_audit (
  IN p_userID  INT,
  IN p_table   VARCHAR(50),
  IN p_op      VARCHAR(10),
  IN p_status  VARCHAR(10)
)
BEGIN
  INSERT INTO AuditLog (UserID, TableName, Operation, Status)
  VALUES (p_userID, p_table, p_op, p_status);
END //
DELIMITER ;
