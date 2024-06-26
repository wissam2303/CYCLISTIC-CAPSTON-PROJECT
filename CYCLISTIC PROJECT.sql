-- --PREPARATION PHASE
-- --1) combining the data and creating new columns, then a new table within a new database called : "bikes"
-- --create a table with combined data (rides)
-- --I created a table and exported my query to my database.
--
-- --combining tables
SELECT DISTINCT ride_id,
                rideable_type,
                started_at,
                ended_at,
                start_station_name ,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202301_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202302_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202303_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202304_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202305_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202306_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202307_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202308_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202309_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202310_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202311_divvy_tripdata"
UNION ALL
SELECT DISTINCT ride_id ,
                rideable_type,
                started_at,
                ended_at,
                start_station_name,
                end_station_name,
                start_lat,
                end_lat,
                start_lng,
                end_lng,
                member_casual
FROM            "Cyclistic".rides."202312_divvy_tripdata" )SELECT ride_id,
       Count( ride_id)
FROM   "Cyclistic".bikes.rides r ;

-- --creating new columns then anew table called "ride"
-- --I appended the table to include the following:
-- --Day of the week AS day_of_week
-- --Month AS month
-- --Day AS day
-- --Year AS year
-- --ride length as ride_length
-- ----formatted timestamp AS timeWITH cte_brides AS
(
                SELECT DISTINCT ride_id,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name ,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202301_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202302_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202303_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202304_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202305_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202306_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202307_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202308_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202309_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202310_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202311_divvy_tripdata"
                UNION ALL
                SELECT DISTINCT ride_id ,
                                rideable_type,
                                started_at,
                                ended_at,
                                start_station_name,
                                end_station_name,
                                start_lat,
                                end_lat,
                                start_lng,
                                end_lng,
                                member_casual
                FROM            "Cyclistic".rides."202312_divvy_tripdata")
SELECT ride_id,
       rideable_type,
       start_station_name,
       end_station_name,
       start_lat,
       start_lng,
       end_lat,
       member_casual AS member_type,
       started_at,
       ended_at,
       (ended_at- started_at) AS ride_length,
       CASE
              WHEN Extract (day FROM started_at) = 1 THEN 'SUN'
              WHEN Extract (day FROM started_at) = 2 THEN 'MON'
              WHEN Extract ( day FROM started_at) = 3 THEN 'TUE'
              WHEN Extract ( day FROM started_at) = 4 THEN 'WED'
              WHEN Extract ( day FROM started_at) = 5 THEN 'THU'
              WHEN Extract ( day FROM started_at) = 6 THEN 'FRI'
              ELSE 'SAT'
       END AS day_of_week,
       CASE
              WHEN Extract (month FROM started_at) = 1 THEN 'JAN'
              WHEN Extract (month FROM started_at) = 2 THEN 'FEB'
              WHEN Extract (month FROM started_at) = 3 THEN 'MAR'
              WHEN Extract (month FROM started_at) = 4 THEN 'APR'
              WHEN Extract (month FROM started_at) = 5 THEN 'MAY'
              WHEN Extract (month FROM started_at) = 6 THEN 'JUN'
              WHEN Extract (month FROM started_at) = 7 THEN 'JUL'
              WHEN Extract (month FROM started_at) = 8 THEN 'AGS'
              WHEN Extract (month FROM started_at) = 9 THEN 'SEP'
              WHEN Extract (month FROM started_at) = 10 THEN 'OCT'
              WHEN Extract (month FROM started_at) = 11 THEN 'NOV'
              ELSE 'DEC'
       END                               AS MONTH,
       Extract('DOW' FROM started_at)    AS DOW,
       Extract (year FROM started_at)    AS YEAR,
       Extract ( minute FROM started_at) AS minute,
       Extract (hour FROM started_at)    AS hour
FROM   cte_brides;

--Analysing phase
--checking for the min and max min 49minutes/ 64 days 06:49:00
SELECT Min (ride_length)
FROM   "Cyclistic".bikes.ride r;

