#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

debug_mode
no_update
verbose
exclude bad_words


replies do |tweet|
   tweet.text = "Test tweet text"
   p tweet.text
end

