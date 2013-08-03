require 'spec_helper'

describe "trees/new" do
  before(:each) do
    assign(:tree, stub_model(Tree,
      :title => "MyString",
      :picture => "MyString",
      :tree_type => "MyString"
    ).as_new_record)
  end

  it "renders new tree form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trees_path, "post" do
      assert_select "input#tree_title[name=?]", "tree[title]"
      assert_select "input#tree_picture[name=?]", "tree[picture]"
      assert_select "input#tree_tree_type[name=?]", "tree[tree_type]"
    end
  end
end
