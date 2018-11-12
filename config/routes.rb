Rails.application.routes.draw do
  devise_for :users
  root 'firms#index'
  resources :firms, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    collection do
      get 'search'
    end
    
  end
end
