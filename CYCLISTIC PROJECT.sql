-- --PREPARATION PHASE
-- --1) combining the data and creating new columns then a new table within a new deatabase called :"bikes"
-- --create a table with combined data (rides)
-- --I created a table, then I exported my query to my database.
--       
-- --combining tables

SELECT distinct
 ride_id,
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
FROM "Cyclistic".rides."202301_divvy_tripdata"   
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202302_divvy_tripdata"
UNION all
SELECT distinct
ride_id,
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
FROM "Cyclistic".rides."202303_divvy_tripdata"
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202304_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202305_divvy_tripdata"
UNION all
SELECT distinct
ride_id,
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
FROM "Cyclistic".rides."202306_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202307_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202308_divvy_tripdata"
UNION all
SELECT distinct
ride_id,
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
FROM "Cyclistic".rides."202309_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
 FROM "Cyclistic".rides."202310_divvy_tripdata"
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202311_divvy_tripdata" 
union ALL
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202312_divvy_tripdata" )
SELECT ride_id, count( ride_id) 
FROM "Cyclistic".bikes.rides r ;

-- --creating new columns then anew table called "ride"
-- --I appended the table to include the following:
-- --Day of the week AS day_of_week
-- --Month AS month
-- --Day AS day
-- --Year AS year
-- --ride length as ride_length
-- ----formatted timestamp AS time

    WITH cte_brides AS (
SELECT distinct
 ride_id,
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
FROM "Cyclistic".rides."202301_divvy_tripdata"   
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202302_divvy_tripdata"
UNION all
SELECT distinct
ride_id,
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
FROM "Cyclistic".rides."202303_divvy_tripdata"
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202304_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202305_divvy_tripdata"
UNION all
SELECT distinct
ride_id,
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
FROM "Cyclistic".rides."202306_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202307_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202308_divvy_tripdata"
UNION all
SELECT distinct
ride_id,
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
FROM "Cyclistic".rides."202309_divvy_tripdata" 
UNION all
SELECT distinct
ride_id ,
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
 FROM "Cyclistic".rides."202310_divvy_tripdata"
UNION all
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202311_divvy_tripdata" 
union ALL
SELECT distinct
ride_id ,
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
FROM "Cyclistic".rides."202312_divvy_tripdata")
SELECT
  ride_id,rideable_type,start_station_name, end_station_name, start_lat, start_lng,end_lat, member_casual AS member_type,started_at,ended_at,  (ended_at- started_at) as ride_length, 
  CASE 
   WHEN EXTRACT (day FROM started_at) = 1 THEN 'SUN'
    WHEN EXTRACT (day FROM started_at) = 2 THEN 'MON'
    WHEN EXTRACT ( day FROM started_at) = 3 THEN 'TUE'
    WHEN EXTRACT ( day FROM started_at) = 4 THEN 'WED'
    WHEN EXTRACT ( day FROM started_at) = 5 THEN 'THU'
    WHEN EXTRACT ( day FROM started_at) = 6 THEN 'FRI'
  ELSE 'SAT'
  END AS day_of_week,
   CASE
    WHEN EXTRACT (MONTH FROM started_at) = 1 THEN 'JAN'
    WHEN EXTRACT (MONTH FROM started_at) = 2 THEN 'FEB'
    WHEN EXTRACT (MONTH FROM started_at) = 3 THEN 'MAR'
    WHEN EXTRACT (MONTH FROM started_at) = 4 THEN 'APR'
    WHEN EXTRACT (MONTH FROM started_at) = 5 THEN 'MAY'
    WHEN EXTRACT (MONTH FROM started_at) = 6 THEN 'JUN'
    WHEN EXTRACT (MONTH FROM started_at) = 7 THEN 'JUL'
    WHEN EXTRACT (MONTH FROM started_at) = 8 THEN 'AGS'
    WHEN EXTRACT (MONTH FROM started_at) = 9 THEN 'SEP'
    WHEN EXTRACT (MONTH FROM started_at) = 10 THEN 'OCT'
    WHEN EXTRACT (MONTH FROM started_at) = 11 THEN 'NOV'
  ELSE 'DEC'
  END AS MONTH,
  EXTRACT('DOW' FROM started_at) As DOW,
  EXTRACT (YEAR FROM started_at) AS year,
  EXTRACT ( minute from started_at) AS minute,
 EXTRACT (hour FROM started_at) as hour  
 FROM cte_brides;


