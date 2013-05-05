require 'spec_helper'

describe "nssrs/new" do
  before(:each) do
    assign(:nssr, stub_model(Nssr,
      :user_id => 1,
      :stu_id => 1,
      :name => "MyString",
      :age => 1,
      :school => "MyString",
      :grade => "MyString",
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
    ).as_new_record)
  end

  it "renders new nssr form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nssrs_path, :method => "post" do
      assert_select "input#nssr_user_id", :name => "nssr[user_id]"
      assert_select "input#nssr_stu_id", :name => "nssr[stu_id]"
      assert_select "input#nssr_name", :name => "nssr[name]"
      assert_select "input#nssr_age", :name => "nssr[age]"
      assert_select "input#nssr_school", :name => "nssr[school]"
      assert_select "input#nssr_grade", :name => "nssr[grade]"
      assert_select "input#nssr_score_goal", :name => "nssr[score_goal]"
      assert_select "input#nssr_study_days", :name => "nssr[study_days]"
      assert_select "input#nssr_fee", :name => "nssr[fee]"
      assert_select "textarea#nssr_privious_marks_dates", :name => "nssr[privious_marks_dates]"
      assert_select "textarea#nssr_no_signup_reason", :name => "nssr[no_signup_reason]"
      assert_select "input#nssr_forcast_rec_1st_fee", :name => "nssr[forcast_rec_1st_fee]"
      assert_select "input#nssr_actual_rec_1st_fee", :name => "nssr[actual_rec_1st_fee]"
      assert_select "input#nssr_actual_rec_1st_fee", :name => "nssr[actual_rec_1st_fee]"
      assert_select "input#nssr_forcast_rec_2nd_fee", :name => "nssr[forcast_rec_2nd_fee]"
      assert_select "input#nssr_actual_rec_2nd_fee", :name => "nssr[actual_rec_2nd_fee]"
    end
  end
end
