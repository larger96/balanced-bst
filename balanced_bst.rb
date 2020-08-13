# frozen_string_literal: true

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

class Tree
  attr_accessor :array, :root

  def initialize(array)
    @array = array
    @root = build_tree
  end

  def build_tree(array = @array.uniq.sort)
    start = 0
    finish = array.length - 1
    mid = (start + finish) / 2
    root = Node.new(array[mid])
    return nil if start > finish
    root.left = build_tree(array[start...mid])
    root.right = build_tree(array[mid + 1..finish])
    root
  end

  def insert(root = @root, value)
    return Node.new(value) if root.nil?

    if value < root.data
      if root.left.nil?
        root.left = Node.new(value)
      else
        insert(root.left, value)
      end
    else
      if root.right.nil?
        root.right = Node.new(value)
      else
        insert(root.right, value)
      end
    end
  end

  def delete(root = @root, value)
    return root if root.nil?
      
    if value < root.data
      root.left = delete(root.left, value)
    elsif value > root.data
      root.right = delete(root.right, value)
    else # Found value to be deleted
      # Case 1: No child
      if root.left.nil? && root.right.nil?
        root = nil
      # Case 2: One child
      elsif root.left.nil?
        root = root.right
      elsif root.right.nil?
        root = root.left
      # Case 3: Two children
      else
        temp = root.find_min(root.right)
        root.data = temp.data
        root.right = delete(root.right, temp.data)
      end
    end
    root
  end

  def find(value, root = @root)
    return 'nil' if root.nil?
    return root if root.data == value

    if value < root.data
      find(value, root.left)
    else
      find(value, root.right)
    end
  end

  def level_order(root = @root)
    return if root.nil?

    result = []
    queue = Queue.new
    queue << root
    until queue.empty?
      current = queue.pop
      result << current.data
      queue << current.left unless current.left.nil?
      queue << current.right unless current.right.nil?
    end
    result
  end

  def inorder(root = @root, result = [])
    return if root.nil?

    inorder(root.left, result)
    result << root.data
    inorder(root.right, result)
    result
  end

  def preorder(root = @root, result = [])
    return if root.nil?

    result << root.data
    preorder(root.left, result)
    preorder(root.right, result)
    result
  end

  def postorder(root = @root, result = [])
    return if root.nil?

    postorder(root.left, result)
    preorder(root.right, result)
    result << root.data
    result
  end

  def height(root = @root)
    return -1 if root.nil?

    [height(root.left), height(root.right)].max + 1
  end

  def depth(root = @root)
    return 0 if root.nil?

    [depth(root.left), depth(root.right)].max + 1
  end

  def balanced?(root = @root)
    (height(root.left) - height(root.right)).abs <= 1
  end

  def rebalance
    new_array = inorder
    self.root = build_tree(new_array)
  end
end

new_tree = Tree.new(Array.new(15) { rand(1..100) })
pp new_tree
p new_tree.balanced?
p new_tree.level_order
p new_tree.preorder
p new_tree.postorder
p new_tree.inorder
new_tree.insert(101)
new_tree.insert(156)
new_tree.insert(175)
p new_tree.balanced?
pp new_tree.rebalance
p new_tree.balanced?
p new_tree.level_order
p new_tree.preorder
p new_tree.postorder
p new_tree.inorder
