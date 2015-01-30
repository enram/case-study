# Radars

This dataset contains the geospatial positions and some additional information about the five weather radars used in [this case study](https://github.com/enram/case-study) to detect bird migration.

## Description

The dataset is a list of five radars. Each record represents a radar, which is identified by the ID issued by the [World Meteorological Organization](http://www.wmo.int/) (`radar_id`, which can be used to link with the main data of the case study). The country code (`country`), radar type (`type`, "weather" for all), radar name (i.e. its location `name`), and coordinates (`geometry`) are also provided. The data are formatted as a [geojson](http://geojson.org/).

## Data

* Bulk download: [radars.geojson](radars.geojson)
* SQL API: [http://lifewatch.cartodb.com/api/v2/sql?q=SELECT * FROM radars](http://lifewatch.cartodb.com/api/v2/sql?q=SELECT%20*%20FROM%20radars)

*To use the API, see the [CartoDB API documentation](http://docs.cartodb.com/cartodb-platform/sql-api.html).*

## License

[Creative Commons Zero](http://creativecommons.org/publicdomain/zero/1.0/)

## Contact

[Peter Desmet](https://twitter.com/peterdesmet)
