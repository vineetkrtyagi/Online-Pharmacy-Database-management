use Online_pharmacy;

-- find drug name whose company name is PATANJALI

select d_name
from Drugs
where d_code in(
select d_code
from manufacture, Company
where manufacture.com_id= Company.com_id  and company.com_name= 'PATANJALI'
)