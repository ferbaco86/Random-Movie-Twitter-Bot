class HelperMethods
  def initialize(input)
    @input = input
  end
  def split_tweet(input)
    input_arr = @input.gsub(/[^a-zA-Z0-9\-]/," ").split
    input_arr
  end

  def capitalize_words(word_arr)
    word_arr_cap = []
    word_arr.each {|word| word_arr_cap << word.downcase.capitalize}
    word_arr_cap
  end
end