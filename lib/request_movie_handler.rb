module RequestMovieHandler
  require 'themoviedb'
  require_relative '../config/tmdb_api_key'
  include TMBDApiKey

  TMBDApiKey::KEY
  
  @@genre_list = Tmdb::Genre.list["genres"]
  @@genre_selected = []
  @@genres_arr = []
  
  def check_movie
    if @@genres_arr.include?(@@genre_selected[0])
      get_random_movie
    else
      return false
    end
  end

  def get_genre(words_array)
    @@genre_list.each {|item| @@genres_arr << item["name"]}
    @@genre_selected =  words_array & @@genres_arr
    @@genre_selected
  end

  private
  def get_random_page
    genre_selection = Tmdb::Genre.find(@@genre_selected[0])
    page_number = rand(1..genre_selection.total_pages)
    unless page_number == 1
      genre_page_selection = genre_selection.get_page(page_number)
    else
      genre_page_selection = genre_selection
    end 
    genre_page_selection
  end

  def get_random_movie
    movie_info_arr = []
    movie_list = get_random_page.results
    selected_movie_info = movie_list.sample
    movie_info_arr << selected_movie_info['id']
    movie_info_arr << selected_movie_info['title']
  end
end
