library(leaflet)

## OSM

leaflet() %>%
  setView(-97.3606922, 32.7084083, zoom = 16) %>%
  addTiles()

## OSM black-and-white

leaflet() %>%
  setView(-97.3606922, 32.7084083, zoom = 16) %>%
  addTiles(urlTemplate = "http://{s}.tiles.wmflabs.org/bw-mapnik/{z}/{x}/{y}.png", 
           attribution = '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>')

## Stamen watercolor

leaflet() %>%
  setView(-97.3606922, 32.7084083, zoom = 16) %>%
  addTiles(urlTemplate = 'http://{s}.tile.stamen.com/watercolor/{z}/{x}/{y}.png', 
           attribution = 'Map tiles by <a href="http://stamen.com">Stamen Design</a>, <a href="http://creativecommons.org/licenses/by/3.0">CC BY 3.0</a> &mdash; Map data &copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>')

## Esri National Geographic

leaflet() %>%
  setView(-97.3606922, 32.7084083, zoom = 16) %>%
  addTiles(urlTemplate = 'http://server.arcgisonline.com/ArcGIS/rest/services/NatGeo_World_Map/MapServer/tile/{z}/{y}/{x}', 
           attribution = 'Tiles &copy; Esri &mdash; National Geographic, Esri, DeLorme, NAVTEQ, UNEP-WCMC, USGS, NASA, ESA, METI, NRCAN, GEBCO, NOAA, iPC')

## Your custom MapBox tiles - insert your map id as directed

leaflet() %>%
  setView(-97.3606922, 32.7084083, zoom = 16) %>%
  addTiles(urlTemplate = "http://a.tiles.mapbox.com/v3/{{{Your map id here}}}/{z}/{x}/{y}.png", 
           attribution = 'Mapbox <a href="http://mapbox.com/about/maps" target="_blank">Terms &amp; Feedback</a>')