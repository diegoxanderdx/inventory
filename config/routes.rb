Rails.application.routes.draw do
  root to: "home#index"

  resources :categories do
    resources :materials
  end

  resources :materials, only: [] do
    resources :variations
  end

  resources :users, only: [] do
    resources :personal_details, except: :index
    resources :orders
  end
  
  devise_for :users, controllers: { 
    confirmations: 'users/confirmations'
   }

end
