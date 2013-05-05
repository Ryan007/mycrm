require 'spec_helper'

describe "oscfs/show" do
  before(:each) do
    @oscf = assign(:oscf, stub_model(Oscf,
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
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Learn Subject/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Learn Time/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Learn Remark Tearcher/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comm Effect/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
