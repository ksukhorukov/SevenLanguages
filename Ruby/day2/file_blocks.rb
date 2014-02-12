#!/usr/bin/env ruby

# 1) Find out how to access ﬁles with and without code blocks. What
# is the beneﬁt of the code block?

# when we use blocks in this case, file descriptor
# will be closed automatically after block execution

f_name = 'blocks_test.txt'
File.open(f_name, 'w+') do |file|
	10.times do 
		file.puts("Hi there!")
	end
end

f = File.open(f_name, 'r') 
f.readlines.each { |line| puts line }

unless f.closed?
	f.close
	puts "Descriptor closed manually"
end

