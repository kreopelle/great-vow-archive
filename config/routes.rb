Rails.application.routes.draw do
  resources :dharma_talks
  resources :locations
  resources :speakers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
