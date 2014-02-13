#!/usr/bin/env ruby

class CsvRow
	def initialize(row, headers)
		@struct = Hash.new
		row.each_with_index { |val, idx| @struct[headers[idx]] = val }
	end

	def respond_to?(sym)
		@struct.has_key? sym.to_s || super(sym)
	end

	def method_missing name, *args
		column = name.to_s
		@struct[column] || super
	end
end

class ActsAsCsv
	def read
		file = File.new(self.class.to_s.downcase + '.txt')
		@headers = file.gets.chomp.split(', ')
		file.each do |row|
			@result << row.chomp.split(', ')
		end
	end
	
	def headers
		@headers
	end

	def csv_contents
		@result
	end
	
	def initialize
		@result = []
		read
	end

	def each &block
		@result.each do |row| 
				yield CsvRow.new(row, @headers)
		end
	end

end

class RubyCsv < ActsAsCsv
end

m = RubyCsv.new

puts m.headers.inspect
# puts m.csv_contents.inspect

m.each { |row| puts row.id }