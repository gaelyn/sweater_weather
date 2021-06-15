require 'rails_helper'

RSpec.describe 'Sessions Create' do
  before :each do
    @user = User.create!(email: "whatever@example.com", password: "password",
                        password_confirmation: "password", api_key: "xxxxxx")
  end

  describe 'Happy Path' do
    it 'can create a new session when user logs in', :vcr do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "email": "whatever@example.com",
        "password": "password",
      }
      post '/api/v1/sessions', headers: headers, params: body.to_json
      session = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(session[:data][:attributes]).to have_key(:email)
      expect(session[:data][:attributes]).to have_key(:api_key)
      expect(session[:data][:attributes]).to_not have_key(:password)
    end
  end

  describe 'Sad Path' do
    it 'shows error if password is invalid', :vcr do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "email": "whatever@example.com",
        "password": "wordpass",
      }
      post '/api/v1/sessions', headers: headers, params: body.to_json
      expect(response.body).to eq("{\"errors\":\"Invalid email or password\"}")
      expect(response.status).to eq(400)
    end

    it 'shows error if email is invalid', :vcr do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "email": "test@test.com",
        "password": "password",
      }
      post '/api/v1/sessions', headers: headers, params: body.to_json
      expect(response.body).to eq("{\"errors\":\"Invalid email or password\"}")
      expect(response.status).to eq(400)
    end

    it 'shows error if email or password not provided', :vcr do
      post '/api/v1/sessions'
      expect(response.body).to eq("{\"errors\":\"Email and password must be provided\"}")
      expect(response.status).to eq(401)
    end
  end
end
