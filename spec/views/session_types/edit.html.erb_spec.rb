require 'spec_helper'

describe "session_types/edit" do
  before(:each) do
    @session_type = assign(:session_type, stub_model(SessionType,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit session_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => session_types_path(@session_type), :method => "post" do
      assert_select "input#session_type_name", :name => "session_type[name]"
      assert_select "textarea#session_type_description", :name => "session_type[description]"
    end
  end
end
