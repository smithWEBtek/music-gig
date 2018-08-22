Rails.application.routes.draw do
	root 'api/bands#index'
	
  namespace :api do
    resources :bands
    resources :contacts
    resources :gigs
    resources :resources
    resources :songs
    resources :venues
    resources :instruments
  end
end
