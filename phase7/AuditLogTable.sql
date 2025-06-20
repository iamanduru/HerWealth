DROP TABLE IF EXISTS AuditLog;
CREATE TABLE AuditLog (
  AuditID      INT AUTO_INCREMENT PRIMARY KEY,
  UserID       INT,
  TableName    VARCHAR(50),
  Operation    VARCHAR(10),
  Status       VARCHAR(10),    -- 'ALLOWED' or 'DENIED'
  ActionTime   DATETIME DEFAULT CURRENT_TIMESTAMP
);