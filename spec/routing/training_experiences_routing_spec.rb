require "spec_helper"

describe TrainingExperiencesController do
  describe "routing" do

    it "routes to #index" do
      get("/training_experiences").should route_to("training_experiences#index")
    end

    it "routes to #new" do
      get("/training_experiences/new").should route_to("training_experiences#new")
    end

    it "routes to #show" do
      get("/training_experiences/1").should route_to("training_experiences#show", :id => "1")
    end

    it "routes to #edit" do
      get("/training_experiences/1/edit").should route_to("training_experiences#edit", :id => "1")
    end

    it "routes to #create" do
      post("/training_experiences").should route_to("training_experiences#create")
    end

    it "routes to #update" do
      put("/training_experiences/1").should route_to("training_experiences#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/training_experiences/1").should route_to("training_experiences#destroy", :id => "1")
    end

  end
end
