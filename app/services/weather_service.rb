require 'httparty'
require 'json'

class WeatherService
  WEATHERBIT_API_KEY = ENV['WEATHERBIT_API_KEY']
  def get_weather_by_city(city, country)
    location_url = "https://api.weatherbit.io/v2.0/current?&city=#{city}&country=#{country}&key=#{WEATHERBIT_API_KEY}"
    location_response = HTTParty.get(location_url)
    location_data = JSON.parse(location_response.body) if !location_response.empty?

    if location_data['data'].empty?
      raise "No locations found for the city '#{city}'."
    end
    puts "O tempo em #{city} se encontra da seguinte forma:"
    puts weather_info = location_data.dig('data', 0)
  end
end
