require 'spec_helper'

describe "Nsfms" do
  describe "GET /nsfms" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get nsfms_path
      response.status.should be(200)
    end
  end
end
