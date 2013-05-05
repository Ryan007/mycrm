require 'spec_helper'

describe "infos/new" do
  before(:each) do
    assign(:info, stub_model(Info,
      :name => "MyString",
      :age => 1,
      :cellphone => "MyString",
      :grade => "MyString",
      :current_school => "MyString",
      :decision_power => "MyString",
      :father_name => "MyString",
      :mother_name => "MyString",
      :father_phone => "MyString",
      :mother_phone => "MyString",
      :core_question => "MyString",
      :core_question_answer => "MyText",
      :province => 1,
      :city => 1,
      :district => 1,
      :expect_score => 1,
      :expect_major => "MyString",
      :is_examed => 1,
      :is_trained => 1,
      :expect_colleage_ranking => "MyString",
      :apply_colleage_id => 1,
      :user_id => 1,
      :character_type_id => 1
    ).as_new_record)
  end

  it "renders new info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => infos_path, :method => "post" do
      assert_select "input#info_name", :name => "info[name]"
      assert_select "input#info_age", :name => "info[age]"
      assert_select "input#info_cellphone", :name => "info[cellphone]"
      assert_select "input#info_grade", :name => "info[grade]"
      assert_select "input#info_current_school", :name => "info[current_school]"
      assert_select "input#info_decision_power", :name => "info[decision_power]"
      assert_select "input#info_father_name", :name => "info[father_name]"
      assert_select "input#info_mother_name", :name => "info[mother_name]"
      assert_select "input#info_father_phone", :name => "info[father_phone]"
      assert_select "input#info_mother_phone", :name => "info[mother_phone]"
      assert_select "input#info_core_question", :name => "info[core_question]"
      assert_select "textarea#info_core_question_answer", :name => "info[core_question_answer]"
      assert_select "input#info_province", :name => "info[province]"
      assert_select "input#info_city", :name => "info[city]"
      assert_select "input#info_district", :name => "info[district]"
      assert_select "input#info_expect_score", :name => "info[expect_score]"
      assert_select "input#info_expect_major", :name => "info[expect_major]"
      assert_select "input#info_is_examed", :name => "info[is_examed]"
      assert_select "input#info_is_trained", :name => "info[is_trained]"
      assert_select "input#info_expect_colleage_ranking", :name => "info[expect_colleage_ranking]"
      assert_select "input#info_apply_colleage_id", :name => "info[apply_colleage_id]"
      assert_select "input#info_user_id", :name => "info[user_id]"
      assert_select "input#info_character_type_id", :name => "info[character_type_id]"
    end
  end
end
