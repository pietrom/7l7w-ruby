class Person
	attr_accessor :name, :surname

	def initialize (name, surname)
		@name = name.capitalize
		@surname = surname.capitalize	
	end

	def to_string
		name + ' ' + surname
	end
end

pietro = Person.new('Pietro', 'martinelli')
puts pietro.to_string
