---
layout: post
title: Logitech MX700 under linux
category: posts
tags:
- mouse
- logitech
- usb
- button
---
<p>
    			Ok, so my mouse at work bites and I decided to pick a new one up. I got the Logitech MX700 (the same as steve) it is a wireless optical mouse with a charging station which is nice. Ok, so to set it up in linux:
<p>

1. compile imwheel and install<br>
2. add the following lines to the top of your ~/.xinitrc:<br>
      <code>/usr/X11R6/bin/xmodmap -e "pointer = 1 2 3 6 7 4 5"<br>
      imwheel -k -p -b "67" -f &</code><br>
3. Edit your /etc/X11/XF86Config file. <br.
   ><i>Section "InputDevice"<br>
           Identifier  "Mouse0"<br>

           Driver      "mouse"<br>
           Option      "Protocol" "ExplorerPS/2"<br>
           Option      "Device" "/dev/mouse"<br>
           Option      "ZAxisMapping"  "6 7"<br>
           Option      "Buttons" "7"<br>
      EndSection<br></i>

4. Lastly, you need to modify your ~/.imwheelrc file to your liking.<br>
<p>
<a href="http://web.archive.org/web/20041129021104/http://unsure.org/junkbox/imwheelrc">This</a> is my imwheelrc file. That gives me working pgup and pgdown buttons on my mouse and scrolling. Still can't use the applications or back/forward buttons. If someone figures that out let me know.<br>
<p>
In other news I posted a bunch of old zn photos to my gallery.<br>
http://unsure.org/albums/thezetanus

  			</p>
