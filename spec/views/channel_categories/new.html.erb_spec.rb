require 'spec_helper'

describe "channel_categories/new" do
  before(:each) do
    assign(:channel_category, stub_model(ChannelCategory,
      :category_name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new channel_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => channel_categories_path, :method => "post" do
      assert_select "input#channel_category_category_name", :name => "channel_category[category_name]"
      assert_select "textarea#channel_category_description", :name => "channel_category[description]"
    end
  end
end
