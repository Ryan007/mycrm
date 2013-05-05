require "spec_helper"

describe ExamDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/exam_details").should route_to("exam_details#index")
    end

    it "routes to #new" do
      get("/exam_details/new").should route_to("exam_details#new")
    end

    it "routes to #show" do
      get("/exam_details/1").should route_to("exam_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exam_details/1/edit").should route_to("exam_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exam_details").should route_to("exam_details#create")
    end

    it "routes to #update" do
      put("/exam_details/1").should route_to("exam_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exam_details/1").should route_to("exam_details#destroy", :id => "1")
    end

  end
end
