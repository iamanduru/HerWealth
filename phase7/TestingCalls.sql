CALL sp_insert_audit(1, 'Users', 'INSERT', 'TEST');
INSERT INTO Users (UserID, Name, Email, Phone, IsGroupMember, KYCStatus)
VALUES (12, 'Test User', 'test@example.com', '0700000000', FALSE, TRUE);

