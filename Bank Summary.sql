-- Your task is to write a query that produces a bank account summary according to the total balance after considering the 
-- transaction history for each account.

CREATE DATABASE Bank ; 
USE Bank;

CREATE TABLE BankTransactions (
	AccountNumber INT , 
    AccountHolderName VARCHAR(255) , 
    TransactionDate DATE ,
    TransactionType VARCHAR(255) , 
    TransactionAmount DECIMAL(10,2)
);

INSERT INTO BankTransactions (AccountNumber, AccountHolderName, TransactionDate, TransactionType, TransactionAmount)
VALUES
  (1001, 'Ravi Sharma', '2023-07-01', 'Deposit', 5000),
  (1001, 'Ravi Sharma', '2023-07-05', 'Withdrawal', 1000),
  (1001, 'Ravi Sharma', '2023-07-10', 'Deposit', 2000),
  (1002, 'Priya Gupta', '2023-07-02', 'Deposit', 3000),
  (1002, 'Priya Gupta', '2023-07-08', 'Withdrawal', 500),
  (1003, 'Vikram Patel', '2023-07-04', 'Deposit', 10000),
  (1003, 'Vikram Patel', '2023-07-09', 'Withdrawal', 2000);
  
  SELECT 
	AccountNumber , 
    AccountHolderName , 
    SUM(CASE WHEN TransactionType = 'Deposit' THEN TransactionAmount ELSE - TransactionAmount END) AS TotalBalance
    
FROM
	BankTransactions 
GROUP BY
	AccountNumber , AccountHolderName 
ORDER  BY 
	AccountNumber ;
    
