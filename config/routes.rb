Rails.application.routes.draw do
  root to: "home#index"
  resources :categories, except: :show

  resources :categories, only: [] do
    resources :materials, except: :show
  end

  resources :materials, only: [] do
    resources :variations, except: :show
  end

  resources :users, only: [] do
    resources :personal_details, except: :index
    resources :orders
  end
  
  devise_for :users, controllers: { 
    confirmations: 'users/confirmations'
   }

end
