require "spec_helper"

describe ExamTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/exam_types").should route_to("exam_types#index")
    end

    it "routes to #new" do
      get("/exam_types/new").should route_to("exam_types#new")
    end

    it "routes to #show" do
      get("/exam_types/1").should route_to("exam_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exam_types/1/edit").should route_to("exam_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exam_types").should route_to("exam_types#create")
    end

    it "routes to #update" do
      put("/exam_types/1").should route_to("exam_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exam_types/1").should route_to("exam_types#destroy", :id => "1")
    end

  end
end
