require('rspec')
require('pry')
require('anagrams')

describe ('Anagram#is_it_anagram') do
  it("checks if 2 words are anagrams") do
    anagram = Anagram.new("ruby", "bury")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
  it("accounts for words with different letter cases") do
    anagram = Anagram.new("Eat", "Tea")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
  it("checks if 1st word contain vowels") do
    anagram = Anagram.new("bxt", "eat")
    expect(anagram.is_it_anagram()).to(eq("first word/phrase is NOT a word"))
  end
  it("checks if 2nd words contain vowels") do
    anagram = Anagram.new("eat", "bmn")
    expect(anagram.is_it_anagram()).to(eq("second word/phrase is NOT a word"))
  end
  it("checks if words are antigrams") do
    anagram = Anagram.new("yours", "mine")
    expect(anagram.is_it_anagram()).to(eq("No, this is an ANTIGRAM"))
  end
  it("checks if multi-word strings are anagrams") do
    anagram = Anagram.new("rail safety", "fairy tales")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
  it("checks if input-word strings with punctuation are anagrams") do
    anagram = Anagram.new("customers?", "store scum!")
    expect(anagram.is_it_anagram()).to(eq(true))
  end
  it("checks if a multi-word input-word strings are words") do
    anagram = Anagram.new("xxx eat", "tea")
    expect(anagram.is_it_anagram()).to(eq("first word/phrase is NOT a word"))
  end
end
