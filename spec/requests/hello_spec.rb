# frozen_string_literal: true

require "rails_helper"

RSpec.describe "HelloController", type: :request do
  describe "GET /hello" do
    subject do
      get "/hello"
      response
    end

    it { is_expected.to have_http_status(:ok) }

    it "returns JSON message" do
      subject

      expect(JSON.parse(response.body)["message"]).to eq "Hello, world!"
    end
  end
end
