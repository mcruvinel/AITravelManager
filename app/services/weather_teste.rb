require_relative 'openweather_service'

weather_service = WeatherService.new
weather_data = weather_service.get_weather_by_city('Uberlandia', 'Brazil')
