require 'spec_helper'

describe "roles/index" do
  before(:each) do
    assign(:roles, [
      stub_model(Role),
      stub_model(Role)
    ])
  end

  it "renders a list of roles" do
    render
  end
end
