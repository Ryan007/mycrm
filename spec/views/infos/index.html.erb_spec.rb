require 'spec_helper'

describe "infos/index" do
  before(:each) do
    assign(:infos, [
      stub_model(Info,
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
      ),
      stub_model(Info,
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
      )
    ])
  end

  it "renders a list of infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Current School".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Decision Power".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Father Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Father Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Core Question".to_s, :count => 2
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
    assert_select "tr>td", :text => "Expect Major".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Expect Colleage Ranking".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
