fruits = ['lemon', 'orange', 'peach', 'pineapple']

puts fruits
puts fruits.size

fruits.push('strawberry')
puts fruits.size

popped = fruits.pop
puts "popped: #{popped}, size: #{fruits.size}"
popped = fruits.pop
puts "popped: #{popped}, size: #{fruits.size}"

tours = {'indurain' => 5, 'merckx' => 5, 'armstrong' => 0}
puts tours
puts tours['indurain']

tours.each_key { |key|
	puts "#{key} won #{tours[key]} tours"
}
