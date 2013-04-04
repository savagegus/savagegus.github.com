#!/usr/bin/env bash
jekyll && rsync -avz --delete _site/ matt@unsure.org:~/public_html
