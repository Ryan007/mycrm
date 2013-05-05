require "spec_helper"

describe SessionTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/session_types").should route_to("session_types#index")
    end

    it "routes to #new" do
      get("/session_types/new").should route_to("session_types#new")
    end

    it "routes to #show" do
      get("/session_types/1").should route_to("session_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/session_types/1/edit").should route_to("session_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/session_types").should route_to("session_types#create")
    end

    it "routes to #update" do
      put("/session_types/1").should route_to("session_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/session_types/1").should route_to("session_types#destroy", :id => "1")
    end

  end
end
