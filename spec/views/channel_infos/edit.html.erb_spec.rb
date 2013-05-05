require 'spec_helper'

describe "channel_infos/edit" do
  before(:each) do
    @channel_info = assign(:channel_info, stub_model(ChannelInfo,
      :user_id => 1,
      :channel_categories_id => 1,
      :tag => "MyString"
    ))
  end

  it "renders the edit channel_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => channel_infos_path(@channel_info), :method => "post" do
      assert_select "input#channel_info_user_id", :name => "channel_info[user_id]"
      assert_select "input#channel_info_channel_categories_id", :name => "channel_info[channel_categories_id]"

      assert_select "input#channel_info_tag", :name => "channel_info[tag]"
    end
  end
end
