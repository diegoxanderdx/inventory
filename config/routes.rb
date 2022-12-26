Rails.application.routes.draw do
  resources :personal_details
  
  resources :categories do
    resources :materials
  end

  resources :materials, only: [] do
    resources :variations
  end
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
end
