# Bird migration case study from the Netherlands and Belgium

## Introduction

This repository contains data and documentation for a bird migration case study, which focuses on **one week of intense bird migration across the Netherlands and Belgium, from April 5 to April 11 2013**.

The data for this study are retrieved by five weather radars and are very similar to the kind of data that the [European Network for the Radar Surveillance of Animal Movement (ENRAM)](http://enram.eu/) wants to retrieve at a European scale. Being able to process and visualize this type of data would allow researchers to study and understand animal migration at a continental scale.

[Read more about the case study](story.md).

## Data

### General metadata

* **Temporal coverage**: `2013-04-05T00:00:00Z/2013-04-11T23:59:59Z`. All datetimes are in [UTC](http://en.wikipedia.org/wiki/UTC).
* **Spatial coverage**: `"bbox":[2.5218,49.495223,7.198506,53.558092]`. All coordinates are [WGS84](http://en.wikipedia.org/wiki/WGS84).
* **Number of radars**: 5 weather radars: 2 in the Netherlands, 3 in Belgium (see [radars](data/radars)).

### Bird migration data

* [bird-migration-altitude-profiles](data/bird-migration-altitude-profiles)
* [reflectivity-ppi](data/reflectivity-ppi)
* [forward-trajectory](data/forward-trajectory)

### Supporting data

* [radars locations](data/radars)
* [basemap](data/basemap)

## Visualizations

These case study data are visualized in:

* The [bird migration flow visualization](http://enram.github.io/bird-migration-flow-visualization/viz/) by LifeWatch INBO
* [TIMAMP](http://timamp.github.io/) by the winners of the [Bird migration visualization challenge & hackathon](http://enram.challengepost.com/)

## Issues/questions?

[Let us know](https://github.com/enram/case-study/issues).