--checking the avg 00:30:41.061351 casual
--00:12:46.18954 member
SELECT   Avg (ride_length)AS avg_ride_len,
         member_type
FROM     "Cyclistic".bikes.ride
GROUP BY member_type ;

-- checking how many stations there are                      (1597 stations)
SELECT Count( DISTINCT end_station_name )
FROM   "Cyclistic".bikes.ride r ;

-- confirms the station count (1351 stations )
SELECT Count( DISTINCT start_station_name)
FROM   "Cyclistic".bikes.ride r ;

--this query checks for the most popular and least popular day for casual riders
SELECT   Count(month) AS COUNT,
         month
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
AND      member_type ='casual'
GROUP BY "month" ;

--1- counting the casual riders (643,125)
SELECT Count(member_type)
FROM   cte_bike_rides
WHERE  member_type= 'member';

-- minimum amount of time spent on a bike divided per group
--casual 23 mn and member 31 min
SELECT   Min (ride_length) AS min_trip_time,
         member_type
FROM     cte_bike_rides
GROUP BY member_type;

-- maximum amount of time spent on a bike divided per group
--casual 64 days 6:49:01 and member 1 days 1h00
SELECT   Max (ride_length) AS min_trip_time,
         member_type
FROM     "Cyclistic".bikes.ride r
GROUP BY member_type;

--calculate the average of casual riders 00:30:41.061351
--AND members riders 00:12:46.18954
SELECT   Avg (ride_length )AS avg_trip_time,
         member_type
FROM     "Cyclistic".bikes.ride r
GROUP BY member_type;

--  trip time (day)
-- this query checks what days are the most popular ones within the week (saturday is the most popular day)
SELECT   Count(day_of_week) AS COUNT,
         day_of_week
FROM     "Cyclistic".bikes.ride r
GROUP BY day_of_week ;

-- this query checks for the most popular and least popular day for casual riders (saturday is the most popular day and thursday is the least one)
SELECT   Count(day_of_week) AS COUNT,
         day_of_week
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY day_of_week ;

-- this query checks for the most popular and least popular day for members riders saturday is the most popular day and sunday the least one
SELECT   Count(day_of_week) AS COUNT,
         day_of_week
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY day_of_week;

-- trip time (month)
this query selects the number of frequency of rides per month for members
SELECT   Count(month) AS COUNT,
         month
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY "month" ;

-- this query selects the number of frequency of rides per month for casual riders
SELECT   Count(month) AS COUNT,
         month
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY month;SELECT   Count(ride_length),
         "month"
FROM     "Cyclistic".bikes.ride r
GROUP BY "month" ;

-- Total Trips: Members vs Casual
-- Looking at overall, annual member and casual rider totals
--3489838 members/ 3489838 casual/ 5479259 total
SELECT totaltrips,
       totalmembertrips,
       totalcasualtrips,
       Round((totalmembertrips / totaltrips),2)*100 AS memberpercentage,
       Round((totalcasualtrips / totaltrips),2)*100 AS casualpercentage
FROM   (
              SELECT Count(ride_id) AS totaltrips,
                     Count(
                     CASE
                            WHEN member_type = 'member'THEN 1
                     END) AS totalmembertrips,
                     Count(
                     CASE
                            WHEN member_type = 'casual' THEN 1
                     END) AS totalcasualtrips
              FROM   "Cyclistic".bikes.ride));
-- Looking at which days have the highest number of rides
SELECT   member_type,
         day_of_week AS mode_day_of_week
FROM     (
                         SELECT DISTINCT member_type,
                                         day_of_week,
                                         Row_number() OVER (partition BY member_type ORDER BY Count(day_of_week)DESC) rn
                         FROM            "Cyclistic".bikes.ride r
                         GROUP BY        member_type,
                                         day_of_week )
WHERE    rn = 1
ORDER BY member_type DESC limit 2;

