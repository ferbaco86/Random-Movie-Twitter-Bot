require_relative '../lib/genres.rb'

describe Genres do
  let(:genres) { Genres.new(%w[I Want To Watch A Comedy]) }
  let(:words_array_test) { %w[Comedy] }
  let(:movies_genre_selected) { Tmdb::Genre.find('Comedy') }

  describe '#genre' do
    it 'Returns an array with the elements that are included in words_array and genres_array' do
      expect(genres.genre).to eql(words_array_test)
    end
  end
  describe '#genre_selected?' do
    it 'Returns true if the genre list contains the genre in the tweet' do
      genres.genre
      expect(genres.genre_selected?).to eql(true)
    end
  end
end
