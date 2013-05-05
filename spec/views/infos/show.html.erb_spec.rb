require 'spec_helper'

describe "infos/show" do
  before(:each) do
    @info = assign(:info, stub_model(Info,
      :name => "Name",
      :age => 1,
      :cellphone => "Cellphone",
      :grade => "Grade",
      :current_school => "Current School",
      :decision_power => "Decision Power",
      :father_name => "Father Name",
      :mother_name => "Mother Name",
      :father_phone => "Father Phone",
      :mother_phone => "Mother Phone",
      :core_question => "Core Question",
      :core_question_answer => "MyText",
      :province => 1,
      :city => 1,
      :district => 1,
      :expect_score => 1,
      :expect_major => "Expect Major",
      :is_examed => 1,
      :is_trained => 1,
      :expect_colleage_ranking => "Expect Colleage Ranking",
      :apply_colleage_id => 1,
      :user_id => 1,
      :character_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cellphone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Current School/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Decision Power/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Father Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Father Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Core Question/)
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
    rendered.should match(/Expect Major/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Expect Colleage Ranking/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
