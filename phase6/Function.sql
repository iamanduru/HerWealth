DELIMITER //
CREATE FUNCTION GetTotalSavings(inputUserID INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(CurrentBalance) INTO total
    FROM SavingsAccounts
    WHERE UserID = inputUserID;
    RETURN IFNULL(total, 0.00);
END //
DELIMITER ;