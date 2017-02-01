class BST
  attr_reader :root

  def initialize
    @root = Node.new(1)
  end

  def add_node(data)
    current_node = @root
    while current_node != nil
      if data < current_node.data && current_node.left_child == nil
        current_node.left_child = Node.new(data)
      elsif data < current_node.data && current_node.right_child == nil
        current_node.right_child = Node.new(data)
      elsif data < current_node.data
        current_node = current_node.left_child
      elsif data < current_node.data
        current_node = current_node.right_child
      else
        return
      end
    end
  end
end


# sharpening_ruby dave mauer

#  this is the tree structure
