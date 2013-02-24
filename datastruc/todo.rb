@todo = [ ]

def add(item)
 @todo << item
  showtodo
end

def delete(item)
  @todo.delete(item)
  showtodo
end

def showtodo
  system "clear"
  puts "Todo:"
  @todo.to_enum.with_index(1) do |item, index|
    puts "#{index}: #{item}"
  end
  getinput
end

def getinput
  puts "(a)dd: item, or (d)elete: item"
  input = gets.strip
  if input.include?("add:") || input.include?("a:")
    add(input.split(":")[-1].strip)
  elsif input.include?("delete:") || input.include?("d:")
    delete(input.split(":")[-1].strip)
  else
    puts "Please use 'add:' or 'delete:' and then an item"
    sleep 2
    showtodo
  end
end

showtodo
