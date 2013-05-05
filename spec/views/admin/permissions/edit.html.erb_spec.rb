require 'spec_helper'

describe "admin/permissions/edit" do
  before(:each) do
    @admin_permission = assign(:admin_permission, stub_model(Admin::Permission))
  end

  it "renders the edit admin_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_permissions_path(@admin_permission), :method => "post" do
    end
  end
end
