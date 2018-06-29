require('./lib/anagrams.rb')

puts("Anagram checker: enter first half of anagram word or phrase")
word1 = gets()
puts("enter 2nd word or phrase")
word2 = gets()

anagram = Anagram.new(word1, word2)
puts("is it an anagram? ", anagram.is_it_anagram())
