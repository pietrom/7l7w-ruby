require "test/unit"
require 'day3/DynamicTyping'

class DynamicTypingTest < Test::Unit::TestCase
  def test_collect_missed_calls
    dt = DynamicTyping.new
    dt.a()
    dt.b()
    dt.c()
    assert_equal('a();b();c()', dt.log)
  end
  
  def test_collect_missed_calls_with_parameters
    dt = DynamicTyping.new
    dt.a(1, 'a')
    dt.b(2)
    dt.c(3, 'b', :xyz)
    dt.d()
    assert_equal('a(1,a);b(2);c(3,b,xyz);d()', dt.log)
  end
end