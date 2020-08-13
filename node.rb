class Node
  include Comparable

  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

module Comparable
  def find_min(root)
    return root if root.left.nil?
      
    root = root.left
    find_min(root)
  end
end
