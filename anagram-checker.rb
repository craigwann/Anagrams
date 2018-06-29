require('./lib/anagrams.rb')

loop do
  puts("Anagram checker: enter first half of anagram word or phrase")
  word1 = gets()
  puts("enter 2nd word or phrase")
  word2 = gets()

  anagram = Anagram.new(word1, word2)
  if anagram.is_it_anagram() == true
    puts("Yes, this is an anagram")
  elsif anagram.is_it_anagram() == false
    puts("No, this is NOT an anagram")
  else puts(anagram.is_it_anagram())
  end
  puts("  ")
  puts("Do you have another anagram to check? (Y/N)")

  endloop = gets().chomp().downcase()
  if endloop == 'n'
    break
  end
end
