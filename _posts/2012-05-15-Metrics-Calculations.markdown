---
layout: post
title: "Site Update: Metrics Calculation"
---
Anytime you look at any route/ride data, our metrics calculations are used for just about everything and we have been rethinking and redesigning how we handle and display metrics data. 
               
We went through this code top to bottom and made significant changes. Doing so allowed us to fix a number of bugs, the most visible one being max speed numbers being way too high on some trips, improve site performance, and added support for interpolation everywhere (splits will be exactly the right distance/time, segment racing splits are more accurate). 

This project also allowed us the opportunity to add some new metrics for ride data e.g. computed VAM, ascent time, and descent time are all now visible on the metrics tab when viewing a ride. We also added climb categorization and FIETS-index and we will start using them in more places throughout the site.

We are very excited about this change and for the very cool improvements that we'll be releasing soon that it makes possible!

If you have any questions about "{{ page.title }}" email us at <a href="mailto:info@ridewithgps.com">info@ridewithgps.com</a>
