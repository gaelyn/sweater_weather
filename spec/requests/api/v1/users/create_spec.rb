require 'rails_helper'

RSpec.describe 'Users Create' do
  describe 'Happy Paths' do
    it 'can create a user and return an api key' do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "email": "whatever@example.com",
        "password": "password",
        "password_confirmation": "password"
      }
      post '/api/v1/users', headers: headers, params: body.to_json
      user = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(201)
      expect(user[:data][:attributes]).to have_key(:email)
      expect(user[:data][:attributes]).to have_key(:api_key)
      expect(user[:data][:attributes]).to_not have_key(:password)
    end
  end

  # describe 'Sad Path' do
  #   it 'shows error if missing field' do
  #   end
  #
  #   it "shows error if passwords don't match" do
  #   end
  #
  #   it 'shows error if user already exists with given email' do
  #   end
  #
  #   it 'shows error if email is invalid format' do
  #   end
  # end
end
