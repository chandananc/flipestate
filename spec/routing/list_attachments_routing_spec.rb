require "rails_helper"

RSpec.describe ListAttachmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/list_attachments").to route_to("list_attachments#index")
    end

    it "routes to #new" do
      expect(:get => "/list_attachments/new").to route_to("list_attachments#new")
    end

    it "routes to #show" do
      expect(:get => "/list_attachments/1").to route_to("list_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/list_attachments/1/edit").to route_to("list_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/list_attachments").to route_to("list_attachments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/list_attachments/1").to route_to("list_attachments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/list_attachments/1").to route_to("list_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/list_attachments/1").to route_to("list_attachments#destroy", :id => "1")
    end

  end
end
