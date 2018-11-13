Rails.application.routes.draw do
  devise_for :users
  root 'firms#index'
   resources :firms, only: [:index, :show] do
     resources :reviews, only: [:new, :create]
     resources :jobs, only: [:index]
     collection do
       get 'search'
     end
   end
   resources :genres, only: [:index, :show]
end
