require 'spec_helper'

describe "exams/new" do
  before(:each) do
    assign(:exam, stub_model(Exam,
      :exam_type_id => 1,
      :info_id => 1,
      :total_score => 1
    ).as_new_record)
  end

  it "renders new exam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exams_path, :method => "post" do
      assert_select "input#exam_exam_type_id", :name => "exam[exam_type_id]"
      assert_select "input#exam_info_id", :name => "exam[info_id]"
      assert_select "input#exam_total_score", :name => "exam[total_score]"
    end
  end
end
