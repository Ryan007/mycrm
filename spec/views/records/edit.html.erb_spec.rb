require 'spec_helper'

describe "records/edit" do
  before(:each) do
    @record = assign(:record, stub_model(Record,
      :session_id => 1,
      :quesion => "MyString",
      :answer => "MyText"
    ))
  end

  it "renders the edit record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => records_path(@record), :method => "post" do
      assert_select "input#record_session_id", :name => "record[session_id]"
      assert_select "input#record_quesion", :name => "record[quesion]"
      assert_select "textarea#record_answer", :name => "record[answer]"
    end
  end
end
