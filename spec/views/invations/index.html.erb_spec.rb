require 'spec_helper'

describe "invations/index" do
  before(:each) do
    assign(:invations, [
      stub_model(Invation,
        :info_id => 1,
        :user_id => 1,
        :status => 1
      ),
      stub_model(Invation,
        :info_id => 1,
        :user_id => 1,
        :status => 1
      )
    ])
  end

  it "renders a list of invations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
