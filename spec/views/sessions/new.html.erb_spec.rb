require 'spec_helper'

describe "sessions/new" do
  before(:each) do
    assign(:session, stub_model(Session,
      :session_type_id => 1,
      :user_id => 1,
      :info_id => 1
    ).as_new_record)
  end

  it "renders new session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sessions_path, :method => "post" do
      assert_select "input#session_session_type_id", :name => "session[session_type_id]"
      assert_select "input#session_user_id", :name => "session[user_id]"
      assert_select "input#session_info_id", :name => "session[info_id]"
    end
  end
end
