# Bird migration altitude profiles

This dataset contains bird migration data for [this case study](https://github.com/enram/case-study) at different altitudes, measured by five weather radars. It is standardized as a [data package](http://dataprotocols.org/data-packages/).

## Description

The dataset is a time series (of one week). Each record represents a timeframe (`start_time` and `end_time`, generally around 5 minutes) at which the radar (`radar_name` and `radar_id`, which can be joined with [radars](https://github.com/enram/case-study/tree/master/data/radars) to get a geospatial representation)) scanned at multiple altitudes (`altitude`, generally 30, every 200 meters). For each altitude, the calculated density of the birds is given (`bird_density`), as well as the vertical speed (`w_speed`) and horizontal speed (`u_speed` towards East, `v_speed` towards North) of the general movement. The horizontal speed is also expressed in `ground_speed` and `direction`. In addition, the calculated bird reflectivity is provided (`bird_reflectivity`, use in combination with a `radial_velocity_std` threshold) and the number of original measurement points around the radar (`number_of_bins`). These fields are described in detail in the [metadata](datapackage.json).

## Data

* Bulk download: [bird-migration-altitude-profiles.csv](bird-migration-altitude-profiles.csv)
* SQL API: [http://lifewatch.cartodb.com/api/v2/sql?q=SELECT * FROM bird_migration_altitude_profiles LIMIT 10](http://lifewatch.cartodb.com/api/v2/sql?q=SELECT%20*%20FROM%20bird_migration_altitude_profiles%20LIMIT%2010)

*To use the API, see the [CartoDB API documentation](http://docs.cartodb.com/cartodb-platform/sql-api.html).*

## Contact

[Hans van Gasteren](https://twitter.com/hvangasteren)
