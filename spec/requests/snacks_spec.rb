require 'rails_helper'

RSpec.describe "Snacks", type: :request do
  describe "GET /snacks" do
    it "works! (now write some real specs)" do
      get snacks_path
      expect(response).to have_http_status(200)
    end
  end
end
