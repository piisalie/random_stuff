class Blacklist
  def initialize(banned_words)
    @banned_words = banned_words
    @checks       = 0
  end

  attr_reader :checks

  def clean?(words)
    @checks += 1
    words.each do |word|
      return false if @banned_words.include? word
    end
    true
  end

  # check your work
  def banned?(suspected_words)
    @banned_words.sort == suspected_words.sort
  end
end

#words     = %w[one two three four five six seven eight nine ten]
#blacklist = Blacklist.new(%w[six])


#words.each_slice(words.length/2) { |slice| 
#  p blacklist.clean?(slice) }

#suspect = words.select { |word| not blacklist.clean?([word]) }
#p blacklist.banned?(suspect)
#p blacklist.checks

# words = File.readlines("/usr/share/dict/words").map { |word| word.strip }
# random_subset = words.sample(100)
# p words.size
# p random_subset
