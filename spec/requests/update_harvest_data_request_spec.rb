require 'rails_helper'

RSpec.describe "UpdateHarvestData", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/update_harvest_data/create"
      expect(response).to have_http_status(:success)
    end
  end

end
