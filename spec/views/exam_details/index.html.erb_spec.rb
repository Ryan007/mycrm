require 'spec_helper'

describe "exam_details/index" do
  before(:each) do
    assign(:exam_details, [
      stub_model(ExamDetail,
        :exam_id => 1,
        :listening => 1,
        :reading => 1,
        :writing => 1,
        :oral => 1
      ),
      stub_model(ExamDetail,
        :exam_id => 1,
        :listening => 1,
        :reading => 1,
        :writing => 1,
        :oral => 1
      )
    ])
  end

  it "renders a list of exam_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
