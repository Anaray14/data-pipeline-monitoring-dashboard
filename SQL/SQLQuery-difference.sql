--Create new table
Select Distinct * Into transactions_processed 
From transactions_raw
where amount is not null;

--Detect Duplicates
Select transaction_ID, count (*)
From transactions_raw
group by transaction_ID
having count (*) >1 ;

--Detect missing data
select * from transactions_processed
where amount is null;

Select sum(amount) as raw_total
from transactions_raw;

Select sum(amount) as raw_processed
from transactions_processed;

--Reconciliation check: Data difference
 Select 
  (select sum(amount) from transactions_raw) as raw_total,
  (select sum(amount) from transactions_processed) as processed_total,
  (Select sum(amount) from transactions_raw)
  - (Select sum(amount) from transactions_processed) as difference;

  