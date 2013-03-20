require 'test/unit'
require 'Person'

class PersonTest < Test::Unit::TestCase
  def test_to_string
    pietro = Person.new('pietro', 'martinelli')
    assert_equal('Pietro Martinelli', pietro.to_string)
  end
  
  def test_accessors
    pietro = Person.new('pietro', 'martinelli')
    assert_equal('Pietro', pietro.name)
    assert_equal('Martinelli', pietro.surname)
  end
end