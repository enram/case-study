# Bird migration case study

## Introduction

This repository contains data and documentation for a bird migration case study, which focuses on **one week of intense bird migration across Belgium and the Netherlands, from April 5 to April 11 2013**.

The data for this study is retrieved by five weather radars and is very similar to the kind of data that the [European Network for the Radar Surveillance of Animal Movement (ENRAM)](http://enram.eu/) wants to retrieve at a European scale. Being able to process and visualize this type of data would allow researchers to study and understand animal migration at a continental scale.

The case study data were [visualized in a flow visualization](http://enram.github.io/bird-migration-flow-visualization/viz/) by LifeWatch INBO as a proof of concept. Participants of the [Bird migration visualization challenge & hackathon](http://enram.challengepost.com/), organized by ENRAM on 25-27 March 2015, will have the opportunity to visualize these data in other interesting ways.

## Story

[Read more about the case study](story.md)

## Data

### General metadata

* **Temporal coverage**: `2013-04-05T00:00:00Z/2013-04-11T23:59:59Z`. All datetimes are in [UTC](http://en.wikipedia.org/wiki/UTC).
* **Spatial coverage**: `"bbox":[2.5218,49.495223,7.198506,53.558092]`. All coordinates are [WGS84](http://en.wikipedia.org/wiki/WGS84).
* **Number of radars**: 5 weather radars: 2 in the Netherlands, 3 in Belgium (see [radars](data/radars)).

### Main data

* [bird-migration-altitude-profiles](data/bird-migration-altitude-profiles)
* [reflectivity-ppi](data/reflectivity-ppi)

*Note: participants of the [Bird migration visualization challenge & hackathon](http://enram.challengepost.com/) should at least visualize one of these two main datasets, using all 5 radars. We advise to choose only one, in combination with supporting data.*

### Supporting data

* [radars](data/radars)
* [basemap](https://github.com/enram/bird-migration-flow-visualization/tree/master/data/basemap) (part of the bird-migration-flow-visualization repository)

## Visualizations ideas

Here's a non-exhaustive list of aspects that could be part of a visualization:

Aspect | Which dataset(s) do I need?
--- | ---
Direction of movement | `bird-migration-altitude-profiles`
Altitude | `bird-migration-altitude-profiles`, `reflectivity-ppi`
Time | `bird-migration-altitude-profiles`, `reflectivity-ppi`
Geospatial position of the radars | `radars` (can be used in combination with `bird-migration-altitude-profiles` and `reflectivity-ppi`)
Geospatial position of migration around the radars | `reflectivity-ppi`
Radar reflectivity | `bird-migration-altitude-profiles`, `reflectivity-ppi`
Bird density | `bird-migration-altitude-profiles`
Daily patterns | `bird-migration-altitude-profiles`
Day/night patterns | `bird-migration-altitude-profiles`
Outliers | `bird-migration-altitude-profiles`

## Issues/questions?

[Report it here](https://github.com/enram/case-study/issues).




