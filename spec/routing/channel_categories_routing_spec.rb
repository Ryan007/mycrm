require "spec_helper"

describe ChannelCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/channel_categories").should route_to("channel_categories#index")
    end

    it "routes to #new" do
      get("/channel_categories/new").should route_to("channel_categories#new")
    end

    it "routes to #show" do
      get("/channel_categories/1").should route_to("channel_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/channel_categories/1/edit").should route_to("channel_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/channel_categories").should route_to("channel_categories#create")
    end

    it "routes to #update" do
      put("/channel_categories/1").should route_to("channel_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/channel_categories/1").should route_to("channel_categories#destroy", :id => "1")
    end

  end
end
