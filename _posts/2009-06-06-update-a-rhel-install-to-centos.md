---
layout: post
title: Update a RHEL install to CentOS
category: posts
tags:
- centos
- rpm
- yellowdog updater  modified
- gnu privacy guard
- rpm package manager
- data formats
- archive
- linux
---
<p>yum clean all<br/>mkdir ~/centos<br/>cd ~/centos/<br/>wget <a target="_blank" title="External link to http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-5" href="http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-5" class="externalLink"><a href="http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-5">http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-5</a></a><br/>wget <a target="_blank" title="External link to http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-5-2.el5.centos.i386.rpm" href="http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-5-2.el5.centos.i386.rpm" class="externalLink"><a href="http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-5-2.el5.centos.i386.rpm">http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-5-2.el5.centos.i386.rpm</a></a><br/>wget <a target="_blank" title="External link to http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-notes-5.2-2.i386.rpm" href="http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-notes-5.2-2.i386.rpm" class="externalLink"><a href="http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-notes-5.2-2.i386.rpm">http://mirror.centos.org/centos/5/os/i386/CentOS/centos-release-notes-5.2-2.i386.rpm</a></a><br/>wget <a target="_blank" title="External link to http://mirror.centos.org/centos/5/os/i386/CentOS/yum-3.2.8-9.el5.centos.1.noarch.rpm" href="http://mirror.centos.org/centos/5/os/i386/CentOS/yum-3.2.8-9.el5.centos.1.noarch.rpm" class="externalLink"><a href="http://mirror.centos.org/centos/5/os/i386/CentOS/yum-3.2.8-9.el5.centos.1.noarch.rpm">http://mirror.centos.org/centos/5/os/i386/CentOS/yum-3.2.8-9.el5.centos.1.noarch.rpm</a></a><br/>wget <a target="_blank" title="External link to http://mirror.centos.org/centos/5/os/i386/CentOS/yum-updatesd-0.9-2.el5.noarch.rpm" href="http://mirror.centos.org/centos/5/os/i386/CentOS/yum-updatesd-0.9-2.el5.noarch.rpm" class="externalLink"><a href="http://mirror.centos.org/centos/5/os/i386/CentOS/yum-updatesd-0.9-2.el5.noarch.rpm">http://mirror.centos.org/centos/5/os/i386/CentOS/yum-updatesd-0.9-2.el5.noarch.rpm</a></a><br/>rpm import <a tiddlylink="RPM-GPG-KEY-CentOS-5" refresh="link" class="tiddlyLink tiddlyLinkNonExisting" title="The tiddler 'RPM-GPG-KEY-CentOS-5' doesn't yet exist" href="javascript:;">RPM-GPG-KEY-CentOS-5</a><br/>rpm -e nodeps redhat-release<br/>rpm -e yum-rhn-plugin<br/>rpm -Uvh force *.rpm<br/>yum upgrade</p>
