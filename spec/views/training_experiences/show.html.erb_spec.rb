require 'spec_helper'

describe "training_experiences/show" do
  before(:each) do
    @training_experience = assign(:training_experience, stub_model(TrainingExperience,
      :user_id => 1,
      :info_id => 1,
      :exam_type => 1,
      :finish_time => 1,
      :total_time => "Total Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Total Time/)
  end
end
