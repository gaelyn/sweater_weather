require 'rails_helper'

RSpec.describe 'Raod Trip Create' do
  describe 'Happy Paths' do
    it 'can create a road trip response' do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": "jgn983hy48thw9begh98h4539h4"
      }
      post '/api/v1/road_trip', headers: headers, params: body.to_json
      expect(response).to be_successful
      expect(response.status).to eq(200)
    end
  end
end
