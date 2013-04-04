---
layout: post
title: Make Firefox Faster
category: posts
tags:
- address bar
- about uri scheme
- web page
- context menu
- firefox
- web browser
- proxying and filtering
- hosted proxy services
---
<p>
<ol>

<li>Type "about:config" into the address bar and hit return. Scroll down and
look for the following entries:<br />

network.http.pipelining network.http.proxy.pipelining<br />
network.http.pipelining.maxrequests<br />

Normally the browser will make one request to a web page at a time. When you
enable pipelining it will make several at once, which really speeds up page
loading.<br />
</li>
<li>
Alter the entries as follows:<br />

Set "network.http.pipelining" to "true"<br />

Set "network.http.proxy.pipelining" to "true"<br />

Set "network.http.pipelining.maxrequests" to some number like 30. This means
it will make 30 requests at once.<br />
</li>
<li>
Lastly right-click anywhere and select New-> Integer. Name it
"nglayout.initialpaint.delay" and set its value to "0". This value is the
amount of time the browser waits before it acts on information it
recieves.<br />
</li>
</ol>
</p>
