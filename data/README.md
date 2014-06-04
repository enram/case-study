# Data

This directory contains the case study data which can be used to create visualizations.

* **Temporal coverage**: `2013-04-05T00:00:00Z/2013-04-11T23:59:59Z`. All datetimes are in [UTC](http://en.wikipedia.org/wiki/UTC).
* **Spatial coverage**: `"bbox":[2.5218,49.495223,7.198506,53.558092]`. All coordinates are [WGS84](http://en.wikipedia.org/wiki/WGS84).
* **Number of radars**: 5 weather radars: 2 in the Netherlands, 3 in Belgium (see [radars](radars/radars.geojson)).

## bird-migration-altitude-profiles

Bird migration data at different altitudes measured by the 5 weather radars. This dataset is standardized as a [data package](http://dataprotocols.org/data-packages/).

### Data

[bird-migration-altitude-profiles.csv](bird-migration-altitude-profiles/bird-migration-altitude-profiles.csv)

### Metadata

[datapackage.json](bird-migration-altitude-profiles/datapackage.json)

### Contact

Hans van Gasteren

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
