require 'spec_helper'

describe "channel_infos/index" do
  before(:each) do
    assign(:channel_infos, [
      stub_model(ChannelInfo,
        :user_id => 1,
        :channel_categories_id => 1,
        :tag => "Tag"
      ),
      stub_model(ChannelInfo,
        :user_id => 1,
        :channel_categories_id => 1,
        :tag => "Tag"
      )
    ])
  end

  it "renders a list of channel_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
  end
end
