puts "Hello, World!"

a_string = 'Hello, Ruby!'
to_search = 'Ruby'
index = a_string.index(to_search)
puts "Index of '#{to_search}' in '#{a_string}' is: #{index}"

my_name = 'Pietro'
count = 10
count.times {
	puts my_name
}

i = 0
while i < count 
	puts my_name
	i = i + 1
end

count.times { |k| puts "This is sentence number #{k}" }
