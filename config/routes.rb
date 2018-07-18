Rails.application.routes.draw do

	namespace :admin do
		resources :offer_types
		resources :price_types
		resources :metro_lines
		resources :okrugs
		resources :metro_stations
		resources :facility_types
		resources :regions
		resources :buildings
		resources :floors
		resources :facilities
		resources :offers
		resources :building_types
		delete 'facility_file', to: 'facilities#destroy_file', as: :destroy_file
  end
end
