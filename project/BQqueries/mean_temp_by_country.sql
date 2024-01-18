SELECT 
    AVG(temp) AS mean_temp,
    English_short_name_lower_case,
    ANY_VALUE(Alpha_2_code) AS location 
  FROM `bigquery-public-data.noaa_gsod.gsod2022` AS gsod
  JOIN `bigquery-public-data.noaa_gsod.stations` AS stations ON stations.usaf = gsod.stn
  JOIN `biquery-looker-course-demo.bq_looker_course_demo.iso_country_codes_reference` AS iso ON stations.country=iso.Alpha_2_code
  WHERE English_short_name_lower_case IS NOT NULL
  GROUP BY English_short_name_lower_case
  ORDER BY English_short_name_lower_case
