require('rspec')
require('pry')
require('anagrams')

describe ('Anagram#anagrams') do
  it("checks if 2 words are anagrams") do
    anagram = Anagram.new("ruby", "bury")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
  it("accounts for words with different letter cases") do
    anagram = Anagram.new("Eat", "Tea")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
end
