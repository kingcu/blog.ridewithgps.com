---
layout: post
title: "Site Update: Time On Bike Calculation"
---
When we initially created the "Total Time on Bike" metric for users profile we calculated it on the total time logged on the device. We made the assumption that people would ride with maybe a brief stop or two and that this could be considered time spent on the bike. It resulted in numbers like:

<img class="postimage" src="/images/post_images/timeonbike_1.jpg">

Recently we have discovered that our assumptions wasn't a safe assumption. A good case to exemplify this is a commuter who rides to work in the morning, works all day, and then rides home. Calculating his/her "Time on Bike" the way we were was resulting in 10+ hrs of time on bike for the day. 

We made the decision to switch our calculation to moving time for rides. This changes the above "Total Time on Bike" calculation to:

<img class="postimage" src="/images/post_images/timeonbike_2.jpg">

We think that the new way of calculating this metric is a lot more accurate to actual time spent pedaling your bike. Check out your <a href="http://www.ridewithgps.com/?utm_source=Blog&utm_medium=Social&utm_campaign=DailyPost">"Total Time on Bike"!

If you have any questions about our Time on Bike Calculation email us at <a href="mailto:info@ridewithgps.com">info@ridewithgps.com</a>
