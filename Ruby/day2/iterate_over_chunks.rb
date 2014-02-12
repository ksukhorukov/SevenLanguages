#!/usr/bin/env ruby

numbers = (1..16).to_a

#iterating over chunks (4 numbers) at time using 'each' and 'each_slice'

puts "each:"
numbers.each { |e| p numbers[(e-4)..e-1] if e % 4 == 0 }

puts "each_slice:"
numbers.each_slice(4) { |chunk| p chunk }