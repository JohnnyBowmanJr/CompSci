  class Node
  attr_accessor :data
  attr_accessor :left
  attr_accessor :right

  def initialize(data)
    self.data = data
  end

  def to_s
    [left, data, right].join(" ")
  end
end