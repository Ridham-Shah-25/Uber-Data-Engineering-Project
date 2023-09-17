--Find the Average Tip Amount by Payment Type
select b.payment_type_name,AVG(a.tip_amount)
from 
uber-data-analytics-396105.ridham_uber_dataset.fact_table a
JOIN uber-data-analytics-396105.ridham_uber_dataset.payment_type_dim b
on a.payment_type_id=b.payment_type_id
GROUP BY b.payment_type_name;

--Find the total number of trips by passenger count
select passenger_count,COUNT(passenger_count)
from uber-data-analytics-396105.ridham_uber_dataset.passenger_count_dim
GROUP BY passenger_count;

--Find Average Fare Amount by Hour of day and order it by average_fare
select b.pick_hour,AVG(a.fare_amount) as average_fare
from 
uber-data-analytics-396105.ridham_uber_dataset.fact_table a
JOIN uber-data-analytics-396105.ridham_uber_dataset.datetime_dim b
on a.datetime_id=b.datetime_id
GROUP BY b.pick_hour
ORDER BY average_fare DESC;
