Rails.application.routes.draw do
	root "timer_inputs#index"
  resources :timer_inputs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
