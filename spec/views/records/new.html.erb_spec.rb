require 'spec_helper'

describe "records/new" do
  before(:each) do
    assign(:record, stub_model(Record,
      :session_id => 1,
      :quesion => "MyString",
      :answer => "MyText"
    ).as_new_record)
  end

  it "renders new record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => records_path, :method => "post" do
      assert_select "input#record_session_id", :name => "record[session_id]"
      assert_select "input#record_quesion", :name => "record[quesion]"
      assert_select "textarea#record_answer", :name => "record[answer]"
    end
  end
end
