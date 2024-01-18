select 
  avg(gsod.temp) as mean_temp, 
  gsod.year,
  substring(year, 1, 3) || '0s' as decade,
  stations.country
from `bigquery-public-data.noaa_gsod.gsod*` as gsod
join `bigquery-public-data.noaa_gsod.stations` as stations
on gsod.stn = stations.usaf
where country in ('US', 'IN', 'UK')
group by year, country
order by year asc
