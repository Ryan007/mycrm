require 'spec_helper'

describe "invations/new" do
  before(:each) do
    assign(:invation, stub_model(Invation,
      :info_id => 1,
      :user_id => 1,
      :status => 1
    ).as_new_record)
  end

  it "renders new invation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invations_path, :method => "post" do
      assert_select "input#invation_info_id", :name => "invation[info_id]"
      assert_select "input#invation_user_id", :name => "invation[user_id]"
      assert_select "input#invation_status", :name => "invation[status]"
    end
  end
end
