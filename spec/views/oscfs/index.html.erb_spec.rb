require 'spec_helper'

describe "oscfs/index" do
  before(:each) do
    assign(:oscfs, [
      stub_model(Oscf,
        :user_id => 1,
        :stu_id => 1,
        :name => "Name",
        :gender => 1,
        :school => "School",
        :goal_score => 1,
        :previous_marks_exams => "MyText",
        :learn_subject => "Learn Subject",
        :learn_time => "Learn Time",
        :learn_remark_pm => "MyText",
        :learn_remark_tearcher => "Learn Remark Tearcher",
        :post_class_score => 1,
        :mock_score => 1,
        :comm_content => "MyText",
        :comm_effect => "Comm Effect",
        :forcast_fee => 1,
        :actual_fee => 1
      ),
      stub_model(Oscf,
        :user_id => 1,
        :stu_id => 1,
        :name => "Name",
        :gender => 1,
        :school => "School",
        :goal_score => 1,
        :previous_marks_exams => "MyText",
        :learn_subject => "Learn Subject",
        :learn_time => "Learn Time",
        :learn_remark_pm => "MyText",
        :learn_remark_tearcher => "Learn Remark Tearcher",
        :post_class_score => 1,
        :mock_score => 1,
        :comm_content => "MyText",
        :comm_effect => "Comm Effect",
        :forcast_fee => 1,
        :actual_fee => 1
      )
    ])
  end

  it "renders a list of oscfs" do
    render
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
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Learn Subject".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Learn Time".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Learn Remark Tearcher".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comm Effect".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
