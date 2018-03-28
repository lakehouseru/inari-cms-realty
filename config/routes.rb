Rails.application.routes.draw do

	namespace :admin do
		resources :offer_types
		resources :price_types
  	end
end