-- Looking at total number of trips per day
SELECT   day_of_week,
         Count(DISTINCT ride_id) AS totaltrips,
         Sum(
         CASE
                  WHEN member_type = 'member' THEN 1
                  ELSE 0
         END) AS membertrips,
         Sum(
         CASE
                  WHEN member_type = 'casual' THEN 1
                  ELSE 0
         END) AS casualtrips
FROM     "Cyclistic".bikes.ride r
GROUP BY 1
ORDER BY totaltrips DESC limit 7;

-- Start stations: member vs casual
-- Looking at start station counts

SELECT DISTINCT start_station_name,
                Sum(
                CASE
                                WHEN ride_id = ride_id
                                AND             start_station_name = start_station_name THEN 1
                                ELSE 0
                END ) AS total,
                Sum(
                CASE
                                WHEN member_type = 'member'
                                AND             start_station_name = start_station_name THEN 1
                                ELSE 0
                END ) AS member,
                Sum(
                CASE
                                WHEN member_type = 'casual'
                                AND             start_station_name = start_station_name THEN 1
                                ELSE 0
                END ) AS casual
FROM            "Cyclistic".bikes.ride r
GROUP BY        start_station_name
ORDER BY        total DESC;

-- shows the least and most frequented start station name for casual riders
SELECT   Count(*) AS rank,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY start_station_name
ORDER BY rank DESC;

-- shows the least and most frequented start station name for members riders
SELECT   Count(*) AS rank,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY start_station_name
ORDER BY rank DESC;

-- shows least and most frequented end station name for members
SELECT   Count(*) AS rank,
         end_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY end_station_name
ORDER BY rank DESC;

-- shows least and most frequented end station name for casual riders
SELECT   Count(*) AS rank,
         end_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY end_station_name
ORDER BY rank DESC;

-- Checks the most popular routesSELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency DESC limit 2;

-- checks the most popular routes for casual riders
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency DESC limit 2;

-- checks the most popular routes for members
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency DESC limit 2;

-- checks the least popular route for member
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency ASC limit 2;

-- checks the least popular route for casual riders
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM    "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency ASC limit 2;

--Analyse phase 2
--1- counting the casual riders (643,125)

WITH cte_bike_rides AS
(
       SELECT ride_id,
              rideable_type,
              start_station_name,
              end_station_name,
              Round(start_lat,2) AS start_lat_rounded,
              Round(start_lng,2) AS start_lng_rounded,
              Round(end_lat,2)   AS end_lat_rounded,
              Round(end_lng,2)   AS end_lng_rounded,
              member_casual      AS member_type,
              started_at,
              ended_at,
              (ended_at - started_at) AS ride_length,
              CASE
                     WHEN Extract (day FROM started_at) = 1 THEN 'SUN'
                     WHEN Extract (day FROM started_at) = 2 THEN 'MON'
                     WHEN Extract ( day FROM started_at) = 3 THEN 'TUE'
                     WHEN Extract ( day FROM started_at) = 4 THEN 'WED'
                     WHEN Extract ( day FROM started_at) = 5 THEN 'THU'
                     WHEN Extract ( day FROM started_at) = 6 THEN 'FRI'
                     ELSE 'SAT'
              END AS day_of_week,
              CASE
                     WHEN Extract (month FROM started_at) = 1 THEN 'JAN'
                     WHEN Extract (month FROM started_at) = 2 THEN 'FEB'
                     WHEN Extract (month FROM started_at) = 3 THEN 'MAR'
                     WHEN Extract (month FROM started_at) = 4 THEN 'APR'
                     WHEN Extract (month FROM started_at) = 5 THEN 'MAY'
                     WHEN Extract (month FROM started_at) = 6 THEN 'JUN'
                     WHEN Extract (month FROM started_at) = 7 THEN 'JUL'
                     WHEN Extract (month FROM started_at) = 8 THEN 'AGS'
                     WHEN Extract (month FROM started_at) = 9 THEN 'SEP'
                     WHEN Extract (month FROM started_at) = 10 THEN 'OCT'
                     WHEN Extract (month FROM started_at) = 11 THEN 'NOV'
                     ELSE 'DEC'
              END                               AS MONTH,
              Extract('DOW' FROM started_at)    AS DOW,
              Extract (year FROM started_at)    AS YEAR,
              Extract ( minute FROM started_at) AS minute,
              Extract (hour FROM started_at)    AS hour
       FROM   "Cyclistic".rides.rides r)
