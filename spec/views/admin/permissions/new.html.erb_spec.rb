require 'spec_helper'

describe "admin/permissions/new" do
  before(:each) do
    assign(:admin_permission, stub_model(Admin::Permission).as_new_record)
  end

  it "renders new admin_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_permissions_path, :method => "post" do
    end
  end
end
