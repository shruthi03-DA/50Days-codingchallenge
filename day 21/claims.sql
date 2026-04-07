create database claims
use claims
CREATE TABLE claims (claim_id INT, policy_holder VARCHAR(50), policy_type VARCHAR(50),
claim_amount INT, claim_date DATE, status VARCHAR(20));
INSERT INTO claims VALUES
(1, 'Ravi', 'Health', 50000, '2024-01-10', 'Approved'),
(2, 'Anita', 'Vehicle', 20000, '2024-01-12', 'Rejected'),
(3, 'Ravi', 'Health', 30000, '2024-01-20', 'Approved'),
(4, 'Suresh', 'Life', 100000, '2024-01-25', 'Approved'),
(5, 'Anita', 'Vehicle', 15000, '2024-02-01', 'Approved'),
(6, 'Kiran', 'Health', 40000, '2024-02-10', 'Rejected'),
(7, 'Ravi', 'Health', 70000, '2024-02-15', 'Approved'),
(8, 'Suresh', 'Life', 50000, '2024-02-20', 'Rejected');
select * from claims;

Task 1: Find claims where claim amount is greater than average claim amount
SELECT * FROM claims
WHERE claim_amount > (SELECT AVG(claim_amount) FROM claims);

Task 2: Policy holders with at least one approved claims
SELECT DISTINCT policy_holder FROM claims
WHERE status = 'Approved';

Task 3: Find claims where claim amount is greater than that policy holder’s average claim
SELECT c1.* FROM claims c1
JOIN (
  SELECT policy_holder, AVG(claim_amount) AS avg_claim
  FROM claims
  GROUP BY policy_holder
) c2 ON c1.policy_holder = c2.policy_holder
WHERE c1.claim_amount > c2.avg_claim;

Task 4: Claims with overall average claim amount
SELECT *, (SELECT AVG(claim_amount) FROM claims) AS avg_claim_amount FROM claims;
