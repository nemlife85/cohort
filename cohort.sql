3월 21일 


drop temporary table if exists first_rental;
create temporary table first_rental
select
	r.customer_id,
	min(r.rental_date) first_time
from
 	rental r
group by 1
;

select *
from
 first_rental
;


drop temporary table if exists cohort_size;
create temporary table cohort_size

select
 left(first_time, 7), 
 count(*) num
from 
	first_rental
group by 1
;