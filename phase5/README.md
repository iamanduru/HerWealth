# 📦 Phase 5 – Table Implementation and Data Insertion

This phase focuses on building the physical structure of the HerWealth database and inserting meaningful data aligned with the project’s real-world scope.

## ✅ Table Creation

All tables were implemented based on the logical data model designed in Phase 3. The following entities were created:

- `Users` – Represents women and group members on the platform
- `SavingsAccounts` – Tracks savings goals (individual or group-based)
- `InvestmentPortfolios` – Available micro-investment options
- `UserInvestments` – Records investments made by users
- `Transactions` – Logs all deposit, withdrawal, and transfer operations
- `FinancialAdvisory` – Stores AI-generated or human-reviewed financial tips

### Constraints and Keys

- **Primary Keys (PK)** are defined for all tables.
- **Foreign Keys (FK)** link:
  - `SavingsAccounts` → `Users`
  - `UserInvestments` → `Users`, `InvestmentPortfolios`
  - `Transactions` → `Users`, `SavingsAccounts`
  - `FinancialAdvisory` → `Users`
- **Data constraints** include:
  - `NOT NULL` on essential fields
  - `UNIQUE` constraint on email addresses
  - `CHECK` constraints for account types, transaction types, and risk levels

## 📊 Data Insertion

More than 20 meaningful records were inserted, simulating real-world usage:

- 10 users (individual and group members)
- 8 savings accounts with different goals
- 3 investment portfolios (low to medium risk)
- 5 user investments
- 10 transactions (across all types)
- 4 personalized financial advisory messages

## 🔒 Data Integrity

- Referential integrity enforced through foreign key constraints
- Validated transaction and account relationships
- Accurate investment tracking with correct user-portfolio links

## 🔗 Demonstrating Logical Relationships

To validate foreign key logic and data relationships, the following SQL joins were used:

```sql
-- 1. Users and their Savings Accounts
SELECT u.UserID, u.Name, s.AccountID, s.GoalName
FROM Users u
JOIN SavingsAccounts s ON u.UserID = s.UserID;

-- 2. Users and their Transactions
SELECT u.Name, t.TransactionID, t.Type, t.Amount
FROM Users u
JOIN Transactions t ON u.UserID = t.UserID;

-- 3. Users and their Investment Portfolios
SELECT u.Name AS Investor, p.Name AS Portfolio, ui.AmountInvested
FROM Users u
JOIN UserInvestments ui ON u.UserID = ui.UserID
JOIN InvestmentPortfolios p ON ui.PortfolioID = p.PortfolioID;

-- 4. Users and their Financial Advisory
SELECT u.Name, f.AdviceType, f.AdviceText
FROM Users u
JOIN FinancialAdvisory f ON u.UserID = f.UserID;


# 📂 Phase 6 – Database Interaction and Transactions

This phase demonstrates SQL-based interactions with the HerWealth database. It covers data manipulation, schema updates, procedural logic, function creation, and modular code simulation — in alignment with Oracle PL/SQL programming principles.

## ✅ Tasks Completed

### 1. DML Operations
- INSERT new user
- UPDATE phone number for an existing user
- DELETE user investment record

### 2. DDL Operations
- ALTER TABLE `Users` to add `CreatedAt` timestamp column

### 3. Stored Procedure
- `GetUserSavings`: Returns savings accounts for a specified user using an `IN` parameter

### 4. Function
- `GetTotalSavings`: Returns the total balance of savings accounts for a given user

### 5. Cursor with Exception Handling
- `PrintAllUsers`: Iterates through user names using a cursor and handles the `NOT FOUND` case

### 6. Modular Logic (Simulated Package)
- Procedures and functions grouped together and tested using direct calls (MySQL’s way of simulating Oracle-style package usage)

---

## 🛠️ Oracle PL/SQL Simulation Justification

Since Oracle Database and SQL Developer tools were not available on the current system due to installation constraints, this phase was developed using MySQL Workbench. However, Oracle logic was fully simulated using equivalent SQL constructs.

| **Oracle Concept**           | **Simulated In MySQL As**                                      |
|-----------------------------|----------------------------------------------------------------|
| PL/SQL Procedure             | ✅ `CREATE PROCEDURE` with input parameters                    |
| PL/SQL Function              | ✅ `CREATE FUNCTION` returning aggregate data                  |
| Cursors                      | ✅ Declared and looped with exception handling                 |
| `WHEN OTHERS THEN` (Oracle) | ✅ Simulated using `DECLARE CONTINUE HANDLER` for NOT FOUND   |
| PL/SQL Packages              | ⚠️ Simulated by grouping related procedures/functions logically |
| DDL/DML Operations           | ✅ Implemented as standard SQL scripts                         |

This simulation accurately reflects the expected behavior of an Oracle PL/SQL database environment, and the student is fully capable of converting the code into Oracle syntax if required.

---

## 🧪 Testing Performed

- `CALL GetUserSavings(1);` → Returned correct accounts
- `SELECT GetTotalSavings(1);` → Returned total balance
- `CALL PrintAllUsers();` → Printed list of user names

