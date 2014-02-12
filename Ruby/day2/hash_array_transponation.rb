#!/usr/bin/env ruby

# 2) How would you translate a hash to an array? Can you translate arrays to hashes?

capitals = { 'Russia' => 'Moscow', 'USA' => 'Washington', 'China' => 'Beijing' } 

p capitals
p capitals.to_a # has to array. way 1
p capitals.to_a.flatten # has to array. way 2
p capitals.to_a.inject(Hash.new) { |table, pair| table[pair.first] = pair.last; table } #array to hash

