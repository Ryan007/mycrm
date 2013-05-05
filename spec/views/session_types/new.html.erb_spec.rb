require 'spec_helper'

describe "session_types/new" do
  before(:each) do
    assign(:session_type, stub_model(SessionType,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new session_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => session_types_path, :method => "post" do
      assert_select "input#session_type_name", :name => "session_type[name]"
      assert_select "textarea#session_type_description", :name => "session_type[description]"
    end
  end
end
