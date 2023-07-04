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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
