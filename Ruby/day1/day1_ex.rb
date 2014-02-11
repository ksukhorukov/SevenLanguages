#!/usr/bin/env ruby

puts "Hello, world!"

str = "Hello, Ruby"
idx = str.index("Ruby")
puts "Position of word 'Ruby' in string is #{idx}"

str = "This is sentence number 1"
puts str.sub('1', '10')

secret = rand(10)
guess = -1
puts "Check your intuition and try to guess random number!"
while guess != secret
	guess = STDIN.readline.to_i
	if guess > secret
		puts "Your number is greatter than secret number!"
	else
		puts "Your number is less than secret number!"
	end
end

puts "Bingo! The secret number is #{secret}"

