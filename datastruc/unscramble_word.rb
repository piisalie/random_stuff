dictionary      = File.readlines("/usr/share/dict/words").map { |word| word.strip }
scrambled_word  = gets.strip
potential_words = dictionary.select { |word|
  word.length         == scrambled_word.length &&
  word.split(//).sort == scrambled_word.split(//).sort }

puts potential_words
