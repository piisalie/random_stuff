stack = [ ]
while stack
  system "clear"
  puts stack

  input = gets.strip
  if input =~ /[+\-*\/]/
    case input.match(/[+\-*\/]/)[0]
      when "+"
      stack << stack.pop + stack.pop
      when "-"
      stack << stack.pop - stack.pop
      when "*"
      stack << stack.pop * stack.pop
      when "/"
      stack << stack.pop / stack.pop
    end
  else
    stack << input.to_f
  end
end
