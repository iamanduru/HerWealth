DELIMITER //
CREATE PROCEDURE GetUserSavings(IN inputUserID INT)
BEGIN
    SELECT AccountID, GoalName, CurrentBalance
    FROM SavingsAccounts
    WHERE UserID = inputUserID;
END 
//
DELIMITER ;