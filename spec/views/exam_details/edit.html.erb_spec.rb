require 'spec_helper'

describe "exam_details/edit" do
  before(:each) do
    @exam_detail = assign(:exam_detail, stub_model(ExamDetail,
      :exam_id => 1,
      :listening => 1,
      :reading => 1,
      :writing => 1,
      :oral => 1
    ))
  end

  it "renders the edit exam_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exam_details_path(@exam_detail), :method => "post" do
      assert_select "input#exam_detail_exam_id", :name => "exam_detail[exam_id]"
      assert_select "input#exam_detail_listening", :name => "exam_detail[listening]"
      assert_select "input#exam_detail_reading", :name => "exam_detail[reading]"
      assert_select "input#exam_detail_writing", :name => "exam_detail[writing]"
      assert_select "input#exam_detail_oral", :name => "exam_detail[oral]"
    end
  end
end
