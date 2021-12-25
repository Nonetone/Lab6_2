# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lab6_2_main'

class TestFuncY < Minitest::Test
  def test_series
   [0.01, 0.001, 0.0001, 0.00001, 0.000001].each do |eps|
      assert (approx(eps) - Math.log(2, 2.71828182846)).abs < eps
    end
  end
end




#class TestFuncY < Minitest::Test
#  def test_one
#    a = (func(0.01) >= 0.68314718056) && (func(0.01) <= 0.70314718056)
#    assert_equal(true, a)
#  end
#
#  def test_two
#    a = (func(0.0001) >= 0.69304718056) && (func(0.0001) <= 0.69324718056)
#    assert_equal(true, a)
#  end
#end
