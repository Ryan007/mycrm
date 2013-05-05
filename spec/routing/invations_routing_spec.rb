require "spec_helper"

describe InvationsController do
  describe "routing" do

    it "routes to #index" do
      get("/invations").should route_to("invations#index")
    end

    it "routes to #new" do
      get("/invations/new").should route_to("invations#new")
    end

    it "routes to #show" do
      get("/invations/1").should route_to("invations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/invations/1/edit").should route_to("invations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/invations").should route_to("invations#create")
    end

    it "routes to #update" do
      put("/invations/1").should route_to("invations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/invations/1").should route_to("invations#destroy", :id => "1")
    end

  end
end
