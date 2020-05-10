class RequestMovieHandler
  require 'themoviedb'
  require_relative '../config/'
  include TMBDApiKey

  TMBDApiKey.key
  
  @genre_list = Tmdb::Genre.list["genres"]
  def get_genre
    genres_arr = []
    @genre_list.each {|item| genres_arr << item["name"]}
    genre_selected = helper_methods.capitalize_words & genres_arr
    p genre_selected
  end

end
