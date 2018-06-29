require('rspec')
require('pry')
require('anagrams')

describe ('Anagram#anagrams') do
  it("checks if 2 words are anagrams") do
    anagram = Anagram.new("ruby", "bury")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
end
