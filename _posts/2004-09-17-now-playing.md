---
layout: post
title: "Now Playing"
category: posts
---
<p>I wanted to add a dynamic string to my webpage displaying what rhythmbox was currently playing. I asked a few people if they had seen a script that would do this, but the best anyone came up with was looking at the source for the rhythmbox-gaim plugin and going from there. After checking out the plugin I remembered how much I hate c I decieded to try it out in python.</p>
<p>Since my desktop sits behind a cablemodem and buzzco uses the ip to host buzzco.org I couldn't query my machine whenever my page is loaded. So instead I look up the songinfo through bonobo write that to a file and scp it to my server. Here is the script to get the info and send it:</p>
<pre>
import pygtk
pygtk.require('2.0')
import bonobo
import os

bonobo.activate()
try:
        rb = bonobo.get_object('OAFIID:GNOME_Rhythmbox', 'GNOME/Rhythmbox')
        properties = rb.getPlayerProperties()
        v = properties.getValue('song')
        songinfo = v.value()

        open('/home/matt/tunes', 'w').write(songinfo.artist + ' - ' + songinfo.title)
except:
        open('/home/matt/tunes', 'w').write("nothing, rhythmbox isn't running")

os.system('/usr/bin/scp /home/matt/tunes root@unsure.org:/var/www/')
</pre>

<p> In order to keep the info current I created a cron job to run the script every 2 minutes. Two important things to note about cron (besides cron sucks). 
<ul>
<li>Whichever user is running rhythmbox is the user that needs to run the cron job. </li>
<li>Cron doesn't know a flipping thing about any system or user info so you have to use absolute paths.</li>
</ul>

<pre>*/2 *  * * *  /usr/bin/python /home/matt/rhythmbox.py</pre>
<p>I also wrote a small plugin to pyblosxom to display to info. It still needs a little work so I'll post it in a day or two. For now check out <a href="http://web.archive.org/web/20050109102447/http://unsure.org/">unsure</a> to see whay i'm listening to.</p>