require 'spec_helper'

describe "trees/show" do
  before(:each) do
    @tree = assign(:tree, stub_model(Tree,
      :title => "Title",
      :picture => "Picture",
      :tree_type => "Tree Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Picture/)
    rendered.should match(/Tree Type/)
  end
end
