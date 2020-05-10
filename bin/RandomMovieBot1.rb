#!/usr/bin/env ruby
require_relative '../lib/helper_methods'
require_relative '../lib/request_movie_handler'
include HelperMethods
include RequestMovieHandler
require 'rubygems'
require 'chatterbot/dsl'

#debug_mode
#no_update
verbose
exclude bad_words

 replies do |tweet|
   user = "#USER#"
   tweet_split = split_tweet(tweet.text)
   get_genre(tweet_split)
   unless check_movie
      reply "#{user} Sorry, but that is not a valid genre", tweet
   else
      movie = check_movie
      movie_id = movie[0]
      movie_title =movie[1]
      reply "#{user} #{movie_title} https://www.themoviedb.org/movie/#{movie_id}", tweet
   end
end





