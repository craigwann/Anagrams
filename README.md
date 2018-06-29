# Anagram and Antigrams

#### Ruby Course: Independent Project/Code Review
 Friday, June 29th, 2018

#### Craig Wann

## Description
A program that determines whether 2 text strings are an anagram, antigram or neither.

## Specs/Steps
| Behavior	| INPUT	| OUTPUT |
| :----------:| :-----: | :-------:|
|checks if 2 words are anagrams | "ruby", "bury"| *true* |   
|accounts for words with different letter cases | "Eat", "Tea" | *true* |
|checks if word1 contain vowels | "bxt", "eat | *"not a word" * |
|checks if word2 contain vowels | "eat", "bmn" | *"not a word" * |
|checks if words are antigrams | "your", "mine" | *"antigram" * |
|checks if multi-word strings are anagrams | "rail safety", "fairy tales" | *true* |
|checks if input-word strings with punctuation are anagrams | "customers?", "store scum!" | *true* |

## Setup Requirements
1. Clone the repo from:  https://github.com/craigwann/Anagrams.git
1. Using Terminal navigate to the root directory
1. enter "ruby anagram-checker.rb"

## Technologies Used
1. Ruby 2.4.1
1. Ruby gem rspec
1. Ruby gem pry

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Craig Wann**
