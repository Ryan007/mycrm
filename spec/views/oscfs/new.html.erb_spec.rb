require 'spec_helper'

describe "oscfs/new" do
  before(:each) do
    assign(:oscf, stub_model(Oscf,
      :user_id => 1,
      :stu_id => 1,
      :name => "MyString",
      :gender => 1,
      :school => "MyString",
      :goal_score => 1,
      :previous_marks_exams => "MyText",
      :learn_subject => "MyString",
      :learn_time => "MyString",
      :learn_remark_pm => "MyText",
      :learn_remark_tearcher => "MyString",
      :post_class_score => 1,
      :mock_score => 1,
      :comm_content => "MyText",
      :comm_effect => "MyString",
      :forcast_fee => 1,
      :actual_fee => 1
    ).as_new_record)
  end

  it "renders new oscf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => oscfs_path, :method => "post" do
      assert_select "input#oscf_user_id", :name => "oscf[user_id]"
      assert_select "input#oscf_stu_id", :name => "oscf[stu_id]"
      assert_select "input#oscf_name", :name => "oscf[name]"
      assert_select "input#oscf_gender", :name => "oscf[gender]"
      assert_select "input#oscf_school", :name => "oscf[school]"
      assert_select "input#oscf_goal_score", :name => "oscf[goal_score]"
      assert_select "textarea#oscf_previous_marks_exams", :name => "oscf[previous_marks_exams]"
      assert_select "input#oscf_learn_subject", :name => "oscf[learn_subject]"
      assert_select "input#oscf_learn_time", :name => "oscf[learn_time]"
      assert_select "textarea#oscf_learn_remark_pm", :name => "oscf[learn_remark_pm]"
      assert_select "input#oscf_learn_remark_tearcher", :name => "oscf[learn_remark_tearcher]"
      assert_select "input#oscf_post_class_score", :name => "oscf[post_class_score]"
      assert_select "input#oscf_mock_score", :name => "oscf[mock_score]"
      assert_select "textarea#oscf_comm_content", :name => "oscf[comm_content]"
      assert_select "input#oscf_comm_effect", :name => "oscf[comm_effect]"
      assert_select "input#oscf_forcast_fee", :name => "oscf[forcast_fee]"
      assert_select "input#oscf_actual_fee", :name => "oscf[actual_fee]"
    end
  end
end
