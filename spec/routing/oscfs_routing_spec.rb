require "spec_helper"

describe OscfsController do
  describe "routing" do

    it "routes to #index" do
      get("/oscfs").should route_to("oscfs#index")
    end

    it "routes to #new" do
      get("/oscfs/new").should route_to("oscfs#new")
    end

    it "routes to #show" do
      get("/oscfs/1").should route_to("oscfs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/oscfs/1/edit").should route_to("oscfs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/oscfs").should route_to("oscfs#create")
    end

    it "routes to #update" do
      put("/oscfs/1").should route_to("oscfs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/oscfs/1").should route_to("oscfs#destroy", :id => "1")
    end

  end
end
