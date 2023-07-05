require 'httparty'
require 'json'

class WeatherService
  WEATHERBIT_API_KEY = "4bdeb59fa0a04b28835f998ab8d1d7b3"
  def get_weather_by_city(city, country)
    location_url = "https://api.weatherbit.io/v2.0/current?&city=#{city}&country=#{country}&key=#{WEATHERBIT_API_KEY}"
    location_response = HTTParty.get(location_url)
    location_data = JSON.parse(location_response.body) if !location_response.empty?

    if location_data['data'].empty?
      raise "No locations found for the city '#{city}'."
    end
    @weather_data = location_data['data'][0]
  end
end
