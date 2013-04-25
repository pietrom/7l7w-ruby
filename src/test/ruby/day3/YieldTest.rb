require "test/unit"

class YieldTest < Test::Unit::TestCase
  @buffer
  
  def caller
    @buffer = @buffer + 'BEFORE'
      yield
    @buffer = @buffer + 'AFTER'
  end
  
  def test_basic_yield_example
    @buffer = ''
    caller {
      @buffer = @buffer + 'IN'
    }
    
    assert_equal('BEFOREINAFTER', @buffer)
  end 
end