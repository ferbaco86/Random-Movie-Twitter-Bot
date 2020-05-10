#!/usr/bin/env ruby
require_relative '../lib/helper_methods'
include HelperMethods
require 'rubygems'
require 'chatterbot/dsl'

debug_mode
no_update
verbose
exclude bad_words


# replies do |tweet|
#    tweet.text = "Test tweet text"
#    p tweet.text
# end

tweet_split = HelperMethods.split_tweet("I want to see comedy")
p tweet_split


