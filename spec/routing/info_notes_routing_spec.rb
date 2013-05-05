require "spec_helper"

describe InfoNotesController do
  describe "routing" do

    it "routes to #index" do
      get("/info_notes").should route_to("info_notes#index")
    end

    it "routes to #new" do
      get("/info_notes/new").should route_to("info_notes#new")
    end

    it "routes to #show" do
      get("/info_notes/1").should route_to("info_notes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/info_notes/1/edit").should route_to("info_notes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/info_notes").should route_to("info_notes#create")
    end

    it "routes to #update" do
      put("/info_notes/1").should route_to("info_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/info_notes/1").should route_to("info_notes#destroy", :id => "1")
    end

  end
end
