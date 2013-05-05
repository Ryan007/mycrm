require 'spec_helper'

describe "channel_infos/show" do
  before(:each) do
    @channel_info = assign(:channel_info, stub_model(ChannelInfo,
      :user_id => 1,
      :channel_categories_id => 1,
      :tag => "Tag"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tag/)
  end
end
