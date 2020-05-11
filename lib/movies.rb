class Movies
  require 'themoviedb'
  require 'dotenv/load'

  Tmdb::Api.key(ENV['TMBD_KEY'])

  def initialize(movie_list)
    @movie_list = movie_list
    @movie_info = []
    selected_movie_info = @movie_list.sample
    @movie_info << selected_movie_info['id']
    @movie_info << selected_movie_info['title']
  end

  def title
    title = @movie_info[1]
    title
  end

  def id
    id = @movie_info[0]
    id
  end
end
