select * from consumer_complaints;
select max(product), max(sub_product), max(issue) from consumer_complaints;
select   distinct  product from consumer_complaints;
describe consumer_complaints;
select count(product) as Total_Count_Product,  product , company from consumer_complaints 
group by company order by count(product) desc ;
select count(sub_product) as Total_Count_Product,  sub_product , company from consumer_complaints 
group by company order by count(sub_product) desc ; 
select count(complaint_id) as Total_Count_Product , company from consumer_complaints 
group by company order by count(complaint_id) desc;
select count(complaint_id) as State_Count_Product , state, product from consumer_complaints 
group by company order by count(complaint_id) desc;
select count(complaint_id) as total_complaints , product, timely_response, sub_product 
from consumer_complaints group by product order by  total_complaints desc;
select count(complaint_id) as total_complaints , product, timely_response, company
from consumer_complaints where timely_response = 'No' group by product order by  total_complaints desc;
select count(complaint_id) as total_complaints , product, timely_response, sub_product, state 
from consumer_complaints group by product order by  total_complaints desc;
select count(complaint_id) as total_complaints ,  timely_response, sub_product, state 
from consumer_complaints group by product order by  total_complaints desc;
select count(complaint_id) , submitted_via, product  from consumer_complaints 
group by submitted_via order by  submitted_via desc;
select count(complaint_id) as total_complaints_in_state , 
state as state from consumer_complaints group by company order by count(complaint_id) desc ;
select count(complaint_id) as total_complaints , company_response_to_consumer, sub_product 
state from consumer_complaints group by state;
select count(complaint_id) as total_complaints , company_response_to_consumer, product 
from consumer_complaints where company_response_to_consumer in 
('Closed with monetary relief', 'Closed with non-monetary relief', 'Closed with explanation' ) group by state limit 50;
select   distinct company_public_response  from consumer_complaints;

