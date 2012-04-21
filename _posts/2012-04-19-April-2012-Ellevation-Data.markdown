---
layout: post
title: "Site Update: Elevation Data Calculation"
---
Many of you have noticed our elevation calculations have been off in your area.  Additionally, some of you have also noticed that the elevation gain/loss numbers have changed in the last couple of weeks, for better or worse depending on the route or activity. Zack and Cullen are working hard on a permanent fix, but I was able to interupt them long enough to get you an update on what's going on and when you can expect things to settle down.

The short of it:

Elevation coming from different sources like barometric pressure based altimeters, GPS data, elevation datasets in the US vs rest of the world, all have different amounts of errors.  Since we have to filter/smooth elevation data to avoid huge overestimates of gain/loss, we need a smart filter.  Filtering functions are never "one size fits all", so we have to tune them based on the amount of error in the data.  Since we have a bunch of data sources, we have to vary our tuning based on which data source we are calculating an elevation gain/loss from.  Currently, we have a "one size fits all" filtering function, which is good in some places and bad in others.  We are spending a bunch of time turning this into a function and tuning it based on data source, so, we have to record the data source and go from there.  

The Expanded Version:

Every GPS unit is different when it comes to elevation. Some record elevation using GPS satellites, which is actually very error prone.  GPS works great in the flat plane of the earth, but is inaccurate when it comes to elevations, as in, +/- 30 feet or more!  This is due to angles relative to GPS satellites and some other fun technical stuff you can read about by googling.  Other GPS units use a built-in barometric pressure based altimeter and are considerably more accurate.  They are accurate down to 1 meter or so and have much less spikiness associated with the data.  Additionally, elevations from barometric pressure based altimeters are more accurate than the elevation datasets we have.

Elevations produced while drawing a route using our route planner come from big files called DEMs.  We have different DEM sets depending on the region.  The US has the most accurate, at 1 elevation point every 10 meters.  Outside the US we use ASTER and SRTM dems.  SRTM data came from a shuttle mission which collected a ton of data.  ASTER is data from a pair of satellites and is more recent, but less accurate than SRTM data.  ASTER/SRTM only has 1 point every 30 meters, so, outside of the US we have poor elevation data.

For an idea of the type of filtering we are doing, we are using a simple lowpass filter, one very much like the one outlined on <a href="http://phrogz.net/js/framerate-independent-low-pass-filter.html">this page</a>.

Since we have 1.5 million maps to go and recalculate, elevation data will still not be correct even after we release the new filtering functions.  It will take a couple of days to recalculate all the back maps. This is a big data migration and will take the rest of the week. We will make a post when this is ready.

If you have any questions about our Elevation Data Calculation email us at <a href="mailto:info@ridewithgps.com">info@ridewithgps.com</a>
