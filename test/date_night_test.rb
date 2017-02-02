gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_tree.rb'
require './lib/node.rb'

class BinarySearchTreeTest < Minitest::Test

  def test_date_night_node
    node = BinarySearchTree.new
    assert_equal 71, node.head.score
    assert_equal "Hannibal Buress: Animal Furnace", node.head.title
    assert_nil node.head.right
    assert_nil node.head.left
  end

  def test_insert
    tree = BinarySearchTree.new
    tree.insert_new_node(44, "B&B DO america")
    # require "pry"; binding.pry
    assert_equal 44, movie.head.right.score
  end


#   def test_insert
#     skip
#   node = Node.new(data)
#   node.set_instance_variable(@left, new_node)
#   date = DateNight.new
#   assert_equal __, date.
#   end
#
#   def test_include?
#     skip
#   date = DateNight.new
#   assert_equal __, date.
#   end
#
#   def test_depth_of
#     skip
#   date = DateNight.new
#   assert_equal __, date.
#   end
#
#   def test_max
#     skip
#   date = DateNight.new
#   assert_equal __, date.
#   end
#
#   def test_min
#     skip
#   date = DateNight.new
#   assert_equal __, date.
#   end
#
#   def test_sort
#     skip
#   date = DateNight.new
#   assert_equal __, date.
#   end
#
#   def test_load
#     skip
#   date = DateNight.new
#   assert_equal __, date.
#   end
#
#   def test_health
# skip
#   date = DateNight.new
#   assert_equal __, date.
#   end

end
