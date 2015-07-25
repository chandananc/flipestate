require "rails_helper"

RSpec.describe CsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cs").to route_to("cs#index")
    end

    it "routes to #new" do
      expect(:get => "/cs/new").to route_to("cs#new")
    end

    it "routes to #show" do
      expect(:get => "/cs/1").to route_to("cs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cs/1/edit").to route_to("cs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cs").to route_to("cs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cs/1").to route_to("cs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cs/1").to route_to("cs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cs/1").to route_to("cs#destroy", :id => "1")
    end

  end
end
