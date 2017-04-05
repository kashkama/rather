require "rails_helper"

RSpec.describe LastsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lasts").to route_to("lasts#index")
    end

    it "routes to #new" do
      expect(:get => "/lasts/new").to route_to("lasts#new")
    end

    it "routes to #show" do
      expect(:get => "/lasts/1").to route_to("lasts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lasts/1/edit").to route_to("lasts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lasts").to route_to("lasts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lasts/1").to route_to("lasts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lasts/1").to route_to("lasts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lasts/1").to route_to("lasts#destroy", :id => "1")
    end

  end
end
