require 'spec_helper'

describe "nssrs/show" do
  before(:each) do
    @nssr = assign(:nssr, stub_model(Nssr,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
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
