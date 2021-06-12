require 'rails_helper'

RSpec.describe 'CurrentWeather' do
  describe 'encapsulates and returns current weather' do
    it 'shows current weather attributes' do
      current = {
                 :dt=>1623522198,
                 :sunrise=>1623497489,
                 :sunset=>1623551306,
                 :temp=>82.89,
                 :feels_like=>80.82,
                 :pressure=>1012,
                 :humidity=>26,
                 :dew_point=>44.53,
                 :uvi=>10.67,
                 :clouds=>0,
                 :visibility=>10000,
                 :wind_speed=>1.01,
                 :wind_deg=>334,
                 :wind_gust=>3,
                 :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}]
               }
      current_weather = CurrentWeather.new(current)
      expect(current_weather.datetime).to eq("2021")
      # expect(current_weather.sunrise).to eq()
      # expect(current_weather.sunset).to eq()
      # expect(current_weather.temp).to eq()
      # expect(current_weather.feels_like).to eq()
      # expect(current_weather.humidity).to eq()
      # expect(current_weather.uvi).to eq()
      # expect(current_weather.visibility).to eq()
      # expect(current_weather.conditions).to eq()
      # expect(current_weather.icon).to eq()
    end
  end
end
