require 'rails_helper'

RSpec.describe "Cs", type: :request do
  describe "GET /cs" do
    it "works! (now write some real specs)" do
      get cs_path
      expect(response).to have_http_status(200)
    end
  end
end
