require_relative '../lib/helper_methods.rb'

describe HelperMethods do
  include HelperMethods
  let(:tweet_test1) { 'I want, to watch, a comedy!' }
  let(:tweet_test2) { 'I want to watch a comedy' }
  let(:words_array_test) { %w[I Want To Watch A Comedy] }

  describe '#split_tweet' do
    it "Returns the the text stripped of special characters and
    divided into an array of each word as an element capitalized" do
      expect(split_tweet(tweet_test1)).to eql(words_array_test)
    end
  end

  it 'Returns an array of the text divided into each word as an element capitalized' do
    expect(split_tweet(tweet_test2)).to eql(words_array_test)
  end

  describe '#capitalize_words' do
    it 'Returns the the elements of the array capitalized' do
      expect(capitalize_words(%w[tweet case])).to eql(%w[Tweet Case])
    end
  end
end