SELECT Count(member_type)
FROM   cte_bike_rides
WHERE  member_type= 'casual';

--2- counting the number of members with a membership (1,266,457)
WITH cte_bike_rides AS
(
       SELECT ride_id,
              rideable_type,
              start_station_name,
              end_station_name,
              Round(start_lat,2) AS start_lat_rounded,
              Round(start_lng,2) AS start_lng_rounded,
              Round(end_lat,2)   AS end_lat_rounded,
              Round(end_lng,2)   AS end_lng_rounded,
              member_casual      AS member_type,
              started_at,
              ended_at,
              (ended_at - started_at) AS ride_length,
              CASE
                     WHEN Extract (day FROM started_at) = 1 THEN 'SUN'
                     WHEN Extract (day FROM started_at) = 2 THEN 'MON'
                     WHEN Extract ( day FROM started_at) = 3 THEN 'TUE'
                     WHEN Extract ( day FROM started_at) = 4 THEN 'WED'
                     WHEN Extract ( day FROM started_at) = 5 THEN 'THU'
                     WHEN Extract ( day FROM started_at) = 6 THEN 'FRI'
                     ELSE 'SAT'
              END AS day_of_week,
              CASE
                     WHEN Extract (month FROM started_at) = 1 THEN 'JAN'
                     WHEN Extract (month FROM started_at) = 2 THEN 'FEB'
                     WHEN Extract (month FROM started_at) = 3 THEN 'MAR'
                     WHEN Extract (month FROM started_at) = 4 THEN 'APR'
                     WHEN Extract (month FROM started_at) = 5 THEN 'MAY'
                     WHEN Extract (month FROM started_at) = 6 THEN 'JUN'
                     WHEN Extract (month FROM started_at) = 7 THEN 'JUL'
                     WHEN Extract (month FROM started_at) = 8 THEN 'AGS'
                     WHEN Extract (month FROM started_at) = 9 THEN 'SEP'
                     WHEN Extract (month FROM started_at) = 10 THEN 'OCT'
                     WHEN Extract (month FROM started_at) = 11 THEN 'NOV'
                     ELSE 'DEC'
              END                               AS MONTH,
              Extract('DOW' FROM started_at)    AS DOW,
              Extract (year FROM started_at)    AS YEAR,
              Extract ( minute FROM started_at) AS minute,
              Extract (hour FROM started_at)    AS hour
       FROM   "Cyclistic".rides.rides r)
SELECT Count(member_type)
FROM   cte_bike_rides
WHERE  member_type= 'member';

