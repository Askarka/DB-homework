with info_for_courier_cte as(
select address,
(case
when status = True
then 'go'
else 'skip'
end) courier_action
from "order")
selest address, courier_action
from info_for_courier_cte;

with scheme_addition_cte as(
update profile set email = 'mailto:' || email
returning *)
select * from scheme_addition_cte;