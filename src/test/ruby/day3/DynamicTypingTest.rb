require "test/unit"
require 'day3/DynamicTyping'

class DynamicTypingTest < Test::Unit::TestCase
  def test_collect_missed_calls
    dt = DynamicTyping.new
    dt.a()
    dt.b()
    dt.c()
    assert_equal('a;b;c', dt.log)
  end
end