#!/usr/bin/env ruby
require_relative '../lib/helper_methods'
require_relative '../lib/genres'
require_relative '../lib/movies'
require 'rubygems'
require 'chatterbot/dsl'

# debug_mode
# no_update
verbose
exclude bad_words

replies do |tweet|
  include HelperMethods
  user = '#USER#'
  tweet_split = split_tweet(tweet.text)
  genres = Genres.new(tweet_split)
  genres.genre
  if genres.genre_selected?
    movies = Movies.new(genres.movie_list)
    movie_title = movies.title
    movie_id = movies.id
    reply "#{user} #{movie_title} https://www.themoviedb.org/movie/#{movie_id}", tweet
  else
    reply "#{user} Sorry, but that is not a valid genre", tweet
  end
end
