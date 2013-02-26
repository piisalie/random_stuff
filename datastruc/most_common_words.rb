#frequencies = Hash.new(0)
#File.open('constitution.txt') { |f| f.read }.split.each { |word| frequencies[word.downcase] += 1 }
#frequencies.sort_by { |word, freq| freq }.reverse.take(10).each { |word, freq| puts "#{word}: #{freq}" }

Hash.new(0).tap {|h| File.open('constitution.txt') { |f| f.read }.split.each { |w| h[w.downcase] += 1 }}.sort_by { |w, f| f }.reverse.take(10).each { |w,f| puts "#{w}: #{f}"} 
