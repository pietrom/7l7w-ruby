require 'test/unit'

class SimpleFileTest < Test::Unit::TestCase
  def test_read_from_file_using_blocks
    f = File.new("src/test/resources/a-file.txt","r")
    buffer = ""
    f.each do |row|
      buffer = buffer + row.rstrip + ";"
    end
    assert_equal("One;Two;Three;Four;", buffer)
  end
  
  def test_read_from_file_using_readlines
    f = File.new("src/test/resources/a-file.txt","r")
    buffer = ""
    lines = f.readlines
    lines.each do |row|
      buffer = buffer + row.rstrip + ";"
    end
    assert_equal("One;Two;Three;Four;", buffer)
  end
  
  def test_read_from_file_using_gets
    f = File.new("src/test/resources/a-file.txt","r")
    buffer = ""
    row = nil
    while (row = f.gets) != nil
      buffer = buffer + row.rstrip + ";"
    end
    assert_equal("One;Two;Three;Four;", buffer)
  end
end