# -*- coding: utf-8 -*-
@todo = [ ]
@done = [ ]

while @todo
  system "clear"

  puts "Todo:"
  @todo.each do |item|
    puts item
  end
  puts "---".center(10)
  @done.each do |item|
    puts "✓ #{item}"
  end

  puts "Use 'd:' to mark as done; 'q' to quit"
  entry = gets.strip

  if entry.include?("d:")
    @done << @todo[@todo.index(entry[2..-1].strip)]
    @todo.delete(entry[2..-1].strip)
  elsif entry.strip == "q"
    exit
  else
    @todo << entry.strip
  end
end
