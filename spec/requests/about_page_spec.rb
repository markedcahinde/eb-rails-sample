require 'rails_helper'

RSpec.describe "AboutPages", type: :request do
  describe "GET /about" do
    it "returns http success" do
      get "/about_page/about"
      expect(response).to have_http_status(:success)
    end
  end

end
