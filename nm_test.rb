require 'minitest/autorun'
require_relative 'nm.rb'

class TestKata < Minitest::Test
	def test_1_1
		assert_equal(1, 1)
	end
	def test_1_give_1
		assert_equal(1, mined(1))
	end
	def test_2_give_2
		assert_equal(2, mined(2))
	end
	def test_3_gives_mined
		assert_equal('mined', mined(3))
	end
	def test_5_gives_minds
		assert_equal('minds', mined(5))
	end
		def test_15_gives_minedminds
		assert_equal('minedminds', mined(15))
	end
end