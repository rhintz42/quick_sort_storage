require 'spec_helper'

describe "trees/index" do
  before(:each) do
    assign(:trees, [
      stub_model(Tree,
        :title => "Title",
        :picture => "Picture",
        :tree_type => "Tree Type"
      ),
      stub_model(Tree,
        :title => "Title",
        :picture => "Picture",
        :tree_type => "Tree Type"
      )
    ])
  end

  it "renders a list of trees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Tree Type".to_s, :count => 2
  end
end
