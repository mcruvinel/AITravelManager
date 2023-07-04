# frozen_string_literal: true

require 'openai'
require 'dotenv/load'
require_relative 'openai_service'
require 'dotenv'

Dotenv.load

openai_service = OpenaiService.new

tourism_guide = openai_service.get_travel_itinerary("Paris", "3")