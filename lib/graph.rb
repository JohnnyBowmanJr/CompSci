require 'graphable'

class Graph
  include Graphable
  attr_accessor :vertices

  def initialize
    self.vertices = Set.new
  end

  def add_vertex(data)
    v = Vertex.new(data)
    self.vertices.add(v)
    v
  end

  def add_edge(from_node, to_node, cost)
    edge = Edge.new(from_node, to_node, cost)
    from_node.edges[to_node.data] = edge

    edge = Edge.new(to_node, from_node, cost)
    to_node.edges[from_node.data] = edge
  end

  def shortest_path(from_node, to_node)
    mark_unvisited
    current = from_node
    current.distance = 0
    shortest_path = []
    unvisited = vertices.clone.delete(current)
    unvisited_adjacents = Hash.new
    unvisited.each do |city|
      binding.pry
      if from_node.adjacent?(city) && !city.visited
        unvisited_adjacents[city] = (current.edges[city.to_s].cost + current.distance) 
        if unvisited_adjacents[city] < city.distance 
          city.distance = unvisited_adjacents[city]
        end
      end
    min_value = unvisited_adjacents.values.min
    min_city = univisited_adjacents.key(min_value)




    while(!to_node.visited) do
      # Do stuff
      break
    end

    shortest_path
  end

  private
  def mark_unvisited
    self.vertices.each {|v| v.visited = false; v.distance = 1e99 }
  end

end