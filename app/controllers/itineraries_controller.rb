class ItinerariesController < ApplicationController
  def index
  end

  def show
    @city = params[:city]
    @country = params[:country]
    @days = params[:days]
    openai_service = OpenaiService.new
    @itinerary = openai_service.get_travel_itinerary(@city, @country, @days)
  end
end
