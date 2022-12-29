require 'rails_helper'

RSpec.describe "WelcomePages", type: :request do
  describe "GET /welcome" do
    it "returns http success" do
      get "/welcome_page/welcome"
      expect(response).to have_http_status(:success)
    end
  end

end
