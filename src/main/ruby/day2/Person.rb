class Person
  attr :name
  attr :surname

  def initialize (name, surname)
    @name = name.capitalize
    @surname = surname.capitalize 
  end

  def to_string
    @name + ' ' + @surname
  end
end