require 'rails_helper'

RSpec.describe "Lasts", type: :request do
  describe "GET /lasts" do
    it "works! (now write some real specs)" do
      get lasts_path
      expect(response).to have_http_status(200)
    end
  end
end
