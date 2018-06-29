class Anagram < String
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    # @word1_array = word1_array
    # @word2_array = word2_array
  end

  def is_it_anagram ()
    word1_str = @word1.gsub(/\s+/, "")
    word2_str = @word2.gsub(/\s+/, "")

    word1_array = word1_str.downcase.split("").sort
    word2_array = word2_str.downcase.split("").sort
    vowels = ["a", "e", "i", "o", "u", "y"]



    if (word1_array & vowels).empty? | (word2_array & vowels).empty?
      "not a word"
    elsif (word1_array & word2_array).empty?
      "antigram"
    elsif word1_array == word2_array
      true
    else
      false
    end

  end
end
