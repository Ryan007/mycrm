require "spec_helper"

describe NssrsController do
  describe "routing" do

    it "routes to #index" do
      get("/nssrs").should route_to("nssrs#index")
    end

    it "routes to #new" do
      get("/nssrs/new").should route_to("nssrs#new")
    end

    it "routes to #show" do
      get("/nssrs/1").should route_to("nssrs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nssrs/1/edit").should route_to("nssrs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nssrs").should route_to("nssrs#create")
    end

    it "routes to #update" do
      put("/nssrs/1").should route_to("nssrs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nssrs/1").should route_to("nssrs#destroy", :id => "1")
    end

  end
end
