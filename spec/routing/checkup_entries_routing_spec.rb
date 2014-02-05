require "spec_helper"

describe CheckupEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/checkup_entries").should route_to("checkup_entries#index")
    end

    it "routes to #new" do
      get("/checkup_entries/new").should route_to("checkup_entries#new")
    end

    it "routes to #show" do
      get("/checkup_entries/1").should route_to("checkup_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/checkup_entries/1/edit").should route_to("checkup_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/checkup_entries").should route_to("checkup_entries#create")
    end

    it "routes to #update" do
      put("/checkup_entries/1").should route_to("checkup_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/checkup_entries/1").should route_to("checkup_entries#destroy", :id => "1")
    end

  end
end
