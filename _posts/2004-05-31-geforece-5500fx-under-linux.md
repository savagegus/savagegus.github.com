---
layout: post
title: "geForece 5500fx under Linux"
category: posts
---
<p>
    			So I have a pretty fly desktop and thanks to some poor purchasing (or good purchasing depending on how you look at it) I have 2 LCD's. One 19" LG which is fantastic, and a 15" Viewsonic. I wanted to run both heads on my gentoo box but because of the form factor I didn't want to use both my free slots, 1 AGP and 1 PCI, I decided to get a card that could push both. I ended picking up an Nvidia GeForce 5500 fx which has both a VGA and DVI out and can push both at the same time. 

I tried a few times to get it working however I was unable to at first. It came down to a couple little tricks that I needed to know in order to get it working plus a helpful tutorial. 

First thing to know is that although the card will initially mirror both displays outside of X the VGA out is considered the primary display. First thing to do is make sure you build X with Xinerama support. Then build the nvidia drivers and set up the first display normally. When you go into X only the first display will work.   

Now there is just one more thing to do. You need to add information to the Screen directive to enable the Twinview. Note that is different than normal dual head setups where there are seperate directives for each video card and monitor. 

http://www.mkaz.com/reference/gentoo_dual.html

Marcus put up a clear howto. Here is my <a href="http://web.archive.org/web/20041129021104/http://unsure.org/junkbox/XF86Config-4">XF86Config</a> also.

  			</p>