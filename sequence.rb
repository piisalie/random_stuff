class Sequence
  def initialize(&block)
    @block       = block
    @prev_values = [ ]
  end

  def next
    value = @block.call(@prev_values)
    @prev_values << value
    return value
  end

end

# calculating infinite streams

powers_of_two = Sequence.new { |prev_values| 2 ** prev_values.size }
p Array.new(10) { powers_of_two.next }

fibonacci = Sequence.new { |prev_values|
  case prev_values.size
  when 0..1              # if (0..1).include? prev_values.size
    prev_values.size
  else
    prev_values[-2] + prev_values[-1]
  end
}
p Array.new(10) { fibonacci.next }
