SELECT * 
FROM AuditLog 
ORDER BY AuditID DESC;

SELECT * 
FROM Holidays;

INSERT INTO Users 
  (UserID, Name, Email, Phone, IsGroupMember, KYCStatus)
VALUES 
  (99, 'Blocked Test', 'blocked@example.com', '0700999999', FALSE, TRUE);