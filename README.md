# HerWealth Capstone Project

## Introduction
**Group Members & IDs**  
- Mitchelle Anduru (24752)  
- [Add any other members here]

**Problem Statement**  
HerWealth digitizes and automates savings, micro-investments, transactions, and financial advisory services to empower women in informal sectors. The system enforces strict data-integrity, security and compliance rules via advanced database programming and auditing.

---

## Repository Structure

/
├─ README.md ← This file
├─ phase2/ ← BPMN diagrams & scope docs
├─ phase3/ ← ERD & logical model
├─ phase4/ ← DB creation scripts & screenshots
├─ phase5/ ← Table scripts & data insertion
├─ phase6/ ← Procedures, functions, triggers
├─ phase7/ ← Advanced triggers & auditing
└─ screenshots/ ← Key SQL screenshots
├─ holidays.png
├─ auditlog_allowed.png
├─ auditlog_denied.png
└─ denied_insert_error.png


---

## 2. Screenshots

Place only the most relevant images in `screenshots/`:

- **holidays.png**  
  *Shows the `Holidays` table with upcoming-month dates.*

- **auditlog_allowed.png**  
  *A snippet of `AuditLog` with an `ALLOWED` entry.*

- **denied_insert_error.png**  
  *Workbench error dialog “DML blocked on weekdays/holidays.”*

- **auditlog_denied.png**  
  *`AuditLog` entry with `Status = DENIED` after blocked INSERT.*

---

## 3. Key SQL Queries & Files

| Phase | File                              | Description                                |
|-------|-----------------------------------|--------------------------------------------|
| 2     | `phase2/BPMN_HerWealth.bpmn`      | BPMN diagram XML                           |
| 3     | `phase3/HerWealth_ERD.png`        | Entity-Relationship Diagram                |
| 4     | `phase4/db_creation.sql`          | DB create, user grants                     |
| 5     | `phase5/table_creation.sql`       | Table DDL + data insertion                 |
| 6     | `phase6/interaction.sql`          | Procedures, functions, DML/DDL demos       |
| 7     | `phase7/auditing_and_triggers.sql`| Holiday triggers + audit logging           |

```sql
-- Example: Demonstrating logical relationships (Phase 5)
SELECT u.Name, s.GoalName, t.Type, p.Name AS Portfolio
FROM Users u
LEFT JOIN SavingsAccounts s ON u.UserID = s.UserID
LEFT JOIN Transactions t   ON u.UserID = t.UserID
LEFT JOIN UserInvestments ui ON u.UserID = ui.UserID
LEFT JOIN InvestmentPortfolios p ON ui.PortfolioID = p.PortfolioID
WHERE u.UserID = 1;


4. How to Run

    Clone the repo

    In MySQL Workbench:

        Execute the sql files

    Review screenshots in /screenshots to verify your environment.
