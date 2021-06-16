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

  describe 'Sad Path' do
    it 'shows error if missing information' do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "email": "whatever@example.com",
        "password": "",
        "password_confirmation": ""
      }
      post '/api/v1/users', params: body.to_json
      expect(response.body).to eq("{\"errors\":\"Unable to create user\"}")
      expect(response.status).to eq(400)
    end

    it "shows error if passwords don't match" do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "email": "whatever@example.com",
        "password": "password",
        "password_confirmation": "wordpass"
      }
      post '/api/v1/users', params: body.to_json
      expect(response.body).to eq("{\"errors\":\"Unable to create user\"}")
      expect(response.status).to eq(400)
    end

    it 'shows error if user already exists with given email' do
      User.create!(email: "whatever@example.com", password: "password", password_confirmation: "password", api_key: "xxxxxx")
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
      expect(response.body).to eq("{\"errors\":\"Email already registered\"}")
      expect(response.status).to eq(409)
    end

  end

  describe 'Edge Case' do
    it 'shows error if email entered is an invalid format' do
      headers = {
        'Content-Type' => "application/json",
        'Accept' => "application/json"
      }

      body = {
        "email": "example.com",
        "password": "password",
        "password_confirmation": "password"
      }
      post '/api/v1/users', headers: headers, params: body.to_json
      expect(response.body).to eq("{\"errors\":\"Unable to create user\"}")
      expect(response.status).to eq(400)
    end
  end
end
