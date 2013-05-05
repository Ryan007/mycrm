require 'spec_helper'

describe "exam_details/show" do
  before(:each) do
    @exam_detail = assign(:exam_detail, stub_model(ExamDetail,
      :exam_id => 1,
      :listening => 1,
      :reading => 1,
      :writing => 1,
      :oral => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
