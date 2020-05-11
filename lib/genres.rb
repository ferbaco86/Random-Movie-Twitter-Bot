class Genres
  require 'themoviedb'
  require_relative '../config/tmdb_api_key'
  include TMBDApiKey

  TMBDApiKey::KEY
  

  def initialize(words_array)
    @words_array = words_array
    @genre_list = Tmdb::Genre.list["genres"]
    @genres_arr = []
    @genre_selected = []
  end

  def get_genre
    @genre_list.each {|item| @genres_arr << item["name"]}
    @genre_selected =  @words_array & @genres_arr
    @genre_selected
  end

  def get_movie_list
    genre_selection = Tmdb::Genre.find(@genre_selected[0])
    page_number = rand(1..genre_selection.total_pages)
    unless page_number == 1
      movie_list = genre_selection.get_page(page_number)
    else
      movie_list = genre_selection
    end 
    movie_list.results
  end

  def is_genre_selected?
    if @genres_arr.include?(@genre_selected[0])
      return true
    else
      return false
    end
  end

end
