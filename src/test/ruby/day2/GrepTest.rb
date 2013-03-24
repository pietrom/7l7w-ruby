require "test/unit"
require 'day2/Grep'

class GrepTest < Test::Unit::TestCase
  def test_grep_no_results
    grep = Grep.new('not-present')
    input = File.new('src/test/resources/grep-input.txt')
    found = grep.find_in(input)
    assert_equal(0, found.size)
  end
  
  def test_grep_with_results
    grep = Grep.new('line')
    input = File.new('src/test/resources/grep-input.txt')
    found = grep.find_in(input)
    assert_equal(3, found.size)
  end
end