-- minimum amount of time spent on a bike divided per group
--casual 23 mn and member 31 min
WITH cte_bike_rides AS
(
       SELECT ride_id,
              rideable_type,
              start_station_name,
              end_station_name,
              Round(start_lat,2) AS start_lat_rounded,
              Round(start_lng,2) AS start_lng_rounded,
              Round(end_lat,2)   AS end_lat_rounded,
              Round(end_lng,2)   AS end_lng_rounded,
              member_casual      AS member_type,
              started_at,
              ended_at,
              (ended_at - started_at) AS ride_length,
              CASE
                     WHEN Extract (day FROM started_at) = 1 THEN 'SUN'
                     WHEN Extract (day FROM started_at) = 2 THEN 'MON'
                     WHEN Extract ( day FROM started_at) = 3 THEN 'TUE'
                     WHEN Extract ( day FROM started_at) = 4 THEN 'WED'
                     WHEN Extract ( day FROM started_at) = 5 THEN 'THU'
                     WHEN Extract ( day FROM started_at) = 6 THEN 'FRI'
                     ELSE 'SAT'
              END AS day_of_week,
              CASE
                     WHEN Extract (month FROM started_at) = 1 THEN 'JAN'
                     WHEN Extract (month FROM started_at) = 2 THEN 'FEB'
                     WHEN Extract (month FROM started_at) = 3 THEN 'MAR'
                     WHEN Extract (month FROM started_at) = 4 THEN 'APR'
                     WHEN Extract (month FROM started_at) = 5 THEN 'MAY'
                     WHEN Extract (month FROM started_at) = 6 THEN 'JUN'
                     WHEN Extract (month FROM started_at) = 7 THEN 'JUL'
                     WHEN Extract (month FROM started_at) = 8 THEN 'AGS'
                     WHEN Extract (month FROM started_at) = 9 THEN 'SEP'
                     WHEN Extract (month FROM started_at) = 10 THEN 'OCT'
                     WHEN Extract (month FROM started_at) = 11 THEN 'NOV'
                     ELSE 'DEC'
              END                               AS MONTH,
              Extract('DOW' FROM started_at)    AS DOW,
              Extract (year FROM started_at)    AS YEAR,
              Extract ( minute FROM started_at) AS minute,
              Extract (hour FROM started_at)    AS hour
       FROM   "Cyclistic".rides.rides r)
SELECT   Min (ride_length) AS min_trip_time,
         member_type
FROM     cte_bike_rides
GROUP BY member_type;

-- maximum amount of time spent on a bike divided per group
--casual 36 days 4:31:01 and member 2 days 25:36 mn
SELECT   Max (ride_length) AS min_trip_time,
         member_type
FROM     bike_rides br
GROUP BY member_type;

--calculate the average of casual riders 15:11:16
--AND members riders 14:31:57
WITH cte_bike_rides AS
(
       SELECT ride_id,
              rideable_type,
              start_station_name,
              end_station_name,
              Round(start_lat,2) AS start_lat_rounded,
              Round(start_lng,2) AS start_lng_rounded,
              Round(end_lat,2)   AS end_lat_rounded,
              Round(end_lng,2)   AS end_lng_rounded,
              member_casual      AS member_type,
              started_at,
              ended_at,
              (ended_at - started_at) AS ride_length,
              CASE
                     WHEN Extract (day FROM started_at) = 1 THEN 'SUN'
                     WHEN Extract (day FROM started_at) = 2 THEN 'MON'
                     WHEN Extract ( day FROM started_at) = 3 THEN 'TUE'
                     WHEN Extract ( day FROM started_at) = 4 THEN 'WED'
                     WHEN Extract ( day FROM started_at) = 5 THEN 'THU'
                     WHEN Extract ( day FROM started_at) = 6 THEN 'FRI'
                     ELSE 'SAT'
              END AS day_of_week,
              CASE
                     WHEN Extract (month FROM started_at) = 1 THEN 'JAN'
                     WHEN Extract (month FROM started_at) = 2 THEN 'FEB'
                     WHEN Extract (month FROM started_at) = 3 THEN 'MAR'
                     WHEN Extract (month FROM started_at) = 4 THEN 'APR'
                     WHEN Extract (month FROM started_at) = 5 THEN 'MAY'
                     WHEN Extract (month FROM started_at) = 6 THEN 'JUN'
                     WHEN Extract (month FROM started_at) = 7 THEN 'JUL'
                     WHEN Extract (month FROM started_at) = 8 THEN 'AGS'
                     WHEN Extract (month FROM started_at) = 9 THEN 'SEP'
                     WHEN Extract (month FROM started_at) = 10 THEN 'OCT'
                     WHEN Extract (month FROM started_at) = 11 THEN 'NOV'
                     ELSE 'DEC'
              END                               AS MONTH,
              Extract('DOW' FROM started_at)    AS DOW,
              Extract (year FROM started_at)    AS YEAR,
              Extract ( minute FROM started_at) AS minute,
              Extract (hour FROM started_at)    AS hour
       FROM   "Cyclistic".rides.rides r)
