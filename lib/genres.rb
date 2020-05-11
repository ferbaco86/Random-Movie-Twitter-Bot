class Genres
  require 'themoviedb'
  require 'dotenv/load'

  Tmdb::Api.key(ENV['TMBD_KEY'])

  def initialize(words_array)
    @words_array = words_array
    @genre_list = Tmdb::Genre.list['genres']
    @genres_arr = []
    @genre_selected = []
  end

  def genre
    @genre_list.each { |item| @genres_arr << item['name'] }
    @genre_selected = @words_array & @genres_arr
    @genre_selected
  end

  def movie_list
    genre_selection = Tmdb::Genre.find(@genre_selected[0])
    page_number = rand(1..genre_selection.total_pages)
    movie_list_arr = if page_number == 1
                   genre_selection
                 else
                   genre_selection.get_page(page_number)
                 end
    movie_list_arr.results
  end

  def genre_selected?
    if @genres_arr.include?(@genre_selected[0])
      true
    else
      false
    end
  end
end
