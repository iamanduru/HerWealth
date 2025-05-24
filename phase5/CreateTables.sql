USE grpe_24752_Mitchelle_HerWealth_db;
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    IsGroupMember BOOLEAN DEFAULT FALSE,
    KYCStatus BOOLEAN DEFAULT FALSE
);

CREATE TABLE SavingsAccounts (
    AccountID INT PRIMARY KEY,
    UserID INT NOT NULL,
    AccountType VARCHAR(50) CHECK (AccountType IN ('Individual', 'Group')) NOT NULL,
    GoalName VARCHAR(100),
    GoalAmount DECIMAL(10, 2),
    CurrentBalance DECIMAL(10, 2) DEFAULT 0.00,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE InvestmentPortfolios (
    PortfolioID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    RiskLevel VARCHAR(20) CHECK (RiskLevel IN ('Low', 'Medium', 'High')) NOT NULL,
    ReturnRate DECIMAL(5, 2) NOT NULL
);

CREATE TABLE UserInvestments (
    InvestmentID INT PRIMARY KEY,
    UserID INT NOT NULL,
    PortfolioID INT NOT NULL,
    AmountInvested DECIMAL(10, 2) NOT NULL,
    InvestmentDate DATE NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (PortfolioID) REFERENCES InvestmentPortfolios(PortfolioID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    UserID INT NOT NULL,
    SavingsAccountID INT NOT NULL,
    Type VARCHAR(20) CHECK (Type IN ('Deposit', 'Withdrawal', 'Transfer')) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    TransactionDate DATE NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SavingsAccountID) REFERENCES SavingsAccounts(AccountID)
);

CREATE TABLE FinancialAdvisory (
    AdviceID INT PRIMARY KEY,
    UserID INT NOT NULL,
    AdviceText TEXT NOT NULL,
    AdviceType VARCHAR(50) CHECK (AdviceType IN ('AI-Generated', 'Advisor Review')) NOT NULL,
    CreatedDate DATE NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);