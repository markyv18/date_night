class Node
  attr_reader :score, :title
  attr_accessor :right, :left

  def initialize(score = 50, title = "", left = nil, right = nil)
    @right = right
    @left = left
    @score = score
    @title = title
  end
end
