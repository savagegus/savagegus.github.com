---
layout: post
title: That just sucks.
category: posts
tags:
- daylight saving time
- windows
- time zone
- united states
- clock
- benjamin franklin
- standard time act
- cnn
---
<p>The file which you have started editing has got another timestamp and the
contents changed (more precisely: When reading the file again with the current
option settings and autocommands you would end up with different text).  This
probably means that some other program changed the file.  You will have to
find out what happened, and decide which version of the file you want to keep.
Set the 'autoread' option if you want to do this automatically.
This message is not given when 'buftype' is not empty.

There is one situation where you get this message even though there is nothing
wrong: If you save a file in Windows on the day the daylight saving time
starts.  It can be fixed in one of these ways:
<ul>
<li>Add this line in your autoexec.bat: >
   SET TZ=-1
   Adjust the "-1" for your time zone.</li>
<li>Disable "automatically adjust clock for daylight saving changes".</li>
<li>Just write the file again the next day.  Or set your clock to the next day,
write the file twice and set the clock back.</li>
</ul>
<br>
-- from the gvim :help W11 page.
