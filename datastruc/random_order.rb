@products   = %w[ bread cheese sword child radio book antfarm SDcard chips vanilla ]
@prices     = [ 5, 10, 15, 19.99 ]
@order_size = rand(1..@products.length)
@order      = { }
@total      = 0

@products.sample(@order_size).map { |item| @order[{ :item => item, :price  => @prices.sample }] = rand(1..3) }

puts "Item" + "Cost".center(20) + "Quantity"
@order.each do |item, quantity| 
  puts "#{item[:item]}" + "".center(10 - (item[:item].length - 2)) + "$#{sprintf("%.2f", item[:price])}" + "".center(10 - (sprintf("%.2f", item[:price]).length - 1)) + "#{quantity}";
  @total += item[:price] * quantity
end

puts "-"*32
puts "Total: $#{sprintf("%.2f", @total)}"
