class Movies
  require 'themoviedb'
  require_relative '../config/tmdb_api_key'
  include TMBDApiKey

  TMBDApiKey::KEY

  def initialize(movie_list)
    @movie_list = movie_list
    @movie_info = []
    selected_movie_info = @movie_list.sample
    @movie_info << selected_movie_info['id']
    @movie_info << selected_movie_info['title']
    @movie_info
  end
  
  #def get_random_movie
  
  #end

  def get_title
    title = @movie_info[1]
    title
  end

  def get_id
    id = @movie_info[0]
    id
  end
end