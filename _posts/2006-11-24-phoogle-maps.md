---
layout: post
title: Phoogle Maps
category: posts
tags:
- geocoding
- google maps
- database
- google
- php
- application programming interface
- programming
- languages
---
<p>Recently I wanted to create a google map showing the locations of the zeta nu alumni. I have most of the addresses in a mysql database but I was having an annoying time hooking the database lookups to the javascript for the maps. Rather than think to hard I used standard php with mysql and <a href="http://web.archive.org/web/20071216061221/http://www.systemsevendesigns.com/phoogle" onclick="javascript:urchinTracker ('/outbound/article/www.systemsevendesigns.com');">Phoogle Maps</a> to create an populate the map. This worked fine but it was crazy slow.</p>
<p>The issue was gecoding, converting the real world addresses to the long/lat positions on that google maps requires. This was fairly easy to get around, basically I wrote another php script to geocode the addresses and insert them into the database as well. Now the mapping goes much faster, yadda yadda. For posterity here is the <a href="http://web.archive.org/web/20071216061221/http://zetanu.net/maps/cached_zn.php" onclick="javascript:urchinTracker ('/outbound/article/zetanu.net');">actual map</a>. It&#8217;s generated on the fly, geocoding new addresses as needed, although the zoom isn&#8217;t quite right.</p>
