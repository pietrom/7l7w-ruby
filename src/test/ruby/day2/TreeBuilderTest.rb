require 'test/unit'
require 'day2/TreeBuilder'

class TreeBuilderTest < Test::Unit::TestCase
  def test_build_from_hashes_and_arrays_structure
    builder = TreeBuilder.new
    tree = builder.build({
      'grandpa' => {
        'dad' => {
          'child 1' => {},
          'child 2' => {}
        },
        'uncle' => {
          'child 3' => {},
          'child 4' => {}
        }
      }
    })
    assert_equal('grandpa,dad,child 1,child 2,uncle,child 3,child 4', tree.visit_all{ |node| node.node_name })
  end
end