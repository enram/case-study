--Query for to extract wind data enram data challange STSM June 2014, ECMWF deterministic model, analysis data, every 6hr --
-- wind is in components u is positive blowing to east, v is positive blowing to north, units in m/s. u10 wind at 10m, u_1000 wind at 1000 mb etc.
-- make sure lat and lon converted to decimal type otherwise data is rounded and remains integer, which puts your weather data in the wrong grid cell, if files are too large, then maintain integer
-- do not divide by 100 and make conversion in programming software


select a.modelts, a.latitude/cast(100 as float) as latitude, a.longitude/cast(100 as float) as longitude, a.u10, a.v10, a.u_1000, a.v_1000, a.u_925, a.v_925, a.u_850, a.v_850, a.u_700, a.v_700
from ecmwf.analysis as a
where (a.latitude/cast(100 as float) between 49 and 54) and (a.longitude/cast(100 as float) between 2.5 and 7.5)
AND (modelts between '2013-04-05 00:00:00' and '2013-05-13 00:00:00')
ORDER By modelts, longitude, latitude

--Query for to extract wind data enram data challange STSM June 2014, ECMWF deterministic model, forecast data, every 3 hr --
-- wind is in components u is positive blowing to east, v is positive blowing to north, units in m/s. u10 wind at 10m, u_1000 wind at 1000 mb etc.
-- make sure lat and lon converted to decimal type otherwise data is rounded and remains integer, which puts your weather data in the wrong grid cell, if files are too large, then maintain integer
-- do not divide by 100 and make conversion in programming software



select f.modelts, f.latitude/cast(100 as float) as latitude, f.longitude/cast(100 as float) as longitude, f.u10, f.v10, f.u_1000, f.v_1000, f.u_925, f.v_925, 
f.u_850, f.v_850, f.u_700, f.v_700
from ecmwf.forecast as f
where (latitude/cast(100 as float) between 49 and 54) and (longitude/cast(100 as float) between 2.5 and 7.5)
AND (modelts between '2013-04-05 00:00:00' and '2013-05-13 00:00:00')
ORDER By modelts, latitude,longitude