require 'spec_helper'

describe "CcmDistributes" do
  describe "GET /ccm_distributes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ccm_distributes_path
      response.status.should be(200)
    end
  end
end
