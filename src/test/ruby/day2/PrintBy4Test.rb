require 'test/unit'

class PrintBy4Test < Test::Unit::TestCase
  @@numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  def test_print_array_of_16_numbers_4_by_4
    buffer = ""
    count = 0
    @@numbers.each do |n|
      buffer = buffer + n.to_s
      count = count + 1
      buffer = buffer + " " unless count == 4
      if count == 4
        buffer = buffer + "\n"
        count = 0 
      end
    end
    assert_equal("1 2 3 4\n5 6 7 8\n9 10 11 12\n13 14 15 16\n", buffer)
  end
end