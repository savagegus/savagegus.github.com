---
layout: post
title: XDMCP to the Rescue
category: posts
tags:
- login
- gnome display manager
- x display manager
- remote computer
- clients
- www
- browsers
---
<p>When I work from home I need to use my work laptop because all my files are there as well as lotus notes and my vpn software. Rather than putting any of that stuff on my home machine (which is considerably faster and have 2 monitors) I had been sshing to my laptop and forwarding to my desktop x server. This worked but usually caused some funkiness, especially with firefox. After I managed to blow away my connection and all my programs by accidentally closing my terminal that spawned all the apps I knew I needed a better solution.<br /> <br /> Enter XDMCP.<br /> <br /> XDMCP allows users to log in through GDM to a desktop located on a different system. Over wireless this kind of thing drags but if all the machines are sharing a switch everything is kosher. Here's how to set it up:<br /> &nbsp; System -&gt; Administration -&gt; Login Screen Setup<br /> &nbsp; Click on the 'Security' tab.<br /> &nbsp; Check Enable XDMCP<br /> <br /> TADA.<br /> <br /> To actually log in you can do a few things. <br /> &nbsp;&nbsp; Just log out back to gdm. Click on system and choose XDMCP<br /> &nbsp;&nbsp; Or to remain logged in and connect to a remote machine on breezy run Applications -&gt; System Tools -&gt; New Login. Click on system and choose XDMCP<br /> &nbsp;&nbsp; To remain logged in and connect to a remote machine on Dapper go to System -&gt; Log off &lt;user&gt;... -&gt; Switch User. Click on system and choose XDMCP<br /> <br /> If you have 2 logins you can switch between them using CTRL + ALT + F7 or F8<br /></p>
