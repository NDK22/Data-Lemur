https://datalemur.com/questions/odd-even-measurements

Solution
To solve this question, we follow these steps:

Step 1: Ordering and Partitioning

We first order the measurements based on their measurement time and partition them by day using the ROW_NUMBER window function. This helps us establish the order of measurements within each day:

SELECT 
  CAST(measurement_time AS DATE) AS measurement_day, 
  measurement_value, 
  ROW_NUMBER() OVER (
    PARTITION BY CAST(measurement_time AS DATE) 
    ORDER BY measurement_time) AS measurement_num 
  FROM measurements;
It is important to use measurement_time in the ORDER BY clause of the window function to ensure that the measurements are ordered within each day based on the actual measurement's time. This will ensure that the row numbering (measurement_num) is accurate and reflects the chronological order of the measurements within each day.

Showing the first 5 rows of output:

measurement_day	measurement_value	measurement_num
07/10/2022 00:00:00	1109.51	1
07/10/2022 00:00:00	1662.74	2
07/10/2022 00:00:00	1246.24	3
07/11/2022 00:00:00	1124.50	1
07/11/2022 00:00:00	1234.14	2
Step 2 & 3: Filtering and Summing

To filter for odd and even numbers, we can use the following two methods:

Modulus operator (%): Use measurement_num % 2 != 0 to check if the result is 1, indicating odd numbers or measurement_num % 2 = 0 with a result of 1 for even numbers.
MOD(): Use MOD(measurement_num, 2) != 0 to find odd results and MOD(measurement_num, 2) = 0 for even results.
Note: The modulus operator % returns the remainder of a division. When we divide an even number by 2, the remainder is always 0, whereas dividing an odd number will result in a non-zero value.

Finally, we can apply the modulus concept to the aggregate function SUM() along with the FILTER clause, summing over the corresponding measurement_value.

WITH ranked_measurements AS (
  SELECT 
    CAST(measurement_time AS DATE) AS measurement_day, 
    measurement_value, 
    ROW_NUMBER() OVER (
      PARTITION BY CAST(measurement_time AS DATE) 
      ORDER BY measurement_time) AS measurement_num 
  FROM measurements
) 

SELECT 
  measurement_day, 
  SUM(measurement_value) FILTER (WHERE measurement_num % 2 != 0) AS odd_sum, 
  SUM(measurement_value) FILTER (WHERE measurement_num % 2 = 0) AS even_sum 
FROM ranked_measurements
GROUP BY measurement_day;
Results:

measurement_day	odd_sum	even_sum
07/10/2022 00:00:00	2355.75	1662.74
07/11/2022 00:00:00	2377.12	2480.70
07/12/2022 00:00:00	2903.40	1244.30
