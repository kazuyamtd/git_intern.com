Rails.application.routes.draw do
  devise_for :users
  root 'firms#index'
 resources :genres, only: [:index, :show], shallow:true do
  resources :firms, only: [:index, :show] do
     resources :reviews, only: [:new, :create]
     resources :jobs, only: [:index]
     collection do
      get 'search'
     end
  end
 end
end
