puts "Hello, World!"

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