--Analysing phase
--checking for the min and max min 49minutes/ 64 days 06:49:00

select min (ride_length) from "Cyclistic".bikes.ride r; 

--checking the avg 00:30:41.061351	casual
--00:12:46.18954	member

 select avg (ride_length)as avg_ride_len, member_type 
 from "Cyclistic".bikes.ride 
group by member_type ;
 
-- checking how many stations there are                       (1597 stations)

select count( DISTINCT end_station_name )
FROM "Cyclistic".bikes.ride r ;

-- confirms the station count (1351 stations )

select count( DISTINCT start_station_name) 
FROM "Cyclistic".bikes.ride r ;


  -- this query checks for the most popular and least popular day for casual riders

SELECT  count(month) AS count, month
from "Cyclistic".bikes.ride r 
WHERE member_type = 'member' and member_type ='casual'
group by "month" ;
            
--1- counting the casual riders (643,125)
 select count(member_type)
 from cte_bike_rides
 where member_type= 'member';
 
  -- minimum amount of time spent on a bike divided per group
   --casual 23 mn and member 31 min

SELECT  min (ride_length) AS min_trip_time, member_type
  FROM cte_bike_rides 
 group by member_type;
                  
  -- maximum amount of time spent on a bike divided per group
  --casual 64 days 6:49:01 and member 1 days 1h00    
   
 SELECT  max (ride_length) AS min_trip_time, member_type
            FROM "Cyclistic".bikes.ride r 
            group by member_type;
  
           
--calculate the average of casual riders 00:30:41.061351
--AND members riders 00:12:46.18954         
 
SELECT avg (ride_length )AS avg_trip_time, member_type
            FROM "Cyclistic".bikes.ride r 
            group by member_type;
            

           
 --  trip time (day)
            -- this query checks what days are the most popular ones within the week (saturday is the most popular day)
            SELECT  count(day_of_week) AS count, day_of_week
            FROM "Cyclistic".bikes.ride r  
            GROUP BY day_of_week ;
            
            -- this query checks for the most popular and least popular day for casual riders (saturday is the most popular day and thursday is the least one)
            SELECT  count(day_of_week) AS count, day_of_week
            FROM "Cyclistic".bikes.ride r 
            WHERE member_type = 'casual'
            GROUP BY day_of_week ;
            
            -- this query checks for the most popular and least popular day for members riders saturday isthe most popular day and sunday the least one
            SELECT  count(day_of_week) AS count, day_of_week
            FROM "Cyclistic".bikes.ride r 	
            WHERE member_type = 'member'
            GROUP BY day_of_week;
            
  -- trip time (month)
  -- this query selects the number of frequency of rides per month for members
            SELECT  count(month) AS count, month
            from "Cyclistic".bikes.ride r  
            WHERE member_type = 'member'
            group by "month" ;
            
  -- this query selects the number of frequency of rides per month for casual riders
            SELECT  count(month) AS count, month 
            FROM "Cyclistic".bikes.ride r 
            WHERE member_type = 'casual' 
            group by month;
            
           select count(ride_length), "month" 
           from "Cyclistic".bikes.ride r 
           group by "month" ;
          
  -- Total Trips: Members vs Casual 
  -- Looking at overall, annual member and casual rider totals
--3489838 members/ 3489838 casual/ 5479259 total
        
  SELECT TotalTrips,
       TotalMemberTrips,
      TotalCasualTrips,
      round((TotalMemberTrips / TotalTrips),2)*100 AS MemberPercentage,
     round((TotalCasualTrips / TotalTrips),2)*100 AS CasualPercentage
        FROM 
     (select
     COUNT(ride_id) AS TotalTrips, 
     count(case when member_type = 'member'then 1 end) AS TotalMemberTrips,
     COUNT(case when  member_type = 'casual' then 1 end) AS TotalCasualTrips
    FROM "Cyclistic".bikes.ride));
   
    
-- Looking at which days have the highest number of rides
 
