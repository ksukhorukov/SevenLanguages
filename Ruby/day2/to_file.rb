#!/usr/bin/env ruby

# When you include a module as part of a class,
# those behaviors and constants become part of the class

module ToFile
	def filename
		"object#{self.object_id}.txt"
	end

	def to_f
		File.open(filename, 'w') { |f| f.write(to_s) }
	end
end

class Person
	include ToFile
	attr_accessor :name

	def initialize(name)
		@name = name
	end
		
	def to_s
		name	
	end
end	

Person.new('Kirill').to_f

# When all is said and done, you can use a
# simpliﬁed single inheritance to deﬁne the essence of a class and then
# attach additional capabilities with modules.
# This style of programming,
# introduced in Flavors and used in many languages from Smalltalk to
# Python, is called a mixin.
# Single inheritance plus mixins allow for a nice packaging of behavior.


