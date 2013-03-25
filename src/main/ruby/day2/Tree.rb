class Tree
  attr_accessor :children, :node_name
  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    buffer = visit &block
    children.each {|c| buffer = buffer + ',' + (c.visit_all &block)}
    buffer
  end

  def visit(&block)
    block.call self
  end
end