#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'



debug_mode
no_update
verbose
exclude bad_words

#
# Specifying 'use_streaming' will cause Chatterbot to use Twitter's
# Streaming API. Your bot will run constantly, listening for tweets.
# Alternatively, you can run your bot as a cron/scheduled job. In that
# case, do not use this line. Every time you run your bot, it will
# execute once, and then exit.
#
use_streaming

#
# Here's the fun stuff!
#

# Searches: You can do all sorts of stuff with searches on Twitter.
# However, please note, interacting with users who don't follow your
# bot is very possibly:
#  - rude
#  - uncool
#  - likely to get your bot suspended
#
# Still here? Hopefully it's because you're going to do something cool
# with the data that doesn't bother other people. Hooray!
#


#
# this block responds to mentions of your bot
#
#replies do |tweet|
#  # Any time you put the #USER# token in a tweet, Chatterbot will
#  # replace it with the handle of the user you are interacting with
#  reply "Yes #USER#, you are very kind to say that!", tweet
#end

