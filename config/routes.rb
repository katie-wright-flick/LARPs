Rails.application.routes.draw do
  resources :characters
  resources :items
  resources :scenarios do
    resources :characters, only: [:update]
    resources :items, only: [:update]
  end

  root "scenarios#index"
end
