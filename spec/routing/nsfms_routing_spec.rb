require "spec_helper"

describe NsfmsController do
  describe "routing" do

    it "routes to #index" do
      get("/nsfms").should route_to("nsfms#index")
    end

    it "routes to #new" do
      get("/nsfms/new").should route_to("nsfms#new")
    end

    it "routes to #show" do
      get("/nsfms/1").should route_to("nsfms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nsfms/1/edit").should route_to("nsfms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nsfms").should route_to("nsfms#create")
    end

    it "routes to #update" do
      put("/nsfms/1").should route_to("nsfms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nsfms/1").should route_to("nsfms#destroy", :id => "1")
    end

  end
end
