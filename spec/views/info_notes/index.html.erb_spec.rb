require 'spec_helper'

describe "info_notes/index" do
  before(:each) do
    assign(:info_notes, [
      stub_model(InfoNote,
        :cc_id => 1,
        :content => "MyText"
      ),
      stub_model(InfoNote,
        :cc_id => 1,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of info_notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
