class Anagram < String
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def is_it_anagram ()
    word1_array = @word1.downcase.split("")
    word2_array = @word2.downcase.split("")
    word1_array
    word2_array
  end

end
