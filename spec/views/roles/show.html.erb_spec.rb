require 'spec_helper'

describe "roles/show" do
  before(:each) do
    @role = assign(:role, stub_model(Role))
  end

  it "renders attributes in <p>" do
    render
  end
end
