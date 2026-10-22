# Regions [![Build Status](https://travis-ci.com/AtlasOfLivingAustralia/regions.svg?branch=master)](https://travis-ci.com/AtlasOfLivingAustralia/regions)

The regions web application is a small grails 3 application that uses services from the Atlas of Living Australia (or another Living Atlas instance)
to present regional data breakdowns.

It uses services from:

* Biocache (https://biocache-ws.ala.org.au/ws)
* Layers services (https://spatial.ala.org.au/ws)

If a region's spatial metadata has no bounding box, Regions logs a warning and
uses the configured `map.minLat`, `map.minLng`, `map.maxLat` and `map.maxLng` values
for the initial map view. The region filter still determines the species and records.
