Rails.application.routes.draw do
  root to: 'add_events#index'
  resources :add_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end