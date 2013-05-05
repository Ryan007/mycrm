require 'spec_helper'

describe "info_notes/show" do
  before(:each) do
    @info_note = assign(:info_note, stub_model(InfoNote,
      :cc_id => 1,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
