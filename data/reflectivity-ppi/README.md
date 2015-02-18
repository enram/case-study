# Reflectivity PPI data

This dataset contains the radar reflectivity [plan position indicator (PPI)](http://en.wikipedia.org/wiki/Plan_position_indicator) data derived from the five weather radars used in [this case study](https://github.com/enram/case-study).

## Description

The dataset is a time series of reflectivity grids for each radar. It is structured as follows:

```JS
\ppi
    \radar1_date1.zip // Compressed data for first day of this radar
        radar1_date1_time1.txt // Grid of reflectivity data for this radar and timeframe
        radar1_date1_time2.txt
        radar1_date1_time3.txt
        ...
    ...
    \radar1_date7.zip // Compressed data for last day of this radar
    \radar2_date1.zip
    ...
\position
    radar1_latitudes.txt // Grid of the latitudes around this radar
    radar1_longitudes.txt // Grid of the longitudes around this radar
    radar2_latitudes.txt
    radar2_longitudes.txt
    ...
```

The radar reflectivity plan position indicator (PPI) data has been derived from the radar reflectivity data from a single scan of each radar. It is represented as a 120x120km Cartesian grid centered on the radar, with a horizontal resolution of 1km. In the data (e.g. `radar1_date1_time1.txt`) it is formatted as 120 rows and 120 columns, with each field (i.e. grid node) containing the radar reflectivity factor, given in dBZ.

In addition, the geospatial positions of the 5 grids are given in [position](position), as the latitude and longitude for each grid node.

### Conversion

The conversion from the measured radar reflectivity factors on a polar grid to a Cartesian grid is carried out as follows:

* Construct Cartesian grid with a size of 120x120 km, centered around the radar, with a 1km resolution
* For each Cartesian grid node, determine the coordinates in the radar polar coordinate system
* Determine which polar pixel is closest to the Cartesian grid node
* Assign the reflectivity of that polar pixel to the Cartesian pixel

### Radar settings

The [radar](../radars) scans used for these PPIs are:

* 6260 (De Bilt, Netherlands): 0.8 degrees elevation angle; height increases from 44m at the radar to 1094m at 60km from the radar
* 6234 (Den Helder, Netherlands): 0.8 degrees elevation angle; height increases from 51m at the radar to 1101m at 60km from the radar
* 6410 (Jabbeke, Belgium): 1.2 degrees elevation angle; height increases from 52 m at the radar to 1520m at 60km from the radar
* 6451 (Zaventem, Belgium): 1.0 degrees elevation angle; height increases from 73m at the radar to 1332m at 60km from the radar
* 6477 (Wideumont, Belgium): 1.2 degrees elevation angle; height increases from 592m at the radar to 2060m at 60km from the radar

## Data

* Bulk download PPI data: [ppi](ppi)
* Bulk download geospatial positions: [position](position)

## License

[Creative Commons Zero](http://creativecommons.org/publicdomain/zero/1.0/)

### Contact

[Hidde Leijnse](hidde.leijnse@knmi.nl)
