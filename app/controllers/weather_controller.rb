class WeatherController < ApplicationController
  def index
  end

  def show
    @city = params[:city]
    @country = params[:country]
    weather_service = WeatherService.new
    @weather_data = weather_service.get_weather_by_city(@city, @country)
  end
end
