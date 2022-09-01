Rails.application.routes.draw do
  resources :characters
  resources :scenarios
  resources :items

  root "scenarios#index"
end
