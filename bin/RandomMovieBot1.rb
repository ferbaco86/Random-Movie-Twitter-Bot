#!/usr/bin/env ruby
require_relative '../lib/helper_methods'
require_relative '../lib/genres'
require_relative '../lib/movies'

include HelperMethods
require 'rubygems'
require 'chatterbot/dsl'

debug_mode
#no_update
verbose
exclude bad_words

 replies do |tweet|
   user = "#USER#"
   tweet_split = split_tweet(tweet.text)
   genres = Genres.new(tweet_split)
   genres.get_genre
   
   unless genres.is_genre_selected?
      reply "#{user} Sorry, but that is not a valid genre", tweet
   else
      movies = Movies.new(genres.get_movie_list)
      movie_title = movies.get_title
      movie_id = movies.get_id
      reply "#{user} #{movie_title} https://www.themoviedb.org/movie/#{movie_id}", tweet
   end
end







