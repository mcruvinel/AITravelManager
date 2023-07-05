require 'httparty'
require 'json'

class WeatherService
  WEATHERBIT_API_KEY = ""
  def get_weather_by_city(city, country)
    location_url = "https://api.weatherbit.io/v2.0/forecast/daily&city=#{city}&country=#{country}&key=#{WEATHERBIT_API_KEY}"
    location_response = HTTParty.get(location_url)
    if location_response.empty?
      raise "No connection to the Weatherbit API."
    end
    location_data = JSON.parse(location_response.body)

    if location_data["status_code"] == 429
      raise "You have exceeded your API request limit."
    end

    if location_data["status_code"] == 200 && !location_data['data'].empty?
      raise "No locations found for the city '#{city}'."
    end
    @weather_data = location_data['data'][0]
  end
end
