require "application_system_test_case"

class NodesTest < ApplicationSystemTestCase
  setup do
    @node = nodes(:one)
  end

  test "visiting the index" do
    visit nodes_url
    assert_selector "h1", text: "Nodes"
  end

  test "should create node" do
    visit nodes_url
    click_on "New node"

    fill_in "Description", with: @node.description
    fill_in "Image url", with: @node.image_url
    fill_in "Level", with: @node.level
    fill_in "Status", with: @node.status
    fill_in "Title", with: @node.title
    click_on "Create Node"

    assert_text "Node was successfully created"
    click_on "Back"
  end

  test "should update Node" do
    visit node_url(@node)
    click_on "Edit this node", match: :first

    fill_in "Description", with: @node.description
    fill_in "Image url", with: @node.image_url
    fill_in "Level", with: @node.level
    fill_in "Status", with: @node.status
    fill_in "Title", with: @node.title
    click_on "Update Node"

    assert_text "Node was successfully updated"
    click_on "Back"
  end

  test "should destroy Node" do
    visit node_url(@node)
    click_on "Destroy this node", match: :first

    assert_text "Node was successfully destroyed"
  end
end
