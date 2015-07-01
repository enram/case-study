# Basemap

This dataset contains shapefile data to generate a basemap for [this case study](https://github.com/enram/case-study), but also other case studies.

## Description

The dataset is a shapefile containing all countries in the world (including terrestrial borders), but with lakes excluded. This creates nice, natural borders for all countries.

## Data

* Shapefile: [countries_minus_lakes.shp](countries_minus_lakes.shp). Compress the whole basemap directory for importing in QGIS or CartoDB.

## Procedure for generating the data

### Source data

* Countries: [ne_10m_admin_0_countries](http://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-0-countries/) from Natural Earth
* Lakes: [ne_10m_lakes](http://www.naturalearthdata.com/downloads/10m-physical-vectors/10m-lakes/) from Natural Earth

### Substract lakes from countries

1. Open both files in QGIS
2. Choose `Vector > Geoprocessing Tools > Difference`
3. Set `ne_10m_lakes` as the difference layer
4. Save as [countries_minus_lakes.shp](countries_minus_lakes.shp)

## Procedure to create a topojson for a certain bounding box

In this example, we create a topojson for [this case study](https://github.com/enram/case-study): `-4.7 48.6 14.0 54.9`. For a map of Northeastern US, use `-99.9 23.5 -51.1 49.7`.

### Clip data to bounding box

Assumes [GDAL](http://www.kyngchaos.com/software/frameworks) is installed:

```shell
mkdir shapefiles
ogr2ogr -f "ESRI Shapefile" shapefiles/countries.shp ../shapefiles/countries_minus_lakes.shp -clipsrc -4.7 48.6 14.0 54.9
```

### Convert to topojson

Assumes [topojson](http://bost.ocks.org/mike/map/#installing-tools) is installed (see also [topojson documentation](https://github.com/mbostock/topojson/wiki/Command-Line-Reference)):

```shell
topojson -o basemap.topojson -- countries=shapefiles/countries.shp
```
