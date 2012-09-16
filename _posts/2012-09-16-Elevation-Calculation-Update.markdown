---
layout: post
title: "Site Update: Elevation Calculation"
---
The one aspect of our site that has generated more questions than any other has been our elevation calculations.  Since every site and piece of software generates different elevation gain and loss figured for a planned or recorded ride, user are often confused as to which is the most accurate.  Hopefully this bit of information, and a pending site update, will help clear the waters.

Imagine riding a perfectly flat ride with not a single inch of elevation gain or loss.  As you are riding your GPS unit is recording what it thinks the elevation at every point along the ride is.  However that GPS unit has a certain amount of error in it, so it may say 10 meters at one point, 11 meters at the next and 9 meters at the one after that.  If we added up the gain and loss on this perfectly flat ride, we might end up with a figure of 1000 meters or even more depending on how long the ride was.  Obviously this isn’t acceptable, we have to use some method of removing the error from the elevation data, which is where we come to filters.

A filter is usually a simple math operation that is similar to an average.  Actually, there is a filter called a simple moving average which is about as simple as you can get - you average each point’s value with the value of the preceding and following points.  However, we need something more complex than a simple moving average, because each elevation source (poor elevation  data from a smartphone vs good data from a quality barometric pressure based altimeter, etc) has a different amount of error.  Your smartphone might be off by 20 meters up or down, whereas an Edge 800 might be off by only 2 meters up or down.  So a simple filter that works well for quality data might not come up with good elevation gain/loss values for elevation data from a poor source.

This is the main reason why some people see our calculated elevation gain/loss as perfect, while others see our numbers off by as much as 30%.  Our current filtering method doesn’t account for the different amount of errors.

What we are about to release is a more simple filtering algorithm, however it’s much more tuneable.  I can now change the amount of smoothing used, from light to very aggressive, based on whether or not the GPS unit used to record the ride has a barometric pressure based altimeter.  Additionally, I can smooth elevation for routes drawn using our route planner more or less aggressively based on where they are in the world, meaning, which world elevation dataset was used to draw the route!  This is important, since each elevation dataset has a different amount of accuracy and density of coverage.

We are finalizing the smoothing parameters and doing some last minute bug fixing, but are hoping to release elevation improvements in the coming week.


If you have any questions about *{{ page.title }}* email us at <a href="mailto:info@ridewithgps.com">info@ridewithgps.com</a>
