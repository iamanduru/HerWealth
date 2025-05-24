SELECT u.UserID, u.Name, s.AccountID, s.GoalName, s.CurrentBalance
FROM Users u
JOIN SavingsAccounts s ON u.UserID = s.UserID;

SELECT u.Name, t.TransactionID, t.Type, t.Amount, t.TransactionDate
FROM Users u
JOIN Transactions t ON u.UserID = t.UserID;

SELECT u.Name AS Investor, p.Name AS Portfolio, ui.AmountInvested, ui.InvestmentDate
FROM Users u
JOIN UserInvestments ui ON u.UserID = ui.UserID
JOIN InvestmentPortfolios p ON ui.PortfolioID = p.PortfolioID;

SELECT u.Name, f.AdviceType, f.AdviceText
FROM Users u
JOIN FinancialAdvisory f ON u.UserID = f.UserID;

