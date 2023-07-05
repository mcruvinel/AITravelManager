Rails.application.routes.draw do
  get 'itineraries/index'
  get 'itineraries/show'
  get 'itineraries/new'
  get 'itineraries/create'
  get 'itineraries/edit'
  get 'itineraries/update'
  get 'itineraries/destroy'
  get 'trips/index'
  get 'trips/show'
  get 'trips/new'
  get 'trips/create'
  get 'trips/edit'
  get 'trips/update'
  get 'trips/destroy'
  get 'weather/index'
  get 'weather/show', to: 'weather#show', as: 'weather_show'


  # Rest of your routes...

  # Defines the root path route ("/")
  # root "controller#action"
end
