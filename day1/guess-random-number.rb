min = 1
max = 20
puts "Guess a random number between #{min} and #{max}"
num = rand(max - min) + min
guess = -1
until guess == num
	puts 'What is your guess?'
	read = gets 
	guess = read.to_i
	puts "Random num is greater than #{guess}" if num > guess
	puts "Random num is lesser than #{guess}" if guess > num
	puts "You won!" if guess == num
end
