#!/usr/bin/env ruby
require 'pinboard'

pinboard = Pinboard::Client.new(:username => 'mattfinlayson', :password => 'm0foLamb')
print pinboard.posts(:tag => 'ruby') #all posts tagged 'ruby'
