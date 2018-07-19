require 'rails_helper'

RSpec.describe "UrlIndices", type: :request do
  describe "GET /url_indices" do
    it "works! (now write some real specs)" do
      get url_indices_path
      expect(response).to have_http_status(200)
    end
  end
end
