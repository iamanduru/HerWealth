INSERT INTO Users (UserID, Name, Email, Phone, IsGroupMember, KYCStatus) VALUES
(1, 'Alice Johnson', 'alice@example.com', '0700123456', FALSE, TRUE),
(2, 'Grace Njeri', 'grace@example.com', '0700654321', TRUE, TRUE),
(3, 'Esther Wanjiku', 'estherw@example.com', '0781122334', FALSE, TRUE),
(4, 'Janet Mutesi', 'janetm@example.com', '0723456789', TRUE, TRUE),
(5, 'Amina Yusuf', 'amina@example.com', '0798765432', FALSE, TRUE),
(6, 'Beatrice Kamau', 'beatricek@example.com', '0712345678', FALSE, TRUE),
(7, 'Claire Uwase', 'claireu@example.com', '0756123456', TRUE, TRUE),
(8, 'Diane Mugisha', 'diane@example.com', '0777888999', FALSE, TRUE),
(9, 'Faith Akello', 'faith@example.com', '0765432109', FALSE, TRUE),
(10, 'Chantal Irakoze', 'chantali@example.com', '0788990011', TRUE, TRUE);

INSERT INTO SavingsAccounts (AccountID, UserID, AccountType, GoalName, GoalAmount, CurrentBalance, StartDate, EndDate) VALUES
(101, 1, 'Individual', 'Start-up Capital', 5000.00, 1500.00, '2025-01-01', '2025-12-31'),
(102, 2, 'Group', 'Chama Fund', 20000.00, 7800.00, '2025-01-15', '2025-11-30'),
(103, 3, 'Individual', 'Tuition Savings', 3000.00, 2500.00, '2025-03-01', '2025-09-01'),
(104, 4, 'Group', 'Village Lending Pool', 10000.00, 4000.00, '2025-02-01', '2025-10-31'),
(105, 5, 'Individual', 'Medical Fund', 2500.00, 1000.00, '2025-04-10', '2025-12-15'),
(106, 6, 'Individual', 'Salon Business', 3500.00, 1500.00, '2025-03-05', '2025-11-05'),
(107, 7, 'Group', 'Community Savings', 15000.00, 6200.00, '2025-01-20', '2025-11-20'),
(108, 8, 'Individual', 'Online Shop Setup', 7000.00, 3000.00, '2025-02-14', '2025-12-01');

INSERT INTO InvestmentPortfolios (PortfolioID, Name, Category, RiskLevel, ReturnRate) VALUES
(201, 'Low-Risk Bonds', 'Finance', 'Low', 5.00),
(202, 'Community Real Estate', 'Real Estate', 'Medium', 8.50),
(203, 'Women’s Micro-Fund', 'Entrepreneurship', 'Medium', 6.75);

INSERT INTO UserInvestments (InvestmentID, UserID, PortfolioID, AmountInvested, InvestmentDate) VALUES
(301, 1, 201, 1000.00, '2025-03-15'),
(302, 2, 202, 2000.00, '2025-04-10'),
(303, 3, 203, 1500.00, '2025-04-15'),
(304, 4, 202, 3000.00, '2025-03-20'),
(305, 5, 201, 800.00, '2025-02-28');

INSERT INTO Transactions (TransactionID, UserID, SavingsAccountID, Type, Amount, TransactionDate) VALUES
(401, 1, 101, 'Deposit', 1500.00, '2025-01-05'),
(402, 2, 102, 'Deposit', 2000.00, '2025-01-20'),
(403, 3, 103, 'Withdrawal', 500.00, '2025-04-01'),
(404, 4, 104, 'Transfer', 1000.00, '2025-02-15'),
(405, 5, 105, 'Deposit', 700.00, '2025-04-12'),
(406, 6, 106, 'Deposit', 1500.00, '2025-03-06'),
(407, 7, 107, 'Withdrawal', 600.00, '2025-05-10'),
(408, 8, 108, 'Deposit', 1200.00, '2025-02-20'),
(409, 9, 101, 'Deposit', 900.00, '2025-02-22'),
(410, 10, 102, 'Transfer', 500.00, '2025-03-01');

INSERT INTO FinancialAdvisory (AdviceID, UserID, AdviceText, AdviceType, CreatedDate) VALUES
(501, 1, 'You’re close to your goal. Consider automating savings.', 'AI-Generated', '2025-03-20'),
(502, 2, 'Group savings have grown. Reinvest part of it in real estate.', 'Advisor Review', '2025-04-15'),
(503, 3, 'You may fall short of your tuition goal. Increase your monthly deposits.', 'AI-Generated', '2025-04-10'),
(504, 4, 'Consider risk diversification. You’ve invested in only one portfolio.', 'Advisor Review', '2025-03-25');