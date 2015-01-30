# Data

## reflectivity-ppi

Radar reflectivity Plan Position Indicator (PPI) data has been derived from radar reflectivity data from a single scan of each of the five radars. It is given on a 120x120 km (horizontal resolution is 1 km) Cartesian grid centered on each radar. The radar reflectivity factor is given in dBZ. The conversion from the measured radar reflectivity factors on a polar grid to a Cartesian grid is carried out as follows:
* construct Cartesian grid with a size of 120x120 km, centered around the radar, with a 1-km resolution
* for each Cartesian grid node, determine the coordinates in the radar polar coordinate system
* determine which polar pixel is closest to the Cartesian grid node
* assign the reflectivity of that polar pixel to the Cartesian pixel

The radar scans used for these PPIs are:
* 6260 (De Bilt, Netherlands): 0.8 degrees elevation angle; height increases from 44 m at the radar to 1094 m at 60 km from the radar
* 6234 (Den Helder, Netherlands): 0.8 degrees elevation angle; height increases from 51 m at the radar to 1101 m at 60 km from the radar
* 6410 (Jabbeke, Belgium): 1.2 degrees elevation angle; height increases from 52 m at the radar to 1520 m at 60 km from the radar
* 6451 (Zaventem, Belgium): 1.0 degrees elevation angle; height increases from 73 m at the radar to 1332 m at 60 km from the radar
* 6477 (Wideumont, Belgium): 1.2 degrees elevation angle; height increases from 592 m at the radar to 2060 m at 60 km from the radar

### Contact

Hidde Leijnse
