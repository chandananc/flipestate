require 'rails_helper'

RSpec.describe "ListAttachments", type: :request do
  describe "GET /list_attachments" do
    it "works! (now write some real specs)" do
      get list_attachments_path
      expect(response).to have_http_status(200)
    end
  end
end