select member_type, day_of_week AS mode_day_of_week 
from (
        select DISTINCT member_type, day_of_week, ROW_NUMBER() OVER (PARTITION BY member_type ORDER BY COUNT(day_of_week)DESC) rn
        from "Cyclistic".bikes.ride r
        GROUP BY   member_type, day_of_week      
        )
where rn = 1
order by member_type desc limit 2;
        
       
       
 -- Looking at total number of trips per day 

SELECT  
        day_of_week,
        COUNT(DISTINCT ride_id) AS totaltrips,
        SUM(CASE WHEN member_type  = 'member' THEN 1 ELSE 0 END) AS MemberTrips,
        SUM(CASE WHEN member_type  = 'casual' THEN 1 ELSE 0 END) AS CasualTrips
FROM 
        "Cyclistic".bikes.ride r 
GROUP BY 
        1
ORDER BY 
   totaltrips DESC LIMIT 7;
  
  
  -- Start stations: member vs casual
 -- Looking at start station counts

SELECT 
        DISTINCT start_station_name,
        SUM(
            CASE WHEN ride_id = ride_id AND start_station_name = start_station_name THEN 1 ELSE 0 END
            ) AS total,
        SUM(
            CASE WHEN member_type  = 'member' AND start_station_name = start_station_name THEN 1 ELSE 0 END
            ) AS member,
        SUM(
            CASE WHEN member_type  = 'casual' AND start_station_name = start_station_name THEN 1 ELSE 0 END
            ) AS casual
FROM 
        "Cyclistic".bikes.ride r 
GROUP BY 
        start_station_name
ORDER BY 
        total desc;
       
       
 -- shows the least and most frequented start station name for casual riders
    SELECT  count(*) AS rank, start_station_name 
    FROM "Cyclistic".bikes.ride r
    WHERE member_type = 'casual'
    GROUP BY start_station_name
    ORDER BY rank desc;
      
  -- shows the least and most frequented start station name for members riders
     SELECT count(*) AS rank, start_station_name
     FROM "Cyclistic".bikes.ride r 
     WHERE member_type = 'member'
     GROUP BY  start_station_name
     ORDER BY rank desc;
             
  -- shows least and most frequented end station name for members
      
  SELECT count(*) AS rank, end_station_name
  FROM "Cyclistic".bikes.ride r 
  WHERE member_type = 'member'
  GROUP BY end_station_name
  ORDER BY rank desc;
      
 -- shows least and most frequented end station name for casual riders
   SELECT count(*) AS rank, end_station_name
   FROM "Cyclistic".bikes.ride r 
   WHERE member_type = 'casual'
   GROUP BY end_station_name
   ORDER by rank desc;
      
   -- Checks the most popular routes
   SELECT  COUNT(*) AS frequency, end_station_name,start_station_name   
   from "Cyclistic".bikes.ride r 
   GROUP by start_station_name,end_station_name
   ORDER by frequency DESC LIMIT 2;
    
      -- checks the most popular routes for casual riders
  select COUNT(*) AS frequency, end_station_name,start_station_name
  from "Cyclistic".bikes.ride r       
  where member_type = 'casual'
  GROUP by start_station_name,end_station_name
  ORDER BY  frequency DESC LIMIT 2;           
              
      
 -- checks the most popular routes for members
   select COUNT(*) AS frequency,end_station_name,start_station_name
   FROM "Cyclistic".bikes.ride r 
   where member_type = 'member'       
   GROUP by start_station_name,end_station_name
   ORDER BY frequency DESC LIMIT 2;          
              
                       
 -- checks the least popular route for member
    SELECT
    COUNT(*) AS frequency,
    end_station_name,
    start_station_name
    FROM "Cyclistic".bikes.ride r          
    where member_type = 'member'
    GROUP BY start_station_name, end_station_name
     ORDER BY  frequency ASC LIMIT 2;
      
      
-- checks the least popular route for casual riders
   SELECT
   COUNT(*) AS frequency,
   end_station_name,
   start_station_name
   from"Cyclistic".bikes.ride r        
   where member_type = 'casual'
   GROUP by start_station_name, end_station_name 
   ORDER by frequency ASC LIMIT 2;
              
           
        