SELECT   Avg (ride_length )AS avg_trip_time,
         member_type
FROM     cte_bike_rides
GROUP BY member_type;

--  4) Trip time to calculate when the bike ride is mostly being used throughout the week (Monday — Sunday)
SELECT ride_id,
       rideable_type,
       start_station_name,
       end_station_name,
       Round(start_lat,2) AS start_lat_rounded,
       Round(start_lng,2) AS start_lng_rounded,
       Round(end_lat,2)   AS end_lat_rounded,
       Round(end_lng,2)   AS end_lng_rounded,
       member_casual      AS member_type,
       started_at,
       ended_at,
       (ended_at - started_at) AS ride_length,
       CASE
              WHEN Extract (day FROM started_at) = 1 THEN 'SUN'
              WHEN Extract (day FROM started_at) = 2 THEN 'MON'
              WHEN Extract ( day FROM started_at) = 3 THEN 'TUE'
              WHEN Extract ( day FROM started_at) = 4 THEN 'WED'
              WHEN Extract ( day FROM started_at) = 5 THEN 'THU'
              WHEN Extract ( day FROM started_at) = 6 THEN 'FRI'
              ELSE 'SAT'
       END AS day_of_week,
       CASE
              WHEN Extract (month FROM started_at) = 1 THEN 'JAN'
              WHEN Extract (month FROM started_at) = 2 THEN 'FEB'
              WHEN Extract (month FROM started_at) = 3 THEN 'MAR'
              WHEN Extract (month FROM started_at) = 4 THEN 'APR'
              WHEN Extract (month FROM started_at) = 5 THEN 'MAY'
              WHEN Extract (month FROM started_at) = 6 THEN 'JUN'
              WHEN Extract (month FROM started_at) = 7 THEN 'JUL'
              WHEN Extract (month FROM started_at) = 8 THEN 'AGS'
              WHEN Extract (month FROM started_at) = 9 THEN 'SEP'
              WHEN Extract (month FROM started_at) = 10 THEN 'OCT'
              WHEN Extract (month FROM started_at) = 11 THEN 'NOV'
              ELSE 'DEC'
       END                               AS MONTH,
       Extract('DOW' FROM started_at)    AS DOW,
       Extract (year FROM started_at)    AS YEAR,
       Extract ( minute FROM started_at) AS minute,
       Extract (hour FROM started_at)    AS hour
FROM   "Cyclistic".rides.rides r;

-- shows the least and most frequented start station name for casual riders
SELECT   Count(*) AS rank,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY start_station_name
ORDER BY rank DESC;

-- shows the least and most frequented start station name for members riders
SELECT   Count(*) AS rank,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY start_station_name
ORDER BY rank DESC;

-- shows least and most frequented end station name for members
SELECT   Count(*) AS rank,
         end_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY end_station_name
ORDER BY rank DESC;

-- shows least and most frequented end station name for casual riders
SELECT   Count(*) AS rank,
         end_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY end_station_name
ORDER BY rank DESC;

-- Checks the most popular routesSELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency DESC limit 2;

-- checks the most popular routes for casual riders
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency DESC limit 2;

-- checks the most popular routes for members
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency DESC limit 2;

-- checks the least popular route for member
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'member'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency ASC limit 2;

-- checks the least popular route for casual riders
SELECT   Count(*) AS frequency,
         end_station_name,
         start_station_name
FROM     "Cyclistic".bikes.ride r
WHERE    member_type = 'casual'
GROUP BY start_station_name,
         end_station_name
ORDER BY frequency ASC limit 2;
