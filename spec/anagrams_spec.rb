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
  it("checks if words contain vowels") do
    anagram = Anagram.new("bxt", "eat")
    expect(anagram.is_it_anagram()).to(eq("not a word"))
  end
  it("checks if words contain vowels") do
    anagram = Anagram.new("eat", "bmn")
    expect(anagram.is_it_anagram()).to(eq("not a word"))
  end
  it("checks if words are antigrams") do
    anagram = Anagram.new("your", "mine")
    expect(anagram.is_it_anagram()).to(eq("antigram"))
  end
  it("checks if multi-word strings are anagrams") do
    anagram = Anagram.new("rail safety", "fairy tales")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
  it("checks if input-word strings with punctuation are anagrams") do
    anagram = Anagram.new("customers?", "store scum!")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
end
