words = %w[car table chair fruit whiskey rake red]
numbers = *(1..10)

#count
#p words.count { |word| word.include?("a") }

count = 0
words.each do |word|
  count += 1 if word.include?("a")
end
#p count


#drop
#p words.drop(2)

def drop(array, number)
  result =[]
  array.each_with_index do |element,index|
    result << element if index >= number
  end
  return result
end

#p drop(words,2)


#drop_while
#p words.drop_while { |word| word.include?("a") }

result = []
condition = false
words.each do |word|
  if word.include?("a") and !condition
    next
  elsif !word.include?("a")
    condition = true
  end
  result << word
end
#p result 


#each_cons
#p words.each_cons(2) { |word| p word }



#each_slice
#p words.each_slice(2) { |slice| p slice }



#each_with_object


# group_by
#p numbers.group_by { |i| i%4 }

#groups = {1 => [], 2 => [], 3 => [], 0 => []}
#numbers.each do |number|
#  if number % 4 == 1
#    groups[1] << number
#  elsif number % 4 == 2
#    groups[2] << number
#  elsif number % 4 == 3
#    groups[3] << number
#  else
#    groups[0] << number
#  end
#end

#p groups


# none? 
#p words.none? { |word| word.include?("x") }

#number_of_matches = 0
#words.each do |word|
#  number_of_matches += 1 if word.include?("x")
#end
#if number_of_matches > 0
#  p false
#else
#  p true
#end


# one?
#p words.one? { |word| word.length == 3 }

#number_of_matches = 0
#words.each do |word|
#  number_of_matches += 1 if word.length == 3
#end
#if number_of_matches == 1
#  p true
#else
#  p false
#end



# take
#p words.take(3)

def take(array,limit)
  i = 0
  result = []
  array.each do |element|
    result << element if i < limit
    i += 1
  end
  return result
end

#p take(words,3)


# take_while
#p words.take_while { |word| word.include?("a") }

result = []
condition = false
words.each do |word|
  if word.include?("a") and !condition
    result << word
  elsif !word.include?("a")
    break
  end
end

#p result
