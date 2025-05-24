INSERT INTO Users (UserID, Name, Email, Phone, IsGroupMember, KYCStatus)
VALUES (11, 'Naima Achieng', 'naima@example.com', '0788344556', FALSE, TRUE);

UPDATE Users
SET Phone = '0799123456'
WHERE UserID = 11;

DELETE FROM UserInvestments
WHERE InvestmentID = 305;