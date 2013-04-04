---
layout: post
title: Aw Man! I brought that from home
category: posts
tags:
- advanced packaging tool
- ubuntu
- operating system
- linux
- bash
- shell
- distributions
- unix
---
Don't get me wrong I like ubuntu a lot, but I frigging hate typing. Luckily they ubuntu folks thoght of me. Bash Autocompletion is shipped with the base distro but it's not turned on. (I don't mean regulat tab completeion). It is however, easy to turn on.<br /> <br /> &nbsp;edit /etc/bash.bashrc and uncomment the following block:<br /> <br /> # enable bash completion in interactive shells<br /> # if [ -f /etc/bash_completion ]; then<br /> #&nbsp;&nbsp;&nbsp; . /etc/bash_completion<br /> # fi<br /> <br /> Now when you type something like apt-get up[TAB] the magic happens.<br />
