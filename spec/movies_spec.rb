require_relative '../lib/genres.rb'
require_relative '../lib/movies.rb'

describe Movies do
  let(:genres) { Genres.new(%w[I Want To Watch A Comedy]) }
  let(:movies) { Movies.new(genres.movie_list) }

  describe '#title' do
    it 'Returns the title of the selected movie' do
      genres.genre
      expect(movies.movie_info).to include(movies.title)
    end
  end
  describe 'id' do
    it 'Returns the id of the selected movie' do
      genres.genre
      expect(movies.movie_info).to include(movies.id)
    end
  end
end
