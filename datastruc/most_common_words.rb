frequencies = Hash.new(0)
File.open('constitution.txt') { |f| f.read }.split.each { |word| frequencies[word.downcase] += 1 }
frequencies.sort_by { |word, freq| freq }.reverse.take(10).each { |word, freq| puts "#{word}: #{freq}" }
