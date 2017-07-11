require 'minitest/autorun'
require_relative 'mmarr.rb'

class TestArray < Minitest::Test

	def test_1_1
		assert_equal(3+2, 4+1)
	end

	def test_count_100
		results = array
		assert_equal(100, results.count)
		assert_equal(Array, results.class)
	end

	def test_first
		assert_equal(1, array[0])
	end

	def test_third
		assert_equal('Mined', array[2])
	end

	def test_fifth
		assert_equal('Mined', array[4])
	end

	def test_fifteenth
		assert_equal('MinedMinds', array[14])
	end

end