require "rails_helper"

RSpec.describe FirstsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/firsts").to route_to("firsts#index")
    end

    it "routes to #new" do
      expect(:get => "/firsts/new").to route_to("firsts#new")
    end

    it "routes to #show" do
      expect(:get => "/firsts/1").to route_to("firsts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/firsts/1/edit").to route_to("firsts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/firsts").to route_to("firsts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/firsts/1").to route_to("firsts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/firsts/1").to route_to("firsts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/firsts/1").to route_to("firsts#destroy", :id => "1")
    end

  end
end
