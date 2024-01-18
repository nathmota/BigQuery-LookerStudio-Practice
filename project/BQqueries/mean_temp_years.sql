select 
  avg(temp) as mean_temp, 
  min(temp) as min_temp, 
  max(temp) as max_temp, year
from `bigquery-public-data.noaa_gsod.gsod*`
group by year
order by year asc
