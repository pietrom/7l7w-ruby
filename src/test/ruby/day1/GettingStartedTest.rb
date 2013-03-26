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
  
  def test_while
    buffer = ''
    my_name = 'Pietro'
    i = 0
    while i < 4 
      buffer = buffer + my_name + ';'
      i = i + 1
    end
    assert_equal('Pietro;Pietro;Pietro;Pietro;', buffer)
  end
  
  def test_int_times_with_variables_substitution
    buffer = ''
    3.times do |i|
      buffer = buffer + "Sentence ##{i};"
    end
    assert_equal('Sentence #0;Sentence #1;Sentence #2;', buffer)
  end
end