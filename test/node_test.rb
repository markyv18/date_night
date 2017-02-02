gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/binary_tree'

class NodeTest < Minitest::Test

  def test_right_is_nil
    node = Node.new(71, "Hannibal Buress: Animal Furnace")
    assert_nil node.right
  end

  def test_left_is_nil
    node = Node.new(71, "Hannibal Buress: Animal Furnace")
    assert_nil node.left
  end

  def test_score_format
    assert Node.new(71, "Hannibal Buress: Animal Furnace").score.is_a? Integer
  end

  def test_title_format
    assert Node.new(71, "Hannibal Buress: Animal Furnace").title.is_a? String
  end

  def test_insert
    tree = BinarySearchTree.new
    refute tree.head.nil?
  end

  def test_insert_2
    tree = BinarySearchTree.new
    assert_equal 71, tree.head.score
  end

  def test_insert_3
    tree = BinarySearchTree.new
    tree.insert(67, "jaws")
    tree.insert(87, "star wars")
    refute tree.head.right.nil?
  end

  def test_insert_4
    tree = BinarySearchTree.new
    tree.insert(67, "jaws")
    tree.insert(87, "star wars")
    refute tree.head.left.nil?
  end

  def test_insert_5
    tree = BinarySearchTree.new
    tree.insert(67, "jaws")
    tree.insert(87, "star wars")
    assert_equal 87, tree.head.right.score
  end

  def test_insert_6
    tree = BinarySearchTree.new
    tree.insert(72, "jaws")
    tree.insert(87, "jaws 2")
    tree.insert(92, "B&B DO america")
    tree.insert(93, "temple of doom")
    tree.insert(95, "raiders of the lost ark")
    tree.insert(99, "star wars")
    assert_equal 99, tree.head.right.right.right.right.right.right.score
  end

  def test_insert_7
    tree = BinarySearchTree.new
    tree.insert(70, "jaws")
    tree.insert(69, "jaws 2")
    tree.insert(44, "B&B DO america")
    tree.insert(34, "temple of doom")
    tree.insert(23, "raiders of the lost ark")
    tree.insert(18, "la")
    assert_equal 18, tree.head.left.left.left.left.left.left.score
  end

  def test_include
    tree = BinarySearchTree.new
    tree.insert(70, "jaws")
    tree.insert(69, "jaws 2")
    tree.insert(44, "B&B DO america")
    tree.insert(34, "temple of doom")
    tree.insert(23, "raiders of the lost ark")
    tree.insert(18, "la")
    assert tree.includes_this_score(34)
  end

  def test_depth
    tree = BinarySearchTree.new
    tree.insert(70, "jaws")
    tree.insert(69, "jaws 2")
    tree.insert(44, "B&B DO america")
    assert_equal 4, tree.depth_of(44)
  end

  def test_max
    tree = BinarySearchTree.new
    tree.insert(70, "jaws")
    tree.insert(69, "jaws 2")
    tree.insert(44, "B&B DO america")
    assert_equal ["Hannibal Buress: Animal Furnace"], tree.max_value.keys
  end

  def test_min
    tree = BinarySearchTree.new
    tree.insert(70, "jaws")
    tree.insert(69, "jaws 2")
    tree.insert(44, "B&B DO america")
    assert_equal [44], tree.min_value.values
  end

end
