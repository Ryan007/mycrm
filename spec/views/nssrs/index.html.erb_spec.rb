require 'spec_helper'

describe "nssrs/index" do
  before(:each) do
    assign(:nssrs, [
      stub_model(Nssr,
        :user_id => 1,
        :stu_id => 1,
        :name => "Name",
        :age => 1,
        :school => "School",
        :grade => "Grade",
        :score_goal => 1,
        :study_days => 1,
        :fee => 1,
        :privious_marks_dates => "MyText",
        :no_signup_reason => "MyText",
        :forcast_rec_1st_fee => 1,
        :actual_rec_1st_fee => 1,
        :actual_rec_1st_fee => 1,
        :forcast_rec_2nd_fee => 1,
        :actual_rec_2nd_fee => 1
      ),
      stub_model(Nssr,
        :user_id => 1,
        :stu_id => 1,
        :name => "Name",
        :age => 1,
        :school => "School",
        :grade => "Grade",
        :score_goal => 1,
        :study_days => 1,
        :fee => 1,
        :privious_marks_dates => "MyText",
        :no_signup_reason => "MyText",
        :forcast_rec_1st_fee => 1,
        :actual_rec_1st_fee => 1,
        :actual_rec_1st_fee => 1,
        :forcast_rec_2nd_fee => 1,
        :actual_rec_2nd_fee => 1
      )
    ])
  end

  it "renders a list of nssrs" do
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
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
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
