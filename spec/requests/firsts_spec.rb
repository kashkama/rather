require 'rails_helper'

RSpec.describe "Firsts", type: :request do
  describe "GET /firsts" do
    it "works! (now write some real specs)" do
      get firsts_path
      expect(response).to have_http_status(200)
    end
  end
end
