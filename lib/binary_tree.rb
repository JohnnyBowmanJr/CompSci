class BinaryTree
  attr_accessor :root

  #builds self.root to include all names
  def insert_data(data)
    self.root = insert(data)
  end


  def insert(data, node = self.root)
    if node.nil?
      Node.new(data)
    else
      if data < node.data
        node.left = insert(data, node.left)
      else
        node.right = insert(data, node.right)
      end
      node
    end
  end

  def to_s
    data
  end

  def nodes(node = self.root)  
    binding.pry
    if node
      [nodes(node.left), node, nodes(node.right)].flatten.compact
    end
  end

  def include?(name)
    self.each do |node|
      if node == name
        true
      end 
    end
  end

end