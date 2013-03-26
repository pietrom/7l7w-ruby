require 'test/unit'

class GettingStartedTest < Test::Unit::TestCase
  def test_index_in_string
    a_string = 'Hello, Ruby!'
    to_search = 'Ruby'
    index = a_string.index(to_search)
    assert_equal(7, index)
  end
  
  def test_variable_substitution_in_string
    a_string = 'Hello, Ruby!'
    to_search = 'Ruby'
    index = a_string.index(to_search)
    output = "Index of '#{to_search}' in '#{a_string}' is: #{index}"
    assert_equal("Index of 'Ruby' in 'Hello, Ruby!' is: 7", output)
  end
  
  def test_int_times
    buffer = ''
    my_name = 'Pietro'
    4.times { buffer = buffer + my_name + ';' }
    assert_equal('Pietro;Pietro;Pietro;Pietro;', buffer)
  end
end