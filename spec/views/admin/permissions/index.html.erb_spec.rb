require 'spec_helper'

describe "admin/permissions/index" do
  before(:each) do
    assign(:admin_permissions, [
      stub_model(Admin::Permission),
      stub_model(Admin::Permission)
    ])
  end

  it "renders a list of admin/permissions" do
    render
  end
end
