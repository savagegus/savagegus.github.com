---
layout: post
title: Getting Tumblr to Octopress Working
date: 2012-01-02 18:17
comments: true
categories: 
tags:
- awk
- grep
- yaml
- google
- programming
- languages
- user
---
Following https://github.com/mojombo/jekyll/wiki/blog-migrations to get posts from tumblr. I then get YAML errors due to bad characters in the title sections. A little grep and awk shows me the bogus titles.

{% gist 1553113 error1 %}

{% gist 1553113 answer1 %}

It was the colons.
