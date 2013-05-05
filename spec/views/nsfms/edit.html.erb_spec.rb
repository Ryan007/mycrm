require 'spec_helper'

describe "nsfms/edit" do
  before(:each) do
    @nsfm = assign(:nsfm, stub_model(Nsfm,
      :user_id => 1,
      :stu_id => 1,
      :status => 1,
      :name => "MyString",
      :age => 1,
      :school => "MyString",
      :grade => "MyString",
      :goal_score => 1,
      :learn_days => "MyString",
      :fee => 1,
      :previous_marks_exams => "MyText",
      :study_days => 1,
      :application_fee => 1,
      :forcast_1st_fee => 1,
      :forcast_2nd_fee => 1,
      :actual_2nd_fee => 1
    ))
  end

  it "renders the edit nsfm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nsfms_path(@nsfm), :method => "post" do
      assert_select "input#nsfm_user_id", :name => "nsfm[user_id]"
      assert_select "input#nsfm_stu_id", :name => "nsfm[stu_id]"
      assert_select "input#nsfm_status", :name => "nsfm[status]"
      assert_select "input#nsfm_name", :name => "nsfm[name]"
      assert_select "input#nsfm_age", :name => "nsfm[age]"
      assert_select "input#nsfm_school", :name => "nsfm[school]"
      assert_select "input#nsfm_grade", :name => "nsfm[grade]"
      assert_select "input#nsfm_goal_score", :name => "nsfm[goal_score]"
      assert_select "input#nsfm_learn_days", :name => "nsfm[learn_days]"
      assert_select "input#nsfm_fee", :name => "nsfm[fee]"
      assert_select "textarea#nsfm_previous_marks_exams", :name => "nsfm[previous_marks_exams]"
      assert_select "input#nsfm_study_days", :name => "nsfm[study_days]"
      assert_select "input#nsfm_application_fee", :name => "nsfm[application_fee]"
      assert_select "input#nsfm_forcast_1st_fee", :name => "nsfm[forcast_1st_fee]"
      assert_select "input#nsfm_forcast_2nd_fee", :name => "nsfm[forcast_2nd_fee]"
      assert_select "input#nsfm_actual_2nd_fee", :name => "nsfm[actual_2nd_fee]"
    end
  end
end
