require 'spec_helper'

describe "channel_categories/show" do
  before(:each) do
    @channel_category = assign(:channel_category, stub_model(ChannelCategory,
      :category_name => "Category Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
