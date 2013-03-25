require 'test/unit'

class SyntaxTest < Test::Unit::TestCase
  @@I_VAL = 11
  @@S_VAL = "xyz"
  def multi_val_method
    return @@I_VAL, @@S_VAL
  end
  
  def test_return_multi_val
    iVal, sVal = multi_val_method
    assert_equal(@@I_VAL, iVal)
    assert_equal(@@S_VAL, sVal)
  end
end