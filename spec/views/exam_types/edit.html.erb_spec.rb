require 'spec_helper'

describe "exam_types/edit" do
  before(:each) do
    @exam_type = assign(:exam_type, stub_model(ExamType,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit exam_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exam_types_path(@exam_type), :method => "post" do
      assert_select "input#exam_type_name", :name => "exam_type[name]"
      assert_select "textarea#exam_type_description", :name => "exam_type[description]"
    end
  end
end
