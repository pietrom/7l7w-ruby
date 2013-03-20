require 'test/unit'

class ReadingTest < Test::Unit::TestCase
  def test_array_size
    fruits = ['lemon', 'orange', 'peach', 'pineapple']
    assert_equal(4, fruits.size)
  end
  
  def test_array_push_and_pop
    fruits = ['lemon', 'orange', 'peach', 'pineapple']
    fruits.push('strawberry')
    assert_equal(5, fruits.size)
    assert_equal('strawberry', fruits[4])
    popped = fruits.pop()
    assert_equal(4, fruits.size)
    assert_equal('strawberry', popped)
    assert_equal('pineapple', fruits[3])
  end
end