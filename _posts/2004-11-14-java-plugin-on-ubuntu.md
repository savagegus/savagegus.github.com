---
layout: post
title: Java Plugin on Ubuntu
category: posts
tags:
- java development kit
- ubuntu
- firefox
- java
- java applet
- export
- java virtual machine
- java version history
---
<p>Since a couple people have asked me about it here's what you need to do to get Java applets running on Ubuntu in Firefox. First get and install a JDK sun or ibm, doesn't matter. Not blackdown. Now put this in your .bashrc or /etc/profile:</p>
<blockquote>
    export JAVA_HOME="/opt/j2sdk1.4.2_06/"
    export JDK_HOME="${JAVA_HOME}"
    export PATH="${JAVA_HOME}/bin:${PATH}"
</blockquote>

<p>Finally as root:</p>
<blockquote>
    ln -sf /opt/j2sdk1.4.2_06/jre/plugin/i386/ns610-gcc32/libjavaplugin_oji.so /usr/lib/mozilla-firefox/plugins/libjavaplugin_oji.so
</blockquote>
