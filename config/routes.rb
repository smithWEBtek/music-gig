Rails.application.routes.draw do
	root to: 'api/gigs#index'

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
