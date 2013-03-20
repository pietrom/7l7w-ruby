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

  def test_hashes
    tours = {'indurain' => 5, 'merckx' => 5, 'armstrong' => 0}
    assert_equal(0, tours['armstrong'])
    assert_equal(5, tours['indurain'])
    assert_nil(tours['simoni'])
  end
  
  def test_hashes_each_pair
    tours = {'indurain' => 5, 'merckx' => 5, 'armstrong' => 0}
    buffer = ''
    tours.each_pair do |key, value|
      buffer = buffer + key + ':' + value + ';'
    end
    assert_equal
  end
end