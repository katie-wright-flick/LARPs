Rails.application.routes.draw do
  resources :characters
  resources :scenarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "scenarios#index"
end
