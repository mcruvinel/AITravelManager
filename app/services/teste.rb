# frozen_string_literal: true

require 'openai'
require 'dotenv/load'
require 'dotenv'

require_relative 'openai_service'
require_relative 'weather_service'

Dotenv.load

openai_service = OpenaiService.new
weather_service = WeatherService.new

tourism_guide = openai_service.get_travel_itinerary("Paris", "France", "3")
weather_data = weather_service.get_weather_by_city("Paris", "France")