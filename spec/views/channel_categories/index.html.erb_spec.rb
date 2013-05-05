require 'spec_helper'

describe "channel_categories/index" do
  before(:each) do
    assign(:channel_categories, [
      stub_model(ChannelCategory,
        :category_name => "Category Name",
        :description => "MyText"
      ),
      stub_model(ChannelCategory,
        :category_name => "Category Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of channel_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
