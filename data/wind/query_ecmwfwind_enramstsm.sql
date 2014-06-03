--Query for to extract wind data enram data challange STSM June 2014, ECMWF deterministic model, analysis data, every 6hr --
-- wind is in components u is positive blowing to east, v is positive blowing to north, units in m/s. u10 wind at 10m, u_1000 wind at 1000 mb etc.

select a.modelts, a.latitude/100 as latitude, a.longitude/100 as longitude, a.u10, a.v10, a.u_1000, a.v_1000, a.u_925, a.v_925, a.u_850, a.v_850, a.u_700, a.v_700
from ecmwf.analysis as a
where (latitude/100 between 49 and 54) and (longitude/100 between 3 and 7.5)
AND (modelts between '2013-04-05 00:00:00' and '2013-05-13 00:00:00')
ORDER By modelts, latitude,longitude

--Query for to extract wind data enram data challange STSM June 2014, ECMWF deterministic model, forecast data, every 3 hr --
-- wind is in components u is positive blowing to east, v is positive blowing to north, units in m/s. u10 wind at 10m, u_1000 wind at 1000 mb etc.

select f.modelts, f.latitude/100 as latitude, f.longitude/100 as longitude, f.u10, f.v10, f.u_1000, f.v_1000, f.u_925, f.v_925, 
f.u_850, f.v_850, f.u_700, f.v_700
from ecmwf.forecast as f
where (latitude/100 between 49 and 54) and (longitude/100 between 3 and 7.5)
AND (modelts between '2013-04-05 00:00:00' and '2013-05-13 00:00:00')
ORDER By modelts, latitude,longitude