---
layout: post
title: "Wicked Cool Free Stuff"
category: posts
---
<p>
Day 2 of vacation is a success. I got a lot of important sitting around done AND I beat a level in Incredible Hulk for the xbox. Pantloads of fun were had by all. (me). </p>
<p>
I also got around to checking through my bookmarks putting the important stuff in delicious and deleting the rest. When digging through those bookmarks I ran into the <a href="http://web.archive.org/web/20051104085413/http://archive.org/">Internet Archive</a> for music. It's done in a collaboration with <a href="http://web.archive.org/web/20051104085413/http://etree.org/">etree</a> and they have some solid bands in there that allow taping. I thought I might point out some good shows they have available. Today's selection is a <a href="http://web.archive.org/web/20051104085413/http://spoontheband.com/">Spoon</a> concert. You may know them from their song 'I turn my camera on'. I like them a lot. As far as an indie band goes they are solid musicians and their work sounds as good live as it does on their albums. This concert is recorded very well, sounds like it might even be right off the board. Anyway, here are the details:
</p>

<b>July 15th, 2003</b><br>

Band/Artist: Spoon<br>
Date: July 15th, 2003<br>
Venue: The Fillmore<br>
Location: San Francisco, CA <br>
<p> You can get the shn files (shorten) <a href="http://web.archive.org/web/20051104085413/http://www.archive.org/audio/etree-details-db.php?id=6370&from=browsePopular">here</a> Unfortuantely the shn format is pretty much completely unfriendly for iPod toting hipsters like buzzco. So I took the time to convert them to mp3's and even tag them. You can get the fruits of my labor <a href="http://web.archive.org/web/20051104085413/http://unsure.org/junkbox/Live%20at%20the%20Fillmore.zip">here</a> If you want to check them out try this <a href="http://web.archive.org/web/20051104085413/http://unsure.org/junkbox/16%20-%20The%20Way%20we%20Get%20By.mp3">track</a>.

</p>
<p>
The conversion from shn files to mp3s is kinda crummy, this is how I did it.
</p>
<ul>
<li>First install shntool from universe</li>
<li>Next you need the actual shorten binary for shntool to use, you can find it <a href="http://web.archive.org/web/20051104085413/http://www.hornig.net/files/shorten/shorten.linux.tgz">here</a>. I put the binary in /usr/bin.</li>
<li>Lame to convert from wav to mp3</li>
<li>Finally <a href="http://web.archive.org/web/20051104085413/http://more-cowbell.org/">cowbell</a> to tag it.</li>

</ul>
<p>Ok, shnconv * on the downloaded tracks gives you mp3's. Next a little find magic with lame converts them to mp3's. </p>
<center><i>find . -name \*.wav -exec lame -b 256 -h -m s {} \;</i></center>
<p>Finally I imported the tracks to Muine and used cowbell (an awesome app) to tag it and rename the files. If anyone has a better way to do it let me know.</p>
</p>
