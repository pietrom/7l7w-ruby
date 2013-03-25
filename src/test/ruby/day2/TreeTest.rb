require "test/unit"
require 'day2/Tree'

class TreeTest < Test::Unit::TestCase
  def test_visit_single_node
    ruby_tree = Tree.new( "Ruby" , [Tree.new("Reia" ), Tree.new("MacRuby" )])
    assert_equal("Ruby", ruby_tree.visit {|node| node.node_name})
  end
  
  def test_visit_all
    ruby_tree = Tree.new( "Ruby" , [Tree.new("Reia" ), Tree.new("MacRuby" )])
    assert_equal("Ruby,Reia,MacRuby", ruby_tree.visit_all {|node| node.node_name})
  end
end