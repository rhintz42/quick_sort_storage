require 'spec_helper'

describe "trees/edit" do
  before(:each) do
    @tree = assign(:tree, stub_model(Tree,
      :title => "MyString",
      :picture => "MyString",
      :tree_type => "MyString"
    ))
  end

  it "renders the edit tree form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tree_path(@tree), "post" do
      assert_select "input#tree_title[name=?]", "tree[title]"
      assert_select "input#tree_picture[name=?]", "tree[picture]"
      assert_select "input#tree_tree_type[name=?]", "tree[tree_type]"
    end
  end
end
