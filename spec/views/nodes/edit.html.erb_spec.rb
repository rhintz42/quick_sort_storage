require 'spec_helper'

describe "nodes/edit" do
  before(:each) do
    @node = assign(:node, stub_model(Node,
      :title => "MyString",
      :description => "MyText",
      :picture => "MyString",
      :url => "MyString",
      :is_in_storage => false,
      :is_borrowable => false,
      :is_sellable => false
    ))
  end

  it "renders the edit node form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", node_path(@node), "post" do
      assert_select "input#node_title[name=?]", "node[title]"
      assert_select "textarea#node_description[name=?]", "node[description]"
      assert_select "input#node_picture[name=?]", "node[picture]"
      assert_select "input#node_url[name=?]", "node[url]"
      assert_select "input#node_is_in_storage[name=?]", "node[is_in_storage]"
      assert_select "input#node_is_borrowable[name=?]", "node[is_borrowable]"
      assert_select "input#node_is_sellable[name=?]", "node[is_sellable]"
    end
  end
end
