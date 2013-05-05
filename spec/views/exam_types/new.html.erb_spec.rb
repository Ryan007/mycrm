require 'spec_helper'

describe "exam_types/new" do
  before(:each) do
    assign(:exam_type, stub_model(ExamType,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new exam_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exam_types_path, :method => "post" do
      assert_select "input#exam_type_name", :name => "exam_type[name]"
      assert_select "textarea#exam_type_description", :name => "exam_type[description]"
    end
  end
end
