class Node
  attr_reader :score, :title, :depth_chart
  attr_accessor :right, :left, :imdb

  def initialize(score = 71, title = "Hannibal Buress: Animal Furnace", left = nil, right = nil)
    @right = right
    @left = left
    @score = score
    @title = title
    @depth_chart = 0
  end

  def insert_new_node(new_data, new_title)
    if new_data < @score && @left == nil
      @left = Node.new(new_data, new_title)
      @depth_chart += 1
    elsif new_data > @score && @right == nil
      @right = Node.new(new_data, new_title)
      @depth_chart += 1
    elsif new_data < @score
      @left.insert_new_node(new_data, new_title)
      @depth_chart += 1
    else new_data > @score
      @right.insert_new_node(new_data, new_title)
      @depth_chart += 1
    end
    return @depth_chart
  end

  def include?(is_score_in_tree)
    if is_score_in_tree == @score
      true
    elsif is_score_in_tree < @score && @left != nil
      @left.include?(is_score_in_tree)
    elsif is_score_in_tree > @score && @right != nil
      @right.include?(is_score_in_tree)
    else
      false
    end
  end

  def depth_of_score(how_deep_is_this_score, deep)
    if how_deep_is_this_score == @score
      return deep
    elsif how_deep_is_this_score < @score && @left != nil
      deep += 1
      @left.depth_of_score(how_deep_is_this_score, deep)
    elsif how_deep_is_this_score > @score && @right != nil
      deep += 1
      @right.depth_of_score(how_deep_is_this_score, deep)
    end
  end

  def find_max(score, max)
    if score < max && @right != nil
      score = @right.score
      @right.find_max(score, max)
    else
      return {@title => @score}
    end
  end

  def find_min(score, min)
    if score > min && @left != nil
      score = @left.score
      @left.find_min(score, min)
    else
      return {@title => @score}
    end
  end

  def read_in_IMDB(file)
    movies_array = []
    movie_import = File.open(file, 'r').read
    movies_array = movie_import.split(/\n+/)
    @count_loads = 0
    @imdb = []
    movies_array.each do |movie|
      mov = Hash.new
      mov = {score:movie[0..1].to_f, title:movie[4..-1]}
      @imdb << mov
      @count_loads += 1
    end
    load_up_import_to_tree
    p "You have loaded #{@count_loads} new movies into the database."

  end

  def load_up_import_to_tree
    @imdb.each do |movie|
      new_data = movie.values[0]
      new_title = movie.values[1]
      insert_new_node(new_data, new_title)
    end
  end

end
