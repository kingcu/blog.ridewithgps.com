---
layout: post
title: "Metrics Improvements"
---
Over the last month we have re-architected a very fundamental component of our site we call the "metrics calculator".  This component is responsible for all summary metrics on any route, ride, or segment.  It is responsible for crunching the numbers when you zoom in, view your best efforts, or look at the max speed or grade of a ride.  We are really excited about these changes, because it gives us some immediate improvements, and paves the way for some features we'll be working on right away.

A quick overview of the improvements that are on Ride with GPS right now, available on all of your existing data:
	<ul>
		<li>Hover your mouse over any min/max number under metrics to see it highlighted on the map and graph - see where the max grade is, see where your max speed was, etc.</li>
		<li>Max speed is no longer buggy</li>
		<li>Grade is *much* better.  Even the max grade is a fairly reliable number now!</li>
		<li>New metrics: VAM (how fast you climb), ascent time, descent time, UCI climb category, and more!</li>
		<li>Color-coded metrics to match the graph - easier to visually scan the metrics table now.</li>
		<li>Segment times are now displayed as when you started the actual segment (before it just showed when you left on the ride, so multiple efforts on the same segment would show the same time).</li>
	</ul>

What you can expect in the next week thanks to this work:
	<ul>
		<li>The segments tab on your profile will list segment distance/elevation/climb category/etc.</li>
		<li>All route/trip metrics (distance, elevation, speed, etc) will be consistent everywhere on the site.</li>
		<li>More best effort intervals for our premium users with power meters.</li>
	</ul>

One of the primary motivations behind these changes, is that it allows us to do efficient comparisons across all your rides.  We are well on our way to wrapping up some great improvements to the activity center for our premium users that take advantage of this, stay tuned and let us know if you have any feedback!

<img class="postimage" src="/images/post_images/newmetrics.jpg">

If you have any questions about "{{ page.title }}" email us at <a href="mailto:info@ridewithgps.com">info@ridewithgps.com</a>
