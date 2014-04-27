require "spec_helper"

describe LblColoursController do
  describe "routing" do

    it "routes to #index" do
      get("/lbl_colours").should route_to("lbl_colours#index")
    end

    it "routes to #new" do
      get("/lbl_colours/new").should route_to("lbl_colours#new")
    end

    it "routes to #show" do
      get("/lbl_colours/1").should route_to("lbl_colours#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lbl_colours/1/edit").should route_to("lbl_colours#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lbl_colours").should route_to("lbl_colours#create")
    end

    it "routes to #update" do
      put("/lbl_colours/1").should route_to("lbl_colours#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lbl_colours/1").should route_to("lbl_colours#destroy", :id => "1")
    end

  end
end
