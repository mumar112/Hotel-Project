


with hotels as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$']
union
select 
arrival_date_year,
hotel ,
round(sum(stays_in_week_nights, stay_in_weekend_nights)*adr),2) as revenue
from hotels