require 'spec_helper'

describe "admin/permissions/show" do
  before(:each) do
    @admin_permission = assign(:admin_permission, stub_model(Admin::Permission))
  end

  it "renders attributes in <p>" do
    render
  end
end
