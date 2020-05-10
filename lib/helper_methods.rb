module HelperMethods

  def split_tweet(input)
    input_arr = input.gsub(/[^a-zA-Z0-9\-]/," ").split
    return capitalize_words(input_arr)
  end

  private
  def capitalize_words(array)
    word_arr_cap = []
    array.each {|word| word_arr_cap << word.downcase.capitalize}
    word_arr_cap
  end
end