# Bird migration altitude profiles

This dataset contains bird migration data for [this case study](https://github.com/enram/case-study) at different altitudes, measured by five weather radars. It is standardized as a [data package](http://dataprotocols.org/data-packages/).

## Description

The dataset is a time series. Each record represents a **timeframe** (`start_time` and `end_time`, generally around 5 minutes) at which the radar (`radar_name` and `radar_id`, which can be joined with [radars](https://github.com/enram/case-study/tree/master/data/radars) to get a geospatial representation) scanned at multiple altitudes (`altitude`, generally 30, every 200 meters). For each altitude, the calculated density of the birds is given (`bird_density`) in birds/km<sup>3</sup>, as well as the vertical speed (`w_speed`), and horizontal speed (`u_speed` towards East, `v_speed` towards North) of the general movement in m/s. The horizontal speed is also expressed in `ground_speed` and `direction`.

Please note that the bird density is only valid and calculated if `radial_velocity_std` is above 2.0. `bird_density` is set to 0 when the `radial_velocity_std` is below 2.0. If using `ground_speed` or `direction`, use this same threshold to discriminate between birds and weather.

All the fields are described in detail in the [metadata](datapackage.json).

## Data

* Bulk download: [bird-migration-altitude-profiles.csv](bird-migration-altitude-profiles.csv)
* SQL API: [http://lifewatch.cartodb.com/api/v2/sql?q=SELECT * FROM bird_migration_altitude_profiles LIMIT 10](http://lifewatch.cartodb.com/api/v2/sql?q=SELECT%20*%20FROM%20bird_migration_altitude_profiles%20LIMIT%2010)

*To use the API, see the [CartoDB API documentation](http://docs.cartodb.com/cartodb-platform/sql-api.html).*

## License

[Creative Commons Zero](http://creativecommons.org/publicdomain/zero/1.0/)

## Contact

[Hans van Gasteren](https://twitter.com/hvangasteren)
