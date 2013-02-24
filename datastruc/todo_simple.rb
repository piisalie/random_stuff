@todo =  [ ]

while @todo
  system "clear"

  puts "Todo:"
  @todo.to_enum.with_index(1) do |item, index|
    puts "#{index}: #{item}"
  end

  puts "Use 'd:' or 'r:' to remove items; 'q' to quit."
  entry = gets.strip

  if entry.include?("d:") || entry.include?("r:")
    @todo.delete(entry[2..-1].strip)
  elsif entry.strip == "q"
    exit
  else
  @todo << entry
  end
 
end
