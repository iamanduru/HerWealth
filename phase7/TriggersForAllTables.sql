DELIMITER //

-- SAVINGSACCOUNTS: BEFORE INSERT
CREATE TRIGGER trg_savings_before_i
BEFORE INSERT ON SavingsAccounts
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(NEW.UserID, 'SavingsAccounts', 'INSERT', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(NEW.UserID, 'SavingsAccounts', 'INSERT', 'ALLOWED');
  END IF;
END//

-- SAVINGSACCOUNTS: BEFORE UPDATE
CREATE TRIGGER trg_savings_before_u
BEFORE UPDATE ON SavingsAccounts
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'SavingsAccounts', 'UPDATE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'SavingsAccounts', 'UPDATE', 'ALLOWED');
  END IF;
END//

-- SAVINGSACCOUNTS: BEFORE DELETE
CREATE TRIGGER trg_savings_before_d
BEFORE DELETE ON SavingsAccounts
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'SavingsAccounts', 'DELETE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'SavingsAccounts', 'DELETE', 'ALLOWED');
  END IF;
END//

-- INVESTMENTPORTFOLIOS: BEFORE INSERT
CREATE TRIGGER trg_portfolio_before_i
BEFORE INSERT ON InvestmentPortfolios
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(NEW.PortfolioID, 'InvestmentPortfolios', 'INSERT', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(NEW.PortfolioID, 'InvestmentPortfolios', 'INSERT', 'ALLOWED');
  END IF;
END//

-- INVESTMENTPORTFOLIOS: BEFORE UPDATE
CREATE TRIGGER trg_portfolio_before_u
BEFORE UPDATE ON InvestmentPortfolios
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.PortfolioID, 'InvestmentPortfolios', 'UPDATE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.PortfolioID, 'InvestmentPortfolios', 'UPDATE', 'ALLOWED');
  END IF;
END//

-- INVESTMENTPORTFOLIOS: BEFORE DELETE
CREATE TRIGGER trg_portfolio_before_d
BEFORE DELETE ON InvestmentPortfolios
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.PortfolioID, 'InvestmentPortfolios', 'DELETE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.PortfolioID, 'InvestmentPortfolios', 'DELETE', 'ALLOWED');
  END IF;
END//

-- USERINVESTMENTS: BEFORE INSERT
CREATE TRIGGER trg_inv_before_i
BEFORE INSERT ON UserInvestments
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(NEW.UserID, 'UserInvestments', 'INSERT', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(NEW.UserID, 'UserInvestments', 'INSERT', 'ALLOWED');
  END IF;
END//

-- USERINVESTMENTS: BEFORE UPDATE
CREATE TRIGGER trg_inv_before_u
BEFORE UPDATE ON UserInvestments
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'UserInvestments', 'UPDATE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'UserInvestments', 'UPDATE', 'ALLOWED');
  END IF;
END//

-- USERINVESTMENTS: BEFORE DELETE
CREATE TRIGGER trg_inv_before_d
BEFORE DELETE ON UserInvestments
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'UserInvestments', 'DELETE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'UserInvestments', 'DELETE', 'ALLOWED');
  END IF;
END//

-- TRANSACTIONS: BEFORE INSERT
CREATE TRIGGER trg_tx_before_i
BEFORE INSERT ON Transactions
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(NEW.UserID, 'Transactions', 'INSERT', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(NEW.UserID, 'Transactions', 'INSERT', 'ALLOWED');
  END IF;
END//

-- TRANSACTIONS: BEFORE UPDATE
CREATE TRIGGER trg_tx_before_u
BEFORE UPDATE ON Transactions
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'Transactions', 'UPDATE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'Transactions', 'UPDATE', 'ALLOWED');
  END IF;
END//

-- TRANSACTIONS: BEFORE DELETE
CREATE TRIGGER trg_tx_before_d
BEFORE DELETE ON Transactions
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'Transactions', 'DELETE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'Transactions', 'DELETE', 'ALLOWED');
  END IF;
END//

-- FINANCIALADVISORY: BEFORE INSERT
CREATE TRIGGER trg_advice_before_i
BEFORE INSERT ON FinancialAdvisory
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(NEW.UserID, 'FinancialAdvisory', 'INSERT', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(NEW.UserID, 'FinancialAdvisory', 'INSERT', 'ALLOWED');
  END IF;
END//

-- FINANCIALADVISORY: BEFORE UPDATE
CREATE TRIGGER trg_advice_before_u
BEFORE UPDATE ON FinancialAdvisory
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'FinancialAdvisory', 'UPDATE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'FinancialAdvisory', 'UPDATE', 'ALLOWED');
  END IF;
END//

-- FINANCIALADVISORY: BEFORE DELETE
CREATE TRIGGER trg_advice_before_d
BEFORE DELETE ON FinancialAdvisory
FOR EACH ROW
BEGIN
  DECLARE dow INT; SET dow = DAYOFWEEK(CURDATE());
  IF (dow BETWEEN 2 AND 6)
     OR EXISTS(SELECT 1 FROM Holidays WHERE holiday_date = CURDATE())
  THEN
    CALL sp_insert_audit(OLD.UserID, 'FinancialAdvisory', 'DELETE', 'DENIED');
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DML blocked on weekdays/holidays';
  ELSE
    CALL sp_insert_audit(OLD.UserID, 'FinancialAdvisory', 'DELETE', 'ALLOWED');
  END IF;
END//

DELIMITER ;