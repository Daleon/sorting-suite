gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_can_bubble_sort
    sorter = BubbleSort.new
    assert_equal ["a", "b", "c", "d"],
     sorter.sort(["d", "b", "a", "c"])
  end
end
