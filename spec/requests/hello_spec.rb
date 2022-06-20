require "rails_helper"

RSpec.describe "HelloController", type: :request do
  describe "GET /hello" do
    it "returns JSON message" do
      get "/hello"

      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)["message"]).to eq "Hello, world!"
    end
  end
end
