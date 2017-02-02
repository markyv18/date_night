require_relative 'node'

class BinarySearchTree
  attr_reader :head

  def initialize
    @head = Node.new
  end

  def insert(new_data, new_title)
    @head.insert_new_node(new_data, new_title)
  end

  def includes_this_score(is_score_in_tree)
    @head.include?(is_score_in_tree)
  end

  def depth_of(how_deep_is_this_score)
    deep = 1
    @head.depth_of_score(how_deep_is_this_score, deep)
  end



  def max_value
    score = @head.score
    max = 99
    @head.find_max(score, max)
  end

  def min_value
    score = @head.score
    min = 0
    @head.find_min(score, min)

  end

  def sort

  end

  def load(file)
    @head.read_in_IMDB(file)
  end

  def health

  end

end

tree = BinarySearchTree.new
tree.load('movies.txt')
p tree.includes_this_score(61)
p tree.includes_this_score(87)
p tree.depth_of(71)
p tree.depth_of(17)
p tree.depth_of(80)
p tree.depth_of(55)
p tree.depth_of(11)
p tree.depth_of(68)
p tree.max_value
p tree.min_value
p tree.sort   











#
