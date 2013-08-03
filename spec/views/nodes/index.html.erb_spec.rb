require 'spec_helper'

describe "nodes/index" do
  before(:each) do
    assign(:nodes, [
      stub_model(Node,
        :title => "Title",
        :description => "MyText",
        :picture => "Picture",
        :url => "Url",
        :is_in_storage => false,
        :is_borrowable => false,
        :is_sellable => false
      ),
      stub_model(Node,
        :title => "Title",
        :description => "MyText",
        :picture => "Picture",
        :url => "Url",
        :is_in_storage => false,
        :is_borrowable => false,
        :is_sellable => false
      )
    ])
  end

  it "renders a list of nodes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
