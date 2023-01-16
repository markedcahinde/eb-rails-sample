require 'rails_helper'

RSpec.describe "DemoPages", type: :request do
  describe "GET /demo" do
    it "returns http success" do
      get "/demo_page/demo"
      expect(response).to have_http_status(:success)
    end
  end

end
