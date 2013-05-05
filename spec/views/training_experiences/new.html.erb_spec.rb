require 'spec_helper'

describe "training_experiences/new" do
  before(:each) do
    assign(:training_experience, stub_model(TrainingExperience,
      :user_id => 1,
      :info_id => 1,
      :exam_type => 1,
      :finish_time => 1,
      :total_time => "MyString"
    ).as_new_record)
  end

  it "renders new training_experience form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => training_experiences_path, :method => "post" do
      assert_select "input#training_experience_user_id", :name => "training_experience[user_id]"
      assert_select "input#training_experience_info_id", :name => "training_experience[info_id]"
      assert_select "input#training_experience_exam_type", :name => "training_experience[exam_type]"
      assert_select "input#training_experience_finish_time", :name => "training_experience[finish_time]"
      assert_select "input#training_experience_total_time", :name => "training_experience[total_time]"
    end
  end
end
