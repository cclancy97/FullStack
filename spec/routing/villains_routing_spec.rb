require "rails_helper"

RSpec.describe VillainsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/villains").to route_to("villains#index")
    end


    it "routes to #show" do
      expect(:get => "/villains/1").to route_to("villains#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/villains").to route_to("villains#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/villains/1").to route_to("villains#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/villains/1").to route_to("villains#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/villains/1").to route_to("villains#destroy", :id => "1")
    end

  end
end
