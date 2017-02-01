gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_right_is_nil
    node = Node.new(100, "B&B do america")
    assert_nil node.right
  end

  def test_left_is_nil
    node = Node.new(100, "B&B do america")
    assert_nil node.left
  end

  def test_score_format
    assert Node.new(100, "B&B do america").score.is_a? Integer
  end

  def test_title_format
    assert Node.new(100, "B&B do america").title.is_a? String
  end


end
