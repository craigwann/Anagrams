class Anagram < String
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    # @word1_array = word1_array
    # @word2_array = word2_array
  end

  def is_it_anagram ()
    word1_array = @word1.downcase.split("").sort
    word2_array = @word2.downcase.split("").sort
    vowels = ["a", "e", "i", "o", "u", "y"]

    if (word1_array & vowels).empty? | (word2_array & vowels).empty?
      "not a word"
    elsif (word1_array & word2_array).empty?
      "antigram"
    elsif word1_array == word2_array
      return true
    end

  end
end
