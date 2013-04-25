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
  
  def test_using_named_block
    local = ''
    
    named_caller = proc do |&block|
      local = local + 'BEFORE'
      block.call
      local = local + 'AFTER'
    end
    
    named_caller.call {
      local = local + 'IN'
    }
  end
end