require 'spec_helper'

describe "training_experiences/index" do
  before(:each) do
    assign(:training_experiences, [
      stub_model(TrainingExperience,
        :user_id => 1,
        :info_id => 1,
        :exam_type => 1,
        :finish_time => 1,
        :total_time => "Total Time"
      ),
      stub_model(TrainingExperience,
        :user_id => 1,
        :info_id => 1,
        :exam_type => 1,
        :finish_time => 1,
        :total_time => "Total Time"
      )
    ])
  end

  it "renders a list of training_experiences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Total Time".to_s, :count => 2
  end
end
