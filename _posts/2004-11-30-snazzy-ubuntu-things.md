---
layout: post
title: "Snazzy Ubuntu things"
category: posts
---
<p>So I've been trolling through the ubuntu forums since they're really nice and still getting used to debian based system thing. I've come across 2 things that I didn't know about that helped a lot.</p>

<p>The first is nice freaking amazing fonts in gnome just save the following snippit as .font.conf in your home directory. Then log out and log back in. It made me pee a little.</p>

<p>EDIT: my xml block evaluated to true. download this file and name it .font.conf. font.txt</p>

<p>The other hint speeds up the interweb, i swear. The latest version of Mozilla includes support for "IPv6" a new form of addressing things on the Internet. Unfortunately it uses IPv6 before IPv4. If your connection doesn't support IPv6 then firefox will fail on it's first connection. To fix this:</p>
<p><i>sudo nano /etc/modutils/aliases</i></p>
<p>Look for this line:</p>
<blockquote>
# alias net-pf-10 off # IPv6
Change the line to: (remove the #)
alias net-pf-10 off # IPv6
</blockquote>
<p><i>sudo update-modules</i></p>

<p>One last thing, it's totally worth installing a kernel for your architecture. If you are on x86 the default kernel uses the i386 arch. You don't even have to rebuild it by hand to get an i686 kernel you just have to sudo apt-get install linux-686 If you're running a patched kernel (like i am for inotify) it's a little bit of work but not much.</p>
