fruits = ['lemon', 'orange', 'peach', 'pineapple']

puts fruits
puts fruits.size

fruits.push('strawberry')
puts fruits.size

popped = fruits.pop
puts "popped: #{popped}, size: #{fruits.size}"
popped = fruits.pop
puts "popped: #{popped}, size: #{fruits.size}"
