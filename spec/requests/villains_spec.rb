require 'rails_helper'

RSpec.describe "Villains", type: :request do
  describe "GET /villains" do
    it "works! (now write some real specs)" do
      get villains_path
      expect(response).to have_http_status(200)
    end
  end
end
