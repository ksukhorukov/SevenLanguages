#!/usr/bin/env ruby

# Write a simple grep that will print the lines of a ﬁle having any
# occurrences of a phrase anywhere in that line. You will need to do
# a simple regular expression match and read lines from a ﬁle. (This
# is surprisingly simple in Ruby.) If you want, include line numbers.

unless ARGV.size == 2
	puts "Usage: #{$0} /path/to/data.txt word_to_grep"
	exit
end

file_name = ARGV[0]
pattern = ARGV[1]

unless File.exists? file_name and File.readable? file_name
	puts "Error: '#{file_name}' does not exists or not available for reading."
	exit 
end


File.readlines(file_name).each_with_index do |line, index|
	if line.match(/#{pattern}/i)
		puts "#{index}: #{line.chomp}"
	end
end
