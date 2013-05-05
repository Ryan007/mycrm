require 'spec_helper'

describe "info_notes/edit" do
  before(:each) do
    @info_note = assign(:info_note, stub_model(InfoNote,
      :cc_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit info_note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => info_notes_path(@info_note), :method => "post" do
      assert_select "input#info_note_cc_id", :name => "info_note[cc_id]"
      assert_select "textarea#info_note_content", :name => "info_note[content]"
    end
  end
end
