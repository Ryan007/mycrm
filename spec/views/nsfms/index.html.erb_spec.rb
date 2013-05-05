require 'spec_helper'

describe "nsfms/index" do
  before(:each) do
    assign(:nsfms, [
      stub_model(Nsfm,
        :user_id => 1,
        :stu_id => 1,
        :status => 1,
        :name => "Name",
        :age => 1,
        :school => "School",
        :grade => "Grade",
        :goal_score => 1,
        :learn_days => "Learn Days",
        :fee => 1,
        :previous_marks_exams => "MyText",
        :study_days => 1,
        :application_fee => 1,
        :forcast_1st_fee => 1,
        :forcast_2nd_fee => 1,
        :actual_2nd_fee => 1
      ),
      stub_model(Nsfm,
        :user_id => 1,
        :stu_id => 1,
        :status => 1,
        :name => "Name",
        :age => 1,
        :school => "School",
        :grade => "Grade",
        :goal_score => 1,
        :learn_days => "Learn Days",
        :fee => 1,
        :previous_marks_exams => "MyText",
        :study_days => 1,
        :application_fee => 1,
        :forcast_1st_fee => 1,
        :forcast_2nd_fee => 1,
        :actual_2nd_fee => 1
      )
    ])
  end

  it "renders a list of nsfms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Learn Days".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
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
