require 'day2/Tree'

class TreeBuilder
  def build(root)
    root_key = root.keys()[0]
    return build_node(root_key, root[root_key])
  end
  
  def build_node(name, children)
    child_nodes = []
    children.keys.sort.each{|n| child_nodes.push(build_node(n, children[n]))}
    Tree.new(name, child_nodes)
  end
end