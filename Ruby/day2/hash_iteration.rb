#!/usr/bin/env ruby

# 3) Can you iterate through a hash?

report = { "Jane Doe" => 10, "Jim Doe" => 6 }

report.each { |name, grade| puts "#{name} - #{grade}"}
