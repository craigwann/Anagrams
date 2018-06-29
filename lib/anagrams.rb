class Anagram < String
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def is_it_anagram ()
    word1_str = @word1.gsub(/\s+/, "").gsub(/[[:punct:]]/, '')
    word2_str = @word2.gsub(/\s+/, "").gsub(/[[:punct:]]/, '')

    word1_array = word1_str.downcase.split("").sort
    word2_array = word2_str.downcase.split("").sort
    vowels = ["a", "e", "i", "o", "u", "y"]

    if (word1_array & vowels).empty?
      "first word/phrase is NOT a word"
    elsif (word2_array & vowels).empty?
      "second word/phrase is NOT a word"
    elsif (word1_array & word2_array).empty?
      "No, this is an ANTIGRAM"
    elsif word1_array == word2_array
      true
    else
      false
    end
  end
end
