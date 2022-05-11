SELECT
  ROW_NUMBER() OVER() AS date_dim_id,
  d AS full_date,
  EXTRACT(YEAR FROM d) AS year,
  EXTRACT(DAY FROM d) AS day,
  EXTRACT(MONTH FROM d) AS month,
  FORMAT_DATE('%B', d) as month_name,
  FORMAT_DATE('%A', d) AS day_name,
FROM
  UNNEST(GENERATE_DATE_ARRAY('2010-01-01', '2035-01-01', INTERVAL 1 DAY)) AS d 