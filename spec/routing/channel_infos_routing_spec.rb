require "spec_helper"

describe ChannelInfosController do
  describe "routing" do

    it "routes to #index" do
      get("/channel_infos").should route_to("channel_infos#index")
    end

    it "routes to #new" do
      get("/channel_infos/new").should route_to("channel_infos#new")
    end

    it "routes to #show" do
      get("/channel_infos/1").should route_to("channel_infos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/channel_infos/1/edit").should route_to("channel_infos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/channel_infos").should route_to("channel_infos#create")
    end

    it "routes to #update" do
      put("/channel_infos/1").should route_to("channel_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/channel_infos/1").should route_to("channel_infos#destroy", :id => "1")
    end

  end
end
