--Job Scenario 1
-- Compare total from raw versus processed tables
Select
 (select sum(amount) from transactions_raw) as raw_total,
 (select sum(amount) from transactions_processed) as processed_total,
 (select sum(amount) from transactions_raw)
 - ( select sum (amount)from transactions_processed) as Difference;

--From amount mismatches
select * from
transactions_raw 
where transaction_ID Not in 
( select transaction_ID from transactions_processed);

select r.*
from transactions_raw r
left join transactions_processed p
on r.transaction_ID = p.transaction_ID
where p.transaction_ID is null;

--Amount Mismatches
select transaction_ID, count (*)
as count, sum (amount) as total
from transactions_raw
group by transaction_ID
having count (*) > 1;

select *
from transactions_raw
where transaction_ID = 'T005';

--Job Scenario 2 
--Duplicate entries 
SELECT transaction_id, COUNT(*) AS count
FROM transactions_raw
GROUP BY transaction_id
HAVING COUNT(*) > 1;

select *
from transactions_raw
where transaction_ID = 'T005';

--Job Scenario 3 
--Missing Records Check
SELECT r.*
FROM transactions_raw r
LEFT JOIN transactions_processed p
ON r.transaction_id = p.transaction_id
WHERE p.transaction_id IS NULL;
























